object BarcodeCheck: TBarcodeCheck
  Left = 375
  Top = 57
  Width = 870
  Height = 501
  Caption = 'Barcode Check'
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
  object Label5: TLabel
    Left = 280
    Top = 16
    Width = 65
    Height = 16
    AutoSize = False
    Caption = #29983#29986#24288#21029
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 65
      Height = 16
      AutoSize = False
      Caption = #25509#21934#26085#26399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 16
      Width = 17
      Height = 16
      AutoSize = False
      Caption = #26376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 176
      Top = 16
      Width = 17
      Height = 16
      AutoSize = False
      Caption = #24180
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 280
      Top = 16
      Width = 65
      Height = 16
      AutoSize = False
      Caption = #29983#29986#24288#21029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 280
      Top = 40
      Width = 65
      Height = 16
      AutoSize = False
      Caption = #25475#25551#24037#24207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 40
      Width = 65
      Height = 16
      AutoSize = False
      Caption = #35330#21934#21934#34399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cby: TComboBox
      Left = 88
      Top = 16
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '2008'
    end
    object cbm: TComboBox
      Left = 200
      Top = 16
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object cbf: TComboBox
      Left = 352
      Top = 16
      Width = 49
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1')
    end
    object Button1: TButton
      Left = 416
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object cbjob: TComboBox
      Left = 352
      Top = 40
      Width = 49
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'C'
        'S'
        'A')
    end
    object getddbh: TEdit
      Left = 88
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 854
    Height = 389
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ddbh'
        Footers = <>
        Title.Caption = #24037#21934#21046#20196'|ddbh'
      end
      item
        EditButtons = <>
        FieldName = 'gxlb'
        Footers = <>
        Title.Caption = #24037#24207'|gxlb'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'xxcc'
        Footers = <>
        Title.Caption = 'SIZE|xxcc'
      end
      item
        EditButtons = <>
        FieldName = 'oldtotqty'
        Footers = <>
        Title.Caption = #33290#26781#30908#32317#25976'|oldtotqty'
      end
      item
        EditButtons = <>
        FieldName = 'OKtotqty'
        Footers = <>
        Title.Caption = #24050#25475#25551#32317#25976'|OKtotqty'
      end
      item
        EditButtons = <>
        FieldName = 'newqty'
        Footers = <>
        Title.Caption = #26356#26032#35330#21934#25976#37327'|newqty'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Newdate'
        Footer.DisplayFormat = 'yyyy/mm/dd'
        Footers = <>
        Title.Caption = #26356#26032#26085#26399'|Newdate'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'LQ'
        Footers = <>
        Title.Caption = #24046#25976'|LQ'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Errmode'
        Footers = <>
        Title.Caption = #37679#35492#24773#27841'|Errmode'
      end>
  end
  object smdd: TQuery
    OnCalcFields = smddCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select smddss.ddbh,smddss.gxlb,smddss.xxcc,smddss.userdate,'
      
        '       smddss.qty*smddss.cts as oldtotqty,smddss.qty*smddss.okct' +
        's as OKtotqty,'
      
        '       smdds.qty as newqty,smdds.userdate as Newdate from smddss' +
        ' '
      
        'left join smdds on smddss.ddbh = smdds.ddbh and smddss.xxcc = sm' +
        'dds.xxcc'
      
        'where smddss.ddbh  in (select ddbh  from smdd where scyear='#39'2010' +
        #39
      ' and scmonth='#39'01'#39
      ' and scmonth='#39'01'#39')'
      '       and gxlb in ('#39'A'#39','#39'C'#39','#39'S'#39')'
      '      and smddss.cts<>(smdds.qty/smddss.qty)'
      '      and smddss.gxlb in ('#39'A'#39','#39'C'#39','#39'S'#39')'
      ' order by smddss.ddbh,smddss.xxcc,smddss.gxlb')
    Left = 128
    Top = 160
    object smddddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object smddgxlb: TStringField
      FieldName = 'gxlb'
      FixedChar = True
      Size = 1
    end
    object smddxxcc: TStringField
      FieldName = 'xxcc'
      FixedChar = True
      Size = 6
    end
    object smddoldtotqty: TIntegerField
      FieldName = 'oldtotqty'
    end
    object smddOKtotqty: TIntegerField
      FieldName = 'OKtotqty'
    end
    object smddnewqty: TIntegerField
      FieldName = 'newqty'
    end
    object smddNewdate: TDateTimeField
      FieldName = 'Newdate'
    end
    object smddLQ: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LQ'
      Calculated = True
    end
    object smddErrmode: TStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Errmode'
      Size = 50
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = smdd
    Left = 168
    Top = 160
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 128
    Top = 216
  end
end
