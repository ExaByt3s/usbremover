{
  USB Drive Device manager
  Made as singleton
  Inherited from TDeviceManager
  Developed by J.L. Blackrow
}
unit USBManager;

interface
uses
  DeviceManager, Device, Classes;

const
  MAX_ATTEMPTS = 3;

type
  TUSBManager = class(TDeviceManager)
  protected
    function BuildAll(Devices: TList): TList; override;
  public
    destructor Destroy; override;
    procedure RemoveDrive(index: integer); overload; override;
    procedure RemoveDrive(device: TDevice); overload; override;
    procedure ForcedRemoveDrive(index: integer); override;
    class function GetManager: TUSBManager;
  end;

implementation

uses
  SysUtils, WMI, ShlObj, ShellObjExtended, Windows, WinIOCtl, DeviceException,
  USBDevice;

var
  Instance: TUSBManager;

//This function completes the building oth the device tree
function TUSBManager.BuildAll(Devices: TList): TList;
var
  fUSBDevices: TStringList; //temporary array of USB devices
  i: integer; //loop indexes
  drive: TDevice; //drive device
  device: TDevice; //USB device
  parentHandle: THandle; //parent device handle
  key: string; //string key for the value
  driveIndex: integer; //drive index in the hashtable
begin
  Result := TList.Create;
  fUSBDevices := TStringList.Create;
  for i := 0 to Devices.Count-1 do
  begin
    drive := TDevice(Devices.Items[i]);
    if CM_Get_Parent(parentHandle, drive.InstanceHandle, 0) = CR_SUCCESS
    then begin
      key := IntToStr(parentHandle);
      //if there's no such device with the specified code - we add it
      driveIndex := fUSBDevices.IndexOf(key);
      if driveIndex = -1
      then begin
        device := TUSBDevice.Create(parentHandle);
        device.AddChild(drive);
        fUSBDevices.AddObject(key, device);
        Result.Add(device);
      end //then - no device in list
      else begin
        device := TDevice(fUSBDevices.Objects[driveIndex]);
        device.AddChild(drive);
      end; //else - linking into the trees
    end; //then- successfully
  end; //for-loop
  fUSBDevices.Free;
end; //BuildAll

{DESTRUCTOR}
destructor TUSBManager.Destroy;
begin
  inherited Destroy;
end;

//This function removes drive by its index in the list
procedure TUSBManager.RemoveDrive(index: integer);
var
  Device: TDevice; //current device to remove
begin
  //check if there are any available devices
  if (fDevices.Count <> 0)
  then begin
    try
      //trying to get the device by its index
      Device := TDevice(fDevices.Items[index]);
      self.RemoveDrive(Device);
    except
      on e: Exception do
      begin
        raise EDeviceException.Create(e, e.Message);
      end; //on..do
    end; //except
  end; //then - devices count <> 0
end; //RemoveDrive

//This function removes the specified device
procedure TUSBManager.RemoveDrive(device: TDevice);
var
  vetoName: TCharArray; //the reason of the fail of ejection
begin
  try
    //trying to eject the device
    if CM_Request_Device_EjectA(device.InstanceHandle, nil, PWideChar(@vetoName[0]),
      sizeof(vetoName), 0) = CR_SUCCESS
    then begin
      if vetoName = ''
      then begin
        //notifying all the windows
        device.NotifySystem;
        //the destructor should be called when there's a Windows message about
        //successful removal 
        device.Destroy;
        fDevices.Remove(device);
      end; //then
    end //then - ejection succeeded
    else begin
      raise EDeviceException.Create(SysErrorMessage(GetLastError));
    end; //else - ejection failed
  finally
  end;
end;

//This method makes force drive removal
procedure TUSBManager.ForcedRemoveDrive;
begin
end;

{TODO: Find out if it is possible to return disconnected device}

class function TUSBManager.GetManager: TUSBManager;
begin
  if not Assigned(Instance)
  then begin
    Instance := TUSBManager.Create;
  end;
  Result := Instance;
end;

end.
