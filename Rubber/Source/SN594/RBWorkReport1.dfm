object RBWorkReport: TRBWorkReport
  Left = 355
  Top = 200
  Width = 1305
  Height = 675
  Caption = 'RB Work Report'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 104
      Top = 16
      Width = 32
      Height = 16
      Caption = 'Color'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 304
      Top = 16
      Width = 56
      Height = 16
      Caption = 'ARTICLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 104
      Top = 48
      Width = 35
      Height = 16
      Caption = 'Begin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 256
      Top = 48
      Width = 24
      Height = 16
      Caption = 'End'
    end
    object Label1: TLabel
      Left = 592
      Top = 15
      Width = 48
      Height = 16
      Caption = 'BUYNO'
    end
    object Button1: TButton
      Left = 832
      Top = 9
      Width = 81
      Height = 31
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBcolor: TComboBox
      Left = 152
      Top = 12
      Width = 121
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      Items.Strings = (
        '139-18-00')
    end
    object EDARTICLE: TEdit
      Left = 384
      Top = 12
      Width = 177
      Height = 24
      TabOrder = 2
    end
    object DP1: TDateTimePicker
      Left = 152
      Top = 44
      Width = 89
      Height = 24
      Date = 45402.366854131940000000
      Format = 'yyyy/MM/dd'
      Time = 45402.366854131940000000
      TabOrder = 3
    end
    object DP2: TDateTimePicker
      Left = 296
      Top = 44
      Width = 89
      Height = 24
      Date = 45402.366854131940000000
      Format = 'yyyy/MM/dd'
      Time = 45402.366854131940000000
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 65
      Height = 73
      TabOrder = 5
      object Label19: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 29
        Caption = 'RB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object BUYNOEdit: TEdit
      Left = 653
      Top = 11
      Width = 121
      Height = 24
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 1289
    Height = 547
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sku'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Size'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Color'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalQty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalS_OK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalDiff'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BUYNO'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 184
  end
  object colorclassQry: TQuery
    DatabaseName = 'DB'
    Left = 128
    Top = 304
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT a.sku,a.[size],a.color, SUM(a.[qty]) AS TotalQty,SUM(a.[s' +
        '_ok]) AS TotalS_OK,SUM(a.[qty]) - SUM(a.[s_ok]) AS TotalDiff, BU' +
        'YNO'
      ' from TB_DD.[dbo].[rubber01p] a'
      
        'inner join TB_DD.[dbo].[rubber01] b  ON a.sku = b.ARTICLE AND a.' +
        'id_code = b.id '
      
        'inner join TB_ERP.dbo.DDZL c on c.DDBH=b.ry and c.ARTICLE=b.ARTI' +
        'CLE'
      
        ' where  b.flag='#39'P'#39' and CAST(b.[SCRQ] AS date) between '#39'2025-08-0' +
        '1'#39' and '#39'2025-09-11'#39
      ' AND b.ARTICLE = '#39'1162030-BWHT'#39
      ' AND a.[Color] = '#39'139-18-00'#39
      ' and c.BUYNO='#39'2505F25'#39
      ' group by a.[size], a.sku ,a.color, BUYNO')
    Left = 88
    Top = 200
    object Query1Sku: TStringField
      FieldName = 'Sku'
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      Size = 10
    end
    object Query1Color: TStringField
      FieldName = 'Color'
    end
    object Query1TotalQty: TIntegerField
      FieldName = 'TotalQty'
    end
    object Query1TotalS_OK: TIntegerField
      FieldName = 'TotalS_OK'
    end
    object Query1TotalDiff: TIntegerField
      FieldName = 'TotalDiff'
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 216
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Query2: TQuery
    Left = 320
    Top = 360
  end
end
