object ShoesIO: TShoesIO
  Left = 337
  Top = 129
  Width = 746
  Height = 543
  Caption = 'Shoes I/O'
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
    Width = 730
    Height = 505
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 289
      Height = 503
      Align = alClient
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 287
        Height = 64
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 82
          Height = 20
          Caption = 'Select SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 120
          Top = 24
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'ALL'
          OnChange = ComboBox1Change
          Items.Strings = (
            'ALL')
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 65
        Width = 287
        Height = 437
        Align = alClient
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DDBH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ShipDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'XieXing'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SheHao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KHPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GSBH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Version'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pairs'
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 290
      Top = 1
      Width = 439
      Height = 503
      Align = alRight
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 437
        Height = 144
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 224
          Top = 45
          Width = 59
          Height = 20
          Caption = 'SheHao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 45
          Width = 55
          Height = 20
          Caption = 'XieXing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 248
          Top = 16
          Width = 33
          Height = 20
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 48
          Top = 16
          Width = 23
          Height = 20
          Caption = 'RY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 32
          Top = 109
          Width = 39
          Height = 20
          Caption = 'Class'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 248
          Top = 80
          Width = 36
          Height = 20
          Caption = 'LINE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 80
          Width = 61
          Height = 20
          Caption = 'Stock IN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 296
          Top = 45
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 80
          Top = 16
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 296
          Top = 16
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 2
        end
        object Edit1: TEdit
          Left = 80
          Top = 45
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 3
        end
        object GetSize: TColorButton
          Left = 264
          Top = 112
          Width = 75
          Height = 25
          Caption = 'GetSize'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = GetSizeClick
          BackColor = clRed
          HoverColor = clRed
        end
        object csave: TColorButton
          Left = 344
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Save'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = csaveClick
          BackColor = clMoneyGreen
          HoverColor = clMoneyGreen
        end
        object classcb: TComboBox
          Left = 80
          Top = 112
          Width = 41
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = 'B'
          Items.Strings = (
            'B'
            'C'
            'S')
        end
        object ComboBox2: TComboBox
          Left = 296
          Top = 80
          Width = 105
          Height = 21
          ItemHeight = 13
          TabOrder = 7
        end
        object ComboBox3: TComboBox
          Left = 80
          Top = 80
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          Text = 'VA12'
          Items.Strings = (
            'VA12'
            'VA3'
            'VB1'
            'VB2'
            'CDC'
            'KDC')
        end
        object Creload: TColorButton
          Left = 184
          Top = 112
          Width = 75
          Height = 25
          Caption = 'ReLoad'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = CreloadClick
          BackColor = clLime
          HoverColor = clLime
        end
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 145
        Width = 437
        Height = 357
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cc'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clSkyBlue
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantity'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clSkyBlue
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'LShoe'
            Title.Alignment = taCenter
            Title.Color = clSkyBlue
            Visible = True
          end
          item
            Color = clLime
            Expanded = False
            FieldName = 'RShoe'
            Title.Alignment = taCenter
            Title.Color = clSkyBlue
            Visible = True
          end>
      end
    end
  end
  object orderlistq: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select ddzl.* from ddzl')
    Left = 41
    Top = 156
    object orderlistqDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.ddzl.DDBH'
      FixedChar = True
      Size = 15
    end
    object orderlistqXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.ddzl.XieXing'
      FixedChar = True
      Size = 15
    end
    object orderlistqSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.ddzl.SheHao'
      FixedChar = True
      Size = 5
    end
    object orderlistqARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.ddzl.ARTICLE'
      FixedChar = True
    end
    object orderlistqVersion: TSmallintField
      FieldName = 'Version'
      Origin = 'DB.ddzl.Version'
    end
    object orderlistqShipDate: TDateTimeField
      FieldName = 'ShipDate'
      Origin = 'DB.ddzl.ShipDate'
    end
    object orderlistqPairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'DB.ddzl.Pairs'
    end
    object orderlistqGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.ddzl.GSBH'
      FixedChar = True
      Size = 4
    end
    object orderlistqKHPO: TStringField
      FieldName = 'KHPO'
      Origin = 'DB.ddzl.KHPO'
      FixedChar = True
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = orderlistq
    Left = 81
    Top = 156
  end
  object tempq: TQuery
    DatabaseName = 'dB'
    Left = 2
    Top = 5
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 456
    Top = 172
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'dB'
    RequestLive = True
    SQL.Strings = (
      
        'select ddzl.xiexing,ddzl.shehao,ddzls.cc,ddzls.quantity,0 as LSh' +
        'oe,0 as RShoe,'#39'B'#39' as class'
      'from ddzls'
      'left join ddzl on ddzl.ddbh=ddzls.ddbh'
      ''
      'where ddzl.ddbh='#39'Y1101-005'#39)
    UpdateObject = UpdateSQL1
    Left = 416
    Top = 172
    object Query1cc: TStringField
      FieldName = 'cc'
      FixedChar = True
      Size = 6
    end
    object Query1quantity: TIntegerField
      FieldName = 'quantity'
    end
    object Query1LShoe: TIntegerField
      FieldName = 'LShoe'
    end
    object Query1RShoe: TIntegerField
      FieldName = 'RShoe'
    end
    object Query1xiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object Query1shehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object Query1class: TStringField
      FieldName = 'class'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 418
    Top = 209
  end
  object checkWHT: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource2
    SQL.Strings = (
      'select * from qc_wht'
      'where xiexing=:xiexing'
      '    and shehao=:shehao'
      '    and size=:cc'
      '    and class=:class')
    Left = 506
    Top = 169
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'xiexing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'shehao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'cc'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'class'
        ParamType = ptUnknown
        Size = 2
      end>
  end
  object updataQ: TQuery
    DatabaseName = 'dB'
    Left = 506
    Top = 209
  end
end
