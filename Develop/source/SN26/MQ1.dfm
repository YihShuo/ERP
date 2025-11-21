object MQ: TMQ
  Left = 660
  Top = 153
  Width = 1213
  Height = 551
  Caption = 'MaterialQuery'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 304
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Label8'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1197
    Height = 512
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'New Material'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1189
        Height = 121
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 155
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
          Left = 309
          Top = 22
          Width = 28
          Height = 13
          Caption = 'CLBH'
        end
        object Label12: TLabel
          Left = 444
          Top = 20
          Width = 36
          Height = 16
          Caption = 'Brand'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object dates: TDateTimePicker
          Left = 48
          Top = 16
          Width = 100
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
          Left = 177
          Top = 16
          Width = 99
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
          Left = 696
          Top = 16
          Width = 67
          Height = 17
          Caption = 'Converse'
          TabOrder = 28
        end
        object Button1: TButton
          Left = 548
          Top = 16
          Width = 65
          Height = 25
          Caption = 'Query'
          TabOrder = 29
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 616
          Top = 16
          Width = 75
          Height = 25
          Caption = 'EXCEL'
          TabOrder = 30
          OnClick = Button2Click
        end
        object Edit1: TEdit
          Left = 341
          Top = 18
          Width = 90
          Height = 21
          TabOrder = 31
        end
        object CheckBox28: TCheckBox
          Left = 696
          Top = 34
          Width = 97
          Height = 17
          Caption = 'Kswiss'
          TabOrder = 32
        end
        object CheckBox29: TCheckBox
          Left = 768
          Top = 16
          Width = 54
          Height = 17
          Caption = 'Other'
          TabOrder = 33
        end
        object ComboBox2: TComboBox
          Left = 483
          Top = 19
          Width = 58
          Height = 21
          Style = csDropDownList
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 34
          Visible = False
          Items.Strings = (
            'SKX'
            'SRL')
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 121
        Width = 1189
        Height = 363
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Material Query'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1189
        Height = 97
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 144
          Top = 56
          Width = 34
          Height = 13
          Caption = 'English'
        end
        object Label5: TLabel
          Left = 280
          Top = 56
          Width = 38
          Height = 13
          Caption = 'Chinese'
        end
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Season'
        end
        object Label7: TLabel
          Left = 77
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Stage'
        end
        object Label9: TLabel
          Left = 8
          Top = 56
          Width = 34
          Height = 13
          Caption = 'MatNO'
        end
        object Label10: TLabel
          Left = 305
          Top = 16
          Width = 22
          Height = 13
          Caption = 'SR#'
        end
        object DevTpyecp: TLabel
          Left = 154
          Top = 16
          Width = 56
          Height = 13
          Caption = 'DevTpyecp'
        end
        object Label20: TLabel
          Left = 426
          Top = 14
          Width = 36
          Height = 16
          Caption = 'Brand'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Button3: TButton
          Left = 427
          Top = 64
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Edit2: TEdit
          Left = 144
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 280
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 8
          Top = 32
          Width = 55
          Height = 21
          Color = clYellow
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 77
          Top = 32
          Width = 65
          Height = 21
          TabOrder = 4
        end
        object Button4: TButton
          Left = 511
          Top = 63
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button4Click
        end
        object Edit6: TEdit
          Left = 8
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object Edit7: TEdit
          Left = 302
          Top = 32
          Width = 104
          Height = 21
          Color = clYellow
          TabOrder = 7
        end
        object DevTpye: TComboBox
          Left = 152
          Top = 32
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          Items.Strings = (
            ''
            'Inline'
            'SMU')
        end
        object ComboBox14: TComboBox
          Left = 425
          Top = 32
          Width = 73
          Height = 21
          Style = csDropDownList
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 9
          Visible = False
          Items.Strings = (
            'SKX'
            'SRL')
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 97
        Width = 1189
        Height = 387
        Align = alClient
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1187
          Height = 385
          Align = alClient
          DataSource = D_MaterialQuy
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Season'
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              Title.Caption = 'Stage'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'devtype'
              Footers = <>
              Title.Caption = 'Devtype'
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
            end
            item
              EditButtons = <>
              FieldName = 'fd'
              Footers = <>
              Title.Caption = 'FD'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'quantity'
              Footers = <>
              Title.Caption = 'Pairs'
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Material'
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = 'Parts'
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = 'English'
              Width = 342
            end
            item
              EditButtons = <>
              FieldName = 'zwpm'
              Footers = <>
              Title.Caption = 'Chinese'
              Width = 416
            end
            item
              EditButtons = <>
              FieldName = 'Printing_Status'
              Footers = <>
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'PrintingUserid'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'PrintingUserdate'
              Footers = <>
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'Printing_Memo'
              Footers = <>
              Width = 211
            end>
        end
        object Panel4: TPanel
          Left = 336
          Top = 72
          Width = 417
          Height = 145
          TabOrder = 1
          Visible = False
          object Label18: TLabel
            Left = 144
            Top = 8
            Width = 70
            Height = 13
            Caption = 'Printing_Memo'
          end
          object Label11: TLabel
            Left = 16
            Top = 8
            Width = 71
            Height = 13
            Caption = 'Printing_Status'
          end
          object Button5: TButton
            Left = 144
            Top = 112
            Width = 75
            Height = 25
            Caption = 'Save'
            TabOrder = 0
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 312
            Top = 112
            Width = 75
            Height = 25
            Caption = 'Cancel'
            TabOrder = 1
            OnClick = Button6Click
          end
          object Memo2: TMemo
            Left = 144
            Top = 24
            Width = 257
            Height = 81
            TabOrder = 2
          end
          object ComboBox1: TComboBox
            Left = 8
            Top = 24
            Width = 113
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 3
            Items.Strings = (
              ''
              'Confirmed'
              'Rejected'
              'Temporarily Use')
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Last Checking'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1189
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label15: TLabel
          Left = 8
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Season'
        end
        object Label16: TLabel
          Left = 77
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Stage'
        end
        object Label17: TLabel
          Left = 424
          Top = 16
          Width = 20
          Height = 13
          Caption = 'Last'
        end
        object Label19: TLabel
          Left = 305
          Top = 16
          Width = 29
          Height = 13
          Caption = 'SKU#'
        end
        object Label21: TLabel
          Left = 154
          Top = 16
          Width = 22
          Height = 13
          Caption = 'SR#'
        end
        object Button7: TButton
          Left = 555
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button7Click
        end
        object Edit11: TEdit
          Left = 8
          Top = 32
          Width = 55
          Height = 21
          TabOrder = 1
        end
        object Edit12: TEdit
          Left = 77
          Top = 32
          Width = 65
          Height = 21
          TabOrder = 2
        end
        object Button8: TButton
          Left = 639
          Top = 23
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button8Click
        end
        object Edit13: TEdit
          Left = 424
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object Edit14: TEdit
          Left = 302
          Top = 32
          Width = 104
          Height = 21
          TabOrder = 5
        end
        object Edit9: TEdit
          Left = 149
          Top = 32
          Width = 140
          Height = 21
          TabOrder = 6
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 65
        Width = 1189
        Height = 419
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.Caption = 'Season'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = 'Stage'
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            Title.Caption = 'SR#'
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU#'
          end
          item
            EditButtons = <>
            FieldName = 'XTMH'
            Footers = <>
            Title.Caption = 'Last code'
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Remark'
      ImageIndex = 2
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1189
        Height = 484
        Align = alClient
        Lines.Strings = (
          'New Material:'
          #21487#26597#35426#26085#26399#21312#38291#25152#24314#31435#30340#26448#26009#65292#38928#35373#23450#32681#28858#19977#20491#26376#20839#28858#26032#26448#26009
          ''
          'Material Query:'
          #20197#26448#26009#38364#37749#23383#26597#35426#23395#21029#33287#38542#27573#26377#29992#21040#30340#38283#30332#26448#26009'('#38283#30332#25505#36092#29992')')
        TabOrder = 0
      end
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
    Left = 64
    Top = 184
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
    Left = 64
    Top = 152
  end
  object D_MaterialQuy: TDataSource
    DataSet = MaterialQry
    Left = 108
    Top = 153
  end
  object MaterialQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devtype,kfxxzl.fd,ypzl.quantity,kfxxzl.devcode,kfx' +
        'xzl.jijie,ypzl.KFJD,ypzls.CLBH,clzl.ywpm,clzl.zwpm,'
      
        'clzl_printing.Printing_Status,clzl_printing.PrintingUserid,clzl_' +
        'printing.PrintingUserdate,clzl_printing.Printing_Memo,bwzl.ywsm ' +
        'from YPZL'
      'left join ypzls on ypzls.ypdh=ypzl.YPDH'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzl.cldh=ypzls.CLBH'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join clzl_printing on clzl_printing.CLDH=ypzls.CLBH and clz' +
        'l_printing.SR = kfxxzl.devcode'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'where 1 = 0 and kfzl_GS.GSBH= '#39'CDC'#39
      'and kfxxzl.JiJie like  '#39'%19%'#39
      'and ypzl.KFJD like  '#39'%cr2%'#39
      
        'group by kfxxzl.devtype,kfxxzl.fd,ypzl.quantity,kfxxzl.devcode,k' +
        'fxxzl.jijie,ypzl.KFJD,ypzls.CLBH,clzl.ywpm,clzl.zwpm,'
      
        'clzl_printing.Printing_Status,clzl_printing.PrintingUserid,clzl_' +
        'printing.PrintingUserdate,clzl_printing.Printing_Memo,bwzl.ywsm'
      'order by kfxxzl.jijie,ypzl.KFJD,ypzls.CLBH'
      '')
    Left = 108
    Top = 185
    object MaterialQryjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object MaterialQryKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object MaterialQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MaterialQryywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MaterialQryzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object MaterialQryquantity: TFloatField
      FieldName = 'quantity'
    end
    object MaterialQryfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object MaterialQrydevtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 10
    end
    object MaterialQrydevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object MaterialQryPrinting_Status: TStringField
      FieldName = 'Printing_Status'
      FixedChar = True
      Size = 50
    end
    object MaterialQryPrintingUserid: TStringField
      FieldName = 'PrintingUserid'
      FixedChar = True
      Size = 10
    end
    object MaterialQryPrintingUserdate: TDateTimeField
      FieldName = 'PrintingUserdate'
    end
    object MaterialQryPrinting_Memo: TStringField
      FieldName = 'Printing_Memo'
      FixedChar = True
      Size = 255
    end
    object MaterialQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 276
    Top = 297
    object Edit8: TMenuItem
      Caption = 'Edit'
      OnClick = Edit8Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 108
    Top = 225
  end
  object QueryLast: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.JiJie,ypzl.KFJD,kfxxzl.DEVCODE,kfxxzl.ARTICLE,kfxx' +
        'zl.XTMH'
      'from kfxxzl'
      
        'left join ypzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao ' +
        '= kfxxzl.SheHao'
      'where KFCQ='#39'JNG'#39)
    Left = 148
    Top = 185
    object QueryLastJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object QueryLastKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object QueryLastDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object QueryLastARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object QueryLastXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = QueryLast
    Left = 148
    Top = 153
  end
end
