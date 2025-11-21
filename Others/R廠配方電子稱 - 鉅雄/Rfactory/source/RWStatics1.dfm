object RWStatics: TRWStatics
  Left = 80
  Top = 140
  Width = 1072
  Height = 455
  Caption = 'RWStatics'
  Color = clBtnFace
  TransparentColorValue = clFuchsia
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
  object Label3: TLabel
    Left = 504
    Top = 232
    Width = 41
    Height = 16
    Caption = 'Label3'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 584
      Top = 40
      Width = 28
      Height = 24
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 408
      Top = 41
      Width = 50
      Height = 24
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 40
      Width = 55
      Height = 24
      Caption = 'ywpm:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 320
      Top = 40
      Width = 78
      Height = 24
      Caption = 'workDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 776
      Top = 32
      Width = 89
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 888
      Top = 32
      Width = 89
      Height = 41
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1120
      Top = 24
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
  end
  object DTP1: TDateTimePicker
    Left = 464
    Top = 40
    Width = 113
    Height = 28
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DTP2: TDateTimePicker
    Left = 616
    Top = 40
    Width = 113
    Height = 28
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object PC1: TPageControl
    Left = 0
    Top = 194
    Width = 1056
    Height = 223
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = PC1Change
    object TS3: TTabSheet
      Caption = 'CLMas'
      ImageIndex = 2
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1048
        Height = 192
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Width = 368
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            Width = 337
          end
          item
            Checkboxes = False
            Color = clAqua
            EditButtons = <>
            FieldName = 'clyl'
            Footers = <>
            Width = 118
          end>
      end
      object Edit1: TEdit
        Left = 512
        Top = 128
        Width = 121
        Height = 24
        TabOrder = 1
        Text = 'Edit1'
        Visible = False
      end
    end
    object TS4: TTabSheet
      Caption = 'CLDet'
      ImageIndex = 3
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1048
        Height = 192
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'pfbh'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 129
          end
          item
            EditButtons = <>
            FieldName = 'okprint'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
          end
          item
            Color = clAqua
            EditButtons = <>
            FieldName = 'clyl'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 77
          end>
      end
    end
  end
  object Edit2: TEdit
    Left = 88
    Top = 40
    Width = 201
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 1056
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label1: TLabel
      Left = 35
      Top = 48
      Width = 55
      Height = 24
      Caption = 'ywpm:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 411
      Top = 48
      Width = 55
      Height = 24
      Caption = 'zwpm:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button8: TButton
      Left = 776
      Top = 32
      Width = 97
      Height = 41
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 1120
      Top = 24
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 40
      Width = 297
      Height = 32
      Color = clScrollBar
      DataField = 'ywpm'
      DataSource = DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 472
      Top = 40
      Width = 257
      Height = 32
      Color = clScrollBar
      DataField = 'zwpm'
      DataSource = DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object pfsms1: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'select clzl.ywpm, clzl.zwpm, sum(pfsms.okprint*clzlsl.clyl) as c' +
        'lyl'
      'from pfsms'
      
        'left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = ' +
        'pfsms.clbh'
      'left join clzl on clzlsl.cldhz = clzl.cldh                '
      
        'where convert(smalldatetime,convert(varchar, pfsms.workdate, 111' +
        ')) between '#39'2011/08/11'#39' and '#39'2011/08/22'#39
      '  and pfsms.gsbh = '#39'VR2'#39
      '  and clzl.ywpm like '#39'%%'#39
      'group by clzl.ywpm, clzl.zwpm')
    Left = 136
    Top = 336
    object pfsms1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object pfsms1zwpm: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object pfsms1clyl: TFloatField
      FieldName = 'clyl'
    end
  end
  object DS1: TDataSource
    DataSet = pfsms1
    Left = 176
    Top = 336
  end
  object PrintDBGridEh1: TPrintDBGridEh
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
      '&[Page] /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 248
    Top = 424
  end
  object pfsms2: TQuery
    DatabaseName = 'dd'
    DataSource = DS1
    SQL.Strings = (
      
        'select pfsms.pfbh , sum(pfsms.okprint) as okprint, sum(pfsms.okp' +
        'rint*clzlsl.clyl) as clyl'
      'from pfsms'
      
        'left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = ' +
        'pfsms.clbh                           '
      
        'left join clzl on clzlsl.cldhz = clzl.cldh                      ' +
        '                                     '
      
        'where convert(smalldatetime,convert(varchar, pfsms.workdate, 111' +
        ')) between  :date1 and :date2                           '
      '  and pfsms.okprint <> 0'
      '  and clzl.ywpm = :ywpm'
      'group by pfsms.pfbh')
    Left = 360
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ywpm'
        ParamType = ptUnknown
      end>
    object pfsms2pfbh2: TStringField
      FieldName = 'pfbh'
      Size = 16
    end
    object pfsms2okprint: TIntegerField
      FieldName = 'okprint'
    end
    object pfsms2clyl: TFloatField
      FieldName = 'clyl'
    end
  end
  object DS2: TDataSource
    DataSet = pfsms2
    Left = 400
    Top = 344
  end
end
