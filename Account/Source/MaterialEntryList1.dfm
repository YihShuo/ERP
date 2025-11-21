object MaterialEntryList: TMaterialEntryList
  Left = 271
  Top = 213
  Width = 1030
  Height = 500
  Caption = 'MaterialEntryList'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 57
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 42
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 60
      Height = 16
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 336
      Top = 24
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 480
      Top = 24
      Width = 17
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 608
      Top = 24
      Width = 37
      Height = 16
      Caption = 'GSBH'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 232
      Top = 16
      Width = 89
      Height = 24
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 376
      Top = 16
      Width = 97
      Height = 24
      Date = 39590.565245405090000000
      Format = 'yyyy/MM/dd'
      Time = 39590.565245405090000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 504
      Top = 16
      Width = 97
      Height = 24
      Date = 39590.565245405090000000
      Format = 'yyyy/MM/dd'
      Time = 39590.565245405090000000
      TabOrder = 3
    end
    object Button1: TButton
      Left = 728
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 648
      Top = 16
      Width = 65
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object Button2: TButton
      Left = 808
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1014
    Height = 405
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    FooterRowCount = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <
          item
            FieldName = 'RKNO'
            ValueType = fvtCount
          end>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 461
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'FKZT'
        Footers = <>
        Width = 35
      end>
  end
  object DataSource1: TDataSource
    DataSet = KCRK
    Left = 280
    Top = 144
  end
  object KCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,'
      
        'KCRKS.*,KCRK.ZSNO as Memo,CLZL.YWPM,CLZL.DWBH ,ZSZL.ZSYWJC ,KCRK' +
        '.CKBH'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      'left join CLZl on CLZl.CLDH=KCRKS.CLBH '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) ' +
        'between '
      #39'2008/05/19'#39
      ' and '#39'2008/05/22'#39
      'and KCRKS.CLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'order by KCRK.RKNO')
    Left = 320
    Top = 144
    object KCRKRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object KCRKZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object KCRKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object KCRKCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCRKDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCRKQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCRKUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object KCRKUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object KCRKVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object KCRKVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object KCRKCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object KCRKRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object KCRKCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object KCRKFKZT: TStringField
      FieldName = 'FKZT'
      FixedChar = True
      Size = 1
    end
    object KCRKCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 376
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 224
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page] / &[Pages]')
    PageHeader.CenterText.Strings = (
      'Material Entry List')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 192
    Top = 176
  end
end
