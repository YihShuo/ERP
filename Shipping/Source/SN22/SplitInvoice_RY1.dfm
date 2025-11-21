object SplitInvoice_RY: TSplitInvoice_RY
  Left = 419
  Top = 182
  Width = 807
  Height = 485
  BorderIcons = [biSystemMenu]
  Caption = 'SplitInvoice_RY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 327
    Width = 791
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 104
      Top = 16
      Width = 96
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'INV NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 392
      Top = 12
      Width = 31
      Height = 30
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object Button1: TButton
      Left = 48
      Top = 12
      Width = 65
      Height = 30
      Caption = 'Query'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object btnSave: TButton
      Left = 544
      Top = 12
      Width = 65
      Height = 30
      Caption = 'Save'
      TabOrder = 1
      OnClick = btnSaveClick
    end
    object Button3: TButton
      Left = 608
      Top = 12
      Width = 65
      Height = 30
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 478
      Top = 12
      Width = 65
      Height = 30
      Caption = 'Delete'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 429
      Top = 12
      Width = 50
      Height = 30
      Caption = 'Edit'
      TabOrder = 4
      OnClick = Button2Click
    end
    object INV_NOEdit: TEdit
      Left = 207
      Top = 11
      Width = 185
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = INV_NOEditChange
    end
  end
  object DBGridEh5: TDBGridEh
    Left = 0
    Top = 330
    Width = 791
    Height = 116
    Align = alBottom
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RYNO'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footer.FieldName = 'CTS'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.FieldName = 'Pairs'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'NW'
        Footer.FieldName = 'NW'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'GW'
        Footer.FieldName = 'GW'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'CBM'
        Footer.FieldName = 'CBM'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 49
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 791
    Height = 278
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RYNO'
        Footers = <>
        ReadOnly = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 35
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CTQ'
        Footers = <>
        Width = 35
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CTZ'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'PAIRS'
        Footers = <>
        ReadOnly = True
        Width = 49
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'NW'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'GW'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'TNW'
        Footers = <>
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'TGW'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'L'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'W'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'H'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        Color = 16758783
        EditButtons = <>
        FieldName = 'CBM'
        Footers = <>
        ReadOnly = True
        Width = 49
      end>
  end
  object paking: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ROW_NUMBER()OVER(ORDER BY p.RYNO,p.XH,p.SIZ)ID,p.RYNO,p.X' +
        'H,p.SIZ'
      
        #9',p.CTQ,pp.CTQ AS CTQ_Old,p.CTZ,pp.CTZ AS CTZ_Old,p.CTS,p.QTY,p.' +
        'PAIRS'
      #9',p.PAIRS Pairs_Old,p.NW,p.GW,p.L,p.W,p.H,p.CBM,p.TNW,p.TGW'
      'FROM PACKING p'
      
        'LEFT JOIN PACKING pp ON pp.INV_NO='#39#39' AND pp.RYNO=p.RYNO AND pp.X' +
        'H=p.XH AND pp.SIZ=p.SIZ'
      'WHERE 1=2')
    UpdateObject = UpdateSQL1
    Left = 200
    Top = 153
    object pakingXH: TStringField
      FieldName = 'XH'
      Origin = 'MYDB.PACKING.XH'
      FixedChar = True
      Size = 10
    end
    object pakingSIZ: TStringField
      FieldName = 'SIZ'
      Origin = 'MYDB.PACKING.SIZ'
      FixedChar = True
      Size = 10
    end
    object pakingCTQ: TIntegerField
      FieldName = 'CTQ'
      Origin = 'MYDB.PACKING.CTQ'
      OnChange = pakingCTQChange
    end
    object pakingCTZ: TIntegerField
      FieldName = 'CTZ'
      Origin = 'MYDB.PACKING.CTZ'
      OnChange = pakingCTQChange
    end
    object pakingCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'MYDB.PACKING.CTS'
    end
    object pakingQTY: TIntegerField
      FieldName = 'QTY'
      Origin = 'MYDB.PACKING.QTY'
    end
    object pakingPAIRS: TIntegerField
      FieldName = 'PAIRS'
      Origin = 'MYDB.PACKING.PAIRS'
    end
    object pakingNW: TFloatField
      FieldName = 'NW'
      Origin = 'MYDB.PACKING.NW'
    end
    object pakingGW: TFloatField
      FieldName = 'GW'
      Origin = 'MYDB.PACKING.GW'
    end
    object pakingL: TFloatField
      FieldName = 'L'
      Origin = 'MYDB.PACKING.L'
    end
    object pakingW: TFloatField
      FieldName = 'W'
      Origin = 'MYDB.PACKING.W'
    end
    object pakingH: TFloatField
      FieldName = 'H'
      Origin = 'MYDB.PACKING.H'
    end
    object pakingCBM: TFloatField
      FieldName = 'CBM'
      Origin = 'MYDB.PACKING.CBM'
    end
    object pakingCTQ_Old: TIntegerField
      FieldName = 'CTQ_Old'
      Origin = 'MYDB.PACKING.CTQ'
    end
    object pakingCTZ_Old: TIntegerField
      FieldName = 'CTZ_Old'
      Origin = 'MYDB.PACKING.CTZ'
    end
    object pakingID: TFloatField
      FieldName = 'ID'
    end
    object pakingRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object pakingPairs_Old: TIntegerField
      FieldName = 'Pairs_Old'
    end
    object pakingTNW: TFloatField
      FieldName = 'TNW'
    end
    object pakingTGW: TFloatField
      FieldName = 'TGW'
    end
  end
  object DS1: TDataSource
    DataSet = paking
    Left = 232
    Top = 153
  end
  object packing_D: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * '
      'from Packing_D '
      '')
    Left = 212
    Top = 364
    object packing_DCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'MYDB.PACKING_D.CTS'
    end
    object packing_DPairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'MYDB.PACKING_D.Pairs'
    end
    object packing_DNW: TFloatField
      FieldName = 'NW'
      Origin = 'MYDB.PACKING_D.NW'
    end
    object packing_DGW: TFloatField
      FieldName = 'GW'
      Origin = 'MYDB.PACKING_D.GW'
    end
    object packing_DCBM: TFloatField
      FieldName = 'CBM'
      Origin = 'MYDB.PACKING_D.CBM'
    end
    object packing_DRYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'MYDB.PACKING_D.RYNO'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = packing_D
    Left = 242
    Top = 365
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 152
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 152
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 152
  end
  object UpdateSQL1: TUpdateSQL
    Left = 200
    Top = 184
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 152
  end
end
