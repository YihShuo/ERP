object MQRShoeBC: TMQRShoeBC
  Left = 353
  Top = 159
  Width = 800
  Height = 475
  Caption = 'Monthly QC Report(By Dep)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 15
      Width = 38
      Height = 20
      Caption = 'Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 136
      Top = 16
      Width = 49
      Height = 20
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 264
      Top = 16
      Width = 58
      Height = 20
      Caption = 'Section:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 56
      Top = 15
      Width = 73
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 0
    end
    object CBX2: TComboBox
      Left = 192
      Top = 15
      Width = 57
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 1
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
    object Button1: TButton
      Left = 560
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 328
      Top = 6
      Width = 217
      Height = 41
      Caption = 'GXLB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object CK1: TCheckBox
        Left = 16
        Top = 20
        Width = 57
        Height = 17
        Caption = 'A'
        TabOrder = 0
        Visible = False
      end
      object CK2: TCheckBox
        Left = 56
        Top = 18
        Width = 49
        Height = 17
        Caption = 'AR'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CK3: TCheckBox
        Left = 104
        Top = 20
        Width = 49
        Height = 17
        Caption = 'C'
        TabOrder = 2
        Visible = False
      end
      object CK4: TCheckBox
        Left = 144
        Top = 20
        Width = 41
        Height = 17
        Caption = 'S'
        TabOrder = 3
        Visible = False
      end
    end
  end
  object Button2: TButton
    Left = 648
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object PC1: TPageControl
    Left = 0
    Top = 57
    Width = 784
    Height = 379
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TS1: TTabSheet
      Caption = 'Department'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 784
        Height = 356
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
      end
    end
    object TS2: TTabSheet
      Caption = 'Company'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 784
        Height = 356
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh2DrawColumnCell
      end
    end
    object TS3: TTabSheet
      Caption = 'Company(A1A2)'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 776
        Height = 348
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh3DrawColumnCell
      end
    end
  end
  object DS1: TDataSource
    DataSet = QDep
    Left = 232
    Top = 184
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 152
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 152
  end
  object QCom: TQuery
    DatabaseName = 'DB'
    Left = 276
    Top = 153
  end
  object DS2: TDataSource
    DataSet = QCom
    Left = 276
    Top = 183
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 312
    Top = 152
  end
  object QCom2: TQuery
    DatabaseName = 'DB'
    Left = 276
    Top = 225
  end
  object DS3: TDataSource
    DataSet = QCom2
    Left = 276
    Top = 255
  end
end
