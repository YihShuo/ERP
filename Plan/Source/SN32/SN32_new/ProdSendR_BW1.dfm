object ProdSendR_BW: TProdSendR_BW
  Left = 295
  Top = 128
  Width = 868
  Height = 468
  BorderIcons = [biSystemMenu]
  Caption = 'ProdSendR_BW'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 13
      Top = 15
      Width = 37
      Height = 16
      Caption = 'SKU#:'
    end
    object Label4: TLabel
      Left = 189
      Top = 15
      Width = 27
      Height = 16
      Caption = 'Part:'
    end
    object Label5: TLabel
      Left = 368
      Top = 15
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Edit3: TEdit
      Left = 56
      Top = 12
      Width = 97
      Height = 24
      ImeMode = imAlpha
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 224
      Top = 12
      Width = 121
      Height = 24
      ImeMode = imAlpha
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 416
      Top = 12
      Width = 121
      Height = 24
      ImeMode = imAlpha
      TabOrder = 2
      Text = 'J'
    end
    object Button1: TButton
      Left = 544
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 709
      Top = 3
      Width = 121
      Height = 24
      TabOrder = 4
      Text = 'Edit1'
      Visible = False
    end
    object Edit2: TEdit
      Left = 709
      Top = 27
      Width = 121
      Height = 24
      TabOrder = 5
      Text = 'Edit2'
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 852
    Height = 381
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Caption = 'PartID'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Part'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNo'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MatName'
        Width = 360
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'CCQQ'
        Footers = <>
        Title.Caption = 'SizeFro'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CCQZ'
        Footers = <>
        Title.Caption = 'SizeEnd'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select zlzlS2.BWBH,BWZL.YWSM,zlzlS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZ' +
        'LS.CCQQ,XXZLS.CCQZ'
      'from zlzlS2'
      'left join BWZL on BWZL.BWDH=zlzls2.BWBH'
      'left join CLZL on CLZL.CLDH=zlzls2.CLBH'
      'left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH'
      
        'left join XXZLS on XXZLS.XieXing=DDZL.XieXing and DDZL.SheHao=XX' +
        'ZLS.SheHao and ZLZLS2.BWBH=XXZLS.BWBH '
      'where zlzlS2.zlbh = '#39'SW1511-189'#39
      '      and zlzls2.mjbh='#39'ZZZZZZZZZZ'#39
      '      and zlzlS2.CLBH like '#39'%'#39
      '      and zlzlS2.BWBH like '#39'%%'#39
      
        'group by zlzlS2.BWBH,BWZL.YWSM,zlzlS2.CLBH,CLZL.YWPM,CLZL.DWBH,X' +
        'XZLS.CCQQ,XXZLS.CCQZ '
      'order by zlzlS2.BWBH'
      '')
    Left = 392
    Top = 192
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object Query1CCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 432
    Top = 192
  end
end
