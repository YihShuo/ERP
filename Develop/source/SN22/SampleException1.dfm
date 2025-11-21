object SampleException: TSampleException
  Left = 315
  Top = 161
  Width = 913
  Height = 493
  Caption = 'Material Supplier Exception'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 897
    Height = 390
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 273
      Top = 1
      Width = 623
      Height = 388
      Align = alClient
      DataSource = DS2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'YPDH'
          Footers = <>
          Title.Caption = 'SampleNo'
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'devcode'
          Footers = <>
          Title.Caption = 'SR#'
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.Caption = 'SKU'
          Width = 145
        end
        item
          EditButtons = <>
          FieldName = 'XH'
          Footers = <>
          Title.Caption = 'Sort'
          Width = 33
        end
        item
          EditButtons = <>
          FieldName = 'BWBH'
          Footers = <>
          Title.Caption = 'Part'
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Title.Caption = 'MatNo'
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'child'
          Footers = <>
          Title.Caption = 'Child'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CSBH'
          Footers = <>
          Title.Caption = 'SupID'
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'UserID'
          Footers = <>
          Width = 51
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 272
      Height = 388
      Align = alLeft
      DataSource = DS1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <
            item
              FieldName = 'CLBH'
              ValueType = fvtCount
            end>
          Title.Caption = 'MatNo'
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Caption = 'Mat Name'
        end>
    end
  end
  object ToolPanel: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 65
    Align = alTop
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label37: TLabel
      Left = 16
      Top = 36
      Width = 50
      Height = 16
      Caption = 'Season:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 27
      Top = 12
      Width = 39
      Height = 16
      Caption = 'Stage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 253
      Top = 24
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Check: TCheckBox
      Left = 197
      Top = 34
      Width = 54
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object JiJieEdit: TEdit
      Left = 68
      Top = 32
      Width = 121
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object KFJDEdit: TComboBox
      Left = 69
      Top = 7
      Width = 120
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 3
      Text = 'PRO'
      Items.Strings = (
        ''
        'PRO'
        'SM2'
        'SM3'
        'PDT'
        'CFM')
    end
    object DevTypeEdit: TComboBox
      Left = 920
      Top = 64
      Width = 105
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        ''
        'inline'
        'SMU')
    end
    object Check1: TCheckBox
      Left = 198
      Top = 8
      Width = 60
      Height = 17
      Caption = 'drop'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object CLZLQry: TQuery
    BeforeScroll = CLZLQryBeforeScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLBH,CLZL.YWPM from ('
      'select CLBH,Count(CLBH) as count from ('
      'select * from ('
      'select YPZLS.CLBH,YPZLS.CSBH from YPZL'
      'inner join YPZLS on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'where KFXXZL.JiJie='#39'16S'#39' and YPZL.KFJD='#39'SM3'#39
      'Group by YPZLS.CLBH,YPZLS.CSBH '
      'Union all'
      'Select * from ('
      'SELECT clzhzl.CLDH1 as CLBH ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      'FROM ypzls  '
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'WHERE KFXXZL.JiJie='#39'16S'#39' and YPZL.KFJD='#39'SM3'#39' and CLZHZL.SYL>0  '
      ') clzhzl group by CLBH,CSBH ) AA group by CLBH,CSBH'
      ') A  Group by CLBH  having Count(CLBH) >=2'
      ') MatList'
      'inner join CLZL on CLZL.CLDH=MatList.CLBH')
    Left = 5
    Top = 116
    object CLZLQryCLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CLZLQryYWPM: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object SuppDetQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select * from ('
      
        'select YPZLS.YPDH,kfxxzl.devcode,kfxxzl.Article,YPZLS.XH,YPZLS.B' +
        'WBH,CLBH,null as child,CSBH,YPZL.UserID from YPZLS'
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      
        'where KFXXZL.JiJie='#39'16S'#39' and YPZL.KFJD='#39'SM3'#39' and  YPZLS.CLBH='#39'M0' +
        '30005647'#39
      ' and YPZL.UserID='#39'42485'#39' '
      'union all'
      
        'SELECT YPZLS.YPDH,kfxxzl.devcode,kfxxzl.Article,YPZLS.XH,YPZLS.B' +
        'WBH,null as CLBH,clzhzl.CLDH1 as child,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH,YPZL.Use' +
        'rID '
      'FROM ypzls  '
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      
        'WHERE KFXXZL.JiJie='#39'16S'#39' and YPZL.KFJD='#39'SM3'#39' and CLZHZL.SYL>0   ' +
        'and clzhzl.CLDH1='#39'M030005647'#39
      ' and YPZL.UserID='#39'42485'#39' '
      ') YPZLS order by CSBH')
    Left = 325
    Top = 121
    object SuppDetQryYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object SuppDetQrydevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object SuppDetQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SuppDetQryXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object SuppDetQryBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object SuppDetQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object SuppDetQrychild: TStringField
      FieldName = 'child'
      FixedChar = True
      Size = 10
    end
    object SuppDetQryCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SuppDetQryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = CLZLQry
    Left = 35
    Top = 118
  end
  object DS2: TDataSource
    DataSet = SuppDetQry
    Left = 296
    Top = 121
  end
  object TmpQry: TQuery
    BeforeScroll = CLZLQryBeforeScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLBH,CLZL.YWPM from ('
      'select CLBH,Count(CLBH) as count from ('
      'select * from ('
      'select YPZLS.CLBH,YPZLS.CSBH from YPZL'
      'inner join YPZLS on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'where KFXXZL.JiJie='#39'16S'#39' and YPZL.KFJD='#39'SM3'#39
      'Group by YPZLS.CLBH,YPZLS.CSBH '
      'Union all'
      'Select * from ('
      'SELECT clzhzl.CLDH1 as CLBH ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      'FROM ypzls  '
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'WHERE KFXXZL.JiJie='#39'16S'#39' and YPZL.KFJD='#39'SM3'#39' and CLZHZL.SYL>0  '
      ') clzhzl group by CLBH,CSBH ) AA group by CLBH,CSBH'
      ') A  Group by CLBH  having Count(CLBH) >=2'
      ') MatList'
      'inner join CLZL on CLZL.CLDH=MatList.CLBH')
    Left = 77
    Top = 116
  end
end
