object MQ: TMQ
  Left = 257
  Top = 221
  Width = 1039
  Height = 479
  Caption = 'MaterialQuery'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1023
    Height = 336
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        FieldName = 'createdate'
        Footers = <>
        Title.Caption = 'Date|'#26085#26399
      end
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Title.Caption = 'CLBH|'#26448#26009#32232#34399
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'Article'
        Width = 64
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Title.Caption = 'Part|'#37096#20301
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'Chinese|'#20013#25991#25944#36848
        Width = 188
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'English|'#33521#25991#25944#36848
        Width = 206
      end
      item
        EditButtons = <>
        FieldName = 'kfjc'
        Footers = <>
        Title.Caption = 'KFJC|'#24288#21830#20195#34399
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'kfqm'
        Footers = <>
        Title.Caption = 'KFQM|'#24288#21830#25944#36848
        Width = 135
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1023
    Height = 105
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 168
      Top = 25
      Width = 16
      Height = 13
      Caption = 'To:'
    end
    object Label2: TLabel
      Left = 12
      Top = 25
      Width = 32
      Height = 16
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 318
      Top = 22
      Width = 28
      Height = 13
      Caption = 'CLBH'
    end
    object dates: TDateTimePicker
      Left = 48
      Top = 16
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object datee: TDateTimePicker
      Left = 192
      Top = 16
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 48
      Width = 97
      Height = 17
      Caption = 'A'#24067#39006
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 64
      Width = 97
      Height = 17
      Caption = 'B'#27873#26825#39006
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 80
      Width = 97
      Height = 17
      Caption = 'C'#24070#24067#39006
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox4: TCheckBox
      Left = 120
      Top = 48
      Width = 97
      Height = 17
      Caption = 'D'#38795#24118#39006
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox5: TCheckBox
      Left = 120
      Top = 64
      Width = 97
      Height = 17
      Caption = 'E'#37197#20214#39006
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CheckBox6: TCheckBox
      Left = 120
      Top = 80
      Width = 97
      Height = 17
      Caption = 'F'#30382#39006
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object CheckBox7: TCheckBox
      Left = 224
      Top = 48
      Width = 97
      Height = 17
      Caption = 'G'#20013#24213#32025#26495#39006
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object CheckBox8: TCheckBox
      Left = 224
      Top = 64
      Width = 97
      Height = 17
      Caption = 'H'#21253#35037#39006
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox9: TCheckBox
      Left = 224
      Top = 80
      Width = 97
      Height = 17
      Caption = 'I'#20998#27573#39006
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CheckBox10: TCheckBox
      Left = 352
      Top = 48
      Width = 97
      Height = 17
      Caption = 'J'#27233#33184#39006
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object CheckBox11: TCheckBox
      Left = 352
      Top = 64
      Width = 97
      Height = 17
      Caption = 'K'#20154#36896#30382
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object CheckBox12: TCheckBox
      Left = 352
      Top = 80
      Width = 97
      Height = 17
      Caption = 'L'#24067#27161#39006
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object CheckBox13: TCheckBox
      Left = 440
      Top = 48
      Width = 97
      Height = 17
      Caption = 'M'#32218#39006
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
    object CheckBox14: TCheckBox
      Left = 440
      Top = 64
      Width = 97
      Height = 17
      Caption = 'N'#38651#32353#39006
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object CheckBox15: TCheckBox
      Left = 440
      Top = 80
      Width = 97
      Height = 17
      Caption = 'O'#29305#27530#26448#26009#39006
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
    object CheckBox16: TCheckBox
      Left = 544
      Top = 48
      Width = 97
      Height = 17
      Caption = 'P'#36028#21512#39006
      Checked = True
      State = cbChecked
      TabOrder = 17
    end
    object CheckBox17: TCheckBox
      Left = 544
      Top = 64
      Width = 97
      Height = 17
      Caption = 'Q'#21270#23416#34277#21697#39006
      Checked = True
      State = cbChecked
      TabOrder = 18
    end
    object CheckBox18: TCheckBox
      Left = 832
      Top = 48
      Width = 97
      Height = 17
      Caption = 'R'
      TabOrder = 19
      Visible = False
    end
    object CheckBox19: TCheckBox
      Left = 832
      Top = 64
      Width = 97
      Height = 17
      Caption = 'S'
      TabOrder = 20
      Visible = False
    end
    object CheckBox20: TCheckBox
      Left = 832
      Top = 80
      Width = 97
      Height = 17
      Caption = 'T'
      TabOrder = 21
      Visible = False
    end
    object CheckBox21: TCheckBox
      Left = 864
      Top = 16
      Width = 97
      Height = 17
      Caption = 'U'
      TabOrder = 22
      Visible = False
    end
    object CheckBox22: TCheckBox
      Left = 544
      Top = 80
      Width = 97
      Height = 17
      Caption = 'V'#33256#26178#26448#26009
      Checked = True
      State = cbChecked
      TabOrder = 23
    end
    object CheckBox23: TCheckBox
      Left = 864
      Top = 32
      Width = 41
      Height = 17
      Caption = 'W'
      TabOrder = 24
      Visible = False
    end
    object CheckBox24: TCheckBox
      Left = 864
      Top = 48
      Width = 41
      Height = 17
      Caption = 'X'
      TabOrder = 25
      Visible = False
    end
    object CheckBox25: TCheckBox
      Left = 864
      Top = 64
      Width = 41
      Height = 17
      Caption = 'Y'
      TabOrder = 26
      Visible = False
    end
    object CheckBox26: TCheckBox
      Left = 864
      Top = 80
      Width = 33
      Height = 17
      Caption = 'Z'
      TabOrder = 27
      Visible = False
    end
    object CheckBox27: TCheckBox
      Left = 624
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Converse'
      TabOrder = 28
    end
    object Button1: TButton
      Left = 456
      Top = 16
      Width = 65
      Height = 25
      Caption = 'Query'
      TabOrder = 29
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 536
      Top = 16
      Width = 75
      Height = 25
      Caption = 'EXCEL'
      TabOrder = 30
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 352
      Top = 18
      Width = 90
      Height = 21
      TabOrder = 31
    end
    object CheckBox28: TCheckBox
      Left = 624
      Top = 34
      Width = 97
      Height = 17
      Caption = 'Kswiss'
      TabOrder = 32
    end
    object CheckBox29: TCheckBox
      Left = 696
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Other'
      TabOrder = 33
    end
  end
  object MQT: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ypzl.article,bwzl.zwsm,CLZL.kfdh,CLZL_DEV.createdate,clzl' +
        '.cldh,zwpm,ywpm,ysbh,xxbh,kfzl.kfqm,kfzl.kfjc from CLZL'
      'left join kfzl on kfzl.kfdh = CLZL.kfdh'
      'left join ypzls on ypzls.CLBH=clzl.cldh'
      'left join bwzl on bwzl.bwdh = ypzls.BWBH'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      'left join CLZL_DEV on CLZL_DEV.cldh = clzl.cldh'
      
        'group by bwzl.zwsm,CLZL.kfdh,CLZL_DEV.createdate,clzl.cldh,zwpm,' +
        'ywpm,ysbh,xxbh,kfzl.kfqm,kfzl.kfjc,ypzl.article')
    Left = 456
    Top = 144
    object MQTarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object MQTzwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object MQTkfdh: TStringField
      FieldName = 'kfdh'
      FixedChar = True
      Size = 4
    end
    object MQTcreatedate: TDateTimeField
      FieldName = 'createdate'
    end
    object MQTcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object MQTzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object MQTywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MQTysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 4
    end
    object MQTxxbh: TStringField
      FieldName = 'xxbh'
      FixedChar = True
      Size = 15
    end
    object MQTkfqm: TStringField
      FieldName = 'kfqm'
      FixedChar = True
      Size = 40
    end
    object MQTkfjc: TStringField
      FieldName = 'kfjc'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = MQT
    Left = 456
    Top = 112
  end
end
