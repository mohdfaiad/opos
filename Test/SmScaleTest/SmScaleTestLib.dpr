library SmScaleTestLib;

uses
  FastMM4,
  TestFramework,
  GUITestRunner,
  duWideString in 'Units\duWideString.pas',
  StringUtils in '..\..\Source\Shared\StringUtils.pas',
  FileUtils in '..\..\Source\Shared\FileUtils.pas',
  duDfmFile in 'Units\duDfmFile.pas',
  ScaleDriver in '..\..\Source\SmScale\Units\ScaleDriver.pas',
  Opos in '..\..\Source\Opos\Opos.pas',
  Oposhi in '..\..\Source\Opos\Oposhi.pas',
  OposScal in '..\..\Source\Opos\OposScal.pas',
  OposScalhi in '..\..\Source\Opos\OposScalhi.pas',
  OposEvents in '..\..\Source\Opos\OposEvents.pas',
  LogFile in '..\..\Source\Shared\LogFile.pas',
  OPOSException in '..\..\Source\Opos\OposException.pas',
  OposEventsRCS in '..\..\Source\Opos\OposEventsRCS.pas',
  OposEventsNull in '..\..\Source\Opos\OposEventsNull.pas',
  OposDevice in '..\..\Source\SmScale\Units\OposDevice.pas',
  OposScalUtils in '..\..\Source\Opos\OposScalUtils.pas',
  OposUtils in '..\..\Source\Opos\OposUtils.pas',
  M5ScaleDevice in '..\..\Source\SmScale\Units\M5ScaleDevice.pas',
  ByteUtils in '..\..\Source\Shared\ByteUtils.pas',
  ScaleTypes in '..\..\Source\SmScale\Units\ScaleTypes.pas',
  ScaleFrame in '..\..\Source\SmScale\Units\ScaleFrame.pas',
  CommunicationError in '..\..\Source\Shared\CommunicationError.pas',
  DriverError in '..\..\Source\Shared\DriverError.pas',
  M5ScaleTypes in '..\..\Source\SmScale\Units\M5ScaleTypes.pas',
  OposSemaphore in '..\..\Source\Opos\OposSemaphore.pas',
  QueueThread in '..\..\Source\SmScale\Units\QueueThread.pas',
  LocalConnection in '..\..\Source\SmScale\Units\LocalConnection.pas',
  SerialPort in '..\..\Source\Shared\SerialPort.pas',
  ScaleParameters in '..\..\Source\SmScale\Units\ScaleParameters.pas',
  ServiceVersion in '..\..\Source\Shared\ServiceVersion.pas',
  DeviceService in '..\..\Source\Shared\DeviceService.pas',
  MockM5ScaleDevice2 in 'Units\MockM5ScaleDevice2.pas',
  MockM5ScaleDevice in 'Units\MockM5ScaleDevice.pas',
  MockScaleConnection in 'Units\MockScaleConnection.pas',
  MockScaleConnection2 in 'Units\MockScaleConnection2.pas',
  DebugUtils in '..\..\Source\Shared\DebugUtils.pas',
  M5OposDevice in '..\..\Source\SmScale\Units\M5OposDevice.pas',
  duScaleParameters in 'Units\duScaleParameters.pas',
  RCSEvents in 'Units\RCSEvents.pas',
  RCSEvents_TLB in 'Units\RCSEvents_TLB.pas',
  ReadWeightRequest in '..\..\Source\SmScale\Units\ReadWeightRequest.pas',
  duM5ScaleDevice in 'Units\duM5ScaleDevice.pas',
  ScaleRequest in '..\..\Source\SmScale\Units\ScaleRequest.pas',
  ScaleTypes2 in 'Units\ScaleTypes2.pas',
  duOposStatistics in 'Units\duOposStatistics.pas',
  ScaleDirectIO in '..\..\Source\SmScale\Units\ScaleDirectIO.pas',
  CommandDef in '..\..\Source\SmScale\Units\CommandDef.pas',
  xmlParser in '..\..\Source\Shared\XMLParser.pas',
  CommandParam in '..\..\Source\SmScale\Units\CommandParam.pas',
  BinStream in '..\..\Source\SmScale\Units\BinStream.pas',
  BStrUtil in '..\..\Source\Shared\BStrUtil.pas',
  ScaleCommands in '..\..\Source\SmScale\Units\ScaleCommands.pas',
  DIOHandler in '..\..\Source\SmScale\Units\DIOHandler.pas',
  ScaleDIOHandlers in '..\..\Source\SmScale\Units\ScaleDIOHandlers.pas',
  NotifyThread in '..\..\Source\SmScale\Units\NotifyThread.pas',
  MockCommandDef in 'Units\MockCommandDef.pas',
  MockScaleParameters in 'Units\MockScaleParameters.pas',
  VersionInfo in '..\..\Source\Shared\VersionInfo.pas',
  ScaleStatistics in '..\..\Source\SmScale\Units\ScaleStatistics.pas',
  OposStat in '..\..\Source\Opos\OposStat.pas',
  OposStatistics in '..\..\Source\Opos\OposStatistics.pas',
  StatisticItem in '..\..\Source\Opos\StatisticItem.pas',
  MockScaleStatistics in 'Units\MockScaleStatistics.pas',
  fmuPages in '..\..\Source\SmScale\Forms\fmuPages.pas' {fmPages},
  BaseForm in '..\..\Source\Shared\BaseForm.pas',
  untPages in '..\..\Source\SmScale\Forms\untPages.pas',
  fmuWeight in '..\..\Source\SmScale\Forms\fmuWeight.pas' {fmWeight},
  duScaleDriver in 'Units\duScaleDriver.pas',
  fmuStatus in '..\..\Source\SmScale\Forms\fmuStatus.pas' {fmStatus},
  fmuMode in '..\..\Source\SmScale\Forms\fmuMode.pas' {fmMode},
  ScalePage in '..\..\Source\SmScale\Forms\ScalePage.pas',
  UIController in '..\..\Source\SmScale\Units\UIController.pas',
  MockUIController in 'Units\MockUIController.pas',
  SerialPorts in '..\..\Source\Shared\SerialPorts.pas',
  DeviceNotification in '..\..\Source\SmFiscalPrinter\Units\DeviceNotification.pas',
  PortUtil in '..\..\Source\Shared\PortUtil.pas',
  TextReport in '..\..\Source\Shared\TextReport.pas';

{$R *.RES}

exports
  RegisteredTests name 'Test';
end.

