object ScanData: TScanData
  Left = 429
  Top = 253
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
      Caption = 'OrdNO:'
    end
    object Label5: TLabel
      Left = 304
      Top = 52
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Location:'
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
    object CB1: TCheckBox
      Left = 203
      Top = 54
      Width = 123
      Height = 17
      Caption = #39023#31034#27511#21490#36039#26009
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object CBLoc: TComboBox
      Left = 392
      Top = 48
      Width = 97
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 8
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'A1'
        'A2'
        'A3'
        'A6'
        'A7'
        'A8'
        'A9'
        'A11'
        'A12')
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
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
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
          Title.Caption = 'RY#|'#35330#21934#32232#34399
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'indate'
          Footers = <>
          Title.Caption = 'INDATE|'#20837#24235#26085
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'exedate'
          Footers = <>
          Title.Caption = 'EXEDATE|'#20986#36008#26085
          Width = 77
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
          FieldName = 'P.O.#'
          Footers = <>
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'Stock NO'
          Footers = <>
          Title.Caption = 'SKU#'
          Width = 94
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
          FieldName = 'Location'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'RY_Del'
          Footers = <>
          Title.Caption = 'RY# Delivery'
          Width = 140
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
      
        'SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) a' +
        's exedate,CONVERT(char(10), ywcp.indate,111) as indate,'
      
        'xxzl.XieMing as '#39'Shoe Name'#39',DDZL.KHPO as '#39'P.O.#'#39',ddzl.article as' +
        ' '#39'Stock NO'#39',xxzl.YSSM as '#39'Color'#39',xxzl.LOGO as '#39'Size'#39', sum(YWCP.Q' +
        'ty) as '#39'Qty(Pairs)'#39' FROM YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.' +
        'XieXing'
      'where YWCP.DDBH is not null'
      'and CONVERT(char(10), ywcp.exedate,111) = '
      #39'2015/05/05'#39
      
        'group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111)' +
        ',CONVERT(char(10), ywcp.indate,111),xxzl.XieMing,DDZL.KHPO,ddzl.' +
        'article,xxzl.YSSM,xxzl.LOGO'
      'order by ywcp.DDBH')
    Left = 116
    Top = 225
    object QryOrderDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QryOrderexedate: TStringField
      FieldName = 'exedate'
      FixedChar = True
      Size = 10
    end
    object QryOrderindate: TStringField
      FieldName = 'indate'
      FixedChar = True
      Size = 10
    end
    object QryOrderGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QryOrderShoeName: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object QryOrderPO: TStringField
      FieldName = 'P.O.#'
      FixedChar = True
      Size = 25
    end
    object QryOrderStockNO: TStringField
      FieldName = 'Stock NO'
      FixedChar = True
    end
    object QryOrderColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object QryOrderQty: TIntegerField
      FieldName = 'Qty'
    end
    object QryOrderLocation: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object QryOrderRY_Del: TStringField
      FieldName = 'RY_Del'
      Size = 15
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 177
  end
end
