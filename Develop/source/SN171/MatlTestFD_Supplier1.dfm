object MatlTestFD_Supplier: TMatlTestFD_Supplier
  Left = 460
  Top = 228
  Width = 485
  Height = 434
  BorderIcons = [biSystemMenu]
  Caption = 'MatlTestFD_Supplier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 8
      Width = 61
      Height = 20
      Caption = 'Sup. No.'
    end
    object lbl2: TLabel
      Left = 162
      Top = 8
      Width = 58
      Height = 20
      Caption = 'Supplier'
    end
    object Button1: TButton
      Left = 360
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object edt1: TEdit
      Left = 79
      Top = 8
      Width = 73
      Height = 28
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 229
      Top = 8
      Width = 121
      Height = 28
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 477
    Height = 347
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'Sup. No.'
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier'
        Title.TitleButton = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  *  from ZSZL '
      'where 1=2')
    Left = 424
    Top = 160
    object strngfldQuery1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.ZSZL.zsdh'
      FixedChar = True
      Size = 6
    end
    object strngfldQuery1zsqm: TStringField
      FieldName = 'zsqm'
      Origin = 'DB.ZSZL.zsqm'
      FixedChar = True
      Size = 50
    end
    object strngfldQuery1zsjc: TStringField
      FieldName = 'zsjc'
      Origin = 'DB.ZSZL.zsjc'
      FixedChar = True
    end
    object strngfldQuery1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.ZSZL.zsywjc'
      FixedChar = True
    end
    object strngfldQuery1tybh: TStringField
      FieldName = 'tybh'
      Origin = 'DB.ZSZL.tybh'
      FixedChar = True
      Size = 15
    end
    object strngfldQuery1fpdz: TStringField
      FieldName = 'fpdz'
      Origin = 'DB.ZSZL.fpdz'
      FixedChar = True
      Size = 120
    end
    object strngfldQuery1yjdz: TStringField
      FieldName = 'yjdz'
      Origin = 'DB.ZSZL.yjdz'
      FixedChar = True
      Size = 120
    end
    object strngfldQuery1dh: TStringField
      FieldName = 'dh'
      Origin = 'DB.ZSZL.dh'
      FixedChar = True
    end
    object strngfldQuery1cz: TStringField
      FieldName = 'cz'
      Origin = 'DB.ZSZL.cz'
      FixedChar = True
    end
    object strngfldQuery1fzr: TStringField
      FieldName = 'fzr'
      Origin = 'DB.ZSZL.fzr'
      FixedChar = True
    end
    object strngfldQuery1bb: TStringField
      FieldName = 'bb'
      Origin = 'DB.ZSZL.bb'
      FixedChar = True
      Size = 4
    end
    object strngfldQuery1llr2: TStringField
      FieldName = 'llr2'
      Origin = 'DB.ZSZL.llr2'
      FixedChar = True
    end
    object strngfldQuery1llr: TStringField
      FieldName = 'llr'
      Origin = 'DB.ZSZL.llr'
      FixedChar = True
    end
    object strngfldQuery1dybh: TStringField
      FieldName = 'dybh'
      Origin = 'DB.ZSZL.dybh'
      FixedChar = True
      Size = 6
    end
    object strngfldQuery1mark: TStringField
      FieldName = 'mark'
      Origin = 'DB.ZSZL.mark'
      FixedChar = True
      Size = 5
    end
    object strngfldQuery1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ZSZL.USERID'
      FixedChar = True
    end
    object dtmfldQuery1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ZSZL.USERDATE'
    end
    object strngfldQuery1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.ZSZL.YN'
      FixedChar = True
      Size = 1
    end
    object strngfldQuery1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.ZSZL.Country'
      FixedChar = True
      Size = 3
    end
    object strngfldQuery1MZSDH: TStringField
      FieldName = 'MZSDH'
      Origin = 'DB.ZSZL.MZSDH'
      FixedChar = True
      Size = 6
    end
  end
end
