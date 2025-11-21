object RWSituation: TRWSituation
  Left = 421
  Top = 238
  Width = 850
  Height = 445
  Caption = 'RWSituation'
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
    Width = 834
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
      Left = 520
      Top = 40
      Width = 23
      Height = 24
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 344
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
    object Label8: TLabel
      Left = 256
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
    object Label9: TLabel
      Left = 960
      Top = 48
      Width = 52
      Height = 24
      Caption = 'count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 32
      Top = 40
      Width = 55
      Height = 24
      Caption = 'PFBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 704
      Top = 32
      Width = 97
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
      Left = 824
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
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1144
      Top = 32
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
    object Edit3: TEdit
      Left = 1016
      Top = 40
      Width = 65
      Height = 32
      Color = cl3DDkShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
    object Edit2: TEdit
      Left = 88
      Top = 32
      Width = 129
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DTP1: TDateTimePicker
    Left = 400
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
    Left = 544
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 834
    Height = 310
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'pfbh'
        Width = 105
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'times'
        Width = 88
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'okprint'
        Width = 74
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'workdate'
        Width = 125
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 504
    Top = 288
    Width = 121
    Height = 24
    TabOrder = 4
    Text = 'Edit1'
    Visible = False
  end
  object pfsms: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'select gspf.pfbh1, min(pfsms.times) as times, min(pfsms.okprint)' +
        ' as okprint, pfsms.workdate'
      'from pfsms'
      
        'left join gspf on pfsms.gsbh = gspf.gsbh and pfsms.pfbh = gspf.p' +
        'fbh2  '
      
        'left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = ' +
        'pfsms.clbh'
      'left join clzl on clzlsl.cldhz = clzl.cldh'
      
        'where convert(smalldatetime,convert(varchar, pfsms.workdate, 111' +
        ')) between '#39'2011/08/11'#39' and '#39'2011/08/22'#39
      '  and pfsms.gsbh = '#39'VR2'#39
      '  and gspf.pfbh1 like '#39'%'#39
      'group by gspf.pfbh1, pfsms.workdate')
    Left = 568
    Top = 208
    object pfsmspfbh1: TStringField
      FieldName = 'pfbh'
      Size = 16
    end
    object pfsmstimes: TIntegerField
      FieldName = 'times'
    end
    object pfsmsokprint: TIntegerField
      FieldName = 'okprint'
    end
    object pfsmsworkdate: TDateTimeField
      FieldName = 'workdate'
    end
  end
  object DS1: TDataSource
    DataSet = pfsms
    Left = 600
    Top = 208
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
    Left = 440
    Top = 208
  end
end
