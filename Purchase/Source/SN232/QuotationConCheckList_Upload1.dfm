object QuotationUpload: TQuotationUpload
  Left = 465
  Top = 233
  BorderStyle = bsDialog
  Caption = 'QuotationUpload'
  ClientHeight = 132
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 25
    Top = 21
    Width = 59
    Height = 20
    Caption = 'Season:'
  end
  object Label2: TLabel
    Left = 13
    Top = 56
    Width = 71
    Height = 20
    Caption = 'FileName:'
  end
  object FileEdit: TEdit
    Left = 88
    Top = 56
    Width = 177
    Height = 28
    ReadOnly = True
    TabOrder = 0
    OnClick = FileEditClick
  end
  object SeaComBo: TComboBox
    Left = 88
    Top = 20
    Width = 177
    Height = 28
    Style = csDropDownList
    ItemHeight = 20
    TabOrder = 1
    Items.Strings = (
      ''
      '17FA'
      '17HO'
      '17SS'
      '17SU'
      '18FA'
      '18HO'
      '18SS'
      '18SU'
      '19FA'
      '19HO'
      '19SS'
      '18SU'
      '20FA'
      '20HO'
      '20SS'
      '20SU')
  end
  object Button1: TButton
    Left = 56
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 204
    Top = 58
  end
end
