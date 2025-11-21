object ScanData: TScanData
  Left = 527
  Top = 286
  Width = 1382
  Height = 695
  Caption = 'ScanData'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 304
      Top = 20
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TestNo:'
    end
    object Label6: TLabel
      Left = 0
      Top = 52
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Status:'
    end
    object Label7: TLabel
      Left = 168
      Top = 20
      Width = 39
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To:'
    end
    object Label2: TLabel
      Left = 304
      Top = 52
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sample No:'
    end
    object Button1: TButton
      Left = 491
      Top = 6
      Width = 75
      Height = 34
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 391
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 70
      Top = 16
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 71
      Top = 48
      Width = 122
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'INDATE'#20837#24235
      Items.Strings = (
        'INDATE'#20837#24235
        'EXEDATE'#20986#36008)
    end
    object DTP2: TDateTimePicker
      Left = 206
      Top = 16
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 4
    end
    object Button6: TButton
      Left = 492
      Top = 44
      Width = 75
      Height = 34
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 571
      Top = 6
      Width = 75
      Height = 34
      Caption = 'Print'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Edit2: TEdit
      Left = 391
      Top = 48
      Width = 97
      Height = 24
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 1366
    Height = 575
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1364
      Height = 573
      Align = alClient
      DataSource = DataSource2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <
            item
              ValueType = fvtCount
            end>
          Title.Caption = 'SampleNo|'#27171#21697#21934#32232#34399
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Indate'
          Footers = <>
          Title.Caption = 'INDATE|'#20837#24235#26085
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'exedate'
          Footers = <>
          Title.Caption = 'EXEDATE|'#20986#36008#26085
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'TestNo'
          Footers = <>
          Title.Caption = 'TestNo|'#36890#22577#34399
        end
        item
          EditButtons = <>
          FieldName = 'Shoe Name'
          Footers = <>
          Title.Caption = 'Shoe Name|'#38795#21517
          Width = 152
        end
        item
          EditButtons = <>
          FieldName = 'Stock NO'
          Footers = <>
          Title.Caption = 'SKU#'
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'Color'
          Footers = <>
          Title.Caption = 'Color|'#38991#33394
          Width = 295
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Title.Caption = 'CKBH|'#20489#24235#20301#32622
          Width = 60
        end>
    end
  end
  object Query1: TQuery
    Left = 116
    Top = 225
  end
  object DataSource1: TDataSource
    Left = 116
    Top = 177
  end
  object DataSource2: TDataSource
    DataSet = QryOrder
    Left = 116
    Top = 177
  end
  object QryOrder: TQuery
    AfterOpen = QryOrderAfterOpen
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ypzl.YPDH as DDBH,ypzl.GSDH as GSBH,CONVERT(char(10),Shoe' +
        'Test.Complete,111) as Indate,CONVERT(char(10),ShoeTest.Complete,' +
        '111) as exedate,Shoetest.TestNo,kfxxzl.XieMing as'#39'Shoe Name'#39',Sho' +
        'eTest.Article as '#39'Stock NO'#39',kfxxzl.YSSM as '#39'Color'#39',sum(shoetest2' +
        '.Qty) as Qty'
      'from ShoeTest'
      
        'left join (select testno,sum(qty) as qty from shoetest2 group by' +
        ' testno ) shoetest2  on ShoeTest.TestNo=shoetest2.TestNo'
      'left join ypzl on ShoeTest.YPDH=ypzl.YPDH'
      
        'LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypz' +
        'l.SheHao = kfxxzl.SheHao '
      
        'where Convert(varchar,shoetest.complete, 111) between '#39'2024/01/0' +
        '1'#39' and '#39'2024/01/18'#39' '
      'and SUBSTRING(shoetest.YPDH,4,1)='#39'V'#39' '
      
        'group by ypzl.YPDH,ypzl.GSDH,ShoeTest.Complete,Shoetest.TestNo,k' +
        'fxxzl.XieMing,ShoeTest.Article,kfxxzl.YSSM'
      'order by ypzl.YPDH'
      '')
    Left = 116
    Top = 225
    object QryOrderDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QryOrderGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object QryOrderIndate: TStringField
      FieldName = 'Indate'
      FixedChar = True
      Size = 10
    end
    object QryOrderexedate: TStringField
      FieldName = 'exedate'
      FixedChar = True
      Size = 10
    end
    object QryOrderTestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object QryOrderShoeName: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object QryOrderStockNO: TStringField
      FieldName = 'Stock NO'
      FixedChar = True
    end
    object QryOrderColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 50
    end
    object QryOrderQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 177
  end
end
