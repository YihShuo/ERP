object ChoiceArticle: TChoiceArticle
  Left = 338
  Top = 230
  Width = 1300
  Height = 563
  Caption = 'Select Article'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 70
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 9
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 283
      Top = 40
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Label3: TLabel
      Left = 300
      Top = 9
      Width = 27
      Height = 20
      Caption = 'SR:'
    end
    object Label4: TLabel
      Left = 45
      Top = 40
      Width = 102
      Height = 20
      Caption = 'Sample Order:'
    end
    object Label5: TLabel
      Left = 462
      Top = 7
      Width = 69
      Height = 20
      Caption = 'MergeNo:'
    end
    object Label6: TLabel
      Left = 462
      Top = 39
      Width = 67
      Height = 20
      Caption = 'SubType:'
    end
    object Button1: TButton
      Left = 655
      Top = 28
      Width = 89
      Height = 29
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 332
      Top = 36
      Width = 117
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 196
      Top = 5
      Width = 70
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 160
      Top = 36
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 333
      Top = 5
      Width = 115
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object NotReceCK: TCheckBox
      Left = 680
      Top = 8
      Width = 161
      Height = 17
      Caption = 'show Not receive'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object Button2: TButton
      Left = 751
      Top = 28
      Width = 89
      Height = 29
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 537
      Top = 2
      Width = 115
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Button3: TButton
      Left = 849
      Top = 27
      Width = 105
      Height = 29
      Caption = 'Record_BOM'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 964
      Top = 27
      Width = 75
      Height = 30
      Caption = 'Excel'
      TabOrder = 9
      OnClick = Button4Click
    end
    object Edit6: TEdit
      Left = 536
      Top = 32
      Width = 119
      Height = 28
      TabOrder = 10
    end
    object CheckBox1: TCheckBox
      Left = 840
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Memo'
      TabOrder = 11
      OnClick = CheckBox1Click
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 5
      Width = 105
      Height = 28
      ItemHeight = 20
      TabOrder = 12
      Text = 'ComboBox1'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 70
    Width = 1284
    Height = 454
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ProductionLocation'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'SampleOrder'
        Footers = <
          item
            ValueType = fvtCount
          end>
      end
      item
        EditButtons = <>
        FieldName = 'devcode'
        Footers = <>
        Title.Caption = 'SR'
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Stage'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'devtype'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'subtype'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MergeNo'
        Footers = <>
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'TRANSFER'
        Footers = <>
        Title.Caption = 'TransferOUT'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'TransferIn'
        Footers = <>
        Title.Caption = 'TransferIN'
        Width = 73
      end>
  end
  object Memo: TMemo
    Left = 632
    Top = 296
    Width = 441
    Height = 177
    Lines.Strings = (
      #38577#34255#27171#21697#21934#29986#22320#26159'BOYI'#19988#21516#26178#28858'INLINE'#25110#32773'G&G'#30340'SMS'#38542#27573#27171#21697#21934
      'Sophia'#25552#20986','#27161#38988':'#25562#24030#22411#39636#37559#27171#36039#26009#24314#27284' 2018/09/07')
    TabOrder = 2
    Visible = False
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 552
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZL.YPDH AS SampleOrder,kfxxzl.devcode, kfxxzl.ARTICLE, ' +
        'ypzl.ypcc as Size,kfxxzl.JiJie as Season,'
      
        'ypzl.KFJD as Stage, ypzl.Quantity as Pairs,kfxxzl.devtype ,ypzl.' +
        'subtype ,kfxxzl.FD, ypzl.gsdh,BS.YPDH as ReceYPDH,BOMReceive.Mer' +
        'geNo,YPZL.ProductionLocation'
      ',XXZLKF.TRANSFER,XXZLKF.TransferIn'
      'from ypzl'
      
        'left join (Select YPDH from BOMReceiveS Group by YPDH) BS on BS.' +
        'YPDH=ypzl.YPDH '
      
        'left join kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=' +
        'kfxxzl.SheHao'
      'left join BOMReceives on BOMReceives.YPDH=ypzl.YPDH'
      
        'left join BOMReceive on BOMReceives.ReceiveNO=BOMReceive.Receive' +
        'NO'
      'left join ypzlzls on ypzlzls.ypdh=ypzl.ypdh'
      
        'left join XXZLKF on XXZLKF.XieXing=YPZL.XieXing and XXZLKF.SheHa' +
        'o=ypzl.SheHao'
      'where 1=1'
      'and ypzl.gsdh='#39'CDC'#39
      'and kfxxzl.JiJie like '#39'17S%'#39
      'and ypzl.KFJD like '#39'%'#39
      'and ypzl.article like '#39'%'#39
      'and ypzl.ypdh like '#39'%'#39
      'and BS.YPDH is null '
      
        'group by YPZL.YPDH,kfxxzl.devcode, kfxxzl.ARTICLE,ypzl.ypcc,kfxx' +
        'zl.JiJie,ypzl.KFJD,ypzl.Quantity,kfxxzl.devtype ,ypzl.subtype,kf' +
        'xxzl.FD,ypzl.gsdh,BS.YPDH,BOMReceive.MergeNo,YPZL.ProductionLoca' +
        'tion'
      ',XXZLKF.TRANSFER,XXZLKF.TransferIn'
      'order by ypzl.ypdh desc')
    Left = 512
    Top = 112
    object Query1ProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object Query1SampleOrder: TStringField
      FieldName = 'SampleOrder'
      Origin = 'DB.ypzl.YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.ypzl.ARTICLE'
      FixedChar = True
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      Origin = 'DB.kfxxzl.JiJie'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.ypzl.KFJD'
      FixedChar = True
      Size = 3
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
      Origin = 'DB.ypzl.Quantity'
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      Origin = 'DB.kfxxzl.FD'
      FixedChar = True
    end
    object Query1gsdh: TStringField
      FieldName = 'gsdh'
      FixedChar = True
      Size = 3
    end
    object Query1ReceYPDH: TStringField
      FieldName = 'ReceYPDH'
    end
    object Query1devtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 10
    end
    object Query1MergeNo: TStringField
      FieldName = 'MergeNo'
      FixedChar = True
    end
    object Query1subtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query1TRANSFER: TBooleanField
      FieldName = 'TRANSFER'
    end
    object Query1TransferIn: TBooleanField
      FieldName = 'TransferIn'
    end
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    Left = 424
    Top = 112
  end
end
