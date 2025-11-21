object Import_Customs: TImport_Customs
  Left = 474
  Top = 280
  Width = 462
  Height = 337
  BorderIcons = [biSystemMenu]
  Caption = 'Import_Customs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = Pop_Upload
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
    Width = 156
    Height = 16
    Caption = 'Column B11 : Customs No.'
  end
  object Label3: TLabel
    Left = 160
    Top = 40
    Width = 164
    Height = 16
    Caption = 'Column C11 : Customs Date'
  end
  object Label4: TLabel
    Left = 160
    Top = 56
    Width = 151
    Height = 16
    Caption = 'Column G11  : Invoice No.'
  end
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 43
    Height = 16
    Caption = 'Status :'
  end
  object Label6: TLabel
    Left = 160
    Top = 73
    Width = 113
    Height = 16
    Caption = 'Column H11  : Rate'
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
    Top = 96
    Width = 441
    Height = 201
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
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
  object Pop_Upload: TPopupMenu
    Left = 92
    Top = 107
    object UploadSampleFiles1: TMenuItem
      Caption = 'Upload Sample Files'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 51
    Top = 104
  end
end
