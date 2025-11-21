object EntryMatRFIDCode_JG: TEntryMatRFIDCode_JG
  Left = 557
  Top = 257
  Width = 700
  Height = 309
  Caption = 'EntryMatRFIDCode_JG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 15
      Width = 48
      Height = 20
      Caption = 'JGNO:'
    end
    object Label2: TLabel
      Left = 327
      Top = 14
      Width = 47
      Height = 20
      Caption = 'CLBH:'
    end
    object Button1: TButton
      Left = 548
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CLBHEdit: TEdit
      Left = 397
      Top = 10
      Width = 140
      Height = 28
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 1
    end
    object JGNOEdit: TEdit
      Left = 84
      Top = 11
      Width = 221
      Height = 28
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 684
    Height = 221
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    RowHeight = 4
    RowLines = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZLSS.CGNO,CGZLSS.CLBH,sum(CGZLSS.Qty) as Qty,CLZL.YWPM,' +
        'ZSZL.ZSYWJC'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLSS.CGNO = CGZLS.CGNO and CGZLSS.CLBH=CGZ' +
        'LS.CLBH'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      'where 1=1'
      'and CGZLSS.CGNO like '#39'20220405793%'#39
      'and CGZL.GSBH='#39'VA12'#39
      'Group by CGZLSS.CGNO,CGZLSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC'
      'order by CGZLSS.CLBH')
    Left = 296
    Top = 144
    object Query1JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
end
