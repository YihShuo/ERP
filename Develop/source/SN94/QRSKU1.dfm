object QRSKU: TQRSKU
  Left = 408
  Top = 175
  Width = 747
  Height = 349
  Caption = 'QRSKU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 200
      Top = 15
      Width = 34
      Height = 16
      Caption = 'SKU#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 18
      Top = 15
      Width = 26
      Height = 16
      Caption = 'SR#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 55
      Top = 15
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 392
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 247
      Top = 15
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 488
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 731
    Height = 261
    Align = alClient
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'devcode'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'SR#'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'article'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'SKU#'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xieming'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Shoe Name'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jijie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Season'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kfjd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Stage'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'FD'
        Width = 100
        Visible = True
      end>
  end
  object YProom: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devcode,ypzl.article,left(kfxxzl.devcode,13) as cu' +
        'tting,kfxxzl.xieming,kfxxzl.yssm,'
      'kfxxzl.jijie,kfxxzl.fd,ypzl.YPCC,kfxxzl.XTMH,ypzl.kfjd,'
      'kfxxzl.DDMH from kfxxzl'
      
        'left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kf' +
        'xxzl.shehao'
      'where  kfxxzl.devcode like '#39'%G%'#39)
    Left = 128
    Top = 256
    object YProomdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object YProomarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object YProomxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object YProomjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object YProomfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object YProomcutting: TStringField
      FieldName = 'cutting'
      FixedChar = True
    end
    object YProomyssm: TStringField
      FieldName = 'yssm'
      FixedChar = True
      Size = 40
    end
    object YProomYPCC: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object YProomXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object YProomDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object YProomkfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = YProom
    Left = 128
    Top = 200
  end
end
