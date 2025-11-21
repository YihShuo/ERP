object EVAWorkReport2: TEVAWorkReport2
  Left = 501
  Top = 257
  Width = 1305
  Height = 675
  Caption = 'EVA Work Report2'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 96
      Top = 26
      Width = 45
      Height = 20
      Caption = 'Color: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 322
      Top = 26
      Width = 76
      Height = 20
      Caption = 'ARTICLE: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 857
      Top = 13
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object bbt6: TBitBtn
      Left = 972
      Top = 12
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 2
      Width = 65
      Height = 57
      TabOrder = 2
      object Label19: TLabel
        Left = 8
        Top = 16
        Width = 46
        Height = 29
        Caption = 'EVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object TBcolor: TEdit
      Left = 144
      Top = 22
      Width = 137
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 403
      Top = 22
      Width = 136
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 624
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 624
      Top = 40
      Width = 97
      Height = 17
      Caption = 'InQty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 624
      Top = 72
      Width = 97
      Height = 17
      Caption = 'LastQty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 720
      Top = 8
      Width = 97
      Height = 17
      Caption = 'OutQty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 720
      Top = 40
      Width = 105
      Height = 17
      Caption = 'LastOut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 720
      Top = 72
      Width = 97
      Height = 17
      Caption = 'TON KHO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = CheckBox6Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1289
    Height = 531
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
    TabOrder = 1
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
        FieldName = 'DDMH'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'sku'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Color'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'T'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '02'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = '02.5'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '03'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '03.5'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '04'
        Footers = <>
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = '04.5'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '05'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '05.5'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '06'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '06.5'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '07'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '07.5'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = '08'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '08.5'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '09'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '09.5'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '10'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '10.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '11'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '11.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '12'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '12.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '13'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '13.5'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = '14'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '14.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '15'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = '15.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '16'
        Footers = <>
        Width = 32
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 144
    Top = 225
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'DECLARE @COLOR NVARCHAR(20),@ARTICLE NVARCHAR(50)'
      'SET @COLOR = '#39'139-%'#39
      'SET @ARTICLE = '#39'1162030%'#39
      'SELECT [DDMH]'
      '      ,[sku]'
      '      ,[Color]'
      '      ,[XieMing]'
      '      ,[T]'
      '      ,[Pairs]'
      '      ,[02]'
      '      ,[02.5]'
      '      ,[03]'
      '      ,[03.5]'
      '      ,[04]'
      '      ,[04.5]'
      '      ,[05]'
      '      ,[05.5]'
      '      ,[06]'
      '      ,[06.5]'
      '      ,[07]'
      '      ,[07.5]'
      '      ,[08]'
      '      ,[08.5]'
      '      ,[09]'
      '      ,[09.5]'
      '      ,[10]'
      '      ,[10.5]'
      '      ,[11]'
      '      ,[11.5]'
      '      ,[12]'
      '      ,[12.5]'
      '      ,[13]'
      '      ,[13.5]'
      '      ,[14]'
      '      ,[14.5]'
      '      ,[15]'
      '      ,[15.5]'
      '      ,[16]'
      '      ,(Orderby)'
      'FROM'
      '('#9
      
        #9'select  REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color,b.XieM' +
        'ing, '#39'Total'#39' as T, sum (qty) as Pairs ,'
      '  SUM(CASE WHEN Size = '#39'02'#39' THEN Qty   ELSE 0 END) AS '#39'02'#39','
      '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN Qty  ELSE 0 END) AS '#39'02.5'#39','
      '  SUM(CASE WHEN Size = '#39'03'#39' THEN Qty  ELSE 0 END) AS '#39'03'#39','
      '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN Qty  ELSE 0 END) AS '#39'03.5'#39','
      '  SUM(CASE WHEN Size = '#39'04'#39' THEN Qty  ELSE 0 END) AS '#39'04'#39','
      '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN Qty  ELSE 0 END) AS '#39'04.5'#39','
      '  SUM(CASE WHEN Size = '#39'05'#39' THEN Qty  ELSE 0 END) AS '#39'05'#39','
      '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN Qty  ELSE 0 END) AS '#39'05.5'#39','
      '  SUM(CASE WHEN Size = '#39'06'#39' THEN Qty  ELSE 0 END) AS '#39'06'#39','
      '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN Qty  ELSE 0 END) AS '#39'06.5'#39','
      '  SUM(CASE WHEN Size = '#39'07'#39' THEN Qty  ELSE 0 END) AS '#39'07'#39','
      '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN Qty  ELSE 0 END) AS '#39'07.5'#39','
      '  SUM(CASE WHEN Size = '#39'08'#39' THEN Qty  ELSE 0 END) AS '#39'08'#39','
      '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN Qty  ELSE 0 END) AS '#39'08.5'#39','
      '  SUM(CASE WHEN Size = '#39'09'#39' THEN Qty  ELSE 0 END) AS '#39'09'#39','
      '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN Qty  ELSE 0 END) AS '#39'09.5'#39','
      '  SUM(CASE WHEN Size = '#39'10'#39' THEN Qty  ELSE 0 END) AS '#39'10'#39','
      '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN Qty  ELSE 0 END) AS '#39'10.5'#39','
      '  SUM(CASE WHEN Size = '#39'11'#39' THEN Qty  ELSE 0 END) AS '#39'11'#39','
      '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN Qty  ELSE 0 END) AS '#39'11.5'#39','
      '  SUM(CASE WHEN Size = '#39'12'#39' THEN Qty  ELSE 0 END) AS '#39'12'#39','
      '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN Qty  ELSE 0 END) AS '#39'12.5'#39','
      '  SUM(CASE WHEN Size = '#39'13'#39' THEN Qty  ELSE 0 END) AS '#39'13'#39','
      '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN Qty  ELSE 0 END) AS '#39'13.5'#39','
      '  SUM(CASE WHEN Size = '#39'14'#39' THEN Qty  ELSE 0 END) AS '#39'14'#39','
      '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN Qty  ELSE 0 END) AS '#39'14.5'#39','
      '  SUM(CASE WHEN Size = '#39'15'#39' THEN Qty  ELSE 0 END) AS '#39'15'#39','
      '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN Qty  ELSE 0 END) AS '#39'15.5'#39','
      '  SUM(CASE WHEN Size = '#39'16'#39' THEN Qty  ELSE 0 END) AS '#39'16'#39','
      '  1 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join TB_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39'  and a.Color LIKE '#39'139-%'#39
      'group by    b.DDMH, a.sku, a.Color,b.XieMing'
      'union ALL'
      
        'select   REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color,b.XieM' +
        'ing ,'#39'InQty'#39', sum (S_ok) as Pairs, '
      'SUM(CASE WHEN Size = '#39'02'#39' THEN  (s_ok)   ELSE 0 END) AS '#39'02'#39','
      
        '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'02.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'03'#39' THEN (s_ok)  ELSE 0 END) AS '#39'03'#39','
      
        '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'03.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'04'#39' THEN (s_ok)  ELSE 0 END) AS '#39'04'#39','
      
        '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'04.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'05'#39' THEN (s_ok)  ELSE 0 END) AS '#39'05'#39','
      
        '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'05.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'06'#39' THEN (s_ok)  ELSE 0 END) AS '#39'06'#39','
      
        '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'06.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'07'#39' THEN (s_ok)  ELSE 0 END) AS '#39'07'#39','
      
        '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'07.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'08'#39' THEN (s_ok)  ELSE 0 END) AS '#39'08'#39','
      
        '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'08.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'09'#39' THEN (s_ok)  ELSE 0 END) AS '#39'09'#39','
      
        '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'09.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'10'#39' THEN (s_ok)  ELSE 0 END) AS '#39'10'#39','
      
        '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'10.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'11'#39' THEN (s_ok)  ELSE 0 END) AS '#39'11'#39','
      
        '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'11.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'12'#39' THEN (s_ok)  ELSE 0 END) AS '#39'12'#39','
      
        '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'12.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'13'#39' THEN (s_ok)  ELSE 0 END) AS '#39'13'#39','
      
        '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'13.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'14'#39' THEN (s_ok)  ELSE 0 END) AS '#39'14'#39','
      
        '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'14.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'15'#39' THEN (s_ok)  ELSE 0 END) AS '#39'15'#39','
      
        '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN (s_ok)  ELSE 0 END) AS '#39'15.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'16'#39' THEN (s_ok)  ELSE 0 END) AS '#39'16'#39','
      '   2 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join Tb_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39' and a.Color LIKE '#39'139-%'#39
      'group by   b.DDMH, a.sku, a.Color,b.XieMing'
      'union ALL'
      
        'select   REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color,b.XieM' +
        'ing ,'#39'LastQty'#39', sum (Qty - S_ok) as Pairs ,'
      
        'SUM(CASE WHEN Size = '#39'02'#39' THEN  ( Qty - s_ok )   ELSE 0 END) AS ' +
        #39'02'#39','
      
        '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'02.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'03'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '03'#39','
      
        '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'03.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'04'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '04'#39','
      
        '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'04.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'05'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '05'#39','
      
        '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'05.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'06'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '06'#39','
      
        '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'06.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'07'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '07'#39','
      
        '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'07.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'08'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '08'#39','
      
        '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'08.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'09'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '09'#39','
      
        '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'09.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'10'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '10'#39','
      
        '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'10.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'11'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '11'#39','
      
        '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'11.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'12'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '12'#39','
      
        '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'12.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'13'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '13'#39','
      
        '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'13.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'14'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '14'#39','
      
        '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'14.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'15'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '15'#39','
      
        '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS' +
        ' '#39'15.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'16'#39' THEN ( Qty - s_ok)  ELSE 0 END) AS '#39 +
        '16'#39','
      '   3 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join Tb_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39'  and a.Color LIKE '#39'139-%'#39
      'group by    b.DDMH, a.sku, a.Color,b.XieMing'
      'union ALL'
      
        'select  REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color, b.XieM' +
        'ing ,'#39'OutQty'#39', sum (f_ok) as Pairs ,'
      'SUM(CASE WHEN Size = '#39'02'#39' THEN  (f_ok)   ELSE 0 END) AS '#39'02'#39','
      
        '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'02.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'03'#39' THEN (f_ok)  ELSE 0 END) AS '#39'03'#39','
      
        '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'03.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'04'#39' THEN (f_ok)  ELSE 0 END) AS '#39'04'#39','
      
        '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'04.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'05'#39' THEN (f_ok)  ELSE 0 END) AS '#39'05'#39','
      
        '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'05.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'06'#39' THEN (f_ok)  ELSE 0 END) AS '#39'06'#39','
      
        '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'06.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'07'#39' THEN (f_ok)  ELSE 0 END) AS '#39'07'#39','
      
        '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'07.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'08'#39' THEN (f_ok)  ELSE 0 END) AS '#39'08'#39','
      
        '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'08.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'09'#39' THEN (f_ok)  ELSE 0 END) AS '#39'09'#39','
      
        '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'09.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'10'#39' THEN (f_ok)  ELSE 0 END) AS '#39'10'#39','
      
        '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'10.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'11'#39' THEN (f_ok)  ELSE 0 END) AS '#39'11'#39','
      
        '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'11.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'12'#39' THEN (f_ok)  ELSE 0 END) AS '#39'12'#39','
      
        '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'12.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'13'#39' THEN (f_ok)  ELSE 0 END) AS '#39'13'#39','
      
        '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'13.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'14'#39' THEN (f_ok)  ELSE 0 END) AS '#39'14'#39','
      
        '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'14.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'15'#39' THEN (f_ok)  ELSE 0 END) AS '#39'15'#39','
      
        '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN (f_ok)  ELSE 0 END) AS '#39'15.5'#39 +
        ','
      '  SUM(CASE WHEN Size = '#39'16'#39' THEN (f_ok)  ELSE 0 END) AS '#39'16'#39','
      '   4 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join Tb_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39'  and a.Color LIKE '#39'139-%'#39
      'group by   b.DDMH, a.sku, a.Color,b.XieMing'
      'union ALL'
      
        'select  REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color, b.XieM' +
        'ing ,'#39'LastOut'#39', sum (qty - s_ok-f_ok) as Pairs ,'
      
        'SUM(CASE WHEN Size = '#39'02'#39' THEN  ( qty - (s_ok-f_ok))   ELSE 0 EN' +
        'D) AS '#39'02'#39','
      
        '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'02.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'03'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'03'#39','
      
        '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'03.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'04'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'04'#39','
      
        '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'04.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'05'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'05'#39','
      
        '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'05.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'06'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'06'#39','
      
        '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'06.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'07'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'07'#39','
      
        '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'07.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'08'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'08'#39','
      
        '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'08.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'09'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'09'#39','
      
        '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'09.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'10'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'10'#39','
      
        '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'10.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'11'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'11'#39','
      
        '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'11.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'12'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'12'#39','
      
        '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'12.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'13'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'13'#39','
      
        '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'13.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'14'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'14'#39','
      
        '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'14.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'15'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'15'#39','
      
        '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 E' +
        'ND) AS '#39'15.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'16'#39' THEN (qty - (s_ok-f_ok))  ELSE 0 END' +
        ') AS '#39'16'#39','
      '   5 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join Tb_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39'  and a.Color LIKE '#39'139-%'#39
      'group by   b.DDMH, a.sku, a.Color,b.XieMing'
      'union ALL'
      
        'select  REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color,b.XieMi' +
        'ng ,'#39'TON KHO'#39', sum ( s_ok-f_ok) as Pairs ,'
      
        'SUM(CASE WHEN Size = '#39'02'#39' THEN  ( s_ok-f_ok)   ELSE 0 END) AS '#39'0' +
        '2'#39','
      
        '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'02.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'03'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'0' +
        '3'#39','
      
        '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'03.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'04'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'0' +
        '4'#39','
      
        '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'04.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'05'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'0' +
        '5'#39','
      
        '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'05.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'06'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'0' +
        '6'#39','
      
        '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'06.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'07'#39' THEN (s_ok-f_ok)  ELSE 0 END) AS '#39'07' +
        #39','
      
        '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'07.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'08'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'0' +
        '8'#39','
      
        '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'08.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'09'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'0' +
        '9'#39','
      
        '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'09.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'10'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'1' +
        '0'#39','
      
        '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'10.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'11'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'1' +
        '1'#39','
      
        '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'11.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'12'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'1' +
        '2'#39','
      
        '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'12.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'13'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'1' +
        '3'#39','
      
        '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'13.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'14'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'1' +
        '4'#39','
      
        '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'14.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'15'#39' THEN (s_ok-f_ok)  ELSE 0 END) AS '#39'15' +
        #39','
      
        '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS ' +
        #39'15.5'#39','
      
        '  SUM(CASE WHEN Size = '#39'16'#39' THEN ( s_ok-f_ok)  ELSE 0 END) AS '#39'1' +
        '6'#39','
      '   6 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join Tb_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39'  and a.Color LIKE '#39'139-%'#39
      'group by   b.DDMH, a.sku, a.Color,b.XieMing'
      'union  '
      
        'select  REPLACE([DDMH],'#39'HOKA-'#39','#39#39') as DDMH,a.sku,a.Color,b.XieMi' +
        'ng ,NULL, Pairs=NULL '
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',NULL'
      ',99 as Orderby '
      'FROM TB_DD.dbo.rubber01f a'
      
        'left join Tb_ERP.dbo.xxzl b on a.XieXing=b.XieXing and a.sku=b.A' +
        'RTICLE'
      'where a.sku LIKE '#39'1162030-BB%'#39'  and a.Color LIKE '#39'139-%'#39
      'group by  b.DDMH, a.sku, a.Color,b.XieMing'
      ' ) T'
      'ORDER BY  '
      '  DDMH,'
      '  sku,'
      '  color,'
      '  XieMing,'
      '  Orderby')
    Left = 72
    Top = 241
    object Query1DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 255
    end
    object Query1sku: TStringField
      FieldName = 'sku'
      FixedChar = True
      Size = 50
    end
    object Query1Color: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 50
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1T: TStringField
      FieldName = 'T'
      FixedChar = True
      Size = 7
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
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
    object Query1BDEDesigner145: TAutoIncField
      FieldName = '14.5'
    end
    object Query1BDEDesigner15: TIntegerField
      FieldName = '15'
    end
    object Query1BDEDesigner155: TIntegerField
      FieldName = '15.5'
    end
    object Query1BDEDesigner16: TIntegerField
      FieldName = '16'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.People'
      'set'
      '  workno = :workno,'
      '  name = :name ,'
      '  Dep =:Dep'
      'where'
      '  workno =:OLD_workno')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.People'
      '  (workno, name, Dep)'
      'values'
      '   (:workno, :name, :Dep)')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.People'
      'where'
      '  workno = :OLD_workno  ')
    Left = 112
    Top = 164
  end
end
