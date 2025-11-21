object PayableLit_Check: TPayableLit_Check
  Left = 300
  Top = 384
  Width = 817
  Height = 412
  BorderIcons = [biSystemMenu]
  Caption = 'PayableLit_Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
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
    Width = 801
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 40
      Height = 16
      Caption = 'ZSDH:'
    end
    object Label3: TLabel
      Left = 200
      Top = 21
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 368
      Top = 21
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label2: TLabel
      Left = 512
      Top = 24
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 656
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 240
      Top = 13
      Width = 121
      Height = 28
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 392
      Top = 13
      Width = 113
      Height = 28
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 3
    end
    object CB1: TComboBox
      Left = 560
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 801
    Height = 317
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 2
    PopupMenu = PopupMenu1
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
        FieldName = 'ZSBH'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <
          item
            FieldName = 'RKNO'
            ValueType = fvtCount
          end>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 393
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Width = 56
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
        FieldName = 'CWHL'
        Footers = <
          item
            FieldName = 'CWHL'
            ValueType = fvtCount
          end>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 80
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.ZSBH,KCRKS.RKSB,KCRKS.CGBH,KCRKS.RKNO ,KCRKS.CLBH,KC' +
        'RK.USERDATE,KCRKS.Qty,KCRKS.USPrice'
      
        '       ,KCRKS.USACC,KCRKS.CWHL,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.C' +
        'ostID,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on KCRKS.CLBH=CLZL.CLDH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) ' +
        'between   '
      '      '#39'2009/11/01'#39' and '#39'2009/11/03'#39
      '      and KCRK.ZSBH like  '#39'%'#39
      '      and KCRK.YN='#39'5'#39
      'order by KCRK.ZSBH,KCRKS.RKNO,KCRKS.CLBH,KCRKS.RKSB,KCRKS.CGBH')
    Left = 192
    Top = 72
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 272
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 192
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 208
    Top = 128
  end
end
