object MonthlyReportShoeB: TMonthlyReportShoeB
  Left = 229
  Top = 111
  Width = 979
  Height = 563
  Caption = 'Monthly Report Shoe B'
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
    Width = 963
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label1: TLabel
      Left = 584
      Top = 18
      Width = 262
      Height = 26
      Caption = 'Shoe B/C Statistic Report'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 120
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label4: TLabel
      Left = 224
      Top = 24
      Width = 35
      Height = 16
      Caption = 'Shoe:'
    end
    object cbYear: TComboBox
      Left = 56
      Top = 20
      Width = 58
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object btQuery: TButton
      Left = 328
      Top = 15
      Width = 105
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = btQueryClick
    end
    object btExcel: TButton
      Left = 448
      Top = 14
      Width = 105
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = btExcelClick
    end
    object cbMonth: TComboBox
      Left = 160
      Top = 20
      Width = 58
      Height = 24
      ItemHeight = 16
      TabOrder = 3
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
    object BC: TComboBox
      Left = 264
      Top = 20
      Width = 58
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'B'
      Items.Strings = (
        'B'
        'C')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 963
    Height = 460
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 458
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'MONTH'
          Footers = <>
          Title.Alignment = taCenter
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'BRAND'
          Footers = <>
          Title.Alignment = taCenter
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'PO'
          Footers = <>
          Title.Alignment = taCenter
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = '01.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '01.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '02.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '02.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '03.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '03.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '04.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '04.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '05.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '05.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '06.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '06.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '07.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '07.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '08.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '08.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '09.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '09.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '10.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '10.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '11.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '11.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '12.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '12.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '13.0K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '13.5K'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '01'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '01.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '02'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '02.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '03'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '03.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '04'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '04.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '05'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '05.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '06'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '06.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '07'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '07.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '08'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '08.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '09'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '09.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '10'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '10.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '11'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '11.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '12'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '12.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '13'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '13.5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = '14'
          Footers = <>
          Title.Alignment = taCenter
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL'
          Footers = <>
          Title.Alignment = taCenter
          Width = 50
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select '#39'MONTH'#39'=cast(year(scdate) as varchar)+'#39' - '#39'+ cast(month(s' +
        'cdate) as varchar),BRAND=kfzl.kfjc,PO=ddzl.KHPO,'
      #39'01'#39'= sum(case when wopr.cc='#39'01'#39' then shoeb else NULL end),'
      #39'01.5'#39'= sum(case when wopr.cc='#39'01.5'#39' then shoeb else NULL end),'
      #39'02'#39'= sum(case when wopr.cc='#39'02'#39' then shoeb else NULL end),'
      #39'02.5'#39'= sum(case when wopr.cc='#39'02.5'#39' then shoeb else NULL end),'
      #39'03'#39'= sum(case when wopr.cc='#39'03'#39' then shoeb else NULL end),'
      #39'03.5'#39'= sum(case when wopr.cc='#39'03.5'#39' then shoeb else NULL end),'
      #39'04'#39'= sum(case when wopr.cc='#39'04'#39' then shoeb else NULL end),'
      #39'04.5'#39'= sum(case when wopr.cc='#39'04.5'#39' then shoeb else NULL end),'
      #39'05'#39'= sum(case when wopr.cc='#39'05'#39' then shoeb else NULL end),'
      #39'05.5'#39'= sum(case when wopr.cc='#39'05.5'#39' then shoeb else NULL end),'
      #39'06'#39'= sum(case when wopr.cc='#39'06'#39' then shoeb else NULL end),'
      #39'06.5'#39'= sum(case when wopr.cc='#39'06.5'#39' then shoeb else NULL end),'
      #39'07'#39'= sum(case when wopr.cc='#39'07'#39' then shoeb else NULL end),'
      #39'07.5'#39'= sum(case when wopr.cc='#39'07.5'#39' then shoeb else NULL end),'
      #39'08'#39'= sum(case when wopr.cc='#39'08'#39' then shoeb else NULL end),'
      #39'08.5'#39'= sum(case when wopr.cc='#39'08.5'#39' then shoeb else NULL end),'
      #39'09'#39'= sum(case when wopr.cc='#39'09'#39' then shoeb else NULL end),'
      #39'09.5'#39'= sum(case when wopr.cc='#39'09.5'#39' then shoeb else NULL end),'
      #39'10'#39'= sum(case when wopr.cc='#39'10'#39' then shoeb else NULL end),'
      #39'10.5'#39'= sum(case when wopr.cc='#39'10.5'#39' then shoeb else NULL end),'
      #39'11'#39'= sum(case when wopr.cc='#39'11'#39' then shoeb else NULL end),'
      #39'11.5'#39'= sum(case when wopr.cc='#39'11.5'#39' then shoeb else NULL end),'
      #39'12'#39'= sum(case when wopr.cc='#39'12'#39' then shoeb else NULL end),'
      #39'12.5'#39'= sum(case when wopr.cc='#39'12.5'#39' then shoeb else NULL end),'
      #39'13'#39'= sum(case when wopr.cc='#39'13'#39' then shoeb else NULL end),'
      #39'13.5'#39'= sum(case when wopr.cc='#39'13.5'#39' then shoeb else NULL end),'
      #39'14'#39'= sum(case when wopr.cc='#39'14'#39' then shoeb else NULL end),'
      
        #39'01.0K'#39'= sum(case when wopr.cc='#39'01.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'01.5K'#39'= sum(case when wopr.cc='#39'01.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'02.0K'#39'= sum(case when wopr.cc='#39'02.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'02.5K'#39'= sum(case when wopr.cc='#39'02.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'03.0K'#39'= sum(case when wopr.cc='#39'03.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'03.5K'#39'= sum(case when wopr.cc='#39'03.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'04.0K'#39'= sum(case when wopr.cc='#39'04.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'04.5K'#39'= sum(case when wopr.cc='#39'04.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'05.0K'#39'= sum(case when wopr.cc='#39'05.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'05.5K'#39'= sum(case when wopr.cc='#39'05.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'06.0K'#39'= sum(case when wopr.cc='#39'06.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'06.5K'#39'= sum(case when wopr.cc='#39'06.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'07.0K'#39'= sum(case when wopr.cc='#39'07.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'07.5K'#39'= sum(case when wopr.cc='#39'07.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'08.0K'#39'= sum(case when wopr.cc='#39'08.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'08.5K'#39'= sum(case when wopr.cc='#39'08.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'09.0K'#39'= sum(case when wopr.cc='#39'09.0K'#39' then shoeb else NULL end)' +
        ','
      
        #39'09.5K'#39'= sum(case when wopr.cc='#39'09.5K'#39' then shoeb else NULL end)' +
        ','
      
        #39'10.0K'#39'= sum(case when ((wopr.cc='#39'10.0K'#39') or (wopr.cc='#39' 10.0K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'10.5K'#39'= sum(case when ((wopr.cc='#39'10.5K'#39') or (wopr.cc='#39' 10.5K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'11.0K'#39'= sum(case when ((wopr.cc='#39'11.0K'#39') or (wopr.cc='#39' 11.0K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'11.5K'#39'= sum(case when ((wopr.cc='#39'11.5K'#39') or (wopr.cc='#39' 11.5K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'12.0K'#39'= sum(case when ((wopr.cc='#39'12.0K'#39') or (wopr.cc='#39' 12.0K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'12.5K'#39'= sum(case when ((wopr.cc='#39'12.5K'#39') or (wopr.cc='#39' 12.5K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'13.0K'#39'= sum(case when ((wopr.cc='#39'13.0K'#39') or (wopr.cc='#39' 13.0K'#39'))' +
        ' then shoeb else NULL end),'
      
        #39'13.5K'#39'= sum(case when ((wopr.cc='#39'13.5K'#39') or (wopr.cc='#39' 13.5K'#39'))' +
        'then shoeb else NULL end),'
      'TOTAL=sum(shoeb)'
      'from wopr left join ddzl'
      'on wopr.scbh=ddzl.ddbh'
      'left join kfzl'
      'on ddzl.khbh=kfzl.kfdh'
      'where year(scdate)='#39'2014'#39
      'and shoeb is not null and shoeb <>0'
      
        'group by cast(year(scdate) as varchar)+'#39' - '#39'+ cast(month(scdate)' +
        ' as varchar),kfzl.kfjc,ddzl.KHPO')
    Left = 152
    Top = 161
    object Query1MONTH: TStringField
      FieldName = 'MONTH'
      FixedChar = True
      Size = 63
    end
    object Query1BRAND: TStringField
      FieldName = 'BRAND'
      FixedChar = True
    end
    object Query1PO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 25
    end
    object Query1BDEDesigner010K: TIntegerField
      FieldName = '01.0K'
    end
    object Query1BDEDesigner015K: TIntegerField
      FieldName = '01.5K'
    end
    object Query1BDEDesigner020K: TIntegerField
      FieldName = '02.0K'
    end
    object Query1BDEDesigner025K: TIntegerField
      FieldName = '02.5K'
    end
    object Query1BDEDesigner030K: TIntegerField
      FieldName = '03.0K'
    end
    object Query1BDEDesigner035K: TIntegerField
      FieldName = '03.5K'
    end
    object Query1BDEDesigner040K: TIntegerField
      FieldName = '04.0K'
    end
    object Query1BDEDesigner045K: TIntegerField
      FieldName = '04.5K'
    end
    object Query1BDEDesigner050K: TIntegerField
      FieldName = '05.0K'
    end
    object Query1BDEDesigner055K: TIntegerField
      FieldName = '05.5K'
    end
    object Query1BDEDesigner060K: TIntegerField
      FieldName = '06.0K'
    end
    object Query1BDEDesigner065K: TIntegerField
      FieldName = '06.5K'
    end
    object Query1BDEDesigner070K: TIntegerField
      FieldName = '07.0K'
    end
    object Query1BDEDesigner075K: TIntegerField
      FieldName = '07.5K'
    end
    object Query1BDEDesigner080K: TIntegerField
      FieldName = '08.0K'
    end
    object Query1BDEDesigner085K: TIntegerField
      FieldName = '08.5K'
    end
    object Query1BDEDesigner090K: TIntegerField
      FieldName = '09.0K'
    end
    object Query1BDEDesigner095K: TIntegerField
      FieldName = '09.5K'
    end
    object Query1BDEDesigner100K: TIntegerField
      FieldName = '10.0K'
    end
    object Query1BDEDesigner105K: TIntegerField
      FieldName = '10.5K'
    end
    object Query1BDEDesigner110K: TIntegerField
      FieldName = '11.0K'
    end
    object Query1BDEDesigner115K: TIntegerField
      FieldName = '11.5K'
    end
    object Query1BDEDesigner120K: TIntegerField
      FieldName = '12.0K'
    end
    object Query1BDEDesigner125K: TIntegerField
      FieldName = '12.5K'
    end
    object Query1BDEDesigner130K: TIntegerField
      FieldName = '13.0K'
    end
    object Query1BDEDesigner135K: TIntegerField
      FieldName = '13.5K'
    end
    object Query1BDEDesigner01: TIntegerField
      FieldName = '01'
    end
    object Query1BDEDesigner015: TIntegerField
      FieldName = '01.5'
    end
    object Query1BDEDesigner02: TIntegerField
      FieldName = '02'
    end
    object Query1BDEDesigner025: TIntegerField
      FieldName = '02.5'
    end
    object Query1BDEDesigner03: TIntegerField
      FieldName = '03'
    end
    object Query1BDEDesigner035: TIntegerField
      FieldName = '03.5'
    end
    object Query1BDEDesigner04: TIntegerField
      FieldName = '04'
    end
    object Query1BDEDesigner045: TIntegerField
      FieldName = '04.5'
    end
    object Query1BDEDesigner05: TIntegerField
      FieldName = '05'
    end
    object Query1BDEDesigner055: TIntegerField
      FieldName = '05.5'
    end
    object Query1BDEDesigner06: TIntegerField
      FieldName = '06'
    end
    object Query1BDEDesigner065: TIntegerField
      FieldName = '06.5'
    end
    object Query1BDEDesigner07: TIntegerField
      FieldName = '07'
    end
    object Query1BDEDesigner075: TIntegerField
      FieldName = '07.5'
    end
    object Query1BDEDesigner08: TIntegerField
      FieldName = '08'
    end
    object Query1BDEDesigner085: TIntegerField
      FieldName = '08.5'
    end
    object Query1BDEDesigner09: TIntegerField
      FieldName = '09'
    end
    object Query1BDEDesigner095: TIntegerField
      FieldName = '09.5'
    end
    object Query1BDEDesigner10: TIntegerField
      FieldName = '10'
    end
    object Query1BDEDesigner105: TIntegerField
      FieldName = '10.5'
    end
    object Query1BDEDesigner11: TIntegerField
      FieldName = '11'
    end
    object Query1BDEDesigner115: TIntegerField
      FieldName = '11.5'
    end
    object Query1BDEDesigner12: TIntegerField
      FieldName = '12'
    end
    object Query1BDEDesigner125: TIntegerField
      FieldName = '12.5'
    end
    object Query1BDEDesigner13: TIntegerField
      FieldName = '13'
    end
    object Query1BDEDesigner135: TIntegerField
      FieldName = '13.5'
    end
    object Query1BDEDesigner14: TIntegerField
      FieldName = '14'
    end
    object Query1TOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 161
  end
end
