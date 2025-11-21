object Import_HSCode: TImport_HSCode
  Left = 373
  Top = 340
  Width = 467
  Height = 377
  BorderIcons = [biSystemMenu]
  Caption = 'Import_HSCode'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 73
    Align = alTop
    PopupMenu = Pop_Upload
    TabOrder = 0
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
      Width = 73
      Height = 16
      Caption = 'RYNO =H11'
    end
    object Label3: TLabel
      Left = 160
      Top = 44
      Width = 106
      Height = 16
      Caption = 'Invoice No.=AA11'
    end
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 43
      Height = 16
      Caption = 'Status :'
    end
    object btnImport: TButton
      Left = 345
      Top = 14
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
      OnClick = btnImportClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 73
    Width = 451
    Height = 265
    Align = alClient
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 56
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel Files|*.XLS;*.XLSX'
    Left = 88
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 51
    Top = 104
  end
  object Pop_Upload: TPopupMenu
    Left = 92
    Top = 107
    object UploadSampleFiles1: TMenuItem
      Caption = 'Upload Sample Files'
    end
  end
end
