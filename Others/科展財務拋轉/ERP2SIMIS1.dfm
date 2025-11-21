object ERP2SIMIS: TERP2SIMIS
  Left = 283
  Top = 192
  Width = 753
  Height = 422
  Caption = 'ERP2SIMIS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 737
    Height = 384
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'ERP2'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 2
        Width = 705
        Height = 169
        Caption = 'ERP'#25291#36681#31185#23637#36001#21209
        TabOrder = 0
        object RB_CLZL2a0pdtr: TRadioButton
          Left = 8
          Top = 24
          Width = 113
          Height = 17
          Caption = 'CLZL2a0pdtr'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RB_ZSZL2a0cbtr: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'ZSZL2a0cbtr'
          TabOrder = 1
        end
        object RB_BDeprtment2a0detr: TRadioButton
          Left = 8
          Top = 72
          Width = 113
          Height = 17
          Caption = 'BDeprtment2a0detr'
          TabOrder = 2
        end
        object RB_LBZLS2a0cutr: TRadioButton
          Left = 8
          Top = 98
          Width = 113
          Height = 17
          Caption = 'LBZLS2a0cutr'
          TabOrder = 3
        end
        object RB_SCGXDY2ct01tr: TRadioButton
          Left = 8
          Top = 122
          Width = 121
          Height = 17
          Caption = 'SCGXDY2ct01tr'
          TabOrder = 4
        end
        object RB_XXZLS2c15tr: TRadioButton
          Left = 8
          Top = 146
          Width = 113
          Height = 17
          Caption = 'XXZLS2c15tr'
          TabOrder = 5
        end
        object RB_KCRK2c14tr_N: TRadioButton
          Left = 128
          Top = 24
          Width = 113
          Height = 17
          Caption = 'KCRK2c14tr_N'
          TabOrder = 6
        end
        object RB_KCRK2c14tr_M: TRadioButton
          Left = 128
          Top = 48
          Width = 113
          Height = 17
          Caption = 'KCRK2c14tr_M'
          TabOrder = 7
        end
        object RB_KCRK2c14tr_D: TRadioButton
          Left = 128
          Top = 72
          Width = 113
          Height = 17
          Caption = 'KCRK2c14tr_D'
          TabOrder = 8
        end
        object RB_KCLL2c14tr_N: TRadioButton
          Left = 128
          Top = 98
          Width = 113
          Height = 17
          Caption = 'KCLL2c14tr_N'
          TabOrder = 9
        end
        object RB_KCLL2c14tr_M: TRadioButton
          Left = 128
          Top = 122
          Width = 113
          Height = 17
          Caption = 'KCLL2c14tr_M'
          TabOrder = 10
        end
        object RB_KCLL2c14tr_D: TRadioButton
          Left = 128
          Top = 146
          Width = 113
          Height = 17
          Caption = 'KCLL2c14tr_D'
          TabOrder = 11
        end
        object RB_YWCP2c14tr_N: TRadioButton
          Left = 248
          Top = 24
          Width = 113
          Height = 17
          Caption = 'YWCP2c14tr_N'
          TabOrder = 12
        end
        object RB_YWCP2c14tr_M: TRadioButton
          Left = 248
          Top = 48
          Width = 113
          Height = 17
          Caption = 'YWCP2c14tr_M'
          TabOrder = 13
        end
        object RB_YWCP2c14tr_D: TRadioButton
          Left = 248
          Top = 72
          Width = 113
          Height = 17
          Caption = 'YWCP2c14tr_D'
          TabOrder = 14
        end
        object RB_INVOICE2c14tr_N: TRadioButton
          Left = 248
          Top = 98
          Width = 137
          Height = 17
          Caption = 'INVOICE2c14tr_N'
          TabOrder = 15
        end
        object RB_INVOICE2c14tr_M: TRadioButton
          Left = 248
          Top = 122
          Width = 137
          Height = 17
          Caption = 'INVOICE2c14tr_M'
          TabOrder = 16
        end
        object RB_INVOICE2c14tr_D: TRadioButton
          Left = 248
          Top = 146
          Width = 137
          Height = 17
          Caption = 'INVOICE2c14tr_D'
          TabOrder = 17
        end
        object RB_SMDD2pr15tr_N: TRadioButton
          Left = 392
          Top = 24
          Width = 137
          Height = 17
          Caption = 'SMDD2pr15tr_N'
          TabOrder = 18
        end
        object RB_SMDD2pr15tr_M: TRadioButton
          Left = 392
          Top = 48
          Width = 137
          Height = 17
          Caption = 'SMDD2pr15tr_M'
          TabOrder = 19
        end
        object RB_SMDD2pr15tr_D: TRadioButton
          Left = 392
          Top = 72
          Width = 137
          Height = 17
          Caption = 'SMDD2pr15tr_D'
          TabOrder = 20
        end
        object RB_SCBB2pr13tr_N: TRadioButton
          Left = 392
          Top = 98
          Width = 137
          Height = 17
          Caption = 'SCBB2pr13tr_N'
          TabOrder = 21
        end
        object RB_SCBB2pr13tr_M: TRadioButton
          Left = 392
          Top = 122
          Width = 137
          Height = 17
          Caption = 'SCBB2pr13tr_M'
          TabOrder = 22
        end
        object RB_SCBB2pr13tr_D: TRadioButton
          Left = 392
          Top = 146
          Width = 137
          Height = 17
          Caption = 'SCBB2pr13tr_D'
          TabOrder = 23
        end
        object RB_JGZL2c14tr_N: TRadioButton
          Left = 528
          Top = 24
          Width = 113
          Height = 17
          Caption = 'JGZL2c14tr_N'
          TabOrder = 24
        end
        object RB_JGZL2c14tr_M: TRadioButton
          Left = 528
          Top = 48
          Width = 113
          Height = 17
          Caption = 'JGZL2c14tr_M'
          TabOrder = 25
        end
        object RB_JGZL2c14tr_D: TRadioButton
          Left = 528
          Top = 72
          Width = 113
          Height = 17
          Caption = 'JGZL2c14tr_D'
          TabOrder = 26
        end
        object RB_DCINVOICE2c14tr_N: TRadioButton
          Left = 528
          Top = 98
          Width = 153
          Height = 17
          Caption = 'DCINVOICE2c14tr_N'
          TabOrder = 27
        end
        object RB_DCINVOICE2c14tr_M: TRadioButton
          Left = 528
          Top = 122
          Width = 153
          Height = 17
          Caption = 'DCINVOICE2c14tr_M'
          TabOrder = 28
          Visible = False
        end
        object RB_DCINVOICE2c14tr_D: TRadioButton
          Left = 528
          Top = 144
          Width = 153
          Height = 17
          Caption = 'DCINVOICE2c14tr_D'
          TabOrder = 29
          Visible = False
        end
      end
      object Button1: TButton
        Left = 399
        Top = 203
        Width = 75
        Height = 25
        Caption = 'RunSQL'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 498
        Top = 204
        Width = 75
        Height = 25
        Caption = 'DeInitSQL'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 583
        Top = 203
        Width = 75
        Height = 25
        Caption = 'InitSQL'
        TabOrder = 3
        OnClick = Button2Click
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 184
        Width = 161
        Height = 17
        Caption = #30070#22825#37325#35079#26356#26032#21934#25818
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object DelCK: TCheckBox
        Left = 8
        Top = 200
        Width = 201
        Height = 17
        Caption = #22522#26412#36039#26009#37325#35079#21034#38500'Delete '
        TabOrder = 5
      end
      object CKSQLPrint: TCheckBox
        Left = 8
        Top = 217
        Width = 129
        Height = 17
        Caption = #21015#21360' Print SQL'
        TabOrder = 6
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 240
        Width = 617
        Height = 57
        Caption = 'Data Date Rage changed '#30064#21205#26178#38291#31684#22285
        TabOrder = 7
        object SpinEdit1: TSpinEdit
          Left = 37
          Top = 22
          Width = 65
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 1
          OnChange = SpinEdit1Change
        end
        object RB1: TRadioButton
          Left = 8
          Top = 28
          Width = 25
          Height = 17
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object DTP3: TDateTimePicker
          Left = 170
          Top = 23
          Width = 97
          Height = 24
          Date = 43952.418189016210000000
          Time = 43952.418189016210000000
          TabOrder = 2
        end
        object DTP4: TDateTimePicker
          Left = 291
          Top = 23
          Width = 105
          Height = 24
          Date = 43959.418189016210000000
          Time = 43959.418189016210000000
          TabOrder = 3
        end
        object RB2: TRadioButton
          Left = 144
          Top = 28
          Width = 25
          Height = 17
          TabOrder = 4
        end
      end
      object Button5: TButton
        Left = 872
        Top = 208
        Width = 75
        Height = 25
        Caption = 'Update'
        TabOrder = 8
        OnClick = Button5Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CheckIsDataOK'
      ImageIndex = 1
      object Label1: TLabel
        Left = 224
        Top = 6
        Width = 46
        Height = 16
        AutoSize = False
        Caption = #31185#23637
      end
      object Label4: TLabel
        Left = 223
        Top = 118
        Width = 94
        Height = 16
        AutoSize = False
        Caption = 'ERP'#31995#32113
      end
      object DBGridEh1: TDBGridEh
        Left = 224
        Top = 25
        Width = 320
        Height = 89
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGridEh2: TDBGridEh
        Left = 224
        Top = 137
        Width = 320
        Height = 89
        DataSource = DS2
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
      end
      object CheckDataComBo: TComboBox
        Left = 8
        Top = 16
        Width = 201
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 2
        Text = '1.CLZL2a0pdtr('#21407#26009')'
        Items.Strings = (
          '1.CLZL2a0pdtr('#21407#26009')'
          '2.CLZL2a0pdtr('#25104#21697')'
          '3.ZSZL2a0cbtr('#20379#25033#21830')'
          '4.ZSZL2a0cbtr('#23458#25142')'
          '5.ZSZL2a0cbtr('#21729#24037')'
          '6.BDeprtment2a0detr('#37096#38272'+'#24288#21029')'
          '7.LBZLS2a0cutr('#24163#21029#22522#26412#36039#26009')'
          '8.SCGXDY2ct01tr('#35069#31243')'
          '9.XXZLS2c15tr('#29986#21697#32080#27083')'
          '10.KCRK2c14tr('#20837#24235#21934')'
          '11.KCLL2c14tr('#38936#26009#21934')'
          '12.YWCP2c14tr('#32371#24235#21934')'
          '13.INVOICE2c14tr('#37559#36008')'
          '14.SMDD2pr15tr('#35069#20196#24037#21934')'
          '15.SCBB2pr13tr('#26085#22577#34920')'
          '16.JGZL2c14tr('#21152#24037#21934')')
      end
      object QryBtn: TButton
        Left = 80
        Top = 88
        Width = 97
        Height = 25
        Caption = 'Query('#32317#25976')'
        TabOrder = 3
        OnClick = QryBtnClick
      end
      object DTP1: TDateTimePicker
        Left = 8
        Top = 48
        Width = 97
        Height = 24
        Date = 43952.418189016210000000
        Time = 43952.418189016210000000
        TabOrder = 4
      end
      object DTP2: TDateTimePicker
        Left = 112
        Top = 48
        Width = 105
        Height = 24
        Date = 43959.418189016210000000
        Time = 43959.418189016210000000
        TabOrder = 5
      end
      object ChkDet: TCheckBox
        Left = 3
        Top = 125
        Width = 190
        Height = 17
        Caption = 'Detial Deifference '#26126#32048
        TabOrder = 6
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 144
        Width = 209
        Height = 73
        TabOrder = 7
        object RB3: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'ERP>SIMIS'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RB4: TRadioButton
          Left = 8
          Top = 40
          Width = 113
          Height = 17
          Caption = 'ERP<SIMIS'
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Monthly Syn'
      ImageIndex = 2
      object Label2: TLabel
        Left = 32
        Top = 20
        Width = 32
        Height = 16
        Caption = 'Year:'
      end
      object Label3: TLabel
        Left = 152
        Top = 20
        Width = 39
        Height = 16
        Caption = 'Month:'
      end
      object CBX1: TComboBox
        Left = 72
        Top = 17
        Width = 65
        Height = 24
        Style = csDropDownList
        CharCase = ecUpperCase
        ItemHeight = 16
        ItemIndex = 14
        TabOrder = 0
        Text = '2020'
        Items.Strings = (
          '2006'
          '2007'
          '2008'
          '2009'
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
          '2022')
      end
      object CBX2: TComboBox
        Left = 192
        Top = 17
        Width = 49
        Height = 24
        Style = csDropDownList
        CharCase = ecUpperCase
        DropDownCount = 12
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 1
        Text = '01'
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
      object Button4: TButton
        Left = 104
        Top = 64
        Width = 75
        Height = 25
        Caption = 'KCRK'
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Check Detail'
      ImageIndex = 3
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 686
        Height = 326
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object ADOConnSIMIS: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=xu1;Data Source=127.0.0.1\MSSQL2012'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 120
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnSIMIS
    CommandTimeout = 600
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'USE xu1'
      'Exec sp_addlinkedserver'
      '   @server='#39'tyxuanDB'#39', '
      '   @srvproduct='#39#39', '
      '   @provider='#39'SQLOLEDB'#39', '
      '   @datasrc='#39'192.168.23.9'#39', '
      '   @catalog='#39'LIY_ERP'#39
      ''
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39','
      '@rmtsrvname='#39'tyxuanDB'#39', '
      '@rmtuser='#39'tyx'#39' , '
      '@rmtpassword='#39'tyx'#39)
    Left = 24
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnSIMIS
    CommandTimeout = 600
    Parameters = <>
    Left = 380
    Top = 67
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnSIMIS
    CommandTimeout = 600
    Parameters = <>
    Left = 380
    Top = 163
  end
  object DS1: TDataSource
    DataSet = ADOQuery1
    Left = 380
    Top = 99
  end
  object DS2: TDataSource
    DataSet = ADOQuery2
    Left = 380
    Top = 195
  end
  object TmpQry: TADOQuery
    Connection = ADOConnSIMIS
    CommandTimeout = 600
    Parameters = <>
    SQL.Strings = (
      'USE xu1'
      'Exec sp_addlinkedserver'
      '   @server='#39'tyxuanDB'#39', '
      '   @srvproduct='#39#39', '
      '   @provider='#39'SQLOLEDB'#39', '
      '   @datasrc='#39'192.168.23.9'#39', '
      '   @catalog='#39'LIY_ERP'#39
      ''
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39','
      '@rmtsrvname='#39'tyxuanDB'#39', '
      '@rmtuser='#39'tyx'#39' , '
      '@rmtpassword='#39'tyx'#39)
    Left = 24
    Top = 152
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnSIMIS
    CommandTimeout = 600
    Parameters = <>
    Left = 452
    Top = 67
  end
  object DS3: TDataSource
    DataSet = ADOQuery3
    Left = 452
    Top = 99
  end
  object TmpQry1: TADOQuery
    Connection = ADOConnSIMIS
    CommandTimeout = 600
    Parameters = <>
    SQL.Strings = (
      'USE xu1'
      'Exec sp_addlinkedserver'
      '   @server='#39'tyxuanDB'#39', '
      '   @srvproduct='#39#39', '
      '   @provider='#39'SQLOLEDB'#39', '
      '   @datasrc='#39'192.168.23.9'#39', '
      '   @catalog='#39'LIY_ERP'#39
      ''
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39','
      '@rmtsrvname='#39'tyxuanDB'#39', '
      '@rmtuser='#39'tyx'#39' , '
      '@rmtpassword='#39'tyx'#39)
    Left = 1184
    Top = 168
  end
end
