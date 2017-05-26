unit fmuFptrEvents;

interface

uses
  // VCL
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  // This
  untPages, OposFiscalPrinter, OposUtils, OposFptrUtils;

type
  { TfmFptrEvents }

  TfmFptrEvents = class(TPage)
    memEvents: TMemo;
    btnClear: TButton;
    procedure btnClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  public
    procedure DirectIOEvent(Sender: TObject; EventNumber: Integer;
      var pData: Integer; var pString: WideString);
    procedure ErrorEvent(Sender: TObject; ResultCode: Integer;
      ResultCodeExtended: Integer; ErrorLocus: Integer; var pErrorResponse: Integer);
    procedure OutputCompleteEvent(Sender: TObject; OutputID: Integer);
    procedure StatusUpdateEvent(Sender: TObject; Data: Integer);
    procedure Addline(const S: string);
  end;

implementation

{$R *.DFM}

function GetTimeStamp: string;
var
  Year, Month, Day: Word;
  Hour, Min, Sec, MSec: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  DecodeTime(Time, Hour, Min, Sec, MSec);
  Result := Format('%.2d.%.2d.%.4d %.2d:%.2d:%.2d.%.3d ',[
    Day, Month, Year, Hour, Min, Sec, MSec]);
  Result := Format('[%s]', [Result]);
end;

procedure TfmFptrEvents.btnClearClick(Sender: TObject);
begin
  memEvents.Clear;
end;

// IOPOSFiscalPrinterEvents

procedure TfmFptrEvents.Addline(const S: string);
begin
  memEvents.Lines.Add(S);
end;

procedure TfmFptrEvents.FormCreate(Sender: TObject);
begin
  FiscalPrinter.Driver.OnDirectIOEvent := DirectIOEvent;
  FiscalPrinter.Driver.OnErrorEvent := ErrorEvent;
  FiscalPrinter.Driver.OnOutputCompleteEvent := OutputCompleteEvent;
  FiscalPrinter.Driver.OnStatusUpdateEvent := StatusUpdateEvent;
end;

procedure TfmFptrEvents.DirectIOEvent(Sender: TObject; EventNumber: Integer;
  var pData: Integer; var pString: WideString);
var
  S: string;
begin
  S := Format('%s DirectIOEvent(%d, %d, %s)', [GetTimeStamp, EventNumber, pData, pString]);
  AddLine(S);
end;

procedure TfmFptrEvents.ErrorEvent(Sender: TObject; ResultCode,
  ResultCodeExtended, ErrorLocus: Integer; var pErrorResponse: Integer);
var
  S: string;
begin
  S := Format('%s ErrorEvent: %s, %s, %s, %s)', [
    GetTimeStamp,
    GetResultCodeText(ResultCode),
    GetResultCodeExtendedText(ResultCodeExtended),
    GetErrorLocusText(ErrorLocus),
    GetErrorResponseText(pErrorResponse)]);
  AddLine(S);
end;

procedure TfmFptrEvents.OutputCompleteEvent(Sender: TObject;
  OutputID: Integer);
var
  S: string;
begin
  S := Format('%s OutputCompleteEvent(%d)', [GetTimeStamp, OutputID]);
  AddLine(S);
end;

procedure TfmFptrEvents.StatusUpdateEvent(Sender: TObject; Data: Integer);
var
  S: string;
begin
  S := Format('%s StatusUpdateEvent(%s)', [
    GetTimeStamp, GetStatusUpdateEventText(Data)]);
  AddLine(S);
end;

end.
