object readexcelfile: Treadexcelfile
  Left = 612
  Top = 161
  Width = 725
  Height = 480
  Caption = 'Excel List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ss: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 108
      Top = 24
      Width = 4
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 256
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
      Visible = False
    end
    object chfile: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Change'
      TabOrder = 1
      OnClick = chfileClick
    end
    object rf: TButton
      Left = 8
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Reading File'
      TabOrder = 2
      OnClick = rfClick
    end
  end
  object idg: TStringGrid
    Left = 0
    Top = 73
    Width = 709
    Height = 369
    Align = alClient
    ColCount = 7
    FixedCols = 0
    RowCount = 1000
    FixedRows = 0
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    FileName = '*.xls'
    Left = 720
    Top = 32
  end
end
