object Import_VATNo: TImport_VATNo
  Left = 900
  Top = 347
  Width = 469
  Height = 337
  BorderIcons = [biSystemMenu]
  Caption = 'Import_VATNo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 158
    Height = 16
    Caption = 'Notes when import excel: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 143
    Height = 16
    Caption = 'Column A2 : CustomsNo'
  end
  object Label3: TLabel
    Left = 160
    Top = 40
    Width = 120
    Height = 16
    Caption = 'Column B2 : VATNO'
  end
  object Label4: TLabel
    Left = 160
    Top = 56
    Width = 137
    Height = 16
    Caption = 'Column C2 : VATDATE'
  end
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 43
    Height = 16
    Caption = 'Status :'
  end
  object Label6: TLabel
    Left = 424
    Top = 16
    Width = 3
    Height = 16
  end
  object Button1: TButton
    Left = 344
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Import'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 80
    Width = 441
    Height = 217
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object SampleFiless: TButton
    Left = 345
    Top = 41
    Width = 75
    Height = 30
    Caption = 'SampleFile'
    TabOrder = 2
    OnClick = SampleFilessClick
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel Files|*.XLS;*.XLSX'
    Left = 72
    Top = 32
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 51
    Top = 104
  end
end
