object ExtraNoList: TExtraNoList
  Left = 368
  Top = 229
  Width = 1495
  Height = 675
  Caption = 'ExtraNoList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 1479
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 28
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 182
      Top = 26
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label1: TLabel
      Left = 336
      Top = 28
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Status:'
    end
    object Button1: TButton
      Left = 477
      Top = 16
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 565
      Top = 16
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 78
      Top = 24
      Width = 100
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 222
      Top = 24
      Width = 100
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 384
      Top = 24
      Width = 81
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        ''
        'Delete')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 73
    Width = 1479
    Height = 563
    ActivePage = TS1
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'List No'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1471
        Height = 532
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 90
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'List No ( <2023/11/02 )'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1471
        Height = 532
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 90
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from  ('
      'select JGNO,GSBH,'#39#39' as Memo'
      'from JGZL'
      
        'where convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) ' +
        'between '
      '          '#39'2023/09/01'#39' and  '#39'2023/09/30'#39
      'union all '
      
        'select JGNO,(select top 1 GSBH from JGZL as JGZL_GSBH where JGZL' +
        '_Bdelrec.USERID=JGZL_GSBH.USERID and GSBH in ('#39'CDC'#39','#39'VA12'#39')) as ' +
        'GSBH,Memo'
      'from ('
      
        'select TNO as JGNO,'#39#39' as GSBH,'#39'Delete'#39' as Memo,max(DelID) as Use' +
        'rID'
      'from BDelRec'
      
        'where TableName='#39'JGZL'#39' and convert(smalldatetime,convert(varchar' +
        ',DelDate,111)) between '
      '          '#39'2023/09/01'#39' and  '#39'2023/09/30'#39' '
      
        'and TNO not in ( select JGNO from JGZL where convert(smalldateti' +
        'me,convert(varchar,JGZL.USERDATE,111)) between '
      '          '#39'2023/09/01'#39' and  '#39'2023/09/30'#39')'
      'group by TNO ) JGZL_Bdelrec'
      ''
      #9#9'  ) JGZL'
      'order by JGNO asc')
    Left = 104
    Top = 176
    object Query1JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 60
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 176
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from  ('
      'select JGNO,GSBH,'#39#39' as Memo'
      'from JGZL'
      
        'where convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) ' +
        'between '
      '          '#39'2023/09/01'#39' and  '#39'2023/09/30'#39
      'union all '
      
        'select JGNO,(select top 1 GSBH from JGZL as JGZL_GSBH where JGZL' +
        '_Bdelrec.USERID=JGZL_GSBH.USERID and GSBH in ('#39'CDC'#39','#39'VA12'#39')) as ' +
        'GSBH,Memo'
      'from ('
      
        'select TNO as JGNO,'#39#39' as GSBH,'#39'Delete'#39' as Memo,max(DelID) as Use' +
        'rID'
      'from BDelRec'
      
        'where TableName='#39'JGZL'#39' and convert(smalldatetime,convert(varchar' +
        ',DelDate,111)) between '
      '          '#39'2023/09/01'#39' and  '#39'2023/09/30'#39' '
      
        'and TNO not in ( select JGNO from JGZL where convert(smalldateti' +
        'me,convert(varchar,JGZL.USERDATE,111)) between '
      '          '#39'2023/09/01'#39' and  '#39'2023/09/30'#39')'
      'group by TNO ) JGZL_Bdelrec'
      ''
      #9#9'  ) JGZL'
      'order by JGNO asc')
    Left = 240
    Top = 176
    object StringField1: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 208
    Top = 176
  end
end
