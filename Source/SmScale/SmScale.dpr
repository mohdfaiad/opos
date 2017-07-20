library SmScale;

uses
  ComServ,
  DebugUtils in '..\Shared\DebugUtils.pas',
  oleScale in 'Units\oleScale.pas',
  Opos in '..\Opos\Opos.pas',
  Oposhi in '..\Opos\Oposhi.pas',
  OposEvents in '..\Opos\OposEvents.pas',
  LogFile in '..\Shared\LogFile.pas',
  OposUtils in '..\Opos\OposUtils.pas',
  OPOSException in '..\Opos\OposException.pas',
  M5ScaleDevice in 'Units\M5ScaleDevice.pas',
  StringUtils in '..\Shared\StringUtils.pas',
  SmScale_TLB in 'SmScale_TLB.pas',
  ByteUtils in '..\Shared\ByteUtils.pas',
  ScaleTypes in 'Units\ScaleTypes.pas',
  ScaleFrame in 'Units\ScaleFrame.pas',
  LocalConnection in 'Units\LocalConnection.pas',
  SerialPort in '..\Shared\SerialPort.pas',
  CommunicationError in '..\Shared\CommunicationError.pas',
  ScaleDriver in 'Units\ScaleDriver.pas',
  ScaleParameters in 'Units\ScaleParameters.pas',
  TextEncoding in 'Units\TextEncoding.pas',
  OposScalUtils in '..\Opos\OposScalUtils.pas',
  OposScal in '..\Opos\OposScal.pas',
  OposScalhi in '..\Opos\OposScalhi.pas',
  OposSemaphore in '..\Opos\OposSemaphore.pas',
  QueueThread in 'Units\QueueThread.pas',
  DriverError in '..\Shared\DriverError.pas',
  OposEventsRCS in '..\Opos\OposEventsRCS.pas',
  OposEventsNull in '..\Opos\OposEventsNull.pas',
  OposDevice in 'Units\OposDevice.pas',
  M5ScaleTypes in 'Units\M5ScaleTypes.pas',
  FileUtils in '..\Shared\FileUtils.pas',
  ServiceVersion in '..\Shared\ServiceVersion.pas',
  DeviceService in '..\Shared\DeviceService.pas',
  M5OposDevice in 'Units\M5OposDevice.pas',
  NotifyThread in 'Units\NotifyThread.pas',
  ScaleRequest in 'Units\ScaleRequest.pas',
  ReadWeightRequest in 'Units\ReadWeightRequest.pas',
  DIOHandler in 'Units\DIOHandler.pas',
  CommandDef in 'Units\CommandDef.pas',
  xmlParser in '..\Shared\XMLParser.pas',
  CommandParam in 'Units\CommandParam.pas',
  BinStream in 'Units\BinStream.pas',
  BStrUtil in '..\Shared\BStrUtil.pas',
  ScaleCommands in 'Units\ScaleCommands.pas',
  ScaleDirectIO in 'Units\ScaleDirectIO.pas',
  ScaleDIOHandlers in 'Units\ScaleDIOHandlers.pas',
  VersionInfo in '..\Shared\VersionInfo.pas',
  ScaleStatistics in 'Units\ScaleStatistics.pas',
  OposStat in '..\Opos\OposStat.pas',
  OposStatistics in '..\Opos\OposStatistics.pas',
  StatisticItem in '..\Opos\StatisticItem.pas',
  untPages in 'Forms\untPages.pas',
  fmuPages in 'Forms\fmuPages.pas' {fmPages},
  BaseForm in '..\Shared\BaseForm.pas',
  fmuMode in 'Forms\fmuMode.pas' {fmMode},
  fmuWeight in 'Forms\fmuWeight.pas' {fmWeight},
  UIController in 'Units\UIController.pas',
  fmuStatus in 'Forms\fmuStatus.pas' {fmStatus},
  ScalePage in 'Forms\ScalePage.pas',
  SerialPorts in '..\Shared\SerialPorts.pas',
  MockM5ScaleDevice in 'Units\MockM5ScaleDevice.pas',
  DeviceNotification in '..\SmFiscalPrinter\Units\DeviceNotification.pas',
  PortUtil in '..\Shared\PortUtil.pas',
  TextReport in '..\Shared\TextReport.pas',
  OposMessages in '..\SmFiscalPrinter\Units\OposMessages.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.


