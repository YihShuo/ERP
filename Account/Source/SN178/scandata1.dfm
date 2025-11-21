object ScanData: TScanData
  Left = 272
  Top = 153
  Width = 1382
  Height = 695
  Caption = 'ScanData'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 106
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
      Left = 0
      Top = 19
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
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
      Caption = 'Factory:'
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
      Width = 31
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
    object ddzledit: TEdit
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
      ItemIndex = 1
      TabOrder = 3
      Text = 'EXEDATE'#20986#36008
      Items.Strings = (
        'INDATE'#20837#24235
        'EXEDATE'#20986#36008)
    end
    object ComboBox2: TComboBox
      Left = 391
      Top = 48
      Width = 97
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        ''
        'VA12'
        'VB1'
        'VB2'
        'VB7'
        'VDT'
        'VA3')
    end
    object Panel2: TPanel
      Left = 568
      Top = 0
      Width = 177
      Height = 73
      Color = clActiveCaption
      TabOrder = 5
      object Label2: TLabel
        Left = 52
        Top = 6
        Width = 76
        Height = 20
        Caption = 'EXEDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button2: TButton
        Left = 8
        Top = 32
        Width = 73
        Height = 33
        Caption = 'PDF'
        Enabled = False
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button5: TButton
        Left = 94
        Top = 32
        Width = 75
        Height = 33
        Caption = 'EXCEL'
        Enabled = False
        TabOrder = 1
        OnClick = Button5Click
      end
    end
    object Panel4: TPanel
      Left = 760
      Top = 0
      Width = 177
      Height = 73
      Color = clActiveCaption
      TabOrder = 6
      object Label3: TLabel
        Left = 56
        Top = 7
        Width = 59
        Height = 20
        Caption = 'INDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button3: TButton
        Left = 8
        Top = 32
        Width = 73
        Height = 33
        Caption = 'PDF'
        Enabled = False
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 94
        Top = 32
        Width = 75
        Height = 33
        Caption = 'EXCEL'
        Enabled = False
        TabOrder = 1
        OnClick = Button4Click
      end
    end
    object DTP2: TDateTimePicker
      Left = 204
      Top = 16
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 7
    end
    object Button6: TButton
      Left = 492
      Top = 44
      Width = 75
      Height = 34
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button6Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 1366
    Height = 574
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1364
      Height = 572
      Align = alClient
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
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
          Title.Caption = 'PACK NO|'#35330#21934#32232#34399
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
          Title.Caption = 'Stock NO|Article'
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
          FieldName = 'Size'
          Footers = <>
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'Qty(Pairs)'
          Footer.FieldName = 'Qty(Pairs)'
          Footer.ValueType = fvtSum
          Footers = <>
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
    object QryOrderSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 60
    end
    object QryOrderQtyPairs: TIntegerField
      FieldName = 'Qty(Pairs)'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 177
  end
  object exedetail: TQuery
    ObjectView = True
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) a' +
        's exedate,'
      
        'xxzl.XieMing as '#39'Shoe Name'#39',DDZL.KHPO as '#39'P.O.#'#39',ddzl.article as' +
        ' '#39'Stock NO'#39',xxzl.YSSM as '#39'Color'#39',xxzl.LOGO as '#39'Size'#39', sum(YWCP.Q' +
        'ty) as '#39'Qty(Pairs)'#39' FROM YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.' +
        'XieXing'
      'where YWCP.DDBH is not null'
      'and CONVERT(char(10), ywcp.exedate,111) = '
      #39'2015/05/06'#39
      
        'group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111)' +
        ',xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,xxzl.LOGO'
      'order by ywcp.DDBH')
    Left = 232
    Top = 225
  end
  object DataSource4: TDataSource
    DataSet = exedetail
    Left = 232
    Top = 177
  end
end
