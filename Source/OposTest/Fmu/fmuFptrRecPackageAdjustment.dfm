object fmFptrRecPackageAdjustment: TfmFptrRecPackageAdjustment
  Left = 344
  Top = 391
  AutoScroll = False
  Caption = 'PrintRecPackageAdjustment'
  ClientHeight = 270
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    392
    270)
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescription: TTntLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Description:'
  end
  object lblAdjustmentType: TTntLabel
    Left = 8
    Top = 32
    Width = 79
    Height = 13
    Caption = 'AdjustmentType:'
  end
  object lblVatAdjustment: TTntLabel
    Left = 8
    Top = 80
    Width = 71
    Height = 13
    Caption = 'VatAdjustment:'
  end
  object Label1: TTntLabel
    Left = 8
    Top = 56
    Width = 79
    Height = 13
    Caption = 'AdjustmentType:'
  end
  object btnExecute: TTntButton
    Left = 224
    Top = 112
    Width = 161
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'PrintRecPackageAdjustment'
    TabOrder = 4
    OnClick = btnExecuteClick
  end
  object edtDescription: TTntEdit
    Left = 96
    Top = 8
    Width = 289
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = 'printRecPackageAdjustment'
  end
  object edtAdjustmentType: TTntEdit
    Left = 96
    Top = 32
    Width = 289
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = '1'
  end
  object edtVatAdjustment: TTntEdit
    Left = 96
    Top = 80
    Width = 289
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    Text = '0'
  end
  object cbAdjustmentType: TTntComboBox
    Left = 96
    Top = 56
    Width = 289
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbAdjustmentTypeChange
    Items.Strings = (
      'FPTR_AT_DISCOUNT'
      'FPTR_AT_SURCHARGE')
  end
end
