object DelOther_C_CL: TDelOther_C_CL
  Left = 277
  Top = 206
  Width = 833
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_C_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 168
      Top = 24
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label1: TLabel
      Left = 152
      Top = 64
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
    end
    object Label4: TLabel
      Left = 296
      Top = 64
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 8
      Top = 64
      Width = 40
      Height = 16
      Caption = 'SCBH:'
    end
    object Label6: TLabel
      Left = 408
      Top = 64
      Width = 21
      Height = 16
      Caption = 'GX:'
    end
    object Button1: TButton
      Left = 512
      Top = 48
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit2: TEdit
      Left = 232
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit3: TEdit
      Left = 344
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object CBX2: TComboBox
      Left = 224
      Top = 56
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX3: TComboBox
      Left = 344
      Top = 56
      Width = 57
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 5
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object Edit4: TEdit
      Left = 56
      Top = 56
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Button2: TButton
      Left = 600
      Top = 8
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 7
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 600
      Top = 48
      Width = 81
      Height = 33
      Caption = 'SELECT ALL'
      TabOrder = 8
      OnClick = Button3Click
    end
    object CBX1: TComboBox
      Left = 432
      Top = 56
      Width = 57
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 9
      Text = 'A'
      Items.Strings = (
        'A'
        'C'
        'S'
        'O'
        'G')
    end
    object CheckBox1: TCheckBox
      Left = 456
      Top = 24
      Width = 137
      Height = 17
      Caption = 'Production Order'
      TabOrder = 10
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 825
    Height = 377
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Title.Caption = 'okQty'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Person'
        Width = 55
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'declare @p decimal(18,4)  '
      'set @p=(select Delperson from BasData)'
      'select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,'
      
        'round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,OrdCL1.YWP' +
        'M,OrdCL1.DWBH,OrdCL1.LYCC, '
      
        'isnull(KCLLS.Qty,0) as Qty,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.' +
        'XieXing,OrdCL1.SheHao ,KCLLS.YN'
      'from ( select  ZLBH,CLBH,sum(USAGE) as USAGE,'
      
        'case when CLTX='#39'3'#39' then sum(CLSL)*@p/100  else sum(CLSL) end as ' +
        'CLSL ,DFL,YWPM,'
      'DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX'
      'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as USAGE,'
      '      sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'#39'N'#39') as DFL '
      
        '      ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,XX' +
        'ZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,3) as CLTX '
      '          from ZLZLS2'
      '          left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '          left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '          left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '          left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.S' +
        'heHao=DDZL.SheHao'
      
        '          left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZL.X' +
        'ieXing=XXBWFL.XieXing'
      '          left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        '          left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZL' +
        'S.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      '          where DDZL.ShipDate between '#39'2008/04/01'#39
      '                     and '#39'2008/04/30'#39
      '                and ZLZLS2.CLBH like '#39'%'#39
      '                and CLZL.YWPM like '#39'%%'#39
      '                and CLZL.YWPM like '#39'%%'#39
      '                and ZLZLS2.ZLBH like '#39'%'#39
      '                and MJBH='#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLBH>='#39'O'#39
      '                and DDZL.YN='#39'1'#39
      '                and DDZL.DDZT='#39'Y'#39
      '         group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,'
      
        '         CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,' +
        'XXZL.Article,XXZL.XieMing,XXZLS.CLTX ) as OrdCL  '
      
        '      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieX' +
        'ing,SheHao,CLTX) OrdCL1  '
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y,isnull( KCLLS.DFL,'#39'N'#39') as DFL,DDZL.YN '
      '           from  KCLLS'
      '           left join DDZL on DDZL.ZLBH=KCLLS.SCBH'
      '           left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      '           where  CLBH>= '#39'O'#39
      '                  and CLBH like '#39'%'#39
      '                  and KCLLS.SCBH like '#39'%'#39
      '                  and CLZL.YWPM like '#39'%%'#39
      '                  and CLZL.YWPM like '#39'%%'#39
      '                  and DDZL.ShipDate between '#39'2008/04/01'#39
      '                  and '#39'2008/04/30'#39
      
        '          group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL,DDZL.YN) KCL' +
        'LS  '
      
        'on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.CLBH and OrdCL1.' +
        'DFL=KCLLS.DFL'
      
        'group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.D' +
        'WBH,  '
      
        'OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.' +
        'SheHao,KCLLS.Qty,KCLLS.YN  '
      'order by OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.ZLBH ')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1USAGE: TFloatField
      FieldName = 'USAGE'
      DisplayFormat = '##,#0.0000'
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
end
