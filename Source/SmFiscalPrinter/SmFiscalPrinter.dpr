library SmFiscalPrinter;

{%ToDo 'SmFiscalPrinter.todo'}

uses
  ComServ,
  Opos in '..\Opos\Opos.pas',
  Oposhi in '..\Opos\Oposhi.pas',
  OposFptr in '..\Opos\OposFptr.pas',
  OposUtils in '..\Opos\OposUtils.pas',
  OposFptrhi in '..\Opos\OposFptrhi.pas',
  OposException in '..\Opos\OposException.pas',
  SmFiscalPrinterLib_TLB in 'SmFiscalPrinterLib_TLB.pas',
  FiscalPrinterImpl in 'Units\FiscalPrinterImpl.pas' {FiscalPrinter: CoClass},
  oleXmlParams in 'Units\oleXmlParams.pas' {XmlParams: CoClass},
  oleCashDrawer in 'Units\oleCashDrawer.pas' {CashDrawer: CoClass},
  FiscalPrinterState in 'Units\FiscalPrinterState.pas',
  CashDrawerParameters in 'Units\CashDrawerParameters.pas',
  DirectIOAPI in 'Units\DirectIOAPI.pas',
  ShtrihFiscalPrinter in 'Units\ShtrihFiscalPrinter.pas',
  PrinterTypes in 'Units\PrinterTypes.pas',
  CommandDef in '..\SmScale\Units\CommandDef.pas',
  XMLParser in '..\Shared\XMLParser.pas',
  XmlValue in 'Units\XmlValue.pas',
  PayType in 'Units\PayType.pas',
  OposEvents in '..\Opos\OposEvents.pas',
  SerialPorts in 'Units\SerialPorts.pas',
  DebugUtils in '..\Shared\DebugUtils.pas',
  PrinterTable in 'Units\PrinterTable.pas',
  fmuLogo in 'Fmu\fmuLogo.pas' {fmLogo},
  untUtil in 'Units\untUtil.pas',
  ElectronicJournal in 'Units\ElectronicJournal.pas',
  RegExpr in 'Units\RegExpr.pas',
  SharedPrinter in 'Units\SharedPrinter.pas',
  OposCash in '..\Opos\OposCash.pas',
  OposCashhi in '..\Opos\OposCashhi.pas',
  ScaleStatistics in '..\SmScale\Units\ScaleStatistics.pas',
  OposStat in '..\Opos\OposStat.pas',
  OposStatistics in '..\Opos\OposStatistics.pas',
  StatisticItem in 'Units\StatisticItem.pas',
  TrainingReceiptPrinter in 'Units\TrainingReceiptPrinter.pas',
  FiscalReceiptPrinter in 'Units\FiscalReceiptPrinter.pas',
  ReceiptPrinter in 'Units\ReceiptPrinter.pas',
  CashOutReceipt in 'Units\CashOutReceipt.pas',
  CashInReceipt in 'Units\CashInReceipt.pas',
  OposFptrUtils in '..\Opos\OposFptrUtils.pas',
  OposCashUtils in '..\Opos\OposCashUtils.pas',
  BStrUtil in '..\Shared\BStrUtil.pas',
  FiscalPrinterTypes in 'Units\FiscalPrinterTypes.pas',
  FixedStrings in 'Units\FixedStrings.pas',
  CustomReceipt in 'Units\CustomReceipt.pas',
  VersionInfo in '..\Shared\VersionInfo.pas',
  DeviceTables in 'Units\DeviceTables.pas',
  PrinterModel in 'Units\PrinterModel.pas',
  DeviceService in '..\Shared\DeviceService.pas',
  ServiceVersion in '..\Shared\ServiceVersion.pas',
  GenericReceipt in 'Units\GenericReceipt.pas',
  GlobusTextReceipt in 'Units\GlobusTextReceipt.pas',
  PrinterProtocol2 in 'Units\PrinterProtocol2.pas',
  PrinterConnection in 'Units\PrinterConnection.pas',
  SocketPort in 'Units\SocketPort.pas',
  DCOMConnection in 'Units\DCOMConnection.pas',
  OposServiceDevice19 in '..\Opos\OposServiceDevice19.pas',
  Semaphore in '..\Opos\Semaphore.pas',
  FptrServerLib_TLB in '..\SmFptrSrv\FptrServerLib_TLB.pas',
  VSysUtils in 'Units\VSysUtils.pas',
  OposSemaphore in '..\Opos\OposSemaphore.pas',
  XmlUtils in 'Units\XmlUtils.pas',
  PrinterCommand in 'Units\PrinterCommand.pas',
  FileUtils in '..\Shared\FileUtils.pas',
  OposMessages in 'Units\OposMessages.pas',
  LogFile in '..\Shared\LogFile.pas',
  oleFiscalPrinter in 'Units\oleFiscalPrinter.pas',
  EscPrinter in 'Units\EscPrinter.pas',
  EscFilter in 'Units\EscFilter.pas',
  CachedSalesReceipt in 'Units\CachedSalesReceipt.pas',
  XmlModelReader in 'Units\XmlModelReader.pas',
  DriverTypes in 'Units\DriverTypes.pas',
  ParameterValue in 'Units\ParameterValue.pas',
  TableParameter in 'Units\TableParameter.pas',
  DefaultModel in 'Units\DefaultModel.pas',
  PrinterEncoding in '..\Opos\PrinterEncoding.pas',
  OposFiscalPrinterNCR in '..\Opos\OposFiscalPrinterNCR.pas',
  OposFiscalPrinter_CCO_TLB in '..\Opos\OposFiscalPrinter_CCO_TLB.pas',
  OposEventsRCS in '..\Opos\OposEventsRCS.pas',
  OposEventsNull in '..\Opos\OposEventsNull.pas',
  OposCashDrawer_CCO_TLB in '..\Opos\OposCashDrawer_CCO_TLB.pas',
  NotifyLink in 'Units\NotifyLink.pas',
  PrinterParameters in 'Units\PrinterParameters.pas',
  PrinterParametersIni in 'Units\PrinterParametersIni.pas',
  SmIniFile in 'Units\SmIniFile.pas',
  ZReport in 'Units\ZReport.pas',
  ClassLogger in '..\Shared\ClassLogger.pas',
  PrinterParametersX in 'Units\PrinterParametersX.pas',
  PrinterParametersRegIBT in 'Units\PrinterParametersRegIBT.pas',
  FiscalPrinterDevice in 'Units\FiscalPrinterDevice.pas',
  PrinterParametersReg in 'Units\PrinterParametersReg.pas',
  DriverError in '..\Shared\DriverError.pas',
  StringUtils in '..\Shared\StringUtils.pas',
  SerialPort in '..\Shared\SerialPort.pas',
  ByteUtils in '..\Shared\ByteUtils.pas',
  CommunicationError in '..\Shared\CommunicationError.pas',
  CommandParam in 'Units\CommandParam.pas',
  NotifyThread in '..\Shared\NotifyThread.pas',
  BinStream in 'Units\BinStream.pas',
  DIOHandlers in '..\Shared\DIOHandlers.pas',
  DIOHandler in '..\Shared\DIOHandler.pas',
  FiscalPrinterStatistics in 'Units\FiscalPrinterStatistics.pas',
  ReceiptItem in 'Units\ReceiptItem.pas',
  GlobusReceipt in 'Units\GlobusReceipt.pas',
  TextReceipt in 'Units\TextReceipt.pas',
  TextItem in 'Units\TextItem.pas',
  MonitoringServer in 'Units\MonitoringServer.pas',
  EJReportParser in 'Units\EJReportParser.pas',
  SimpleSocket in 'Units\SimpleSocket.pas',
  XmlReceiptWriter in 'Units\XmlReceiptWriter.pas',
  DeviceNotification in 'Units\DeviceNotification.pas',
  uZintInterface in 'Units\uZintInterface.pas',
  uZintBarcode in 'Units\uZintBarcode.pas',
  MalinaParams in 'Units\MalinaParams.pas',
  TextMap in 'Units\TextMap.pas',
  RegUtils in 'Units\RegUtils.pas',
  MalinaPlugin in 'Units\MalinaPlugin.pas',
  FptrFilter in 'Units\FptrFilter.pas',
  MalinaZReportFilter in 'Units\MalinaZReportFilter.pas',
  MalinaCard in 'Units\MalinaCard.pas',
  UniposFilter in 'Units\UniposFilter.pas',
  UniposReader in 'Units\UniposReader.pas',
  FuelRecFilter in 'Units\FuelRecFilter.pas',
  RecItem in 'Units\RecItem.pas',
  PrinterLine in 'Units\PrinterLine.pas',
  AntiFroudFilter in 'Units\AntiFroudFilter.pas',
  PawnTicketFilter in 'Units\PawnTicketFilter.pas',
  PrinterDeviceFilter in 'Units\PrinterDeviceFilter.pas',
  ReceiptReportFilter in 'Units\ReceiptReportFilter.pas',
  SettingsParams in 'Units\SettingsParams.pas',
  MathUtils in '..\Shared\MathUtils.pas',
  formatTLV in 'Units\formatTLV.pas',
  TLV in 'Units\TLV.pas',
  SalesReceipt in 'Units\SalesReceipt.pas',
  fmuPhone in 'Fmu\fmuPhone.pas' {fmPhone},
  RosneftSalesReceipt in 'Units\RosneftSalesReceipt.pas',
  RecDiscount in 'Units\RecDiscount.pas',
  TankFilter in 'Units\TankFilter.pas',
  TankReader in 'Units\TankReader.pas',
  UniposTank in 'Units\UniposTank.pas',
  TCPConnection in 'Units\TCPConnection.pas',
  UniposPrinter in 'Units\UniposPrinter.pas',
  PortUtil in '..\Shared\PortUtil.pas',
  TextReport in '..\Shared\TextReport.pas',
  fmuSelect in 'Fmu\fmuSelect.pas' {fmSelect},
  fmuEMail in 'Fmu\fmuEMail.pas' {fmEMail},
  Retalix in 'Units\Retalix.pas',
  MalinaFilter in 'Units\MalinaFilter.pas',
  FSSalesReceipt in 'Units\FSSalesReceipt.pas',
  FormUtils in 'Fmu\FormUtils.pas',
  NonfiscalDoc in 'Units\NonfiscalDoc.pas',
  fmuTimeSync in 'Fmu\fmuTimeSync.pas' {fmTimeSync},
  CorrectionReceipt in 'Units\CorrectionReceipt.pas',
  CsvPrinterTableFormat in 'Units\CsvPrinterTableFormat.pas',
  PrinterTableFormat in 'Units\PrinterTableFormat.pas',
  ReceiptTemplate in 'Units\ReceiptTemplate.pas',
  VatCode in 'Units\VatCode.pas',
  FSService in 'Units\FSService.pas',
  DriverContext in 'Units\DriverContext.pas',
  TextParser in 'Units\TextParser.pas',
  PrinterPort in 'Units\PrinterPort.pas',
  PrinterProtocol1 in 'Units\PrinterProtocol1.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
