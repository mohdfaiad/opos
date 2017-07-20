program SmScaleTest;

uses
  FastMM4,
  TestFramework,
  GUITestRunner,
  LogFile in '..\..\Source\Shared\LogFile.pas',
  duWideString in 'Units\duWideString.pas',
  StringUtils in '..\..\Source\Shared\StringUtils.pas',
  FileUtils in '..\..\Source\Shared\FileUtils.pas',
  DebugUtils in '..\..\Source\Shared\DebugUtils.pas',
  Opos in '..\..\Source\Opos\Opos.pas',
  Oposhi in '..\..\Source\Opos\Oposhi.pas',
  OposScal in '..\..\Source\Opos\OposScal.pas',
  OposScalhi in '..\..\Source\Opos\OposScalhi.pas',
  OposEvents in '..\..\Source\Opos\OposEvents.pas',
  OPOSException in '..\..\Source\Opos\OposException.pas',
  OposEventsRCS in '..\..\Source\Opos\OposEventsRCS.pas',
  OposEventsNull in '..\..\Source\Opos\OposEventsNull.pas',
  OposDevice in '..\..\Source\SmScale\Units\OposDevice.pas',
  OposScalUtils in '..\..\Source\Opos\OposScalUtils.pas',
  OposUtils in '..\..\Source\Opos\OposUtils.pas',
  OposSemaphore in '..\..\Source\Opos\OposSemaphore.pas',
  NotifyThread in '..\..\Source\SmScale\Units\NotifyThread.pas',
  DriverError in '..\..\Source\Shared\DriverError.pas',
  ServiceVersion in '..\..\Source\Shared\ServiceVersion.pas',
  DeviceService in '..\..\Source\Shared\DeviceService.pas',
  SerialPort in '..\..\Source\Shared\SerialPort.pas',
  QueueThread in '..\..\Source\SmScale\Units\QueueThread.pas',
  duDfmFile in 'Units\duDfmFile.pas',
  OposStat in '..\..\Source\Opos\OposStat.pas',
  OposStatistics in '..\..\Source\Opos\OposStatistics.pas',
  StatisticItem in '..\..\Source\Opos\StatisticItem.pas',
  ByteUtils in '..\..\Source\Shared\ByteUtils.pas',
  ScaleTypes in '..\..\Source\SmScale\Units\ScaleTypes.pas',
  ScaleFrame in '..\..\Source\SmScale\Units\ScaleFrame.pas',
  CommunicationError in '..\..\Source\Shared\CommunicationError.pas',
  M5ScaleTypes in '..\..\Source\SmScale\Units\M5ScaleTypes.pas',
  LocalConnection in '..\..\Source\SmScale\Units\LocalConnection.pas',
  ScaleParameters in '..\..\Source\SmScale\Units\ScaleParameters.pas',
  MockM5ScaleDevice2 in 'Units\MockM5ScaleDevice2.pas',
  MockM5ScaleDevice in 'Units\MockM5ScaleDevice.pas',
  MockScaleConnection in 'Units\MockScaleConnection.pas',
  MockScaleConnection2 in 'Units\MockScaleConnection2.pas',
  ScaleRequest in '..\..\Source\SmScale\Units\ScaleRequest.pas',
  ReadWeightRequest in '..\..\Source\SmScale\Units\ReadWeightRequest.pas',
  DIOHandler in '..\..\Source\SmScale\Units\DIOHandler.pas',
  CommandDef in '..\..\Source\SmScale\Units\CommandDef.pas',
  xmlParser in '..\..\Source\Shared\XMLParser.pas',
  CommandParam in '..\..\Source\SmScale\Units\CommandParam.pas',
  BinStream in '..\..\Source\SmScale\Units\BinStream.pas',
  BStrUtil in '..\..\Source\Shared\BStrUtil.pas',
  ScaleCommands in '..\..\Source\SmScale\Units\ScaleCommands.pas',
  ScaleDirectIO in '..\..\Source\SmScale\Units\ScaleDirectIO.pas',
  VersionInfo in '..\..\Source\Shared\VersionInfo.pas',
  ScaleStatistics in '..\..\Source\SmScale\Units\ScaleStatistics.pas',
  BaseForm in '..\..\Source\Shared\BaseForm.pas',
  RCSEvents in 'Units\RCSEvents.pas',
  RCSEvents_TLB in 'Units\RCSEvents_TLB.pas',
  MockCommandDef in 'Units\MockCommandDef.pas',
  MockScaleParameters in 'Units\MockScaleParameters.pas',
  MockScaleStatistics in 'Units\MockScaleStatistics.pas',
  ScaleTypes2 in 'Units\ScaleTypes2.pas',
  ScaleDriver in '..\..\Source\SmScale\Units\ScaleDriver.pas',
  ScaleDIOHandlers in '..\..\Source\SmScale\Units\ScaleDIOHandlers.pas',
  M5OposDevice in '..\..\Source\SmScale\Units\M5OposDevice.pas',
  M5ScaleDevice in '..\..\Source\SmScale\Units\M5ScaleDevice.pas',
  UIController in '..\..\Source\SmScale\Units\UIController.pas',
  untPages in '..\..\Source\SmScale\Forms\untPages.pas',
  fmuPages in '..\..\Source\SmScale\Forms\fmuPages.pas' {fmPages},
  fmuWeight in '..\..\Source\SmScale\Forms\fmuWeight.pas' {fmWeight},
  fmuMode in '..\..\Source\SmScale\Forms\fmuMode.pas' {fmMode},
  fmuStatus in '..\..\Source\SmScale\Forms\fmuStatus.pas' {fmStatus},
  ScalePage in '..\..\Source\SmScale\Forms\ScalePage.pas',
  MockUIController in 'Units\MockUIController.pas',
  duScaleParameters in 'Units\duScaleParameters.pas',
  duM5ScaleDevice in 'Units\duM5ScaleDevice.pas',
  duOposStatistics in 'Units\duOposStatistics.pas',
  duScaleDriver2 in 'Units\duScaleDriver2.pas',
  duScaleDriver in 'Units\duScaleDriver.pas',
  SerialPorts in '..\..\Source\Shared\SerialPorts.pas',
  DeviceNotification in '..\..\Source\SmFiscalPrinter\Units\DeviceNotification.pas',
  PortUtil in '..\..\Source\Shared\PortUtil.pas',
  TextReport in '..\..\Source\Shared\TextReport.pas',
  OposMessages in '..\..\Source\SmFiscalPrinter\Units\OposMessages.pas';

{$R *.RES}

begin
  TGUITestRunner.RunTest(RegisteredTests);
end.
