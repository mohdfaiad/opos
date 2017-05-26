object fmFiscalPrinter: TfmFiscalPrinter
  Left = 222
  Top = 96
  Anchors = [akTop]
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FiscalPrinter'
  ClientHeight = 437
  ClientWidth = 544
  Color = clBtnFace
  Constraints.MinHeight = 451
  Constraints.MinWidth = 552
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlData: TPanel
    Left = 178
    Top = 0
    Width = 366
    Height = 330
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 330
    Width = 544
    Height = 107
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      544
      107)
    object lblTime: TLabel
      Left = 424
      Top = 10
      Width = 26
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Time:'
    end
    object lblResult: TLabel
      Left = 8
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Result:'
    end
    object lblExtendedResult: TLabel
      Left = 8
      Top = 36
      Width = 103
      Height = 13
      Caption = 'ResultCodeExtended:'
    end
    object lblPrinterState: TLabel
      Left = 8
      Top = 60
      Width = 58
      Height = 13
      Caption = 'PrinterState:'
    end
    object lblErrorString: TLabel
      Left = 8
      Top = 84
      Width = 52
      Height = 13
      Caption = 'ErrorString:'
    end
    object edtTime: TEdit
      Left = 456
      Top = 8
      Width = 81
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
    object edtResult: TEdit
      Left = 120
      Top = 8
      Width = 297
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object edtExtendedResult: TEdit
      Left = 120
      Top = 32
      Width = 297
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edtPrinterState: TEdit
      Left = 120
      Top = 56
      Width = 297
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
    end
    object edtErrorString: TEdit
      Left = 120
      Top = 80
      Width = 297
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 178
    Height = 330
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object lbPages: TListBox
      Left = 5
      Top = 5
      Width = 168
      Height = 320
      Style = lbOwnerDrawVariable
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      OnClick = lbPagesClick
    end
  end
end
