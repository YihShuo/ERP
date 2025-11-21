object ClaimAnalytics: TClaimAnalytics
  Left = 159
  Top = 123
  Width = 1185
  Height = 581
  Caption = 'Claim_Analytics'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1169
    Height = 477
    ActivePage = TS1
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Top 3 Country'
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 641
        Height = 449
        Align = alLeft
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'So'
            Footers = <>
            Title.Caption = 'Country'
            Width = 146
          end
          item
            EditButtons = <>
            FieldName = 'PO_Qty'
            Footers = <>
            Width = 83
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'Total_Cost'
            Footers = <>
            Width = 100
          end>
      end
      object DBChart1: TDBChart
        Left = 641
        Top = 0
        Width = 640
        Height = 449
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Top 3 Country')
        Align = alLeft
        TabOrder = 1
        object BarSeries1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = qry_Cou
          SeriesColor = clRed
          XLabelsSource = 'So'
          BarWidthPercent = 30
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'PO_Qty'
          object AddTeeFunction1: TAddTeeFunction
          end
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'Top 3 Model'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 641
        Height = 449
        Align = alLeft
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'pri'
            Footers = <>
            Title.Caption = 'Model'
            Width = 198
          end
          item
            EditButtons = <>
            FieldName = 'PO_Qty'
            Footers = <>
            Width = 93
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'Total_Cost'
            Footers = <>
            Width = 107
          end>
      end
      object DBChart2: TDBChart
        Left = 641
        Top = 0
        Width = 640
        Height = 449
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Top 3 Model')
        Align = alLeft
        TabOrder = 1
        object BarSeries2: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = qry_Mod
          SeriesColor = clRed
          XLabelsSource = 'pri'
          BarWidthPercent = 30
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'PO_Qty'
          object AddTeeFunction2: TAddTeeFunction
          end
        end
      end
    end
    object TS3: TTabSheet
      Caption = 'Top 3 Article'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 641
        Height = 449
        Align = alLeft
        DataSource = DS4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Article_num'
            Footers = <>
            Title.Caption = 'Article'
            Width = 138
          end
          item
            EditButtons = <>
            FieldName = 'PO_Qty'
            Footers = <>
            Width = 112
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'Total_Cost'
            Footers = <>
            Width = 127
          end>
      end
      object DBChart3: TDBChart
        Left = 641
        Top = 0
        Width = 640
        Height = 449
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Top 3 Article')
        Align = alLeft
        TabOrder = 1
        object BarSeries3: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = qry_Art
          SeriesColor = clRed
          XLabelsSource = 'Article_num'
          BarWidthPercent = 30
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'PO_Qty'
          object AddTeeFunction3: TAddTeeFunction
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1169
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 4
      Width = 481
      Height = 20
      AutoSize = False
      Caption = 'Claim Analytics'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 18
      Top = 35
      Width = 58
      Height = 16
      Caption = 'Monthly:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 206
      Top = 39
      Width = 9
      Height = 16
      Caption = '~'
      Visible = False
    end
    object Label5: TLabel
      Left = 136
      Top = 33
      Width = 5
      Height = 20
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button3: TButton
      Left = 392
      Top = 29
      Width = 78
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button3Click
    end
    object CBX1: TComboBox
      Left = 75
      Top = 33
      Width = 60
      Height = 24
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = '2020'
    end
    object CBX2: TComboBox
      Left = 144
      Top = 33
      Width = 60
      Height = 24
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
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
    object CBX8: TComboBox
      Left = 219
      Top = 32
      Width = 60
      Height = 24
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 3
      Visible = False
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
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 84
    Top = 211
  end
  object qry_Cou: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT top 3 So,sum(cr.PO_Qty) PO_Qty,sum(cr.Total_Cost)Total_Co' +
        'st '
      'FROM Claim_Report cr '
      
        'WHERE year(cr.Date_Claim_Initiated)='#39'2022'#39' AND month(cr.Date_Cla' +
        'im_Initiated)='#39'01'#39' '
      'AND ISNULL(SO,'#39#39')<>'#39#39' GROUP BY cr.SO'
      'order by PO_Qty desc')
    Left = 156
    Top = 212
    object qry_CouSo: TStringField
      FieldName = 'So'
      FixedChar = True
      Size = 50
    end
    object qry_CouPO_Qty: TIntegerField
      FieldName = 'PO_Qty'
    end
    object qry_CouTotal_Cost: TCurrencyField
      FieldName = 'Total_Cost'
    end
  end
  object qry_Mod: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'SELECT top 3 pri,sum(cr.PO_Qty) PO_Qty,sum(cr.Total_Cost)Total_C' +
        'ost '
      'FROM Claim_Report cr '
      
        'WHERE year(cr.Date_Claim_Initiated)='#39'2022'#39' AND month(cr.Date_Cla' +
        'im_Initiated)='#39'01'#39' '
      'AND ISNULL(pri,'#39#39')<>'#39#39' GROUP BY cr.pri'
      'order by PO_Qty DESC'
      '')
    Left = 188
    Top = 212
    object qry_Modpri: TStringField
      FieldName = 'pri'
      FixedChar = True
      Size = 100
    end
    object qry_ModPO_Qty: TIntegerField
      FieldName = 'PO_Qty'
    end
    object qry_ModTotal_Cost: TCurrencyField
      FieldName = 'Total_Cost'
    end
  end
  object qry_Art: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT top 3 Article_num,sum(cr.PO_Qty) PO_Qty,sum(cr.Total_Cost' +
        ')Total_Cost '
      'FROM Claim_Report cr '
      
        'WHERE year(cr.Date_Claim_Initiated)='#39'2022'#39' AND month(cr.Date_Cla' +
        'im_Initiated)='#39'01'#39' '
      'AND ISNULL(Article_num,'#39#39')<>'#39#39' GROUP BY cr.Article_num'
      'order by PO_Qty DESC')
    Left = 220
    Top = 212
    object qry_ArtArticle_num: TStringField
      FieldName = 'Article_num'
      FixedChar = True
      Size = 40
    end
    object qry_ArtPO_Qty: TIntegerField
      FieldName = 'PO_Qty'
    end
    object qry_ArtTotal_Cost: TCurrencyField
      FieldName = 'Total_Cost'
    end
  end
  object DS2: TDataSource
    DataSet = qry_Cou
    Left = 156
    Top = 244
  end
  object DS3: TDataSource
    DataSet = qry_Mod
    Left = 188
    Top = 244
  end
  object DS4: TDataSource
    DataSet = qry_Art
    Left = 220
    Top = 244
  end
end
