object AccountEntry: TAccountEntry
  Left = 243
  Top = 185
  Width = 758
  Height = 500
  Caption = 'AccountEntry'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
    end
    object Label5: TLabel
      Left = 160
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Button1: TButton
      Left = 320
      Top = 16
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 88
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 0
    end
    object CBX3: TComboBox
      Left = 208
      Top = 16
      Width = 49
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 1
      Text = '1'
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
    object Button2: TButton
      Left = 424
      Top = 16
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DTP1: TDateTimePicker
    Left = 72
    Top = 200
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 1
    Visible = False
  end
  object DTP2: TDateTimePicker
    Left = 72
    Top = 240
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 2
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 742
    Height = 404
    Align = alClient
    DataSource = DS1
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Width = 131
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCZLS.CWBH,KCRKS.CostID,round(sum(KCRKS.VNACC),0) as VNAC' +
        'C,round(sum(KCRKS.USACC),2) as USACC'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) ' +
        'between '#39'2008/05/01'#39
      ' and '#39'2008/05/31'#39
      ' and KCRKS.Qty<>0'
      'group by KCZLS.CWBH,KCRKS.CostID '
      'order by KCZLS.CWBH,KCRKS.CostID ')
    Left = 296
    Top = 160
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 256
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object Suppier1: TMenuItem
      Caption = 'Suppier'
      OnClick = Suppier1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 88
    Top = 144
  end
end
