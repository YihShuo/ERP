object Purtrace: TPurtrace
  Left = 179
  Top = 90
  Width = 1042
  Height = 564
  Caption = 'Purtrace'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 145
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 22
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 179
      Top = 54
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 344
      Top = 54
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Label7: TLabel
      Left = 335
      Top = 22
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label3: TLabel
      Left = 13
      Top = 54
      Width = 37
      Height = 16
      Alignment = taRightJustify
      Caption = 'SKU#:'
    end
    object Label4: TLabel
      Left = 677
      Top = 50
      Width = 43
      Height = 16
      AutoSize = False
      Caption = #21295#29575':'
    end
    object Label8: TLabel
      Left = 8
      Top = 86
      Width = 74
      Height = 16
      Caption = 'ShipingDate'
    end
    object Label9: TLabel
      Left = 189
      Top = 83
      Width = 4
      Height = 16
      Caption = '/'
    end
    object Label10: TLabel
      Left = 583
      Top = 22
      Width = 44
      Height = 16
      Caption = 'BuyNo:'
    end
    object lbKHPO: TLabel
      Left = 8
      Top = 116
      Width = 49
      Height = 16
      AutoSize = False
      Caption = 'KHPO:'
    end
    object lbDDGB: TLabel
      Left = 160
      Top = 116
      Width = 73
      Height = 16
      AutoSize = False
      Caption = 'Destination:'
    end
    object Label11: TLabel
      Left = 320
      Top = 116
      Width = 125
      Height = 16
      Caption = 'Purchase Type(TW):'
    end
    object Button1: TButton
      Left = 540
      Top = 72
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 224
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 56
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 400
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 224
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 400
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 365
      Top = 85
      Width = 49
      Height = 17
      Caption = 'TW'
      Color = 10395294
      ParentColor = False
      TabOrder = 7
      OnClick = CheckBox1Click
    end
    object Button2: TButton
      Left = 631
      Top = 72
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 56
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button3: TButton
      Left = 724
      Top = 72
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 9
      OnClick = Button3Click
    end
    object CheckBox2: TCheckBox
      Left = 424
      Top = 85
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 10
    end
    object CheckBox3: TCheckBox
      Left = 509
      Top = 22
      Width = 65
      Height = 17
      Caption = 'ok'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 11
    end
    object CheckBox4: TCheckBox
      Left = 509
      Top = 52
      Width = 65
      Height = 17
      Caption = 'no ok'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 12
    end
    object CB5: TCheckBox
      Left = 584
      Top = 50
      Width = 73
      Height = 17
      Caption = #31639#37329#38989
      TabOrder = 13
    end
    object Edit7: TEdit
      Left = 724
      Top = 46
      Width = 73
      Height = 24
      MaxLength = 15
      TabOrder = 14
    end
    object CheckBox5: TCheckBox
      Left = 479
      Top = 85
      Width = 49
      Height = 17
      Caption = 'BOX'
      Color = 10395294
      ParentColor = False
      TabOrder = 15
    end
    object CYear: TComboBox
      Left = 88
      Top = 80
      Width = 97
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 16
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2020')
    end
    object CMonth: TComboBox
      Left = 200
      Top = 80
      Width = 41
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 17
      Text = '00'
      Items.Strings = (
        '00'
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
      Left = 724
      Top = 16
      Width = 77
      Height = 25
      Caption = #26597#35426#25552#31034
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = Button4Click
    end
    object DataColorGroup: TGroupBox
      Left = 816
      Top = 8
      Width = 177
      Height = 100
      Caption = 'Data color'
      TabOrder = 19
      Visible = False
      object Panel2: TPanel
        Left = 8
        Top = 40
        Width = 161
        Height = 17
        Caption = 'DC RSL issue'
        Color = clSkyBlue
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 8
        Top = 56
        Width = 161
        Height = 17
        Caption = 'PD RSL issue'
        Color = 5105377
        TabOrder = 1
      end
    end
    object Edit8: TEdit
      Left = 632
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object edKHPO: TEdit
      Left = 56
      Top = 112
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object edDDGB: TEdit
      Left = 240
      Top = 112
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object OrderType: TComboBox
      Left = 448
      Top = 112
      Width = 89
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 23
      Text = 'All'
      Items.Strings = (
        'All'
        'Formal'
        'Replenish')
    end
    object DDZTCK: TCheckBox
      Left = 545
      Top = 116
      Width = 120
      Height = 17
      Caption = 'Cancel(CLSL=0)'
      Checked = True
      State = cbChecked
      TabOrder = 24
    end
    object CancelCK: TCheckBox
      Left = 673
      Top = 116
      Width = 120
      Height = 17
      Caption = 'Order Cancel'
      Checked = True
      State = cbChecked
      TabOrder = 25
    end
  end
  object PurchasePage: TPageControl
    Left = 0
    Top = 145
    Width = 1026
    Height = 381
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PurchasePageChange
    object TabSheet1: TTabSheet
      Caption = 'Default'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1018
        Height = 350
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnEditButtonClick = DBGridEh1EditButtonClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
            Title.Caption = 'BUYNO|BUYNO'
            Title.TitleButton = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <
              item
                FieldName = 'ZLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #21046#20196#34399'|ZLBH'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Title.Caption = #37319#21312'|CQDH'
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <
              item
                FieldName = 'CLSL'
                ValueType = fvtSum
              end>
            Title.Caption = #21046#20196#25976#37327'|CLSL'
            Title.TitleButton = True
            Width = 76
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <
              item
                FieldName = 'CGQty'
                ValueType = fvtSum
              end>
            Title.Caption = #37319#36092#25976#37327'|CGQty'
            Title.TitleButton = True
            Width = 81
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20132#36008#25976#37327'|RKQty'
            Title.TitleButton = True
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <
              item
                FieldName = 'UseStock'
                ValueType = fvtSum
              end>
            Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
            Title.TitleButton = True
            Width = 65
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'OrderDate'
            Footers = <>
            Title.Caption = #19979#21934#26085#26399'|OrderDate'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INDATE'
            Footers = <>
            Title.Caption = #25289#21934#26085#26399'|InDate'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CLDATE'
            Footers = <>
            Title.Caption = #29992#37327#35336#31639'|CLDATE'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            Title.Caption = #37319#36092#26085#26399'|CGDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.Caption = #35201#27714#20132#26399'|YQDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = #22238#24489#20132#26399'|CFMDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            Title.Caption = #20132#36008#26085#26399'|RKDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = #37319#36092#21934#34399'|CGNO'
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            Title.Caption = #20837#24235#21934#34399'|RKNO'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU#|Article'
            Title.TitleButton = True
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = #38795#22411#21517#31281'|XieMing'
            Title.TitleButton = True
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <
              item
                FieldName = 'USPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #36234#24163#21934#20729'|VNPrice'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32654#37329#37329#38989'|USACC'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #36234#24163#37329#38989'|VNACC'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'get2com'
            Footers = <
              item
                FieldName = 'get2com'
                ValueType = fvtAvg
              end>
            Title.Caption = #29992#37327'-'#25509#21934'|Get2Com'
          end
          item
            EditButtons = <>
            FieldName = 'com2cg'
            Footers = <
              item
                FieldName = 'com2cg'
                ValueType = fvtAvg
              end>
            Title.Caption = #25505#36092'-'#29992#37327'|Com2Cg'
          end
          item
            EditButtons = <>
            FieldName = 'cg2rk'
            Footers = <
              item
                FieldName = 'cg2rk'
                ValueType = fvtAvg
              end>
            Title.Caption = #20837#24235'-'#25505#36092'|Cg2Rk'
          end
          item
            EditButtons = <>
            FieldName = 'cgkpi'
            Footers = <
              item
                FieldName = 'cgkpi'
                ValueType = fvtAvg
              end>
            Title.Caption = #20837#24235'-'#38928#20132'|CgKPI'
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = #20986#36008#22283#21029'|YWSM'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Title.Caption = #23458#25142'PO|KHPO'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 58
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Convers'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1018
        Height = 350
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh3DrawColumnCell
        OnEditButtonClick = DBGridEh3EditButtonClick
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
            Title.Caption = 'BUYNO|BUYNO'
            Title.TitleButton = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <
              item
                FieldName = 'ZLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #21046#20196#34399'|ZLBH'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Title.Caption = #37319#21312'|CQDH'
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <
              item
                FieldName = 'CLSL'
                ValueType = fvtSum
              end>
            Title.Caption = #21046#20196#25976#37327'|CLSL'
            Title.TitleButton = True
            Width = 76
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <
              item
                FieldName = 'CGQty'
                ValueType = fvtSum
              end>
            Title.Caption = #37319#36092#25976#37327'|CGQty'
            Title.TitleButton = True
            Width = 81
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20132#36008#25976#37327'|RKQty'
            Title.TitleButton = True
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <
              item
                FieldName = 'UseStock'
                ValueType = fvtSum
              end>
            Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
            Title.TitleButton = True
            Width = 65
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'OrderDate'
            Footers = <>
            Title.Caption = #19979#21934#26085#26399'|OrderDate'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INDATE'
            Footers = <>
            Title.Caption = #25289#21934#26085#26399'|InDate'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CLDATE'
            Footers = <>
            Title.Caption = #29992#37327#35336#31639'|CLDATE'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            Title.Caption = #37319#36092#26085#26399'|CGDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.Caption = #35201#27714#20132#26399'|YQDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = #22238#24489#20132#26399'|CFMDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            Title.Caption = #20132#36008#26085#26399'|RKDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = #37319#36092#21934#34399'|CGNO'
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            Title.Caption = #20837#24235#21934#34399'|RKNO'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU#|Article'
            Title.TitleButton = True
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = #38795#22411#21517#31281'|XieMing'
            Title.TitleButton = True
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <
              item
                FieldName = 'USPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #36234#24163#21934#20729'|VNPrice'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32654#37329#37329#38989'|USACC'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #36234#24163#37329#38989'|VNACC'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'get2com'
            Footers = <
              item
                FieldName = 'get2com'
                ValueType = fvtAvg
              end>
            Title.Caption = #29992#37327'-'#25509#21934'|Get2Com'
          end
          item
            EditButtons = <>
            FieldName = 'com2cg'
            Footers = <
              item
                FieldName = 'com2cg'
                ValueType = fvtAvg
              end>
            Title.Caption = #25505#36092'-'#29992#37327'|Com2Cg'
          end
          item
            EditButtons = <>
            FieldName = 'cg2rk'
            Footers = <
              item
                FieldName = 'cg2rk'
                ValueType = fvtAvg
              end>
            Title.Caption = #20837#24235'-'#25505#36092'|Cg2Rk'
          end
          item
            EditButtons = <>
            FieldName = 'cgkpi'
            Footers = <
              item
                FieldName = 'cgkpi'
                ValueType = fvtAvg
              end>
            Title.Caption = #20837#24235'-'#38928#20132'|CgKPI'
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = #20986#36008#22283#21029'|YWSM'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Title.Caption = #23458#25142'PO|KHPO'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 58
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'RSL Info'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1018
        Height = 350
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        OnEditButtonClick = DBGridEh2EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
            Title.Caption = 'BUYNO|BUYNO'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <
              item
                FieldName = 'ZLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #21046#20196#34399'|ZLBH'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Title.Caption = #23458#25142'PO|KHPO'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Title.Caption = #37319#21312'|CQDH'
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <
              item
                FieldName = 'CLSL'
                ValueType = fvtSum
              end>
            Title.Caption = #21046#20196#25976#37327'|CLSL'
            Title.TitleButton = True
            Width = 76
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <
              item
                FieldName = 'CGQty'
                Value = 'fvtSum'
              end>
            Title.Caption = #25505#36092#25976#37327'|CGQty'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU#|Article'
            Title.TitleButton = True
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = #38795#22411#21517#31281'|XieMing'
            Title.TitleButton = True
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DCRSL'
            Footers = <>
            Title.Caption = #38283#30332'RSL|DCRSL'
          end
          item
            EditButtons = <>
            FieldName = 'PDRSL'
            Footers = <>
            Title.Caption = #37327#29986'RSL|PDRSL'
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = #20986#36008#22283#21029'|YWSM'
            Width = 70
          end>
      end
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZ' +
        'L.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,'
      
        '        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,isnull(sum(ZLZLS' +
        '2.CLSL),0) as CLSL,CGTW.YQDate,CGTW.CFMDate,'
      
        '        CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,' +
        'CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW' +
        '.VNPrice'
      
        '        ,ddzl.userdate as INDATE,zlzls2.userdate as CLDATE,ddzl.' +
        'ddrq as OrderDate'
      ''
      
        '    '#9#9' ,(convert(int,ddzl.ddrq)-convert(int,zlzls2.userdate)) as' +
        ' get2com'
      
        '    '#9#9' ,(convert(int,zlzls2.userdate)-convert(int,CGtw.CGDate)) ' +
        'as com2cg'
      
        '    '#9#9' ,(convert(int,CGtw.CGDate)-convert(int,CGTW.RKDate)) as c' +
        'g2rk'
      
        '    '#9#9' ,(convert(int,CGtw.YQDate)-convert(int,CGTW.RKDate)) as c' +
        'gkpi'
      'from ZLZLS2 with (nolock)'
      
        'left join (select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) ' +
        'as CGQty,'
      
        '                  CONZL.Ex_Qty as RKQty, max(convert(smalldateti' +
        'me,CGHZZLSS.ZD_Date)) as YQDate,'
      
        '                  max(convert(smalldatetime,(case when hf_Date='#39 +
        'ZZZZZZZZ'#39' then null else hf_Date end))) as CFMDate,'
      
        '                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) a' +
        's CGDate,max(CGHZZLSS.DGDH) as CGNO,CONZL.CON_Date as RKDate,CON' +
        'ZL.CON_NO as RKNO '
      '                  ,conzl.USPrice,conzl.VNPrice '
      '           from CGHZZLS with (nolock) '
      
        '           left join CGHZZLSS  with (nolock) on CGHZZLS.CGHZBH=C' +
        'GHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH '
      
        '                                                and CGHZZLS.DGDH' +
        '=CGHZZLSS.DGDH '
      
        '           left join CLZL  with (nolock) on CLZL.CLDH=CGHZZLSS.C' +
        'LBH         '
      
        '           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE' +
        ',sum(EXZLSS.CK_Qty) as EX_Qty,MAX(EXZLS.PY_dj) as USPrice ,0 AS ' +
        'VNPrice'
      
        '                             ,max(convert(smalldatetime,HGZL.CON' +
        '_DATE)) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as C' +
        'ON_NO'
      '                      FROM EXZLSS'
      
        '                      left join EXZLS on EXZLS.EXNO=EXZLSS.exno ' +
        'AND exzls.xh=exzlss.xh '
      
        '                      LEFT JOIN EXZL  with (nolock) ON EXZLSS.EX' +
        'NO=EXZL.EXNO  '
      
        '                      LEFT JOIN HGZL  with (nolock) ON EXZL.CON_' +
        'NO=HGZL.CON_NO'
      '                      where EXZLSS.CLDH like '#39'J03000%'#39
      '                            and EXZLSS.ZLBH like '#39'%'#39
      
        '                      GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SI' +
        'ZE'
      
        '                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh' +
        '  AND CGHZZLS.ZLBH   = CONZL.ZLBH '
      '           where CGHZZLS.CLBH like '#39'J03000%'#39
      '                 and CGHZZLS.ZLBH like '#39'%'#39
      '                 and CLZL.CQDH='#39'TW'#39
      
        '           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CONZL.Ex_Qty,CONZL' +
        '.CON_Date,CONZL.CON_NO ,conzl.USPrice,conzl.VNPrice) CGTW'
      '     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   '
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and' +
        ' CGKCUSE.CLBH=ZLZLS2.CLBH'
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and X' +
        'XZL.SheHao=DDZl.SheHao'
      'where ZLZLS2.CLBH like '#39'J03000%'#39
      '      and ZLZLS2.ZLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and XXZl.XieMing like '#39'%%'#39
      '      and XXZL.Article like '#39'%'#39
      '      and DDZL.GSBH='#39'VA3'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and ZLZLS2.ZMLB='#39'N'#39
      '      and ZLZLS2.CLSL<>0'
      '      and CLZL.CQDH='#39'TW'#39
      
        'group by DDZL.BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,' +
        'CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,'
      '        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,'
      
        '        CGTW.CGDate,CGTW.CGNO,CGKCUSE.Qty,CGTW.RKNO,CGTW.RKDate,' +
        'CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW.VNPrice,ddzl.userdate'
      '         ,ddzl.ddrq,zlzls2.userdate'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    UpdateObject = UpdateSQL1
    Left = 72
    Top = 232
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1zsjc: TStringField
      FieldName = 'KHPO'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Query1OrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object Query1INDATE: TDateTimeField
      FieldName = 'INDATE'
    end
    object Query1CLDATE: TDateTimeField
      FieldName = 'CLDATE'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object Query1USACC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query1VNACC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1get2com: TIntegerField
      FieldName = 'get2com'
    end
    object Query1com2cg: TIntegerField
      FieldName = 'com2cg'
    end
    object Query1cg2rk: TIntegerField
      FieldName = 'cg2rk'
    end
    object Query1cgkpi: TIntegerField
      FieldName = 'cgkpi'
    end
    object Query1CCGB: TStringField
      FieldName = 'ywsm'
    end
    object Query1DDZT: TStringField
      FieldName = 'DDZT'
      Size = 0
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 328
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page]  /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 32
    Top = 232
  end
  object UpdateSQL1: TUpdateSQL
    Left = 72
    Top = 296
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CL' +
        'ZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs' +
        ','
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,'
      
        '        CLZL.DCYN,RSTList.DCDate,RSTList.DCCFM,CLZL.PDYN,RSTList' +
        '.PDDate,RSTList.PDCFM,'#39'              '#39' as DCRSL,'#39'              '#39 +
        ' as PDRSL  '
      'from ZLZLS2  with (nolock) '
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH '
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and X' +
        'XZL.SheHao=DDZl.SheHao'
      'left join RSTList on CLZL.cldh = RSTList.cldh '
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPric' +
        'e '
      '           from CGZLSS with (nolock) '
      
        '           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.C' +
        'LBH=CGZLSS.CLBH '
      
        '           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGN' +
        'O'
      '           where CGZLSS.CLBH like '#39'%'#39
      '                 and CGZLSS.ZLBH like '#39'YV1311-0422%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate, '
      '                  kcrks.usprice,kcrks.vnprice '
      '           from  KCRKS with (nolock) '
      
        '           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where KCRKS.CLBH like '#39'%'#39
      '                 and KCRKS.CGBH like '#39'YV1311-0422%'#39
      
        '           group by KCRKS.CGBH,KCRKS.CLBH,kcrks.usprice,kcrks.vn' +
        'price ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      'where ZLZLS2.CLBH like '#39'%'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH like '#39'YV1311-0422%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and XXZl.XieMing like '#39'%%'#39
      '       and XXZL.Article like '#39'%'#39
      '       and DDZL.GSBH='#39'VA12'#39
      '       and KFZL.KFJC like '#39'%%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'VN'#39
      '       and SCZL.SCBH=SCZl.ZLBH '
      '       and SCZL.SCBH is not null '
      '       and ZLZLS2.CLSL<>0'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      '      and year(DDZL.Shipdate)='#39'2013'#39
      '      and month(DDZL.Shipdate)='#39'11'#39
      
        'group by DDZl.BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,' +
        'CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,'
      '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGZl.CGQty,'
      
        '             CLZL.DCYN,RSTList.DCdate,RSTList.DCCFM,CLZL.PDYN,RS' +
        'TList.PDdate,RSTList.PDCFM '
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    UpdateObject = UpdateSQL2
    Left = 145
    Top = 232
    object Query2BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query2ZSJC: TStringField
      FieldName = 'KHPO'
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query2CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query2CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query2DCYN: TStringField
      FieldName = 'DCYN'
      FixedChar = True
      Size = 1
    end
    object Query2DCDate: TDateTimeField
      FieldName = 'DCDate'
    end
    object Query2DCCFM: TStringField
      FieldName = 'DCCFM'
      FixedChar = True
      Size = 1
    end
    object Query2PDYN: TStringField
      FieldName = 'PDYN'
      FixedChar = True
      Size = 1
    end
    object Query2PDDate: TDateTimeField
      FieldName = 'PDDate'
    end
    object Query2PDCFM: TStringField
      FieldName = 'PDCFM'
      FixedChar = True
      Size = 1
    end
    object Query2DCRSL: TStringField
      FieldName = 'DCRSL'
      FixedChar = True
      Size = 14
    end
    object Query2PDRSL: TStringField
      FieldName = 'PDRSL'
      FixedChar = True
      Size = 14
    end
    object Query2DDGB: TStringField
      FieldName = 'ywsm'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 148
    Top = 300
  end
  object UpdateSQL2: TUpdateSQL
    Left = 146
    Top = 266
  end
  object Query3: TQuery
    AfterOpen = Query3AfterOpen
    OnCalcFields = Query3CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZ' +
        'L.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,'
      
        '        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,isnull(sum(ZLZLS' +
        '2.CLSL),0) as CLSL,CGTW.YQDate,CGTW.CFMDate,'
      
        '        CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,' +
        'CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW' +
        '.VNPrice'
      
        '        ,ddzl.userdate as INDATE,zlzls2.userdate as CLDATE,ddzl.' +
        'ddrq as OrderDate'
      ''
      
        '    '#9#9' ,(convert(int,ddzl.ddrq)-convert(int,zlzls2.userdate)) as' +
        ' get2com'
      
        '    '#9#9' ,(convert(int,zlzls2.userdate)-convert(int,CGtw.CGDate)) ' +
        'as com2cg'
      
        '    '#9#9' ,(convert(int,CGtw.CGDate)-convert(int,CGTW.RKDate)) as c' +
        'g2rk'
      
        '    '#9#9' ,(convert(int,CGtw.YQDate)-convert(int,CGTW.RKDate)) as c' +
        'gkpi'
      'from ZLZLS2 with (nolock)'
      
        'left join (select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) ' +
        'as CGQty,'
      
        '                  CONZL.Ex_Qty as RKQty, max(convert(smalldateti' +
        'me,CGHZZLSS.ZD_Date)) as YQDate,'
      
        '                  max(convert(smalldatetime,(case when hf_Date='#39 +
        'ZZZZZZZZ'#39' then null else hf_Date end))) as CFMDate,'
      
        '                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) a' +
        's CGDate,max(CGHZZLSS.DGDH) as CGNO,CONZL.CON_Date as RKDate,CON' +
        'ZL.CON_NO as RKNO '
      '                  ,conzl.USPrice,conzl.VNPrice '
      '           from CGHZZLS with (nolock) '
      
        '           left join CGHZZLSS  with (nolock) on CGHZZLS.CGHZBH=C' +
        'GHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH '
      
        '                                                and CGHZZLS.DGDH' +
        '=CGHZZLSS.DGDH '
      
        '           left join CLZL  with (nolock) on CLZL.CLDH=CGHZZLSS.C' +
        'LBH         '
      
        '           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE' +
        ',sum(EXZLSS.CK_Qty) as EX_Qty,MAX(EXZLS.PY_dj) as USPrice ,0 AS ' +
        'VNPrice'
      
        '                             ,max(convert(smalldatetime,HGZL.CON' +
        '_DATE)) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as C' +
        'ON_NO'
      '                      FROM EXZLSS'
      
        '                      left join EXZLS on EXZLS.EXNO=EXZLSS.exno ' +
        'AND exzls.xh=exzlss.xh '
      
        '                      LEFT JOIN EXZL  with (nolock) ON EXZLSS.EX' +
        'NO=EXZL.EXNO  '
      
        '                      LEFT JOIN HGZL  with (nolock) ON EXZL.CON_' +
        'NO=HGZL.CON_NO'
      '                      where EXZLSS.CLDH like '#39'J03000%'#39
      '                            and EXZLSS.ZLBH like '#39'%'#39
      
        '                      GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SI' +
        'ZE'
      
        '                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh' +
        '  AND CGHZZLS.ZLBH   = CONZL.ZLBH '
      '           where CGHZZLS.CLBH like '#39'J03000%'#39
      '                 and CGHZZLS.ZLBH like '#39'%'#39
      '                 and CLZL.CQDH='#39'TW'#39
      
        '           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CONZL.Ex_Qty,CONZL' +
        '.CON_Date,CONZL.CON_NO ,conzl.USPrice,conzl.VNPrice) CGTW'
      '     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   '
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and' +
        ' CGKCUSE.CLBH=ZLZLS2.CLBH'
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and X' +
        'XZL.SheHao=DDZl.SheHao'
      'where ZLZLS2.CLBH like '#39'J03000%'#39
      '      and ZLZLS2.ZLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and XXZl.XieMing like '#39'%%'#39
      '      and XXZL.Article like '#39'%'#39
      '      and DDZL.GSBH='#39'VA3'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and ZLZLS2.ZMLB='#39'N'#39
      '      and ZLZLS2.CLSL<>0'
      '      and CLZL.CQDH='#39'TW'#39
      
        'group by DDZL.BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,' +
        'CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,'
      '        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,'
      
        '        CGTW.CGDate,CGTW.CGNO,CGKCUSE.Qty,CGTW.RKNO,CGTW.RKDate,' +
        'CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW.VNPrice,ddzl.userdate'
      '         ,ddzl.ddrq,zlzls2.userdate'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    UpdateObject = UpdateSQL3
    Left = 104
    Top = 232
    object StringField1: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'KHPO'
    end
    object StringField3: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object StringField6: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'OrderDate'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'INDATE'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'CLDATE'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object StringField10: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField11: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField12: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object FloatField2: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00000'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object IntegerField2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'get2com'
    end
    object IntegerField4: TIntegerField
      FieldName = 'com2cg'
    end
    object IntegerField5: TIntegerField
      FieldName = 'cg2rk'
    end
    object IntegerField6: TIntegerField
      FieldName = 'cgkpi'
    end
    object StringField13: TStringField
      FieldName = 'ywsm'
    end
    object StringField14: TStringField
      FieldName = 'DDZT'
      Size = 0
    end
  end
  object UpdateSQL3: TUpdateSQL
    Left = 104
    Top = 296
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 104
    Top = 328
  end
end
