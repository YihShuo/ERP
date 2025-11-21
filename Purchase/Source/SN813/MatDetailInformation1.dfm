object MatDetailInformation: TMatDetailInformation
  Left = 369
  Top = 285
  Width = 1305
  Height = 675
  Caption = 'MatDetailInformation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 637
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1287
      Height = 71
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 298
        Top = 12
        Width = 43
        Height = 20
        Caption = 'Stage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 176
        Top = 13
        Width = 56
        Height = 20
        Caption = 'Season'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 429
        Top = 11
        Width = 64
        Height = 20
        Caption = 'MatType'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 20
        Top = 7
        Width = 60
        Height = 33
        Caption = 'Query'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 962
        Top = 13
        Width = 61
        Height = 33
        Caption = 'Excel1'
        TabOrder = 1
        Visible = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 98
        Top = 7
        Width = 60
        Height = 33
        Caption = 'EXCEL'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Edit1: TEdit
        Left = 345
        Top = 10
        Width = 69
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
        Left = 234
        Top = 10
        Width = 57
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = Edit2Change
      end
      object Edit3: TEdit
        Left = 494
        Top = 7
        Width = 70
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 72
      Width = 1287
      Height = 564
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 741
        Height = 562
        Align = alLeft
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -10
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -10
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGridEh2: TDBGridEh
        Left = 742
        Top = 1
        Width = 544
        Height = 562
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -10
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -10
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 249
    Top = 273
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 249
    Top = 233
  end
  object subquery: TQuery
    DatabaseName = 'dB'
    Left = 297
    Top = 273
  end
  object DataSource2: TDataSource
    DataSet = subquery
    Left = 297
    Top = 233
  end
  object subquerys: TQuery
    DatabaseName = 'dB'
    Left = 337
    Top = 273
  end
  object DataSource3: TDataSource
    DataSet = subquerys
    Left = 329
    Top = 225
  end
end
