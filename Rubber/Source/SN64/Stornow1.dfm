object Stornow: TStornow
  Left = 263
  Top = 188
  Width = 953
  Height = 480
  Caption = 'Stor Now'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 700
    Top = 49
    Width = 5
    Height = 392
    Align = alRight
    Color = clActiveCaption
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 13
      Width = 67
      Height = 20
      Caption = 'Mode NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 223
      Top = 13
      Width = 37
      Height = 20
      Caption = 'Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MJCB: TComboBox
      Left = 88
      Top = 12
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object CLCB: TComboBox
      Left = 264
      Top = 12
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = 'ALL'
      OnChange = CLCBChange
      Items.Strings = (
        'ALL')
    end
    object Edit1: TEdit
      Left = 631
      Top = 8
      Width = 66
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object Button1: TButton
      Left = 389
      Top = 10
      Width = 75
      Height = 28
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 469
      Top = 10
      Width = 66
      Height = 28
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 705
    Top = 49
    Width = 232
    Height = 392
    Align = alRight
    TabOrder = 1
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 230
      Height = 390
      Align = alClient
      DataSource = DataSource1
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
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'scandate'
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'size'
          Footers = <>
          Width = 29
        end
        item
          EditButtons = <>
          FieldName = 'inout'
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'qty'
          Footers = <>
          Width = 49
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 700
    Height = 392
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 698
      Height = 390
      Align = alClient
      DataSource = wsm
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
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'workid'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'mjbh'
          Footers = <>
          Title.Caption = 'Model ID'
          Width = 105
        end
        item
          EditButtons = <>
          FieldName = 'EnglishName'
          Footers = <>
          Title.Caption = 'Color'
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = '[ 10.5]'
          Footer.FieldName = '[ 10.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = '[ 11.0]'
          Footer.FieldName = '[ 11.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = '[ 11.5]'
          Footer.FieldName = '[ 11.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = '[ 12.0]'
          Footer.FieldName = '[ 12.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = '[ 12.5]'
          Footer.FieldName = '[ 12.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = '[ 13.0]'
          Footer.FieldName = '[ 13.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = '[ 13.5]'
          Footer.FieldName = '[ 13.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Color = clYellow
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = '[01.0]'
          Footer.FieldName = '[01.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = '[01.5]'
          Footer.FieldName = '[01.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = '[02.0]'
          Footer.FieldName = '[02.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = '[02.5]'
          Footer.FieldName = '[02.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = '[03.0]'
          Footer.FieldName = '[03.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = '[03.5]'
          Footer.FieldName = '[03.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = '[04.0]'
          Footer.FieldName = '[04.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = '[04.5]'
          Footer.FieldName = '[04.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = '[05.0]'
          Footer.FieldName = '[05.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = '[05.5]'
          Footer.FieldName = '[05.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = '[06.0]'
          Footer.EndEllipsis = True
          Footer.FieldName = '[06.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = '[06.5]'
          Footer.FieldName = '[06.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = '[07.0]'
          Footer.FieldName = '[07.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = '[07.5]'
          Footer.FieldName = '[07.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = '[08.0]'
          Footer.FieldName = '[08.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = '[08.5]'
          Footer.FieldName = '[08.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = '[09.0]'
          Footer.FieldName = '[09.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = '[09.5]'
          Footer.FieldName = '[09.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = '[10.0]'
          Footer.FieldName = '[10.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = '[10.5]'
          Footer.FieldName = '[10.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = '[11.0]'
          Footer.FieldName = '[11.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = '[11.5]'
          Footer.FieldName = '[11.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = '[12.0]'
          Footer.FieldName = '[12.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = '[12.5]'
          Footer.FieldName = '[12.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '[13.0]'
          Footer.FieldName = '[13.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = '[13.5]'
          Footer.FieldName = '[13.5]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = '[14.0]'
          Footer.FieldName = '[14.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = '[15.0]'
          Footer.FieldName = '[15.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = '[16.0]'
          Footer.FieldName = '[16.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '[17.0]'
          Footer.FieldName = '[17.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = '[18.0]'
          Footer.FieldName = '[18.0]'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 52
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjbh '
      'from LIY_DD.dbo.mjzl'
      'where IsNull(bz2,'#39#39')<>'#39#39
      'group by bz2'
      'order by bz2')
    Left = 156
    Top = 9
    object Query1mjbh: TStringField
      FieldName = 'mjbh'
      Origin = 'DB.mjzl.mjbh'
      FixedChar = True
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select EnglishName,ColorNo'
      'from LIY_DD.dbo.colorclass'
      'where IsNull(EnglishName,'#39#39')<>'#39#39
      'group by EnglishName,ColorNo ')
    Left = 348
    Top = 9
    object Query2ColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.colorclass.ColorNo'
      FixedChar = True
      Size = 4
    end
    object Query2EnglishName: TStringField
      FieldName = 'EnglishName'
      Origin = 'DB.colorclass.EnglishName'
      FixedChar = True
      Size = 50
    end
  end
  object WSMQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select st.workid,st.mjbh,st.colorno,colorclass.EnglishName'
      
        ' ,isnull(sum(case  when size='#39' 10.5'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 10.5'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 10.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39' 11.0'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 11.0'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 11.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39' 11.5'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 11.5'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 11.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39' 12.0'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 12.0'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 12.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39' 12.5'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 12.5'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 12.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39' 13.0'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 13.0'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 13.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39' 13.5'#39'and inout='#39'I'#39' then totQty en' +
        'd),0)'
      
        ' - isnull(sum(case  when size='#39' 13.5'#39'and inout='#39'O'#39' then totQty e' +
        'nd),0)'
      '   as '#39'[ 13.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'01.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'01.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[01.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'01.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'01.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[01.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'02.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'02.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[02.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'02.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'02.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[02.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'03.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'03.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[03.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'03.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'03.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[03.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'04.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'04.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[04.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'04.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'04.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[04.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'05.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'05.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[05.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'05.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'05.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[05.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'06.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'06.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[06.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'06.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'06.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[06.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'07.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'07.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[07.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'07.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'07.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[07.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'08.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'08.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[08.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'08.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'08.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[08.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'09.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'09.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[09.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'09.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'09.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[09.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'10.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'10.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[10.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'10.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'10.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[10.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'11.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'11.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[11.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'11.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'11.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[11.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'12.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'12.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[12.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'12.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'12.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[12.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'13.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'13.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[13.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'13.5'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'13.5'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[13.5]'#39' '
      
        ' ,isnull(sum(case  when size='#39'14.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'14.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[14.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'15.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'15.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[15.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'16.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'16.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[16.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'17.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'17.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[17.0]'#39' '
      
        ' ,isnull(sum(case  when size='#39'18.0'#39'and inout='#39'I'#39' then totQty end' +
        '),0)'
      
        ' - isnull(sum(case  when size='#39'18.0'#39'and inout='#39'O'#39' then totQty en' +
        'd),0)'
      '   as '#39'[18.0]'#39' '
      'from '
      '(select workwhsds.workid ,workplan.mjbh,workplan.colorno '
      #9',workwhsds.size,workwhsds.inout,sum(workwhsds.qty) as totqty '
      '  from LIY_DD.dbo.workwhsds workwhsds'
      
        '  left join LIY_DD.dbo.workplan workplan on workplan.workid=work' +
        'whsds.workid'
      '  where workplan.workqty is not null'
      ' and workplan.mjbh='#39'TD-009/TD-009'#39
      ' and workplan.colorno='#39'0775'#39
      'group by  workwhsds.workid ,workplan.mjbh,workplan.colorno '
      #9',workwhsds.size,workwhsds.inout) as st'
      
        'left join LIY_DD.dbo.colorclass'#9'colorclass  on colorclass.ColorN' +
        'o=st.ColorNo'
      'group by st.workid,st.mjbh,st.colorno,colorclass.EnglishName'
      '')
    Left = 288
    Top = 137
    object WSMQworkid: TStringField
      DisplayWidth = 10
      FieldName = 'workid'
      FixedChar = True
      Size = 12
    end
    object WSMQmjbh: TStringField
      DisplayWidth = 16
      FieldName = 'mjbh'
      FixedChar = True
      Size = 50
    end
    object WSMQcolorno: TStringField
      DisplayWidth = 5
      FieldName = 'colorno'
      FixedChar = True
      Size = 4
    end
    object WSMQBDEDesigner105: TIntegerField
      DisplayWidth = 5
      FieldName = '[ 10.5]'
    end
    object WSMQBDEDesigner110: TIntegerField
      DisplayWidth = 10
      FieldName = '[ 11.0]'
    end
    object WSMQBDEDesigner115: TIntegerField
      DisplayWidth = 10
      FieldName = '[ 11.5]'
    end
    object WSMQBDEDesigner120: TIntegerField
      DisplayWidth = 10
      FieldName = '[ 12.0]'
    end
    object WSMQBDEDesigner125: TIntegerField
      DisplayWidth = 10
      FieldName = '[ 12.5]'
    end
    object WSMQBDEDesigner130: TIntegerField
      DisplayWidth = 10
      FieldName = '[ 13.0]'
    end
    object WSMQBDEDesigner135: TIntegerField
      DisplayWidth = 10
      FieldName = '[ 13.5]'
    end
    object WSMQBDEDesigner010: TIntegerField
      DisplayWidth = 10
      FieldName = '[01.0]'
    end
    object WSMQBDEDesigner015: TIntegerField
      DisplayWidth = 10
      FieldName = '[01.5]'
    end
    object WSMQBDEDesigner020: TIntegerField
      DisplayWidth = 10
      FieldName = '[02.0]'
    end
    object WSMQBDEDesigner025: TIntegerField
      DisplayWidth = 10
      FieldName = '[02.5]'
    end
    object WSMQBDEDesigner030: TIntegerField
      DisplayWidth = 10
      FieldName = '[03.0]'
    end
    object WSMQBDEDesigner035: TIntegerField
      DisplayWidth = 10
      FieldName = '[03.5]'
    end
    object WSMQBDEDesigner040: TIntegerField
      DisplayWidth = 10
      FieldName = '[04.0]'
    end
    object WSMQBDEDesigner045: TIntegerField
      DisplayWidth = 10
      FieldName = '[04.5]'
    end
    object WSMQBDEDesigner050: TIntegerField
      DisplayWidth = 10
      FieldName = '[05.0]'
    end
    object WSMQBDEDesigner055: TIntegerField
      DisplayWidth = 10
      FieldName = '[05.5]'
    end
    object WSMQBDEDesigner060: TIntegerField
      DisplayWidth = 10
      FieldName = '[06.0]'
    end
    object WSMQBDEDesigner065: TIntegerField
      DisplayWidth = 10
      FieldName = '[06.5]'
    end
    object WSMQBDEDesigner070: TIntegerField
      DisplayWidth = 10
      FieldName = '[07.0]'
    end
    object WSMQBDEDesigner075: TIntegerField
      DisplayWidth = 10
      FieldName = '[07.5]'
    end
    object WSMQBDEDesigner080: TIntegerField
      DisplayWidth = 10
      FieldName = '[08.0]'
    end
    object WSMQBDEDesigner085: TIntegerField
      DisplayWidth = 10
      FieldName = '[08.5]'
    end
    object WSMQBDEDesigner090: TIntegerField
      DisplayWidth = 10
      FieldName = '[09.0]'
    end
    object WSMQBDEDesigner095: TIntegerField
      DisplayWidth = 10
      FieldName = '[09.5]'
    end
    object WSMQBDEDesigner100: TIntegerField
      DisplayWidth = 10
      FieldName = '[10.0]'
    end
    object WSMQBDEDesigner1052: TIntegerField
      DisplayWidth = 10
      FieldName = '[10.5]'
    end
    object WSMQBDEDesigner1102: TIntegerField
      DisplayWidth = 10
      FieldName = '[11.0]'
    end
    object WSMQBDEDesigner1152: TIntegerField
      DisplayWidth = 10
      FieldName = '[11.5]'
    end
    object WSMQBDEDesigner1202: TIntegerField
      DisplayWidth = 10
      FieldName = '[12.0]'
    end
    object WSMQBDEDesigner1252: TIntegerField
      DisplayWidth = 10
      FieldName = '[12.5]'
    end
    object WSMQBDEDesigner1302: TIntegerField
      DisplayWidth = 10
      FieldName = '[13.0]'
    end
    object WSMQBDEDesigner1352: TIntegerField
      DisplayWidth = 10
      FieldName = '[13.5]'
    end
    object WSMQBDEDesigner140: TIntegerField
      DisplayWidth = 10
      FieldName = '[14.0]'
    end
    object WSMQBDEDesigner150: TIntegerField
      DisplayWidth = 10
      FieldName = '[15.0]'
    end
    object WSMQBDEDesigner160: TIntegerField
      DisplayWidth = 10
      FieldName = '[16.0]'
    end
    object WSMQBDEDesigner170: TIntegerField
      DisplayWidth = 10
      FieldName = '[17.0]'
    end
    object WSMQBDEDesigner180: TIntegerField
      DisplayWidth = 10
      FieldName = '[18.0]'
    end
    object WSMQEnglishName: TStringField
      FieldName = 'EnglishName'
      FixedChar = True
      Size = 100
    end
  end
  object WSDQ: TQuery
    DatabaseName = 'DB'
    DataSource = wsm
    SQL.Strings = (
      'select scandate,size,inout,qty  from LIY_DD.dbo.workwhsds'
      'where workid=:workid'
      'order by scandate')
    Left = 736
    Top = 137
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'workid'
        ParamType = ptUnknown
        Size = 13
      end>
    object WSDQscandate: TDateTimeField
      FieldName = 'scandate'
    end
    object WSDQsize: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object WSDQinout: TStringField
      FieldName = 'inout'
      FixedChar = True
      Size = 1
    end
    object WSDQqty: TIntegerField
      FieldName = 'qty'
    end
  end
  object sizeq: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 177
  end
  object DataSource1: TDataSource
    DataSet = WSDQ
    Left = 784
    Top = 137
  end
  object wsm: TDataSource
    DataSet = WSMQ
    Left = 328
    Top = 137
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 539
    Top = 13
  end
end
