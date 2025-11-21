object RWreport: TRWreport
  Left = 133
  Top = 174
  Width = 863
  Height = 460
  Caption = 'RWreport'
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
    Width = 847
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 448
      Top = 40
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 304
      Top = 41
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label7: TLabel
      Left = 40
      Top = 40
      Width = 41
      Height = 16
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 248
      Top = 40
      Width = 57
      Height = 16
      Caption = 'workDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 880
      Top = 64
      Width = 35
      Height = 16
      Caption = 'count:'
    end
    object Label1: TLabel
      Left = 40
      Top = 80
      Width = 39
      Height = 16
      Caption = 'PFBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 288
      Top = 80
      Width = 45
      Height = 16
      Caption = 'YWPM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 624
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 736
      Top = 48
      Width = 81
      Height = 33
      Caption = 'EXCEL'
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
    object cb2: TComboBox
      Left = 89
      Top = 33
      Width = 120
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VR2'
        'VR3')
    end
    object Edit3: TEdit
      Left = 920
      Top = 56
      Width = 65
      Height = 24
      Color = cl3DDkShadow
      ReadOnly = True
      TabOrder = 4
      Text = '0'
    end
    object Edit1: TEdit
      Left = 88
      Top = 72
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 344
      Top = 72
      Width = 121
      Height = 24
      TabOrder = 6
    end
  end
  object DTP1: TDateTimePicker
    Left = 344
    Top = 32
    Width = 97
    Height = 24
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    TabOrder = 1
  end
  object DTP2: TDateTimePicker
    Left = 472
    Top = 32
    Width = 97
    Height = 24
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 847
    Height = 301
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pfbh1'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clbh'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zwpm'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clyl'
        Width = 65
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'times'
        Width = 54
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'okprint'
        Width = 50
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
  object pfsms: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'SELECT CGZL.GSBH, YWDD.DDBH, CGZL.CGNO, CGZL.ZSBH as CG_ZSBH, su' +
        'm(YWBZPO.CTS) as CGQTY , CGZL.CGDate, DDZL.BZDate, YWDD.YN '
      'from CGZL'
      'left join YWDD on CGZL.CGNO = YWDD.CGNO'
      'left join YWBZPO on YWDD.DDBH = YWBZPO.DDBH'
      'left join DDZL on DDZL.DDBH = YWDD.YSBH'
      'where CGZL.CGLX = 5 and cgzl.cgdate > '#39'2011'#39
      
        'GROUP BY CGZL.GSBH, YWDD.DDBH, CGZL.CGNO, CGZL.ZSBH, CGZL.CGDate' +
        ', DDZL.BZDate, YWDD.YN ')
    Left = 568
    Top = 208
    object pfsmsgsbh: TStringField
      FieldName = 'gsbh'
      Size = 4
    end
    object pfsmspfbh1: TStringField
      FieldName = 'pfbh1'
      Size = 16
    end
    object pfsmsclbh: TStringField
      FieldName = 'clbh'
      Size = 16
    end
    object pfsmsywpm: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object pfsmszwpm: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object pfsmsclyl: TFloatField
      FieldName = 'clyl'
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
  object DataSource1: TDataSource
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
  object query1: TQuery
    DatabaseName = 'dd'
    Left = 384
    Top = 208
  end
end
