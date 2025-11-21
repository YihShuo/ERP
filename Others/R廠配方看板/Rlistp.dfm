object Rlists: TRlists
  Left = 178
  Top = 194
  Width = 866
  Height = 497
  Caption = 'Rlists'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 488
    Top = 296
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 81
    Align = alTop
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 24
      Width = 80
      Height = 24
      Caption = 'Formula :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 336
      Top = 24
      Width = 54
      Height = 24
      Caption = 'times :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 0
      Width = 97
      Height = 25
      AutoSize = False
      OnClick = Label4Click
    end
    object cbx1: TComboBox
      Left = 128
      Top = 16
      Width = 145
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 0
      OnChange = cbx1Change
      Items.Strings = (
        '\')
    end
    object MSComm1: TMSComm
      Left = 688
      Top = 16
      Width = 32
      Height = 32
      ControlData = {
        2143341208000000ED030000ED03000001568A64000006000000010000040000
        00020000802500000000080000000000000000003F00000001000000}
    end
    object cbx2: TComboBox
      Left = 400
      Top = 16
      Width = 57
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Items.Strings = (
        '0'
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
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
    end
    object Button1: TButton
      Left = 520
      Top = 16
      Width = 105
      Height = 33
      Caption = 'SET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 960
      Top = 16
      Width = 105
      Height = 33
      Caption = 'ALL RESET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 128
      Top = 48
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 850
    Height = 378
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 81
      Width = 848
      Height = 296
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'cldhz'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ywpm'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'zwpm'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'times'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'okPrint'
          Visible = True
        end
        item
          Color = clAqua
          Expanded = False
          FieldName = 'clyl'
          Width = 107
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 848
      Height = 80
      Align = alTop
      Color = clWhite
      TabOrder = 1
      object Label8: TLabel
        Left = 24
        Top = 24
        Width = 98
        Height = 24
        Caption = 'Chemicals :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 408
        Top = 24
        Width = 69
        Height = 24
        Caption = 'Weight :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 616
        Top = 24
        Width = 53
        Height = 24
        Caption = 'Time :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 576
        Top = 24
        Width = 11
        Height = 24
        Caption = 'g'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 672
        Top = 24
        Width = 201
        Height = 32
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Button2: TButton
        Left = 960
        Top = 24
        Width = 105
        Height = 33
        Caption = 'disconnect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object Edit2: TEdit
      Left = 288
      Top = 160
      Width = 113
      Height = 21
      TabOrder = 2
      Text = 'Edit2'
      Visible = False
    end
    object Edit4: TEdit
      Left = 288
      Top = 192
      Width = 113
      Height = 21
      TabOrder = 3
      Text = 'Edit4'
      Visible = False
    end
    object Memo1: TMemo
      Left = 520
      Top = 168
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
      Visible = False
    end
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 104
    Width = 249
    Height = 32
    Color = clScrollBar
    DataField = 'ywpm'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 480
    Top = 104
    Width = 97
    Height = 32
    Color = clScrollBar
    DataField = 'clyl'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object clzlsl: TQuery
    DatabaseName = 'dd'
    Left = 72
    Top = 297
    object clzlslclbh: TStringField
      FieldName = 'cldh'
      Size = 16
    end
    object clzlslcldhz: TStringField
      FieldName = 'cldhz'
      Origin = 'DD.clzlsl.cldhz'
      FixedChar = True
      Size = 16
    end
    object clzlslywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DD.clzl.ywpm'
      FixedChar = True
      Size = 60
    end
    object clzlslzwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DD.clzl.zwpm'
      FixedChar = True
      Size = 60
    end
    object clzlsltimes: TIntegerField
      FieldName = 'times'
    end
    object clzlslokPrint: TIntegerField
      FieldName = 'okPrint'
    end
    object clzlslclyl: TFloatField
      FieldName = 'clyl'
      Origin = 'DD.clzlsl.clyl'
      DisplayFormat = '0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = clzlsl
    Left = 112
    Top = 297
  end
  object Query1: TQuery
    AutoRefresh = True
    DatabaseName = 'dd'
    Left = 656
    Top = 16
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 104
    Top = 200
  end
end
