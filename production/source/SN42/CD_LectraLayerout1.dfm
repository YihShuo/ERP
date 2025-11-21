object CD_LectraLayerout: TCD_LectraLayerout
  Left = 497
  Top = 275
  Width = 918
  Height = 539
  Caption = 'CD_LectraLayerout'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 145
    Width = 910
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 425
    Width = 910
    Height = 5
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 227
      Top = 43
      Width = 68
      Height = 16
      Caption = 'MaxLength:'
    end
    object Button4: TButton
      Left = 363
      Top = 40
      Width = 68
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button4Click
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 2
      Width = 207
      Height = 63
      Caption = 'Lop'#23652#25976
      TabOrder = 1
      object Lop48CK: TCheckBox
        Left = 13
        Top = 20
        Width = 68
        Height = 17
        Caption = '48 Lop'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object Lop36CK: TCheckBox
        Left = 11
        Top = 38
        Width = 68
        Height = 17
        Caption = '36 Lop'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object Lop24CK: TCheckBox
        Left = 77
        Top = 20
        Width = 68
        Height = 17
        Caption = '24 Lop'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object Lop12CK: TCheckBox
        Left = 77
        Top = 37
        Width = 68
        Height = 17
        Caption = '12 Lop'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object Lop6CK: TCheckBox
        Left = 139
        Top = 37
        Width = 62
        Height = 17
        Caption = '6 Lop'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
    end
    object LengthEdit: TEdit
      Left = 302
      Top = 40
      Width = 41
      Height = 24
      TabOrder = 2
      Text = '100'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 910
    Height = 72
    Align = alTop
    DataSource = SMDDS_DS
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #27161#26999#39636
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 150
    Width = 910
    Height = 275
    Align = alClient
    DataSource = LayerDS
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #27161#26999#39636
    FooterFont.Style = []
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 430
    Width = 910
    Height = 78
    Align = alBottom
    DataSource = TotQtyDS
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #27161#26999#39636
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object SMDDSQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select SMDD.PlanDate,BDepartment.DepName,BDepartment.ID,SMDD.DDB' +
        'H,DDZL.DDBH as YSBH,DDZL.Article,XXZL.DAOMH,SMDD.Qty from SMDD'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=SMDD.DepNo'
      'where SMDD.GXLB='#39'A'#39' and XXZL.DAOMH='#39'LY-CT AS OX CR-XXX'#39
      
        '      and convert(smalldatetime,convert(varchar,SMDD.PlanDate,11' +
        '1)) between '#39'2018/01/01'#39' and '#39'2018/01/13'#39)
    UpdateObject = UpdSMDDS
    Left = 86
    Top = 176
  end
  object SMDDS_DS: TDataSource
    DataSet = SMDDSQry
    Left = 86
    Top = 209
  end
  object UpdSMDDS: TUpdateSQL
    Left = 86
    Top = 241
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 176
  end
  object LayerQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select Convert(int,1.0) as Layer '
      ' ,192 as '#39' 10.5'#39' '
      ' ,756 as '#39'05.5'#39' '
      ' ,204 as '#39' 11.0'#39' '
      ' ,636 as '#39'06.0'#39' '
      ' ,1080 as '#39'04.5'#39' '
      ' ,444 as '#39'02.5'#39' '
      ' ,240 as '#39' 13.0'#39' '
      ' ,1104 as '#39'04.0'#39' '
      ' ,972 as '#39'05.0'#39' '
      ' ,228 as '#39' 12.5'#39' '
      ' ,444 as '#39'01.5'#39' '
      ' ,192 as '#39' 12.0'#39' '
      ' ,432 as '#39'03.0'#39' '
      ' ,744 as '#39'03.5'#39' '
      ' ,252 as '#39'01.0'#39' '
      ',Convert(int,15840) as Pairs'
      ',Convert(float,0.0) as LayoutLen '
      'where 1=2')
    UpdateObject = UpdLayer
    Left = 126
    Top = 176
  end
  object LayerDS: TDataSource
    DataSet = LayerQry
    Left = 126
    Top = 209
  end
  object UpdLayer: TUpdateSQL
    Left = 126
    Top = 241
  end
  object TotQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select SMDD.PlanDate,BDepartment.DepName,BDepartment.ID,SMDD.DDB' +
        'H,DDZL.DDBH as YSBH,DDZL.Article,XXZL.DAOMH,SMDD.Qty from SMDD'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=SMDD.DepNo'
      'where SMDD.GXLB='#39'A'#39' and XXZL.DAOMH='#39'LY-CT AS OX CR-XXX'#39
      
        '      and convert(smalldatetime,convert(varchar,SMDD.PlanDate,11' +
        '1)) between '#39'2018/01/01'#39' and '#39'2018/01/13'#39)
    UpdateObject = UpdTotQry
    Left = 166
    Top = 176
  end
  object TotQtyDS: TDataSource
    DataSet = TotQry
    Left = 166
    Top = 209
  end
  object UpdTotQry: TUpdateSQL
    Left = 166
    Top = 241
  end
  object xtbwyl1Qry: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 211
  end
end
