object DeliverCon: TDeliverCon
  Left = 329
  Top = 223
  Width = 1386
  Height = 717
  Caption = 'DeliverCon'
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
  object Splitter1: TSplitter
    Left = 1365
    Top = 265
    Width = 5
    Height = 413
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 209
    Width = 1370
    Height = 56
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 119
      Top = 28
      Width = 24
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 368
      Top = 28
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 567
      Top = 26
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Loai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label6: TLabel
      Left = 256
      Top = 28
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 694
      Top = 17
      Width = 98
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 793
      Top = 17
      Width = 98
      Height = 33
      Caption = 'Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 893
      Top = 18
      Width = 79
      Height = 33
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 9
      Top = 24
      Width = 105
      Height = 24
      Date = 42401.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 42401.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 150
      Top = 24
      Width = 105
      Height = 24
      Date = 42794.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 42794.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 443
      Top = 24
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object HGLBCB: TComboBox
      Left = 629
      Top = 22
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'NK'
      Items.Strings = (
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11')
    end
    object KhoaCK: TCheckBox
      Left = 572
      Top = 2
      Width = 154
      Height = 15
      Caption = 'Khoa NK'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object NKCK1: TCheckBox
      Left = 792
      Top = 2
      Width = 166
      Height = 17
      Caption = 'CFM Kiem tra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DetailCK: TCheckBox
      Left = 984
      Top = 34
      Width = 185
      Height = 17
      Caption = 'Show  Material Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = DetailCKClick
    end
    object CKHGBH: TCheckBox
      Left = 984
      Top = 15
      Width = 161
      Height = 17
      Caption = 'Check Hai Quan Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = DetailCKClick
    end
    object CKBHCombo: TComboBox
      Left = 302
      Top = 24
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 11
    end
    object CKKCCLMONTH_Dep: TCheckBox
      Left = 1153
      Top = 34
      Width = 184
      Height = 17
      Caption = 'Check Stok Depart Detail'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = CKKCCLMONTH_DepClick
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 209
    Align = alTop
    TabOrder = 1
    object Splitter5: TSplitter
      Left = 993
      Top = 1
      Width = 4
      Height = 207
      Align = alNone
    end
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 992
      Height = 207
      Align = alLeft
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'LLNO'
          Footer.FieldName = 'LLNO'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'DepID'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'SCBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'CKBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'CFMID'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'CFMDate'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 77
        end>
    end
    object TongVPanel: TPanel
      Left = 993
      Top = 1
      Width = 376
      Height = 207
      Align = alClient
      TabOrder = 1
      Visible = False
      object Splitter7: TSplitter
        Left = 1
        Top = 107
        Width = 374
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object DBGridEh5: TDBGridEh
        Left = 1
        Top = 1
        Width = 374
        Height = 106
        Align = alTop
        DataSource = DS7
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepMemo'
            Footers = <>
          end>
      end
      object DBGridEh6: TDBGridEh
        Left = 1
        Top = 110
        Width = 374
        Height = 96
        Align = alBottom
        DataSource = DS8
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepMemo'
            Footers = <>
          end>
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 265
    Width = 1365
    Height = 413
    Align = alClient
    Caption = 'Panel6'
    TabOrder = 2
    object Splitter6: TSplitter
      Left = 1051
      Top = 1
      Width = 4
      Height = 411
      Align = alRight
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1050
      Height = 411
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object DBGrid2: TDBGridEh
        Left = 1
        Top = 1
        Width = 1048
        Height = 409
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 5
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnEditButtonClick = DBGrid2EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TempQty'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 59
          end
          item
            Color = 11796479
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'YYBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 121
          end
          item
            Color = 11796479
            EditButtons = <>
            FieldName = 'BLSB'
            Footers = <>
            PickList.Strings = (
              'Y'
              'N')
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'KCQty'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 208
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 219
          end
          item
            Color = 11796479
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            Color = 11796479
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            PickList.Strings = (
              'NK'
              'TC'
              'HD'
              'KD'
              'GC'
              'XT'
              'NK1'
              'TC1'
              'HD1'
              'KD1'
              'H11'
              'NQ'
              'NKNQ')
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 42
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'NK'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'NK1'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'TC'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'TC1'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'HD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'HD1'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'KD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'KD1'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'GC'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'XT'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'H11'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'NQ'
            Footers = <>
            Width = 58
          end
          item
            Color = 12171775
            EditButtons = <>
            FieldName = 'NKNQ'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'PKNO'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'Declaretion'
            Footers = <>
            ReadOnly = True
            Width = 120
          end>
      end
    end
    object Panel3: TPanel
      Left = 1055
      Top = 1
      Width = 309
      Height = 411
      Align = alRight
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 1
        Top = 192
        Width = 307
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter3: TSplitter
        Left = 1
        Top = 269
        Width = 307
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Splitter4: TSplitter
        Left = 1
        Top = 64
        Width = 307
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 307
        Height = 63
        Align = alTop
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'TempQty'
            Footers = <>
            ReadOnly = True
            Width = 53
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 58
          end>
      end
      object Panel4: TPanel
        Left = 1
        Top = 272
        Width = 307
        Height = 138
        Align = alBottom
        Caption = 'Panel4'
        TabOrder = 1
        Visible = False
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 57
          Width = 305
          Height = 80
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'SCBH'
              Footers = <>
              ReadOnly = True
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              ReadOnly = True
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'TempQty'
              Footer.FieldName = 'TempQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Width = 55
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'DFL'
              Footers = <>
              ReadOnly = True
              Width = 56
            end>
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 305
          Height = 56
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label4: TLabel
            Left = 15
            Top = 5
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SCBH:'
          end
          object Label5: TLabel
            Left = 170
            Top = 5
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CLBH:'
          end
          object SCBHEdit: TEdit
            Left = 16
            Top = 24
            Width = 121
            Height = 24
            TabOrder = 0
            OnKeyPress = SCBHEditKeyPress
          end
          object CLBHEdit: TEdit
            Left = 172
            Top = 24
            Width = 121
            Height = 24
            TabOrder = 1
            OnKeyPress = CLBHEditKeyPress
          end
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 1
        Top = 195
        Width = 307
        Height = 74
        Align = alClient
        DataSource = DS5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'NowQty'
            Footers = <>
            Width = 76
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 67
        Width = 307
        Height = 125
        Align = alTop
        DataSource = DS6
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = PopupMenu3
        SumList.Active = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            Color = 11796479
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end>
      end
    end
  end
  object DS3: TDataSource
    DataSet = DelMas
    Left = 364
    Top = 132
  end
  object DelMas: TQuery
    CachedUpdates = True
    AfterScroll = DelMasAfterScroll
    OnNewRecord = DelMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCLL.*,BDepartment.DepName,KCCK.GSBH as CKGS,bgszl.SFL '
      'from KCLL '
      'left join BDepartment on KCLL.DepID=BDepartment.ID  '
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      'left join bgszl  on bgszl.GSDH=KCLL.GSBH'
      'where KCLL.CFMID='#39'NO'#39
      
        '      and convert(smalldatetime,convert(varchar,KCLL.USERDATE,11' +
        '1)) between '#39'2020/08/01'#39
      '      and '#39'2020/08/04'#39
      '      and KCLL.LLNO like '#39'%'#39
      '      and KCCK.GSBH='#39'CDC'#39
      'order by KCLL.LLNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object DelMasLLNO: TStringField
      DisplayWidth = 13
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelMasSCBH: TStringField
      DisplayWidth = 18
      FieldName = 'SCBH'
      Origin = 'DB.KCLL.SCBH'
      FixedChar = True
      Size = 15
    end
    object DelMasDepID: TStringField
      DisplayWidth = 12
      FieldName = 'DepID'
      Origin = 'DB.KCLL.DepID'
      FixedChar = True
      Size = 10
    end
    object DelMasDepName: TStringField
      DisplayWidth = 20
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object DelMasUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
      Origin = 'DB.KCLL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      Origin = 'DB.KCLL.USERID'
      FixedChar = True
      Size = 15
    end
    object DelMasCFMDate: TDateTimeField
      DisplayWidth = 13
      FieldName = 'CFMDate'
      Origin = 'DB.KCLL.CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasCFMID: TStringField
      DisplayWidth = 18
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object DelMasYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      Origin = 'DB.KCLL.YN'
      FixedChar = True
      Size = 1
    end
    object DelMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.KCLL.GSBH'
      FixedChar = True
      Size = 4
    end
    object DelMasCKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.KCLL.CKBH'
      FixedChar = True
      Size = 4
    end
    object DelMasCKGS: TStringField
      FieldName = 'CKGS'
      FixedChar = True
      Size = 4
    end
    object DelMasSFL: TStringField
      FieldName = 'SFL'
      FixedChar = True
      Size = 2
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLL'
      'set'
      '  LLNO = :LLNO,'
      '  GSBH = :GSBH,'
      '  CKBH = :CKBH,'
      '  SCBH = :SCBH,'
      '  DepID = :DepID,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  CFMDate = :CFMDate,'
      '  CFMID = :CFMID,'
      '  YN = :YN'
      'where'
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      'insert into KCLL'
      
        '  (LLNO, GSBH, CKBH, SCBH, DepID, USERDATE, USERID, CFMDate, CFM' +
        'ID, YN)'
      'values'
      
        '  (:LLNO, :GSBH, :CKBH, :SCBH, :DepID, :USERDATE, :USERID, :CFMD' +
        'ate, '
      ':CFMID, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from KCLL'
      'where'
      '  LLNO = :OLD_LLNO')
    Left = 324
    Top = 161
  end
  object DelDet: TQuery
    CachedUpdates = True
    AfterOpen = DelDetAfterOpen
    BeforeEdit = DelDetBeforeEdit
    AfterPost = DelDetAfterPost
    AfterScroll = DelDetAfterScroll
    OnNewRecord = DelDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select KCLLS.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH,'
      
        '         DDZL.YN as DDYN,SCBLYY.YWSM,isnull(KCZLS.KCQty,0) as KC' +
        'Qty, Convert(varchar,:CKBH) as CKBH,'
      
        '         KCZLS.NK,KCZLS.NK1,KCZLS.TC,KCZLS.TC1,KCZLS.NQ,KCZLS.NK' +
        'NQ,KCZLS.HD,KCZLS.HD1,KCZLS.KD,KCZLS.KD1,KCZLS.XT,KCZLS.H11,KCZL' +
        'S.GC,KCZLS.ZZZZ,'
      
        '         CLHG.HGBH,DDZL.DDGB,CLHD.HGBH as HGBH_HD,CLTC.HGBH as H' +
        'GBH_TC,Convert(varchar,:DepID) as DepID,KCZLS.CWBH,'
      
        '         CLHG1.HGBH as HGBH1,DDZL.DDGB,CLHD1.HGBH as HGBH_HD1,CL' +
        'TC1.HGBH as HGBH_TC1,CLNQ.HGBH as HGBH_NQ,CLNKNQ.HGBH as HGBH_NK' +
        'NQ,KCPK.Declaretion,KCRK.HGLB as HGLB1'
      '         ,CLZL_ExcessMaterial.CLBH as CLBH_ExcessMaterial'
      'from KCLLS'
      'inner join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join (select * from  KCZLS  where   KCZLS.CKBH=:CKBH) KCZLS' +
        ' on KCZLS.CLBH=KCLLS.CLBH'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join CLHG on CLHG.CLBH=KCLLS.CLBH'
      'left join CLHD on CLHD.CLBH=KCLLS.clbh'
      'left join CLTC on CLTC.CLBH=KCLLS.clbh'
      'left join CLHG1 on CLHG1.CLBH=KCLLS.CLBH'
      'left join CLHD1 on CLHD1.CLBH=KCLLS.clbh'
      'left join CLTC1 on CLTC1.CLBH=KCLLS.clbh'
      'left join CLNQ on CLNQ.CLBH=KCLLS.clbh'
      'left join CLNKNQ on CLNKNQ.CLBH=KCLLS.clbh'
      'left join KCPK on KCLLS.PKNO=KCPK.PKNO'
      'left join KCRK on KCLLS.PKNO=KCRK.RKNO'
      
        'left join CLZL_ExcessMaterial on CLZL_ExcessMaterial.CLBH = KCLL' +
        'S.CLBH and CLZL_ExcessMaterial.CKBH=:CKBH'
      'where KCLLS.LLNO=:LLNO'
      'order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetLLNO: TStringField
      DisplayWidth = 13
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetCLBH: TStringField
      DisplayWidth = 18
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DelDetYWPM: TStringField
      DisplayWidth = 87
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      DisplayWidth = 7
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetTempQty: TCurrencyField
      DisplayWidth = 12
      FieldName = 'TempQty'
      DisplayFormat = '#,##0.00'
    end
    object DelDetQty: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object DelDetUSPrice: TCurrencyField
      DisplayWidth = 12
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object DelDetCostID: TStringField
      DisplayWidth = 12
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object DelDetSCBH: TStringField
      DisplayWidth = 18
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DelDetUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetDFL: TStringField
      DisplayWidth = 4
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object DelDetKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object DelDetDDYN: TStringField
      FieldName = 'DDYN'
      FixedChar = True
      Size = 1
    end
    object DelDetYYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object DelDetYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object DelDetBLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object DelDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetKCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.00'
    end
    object DelDetCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 30
    end
    object DelDetHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object DelDetCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object DelDetNK: TCurrencyField
      FieldName = 'NK'
      DisplayFormat = '##,#0.00'
    end
    object DelDetNK1: TCurrencyField
      FieldName = 'NK1'
    end
    object DelDetTC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '##,#0.00'
    end
    object DelDetTC1: TCurrencyField
      FieldName = 'TC1'
    end
    object DelDetNQ: TCurrencyField
      FieldName = 'NQ'
    end
    object DelDetNKNQ: TCurrencyField
      FieldName = 'NKNQ'
    end
    object DelDetHD: TCurrencyField
      FieldName = 'HD'
      DisplayFormat = '##,#0.00'
    end
    object DelDetHD1: TCurrencyField
      FieldName = 'HD1'
    end
    object DelDetKD: TCurrencyField
      FieldName = 'KD'
      DisplayFormat = '##,#0.00'
    end
    object DelDetKD1: TCurrencyField
      FieldName = 'KD1'
    end
    object DelDetXT: TCurrencyField
      FieldName = 'XT'
      DisplayFormat = '##,#0.00'
    end
    object DelDetH11: TCurrencyField
      FieldName = 'H11'
    end
    object DelDetGC: TCurrencyField
      FieldName = 'GC'
      DisplayFormat = '##,#0.00'
    end
    object DelDetZZZZ: TCurrencyField
      FieldName = 'ZZZZ'
      DisplayFormat = '##,#0.00'
    end
    object DelDetHGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object DelDetSCANUSERID: TStringField
      FieldName = 'SCANUSERID'
      FixedChar = True
      Size = 15
    end
    object DelDetDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object DelDetHGBH_HD: TStringField
      FieldName = 'HGBH_HD'
      FixedChar = True
      Size = 40
    end
    object DelDetHGBH_TC: TStringField
      FieldName = 'HGBH_TC'
      FixedChar = True
      Size = 40
    end
    object DelDetLLMemo: TStringField
      FieldName = 'LLMemo'
      FixedChar = True
      Size = 200
    end
    object DelDetDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 30
    end
    object DelDetCWBH: TStringField
      FieldName = 'CWBH'
      Size = 5
    end
    object DelDetHGBH1: TStringField
      FieldName = 'HGBH1'
      Size = 40
    end
    object DelDetHGBH_HD1: TStringField
      FieldName = 'HGBH_HD1'
      Size = 40
    end
    object DelDetHGBH_TC1: TStringField
      FieldName = 'HGBH_TC1'
      Size = 40
    end
    object DelDetHGBH_NQ: TStringField
      FieldName = 'HGBH_NQ'
      Size = 40
    end
    object DelDetHGBH_NKNQ: TStringField
      FieldName = 'HGBH_NKNQ'
      Size = 40
    end
    object DelDetPKNO: TStringField
      FieldName = 'PKNO'
      Size = 12
    end
    object DelDetDeclaretion: TStringField
      FieldName = 'Declaretion'
      Size = 50
    end
    object DelDetHGLB1: TStringField
      FieldName = 'HGLB1'
      Size = 4
    end
    object DelDetFlag: TStringField
      FieldName = 'Flag'
      Size = 1
    end
    object DelDetCLBH_ExcessMaterial: TStringField
      FieldName = 'CLBH_ExcessMaterial'
      FixedChar = True
      Size = 15
    end
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 508
    Top = 132
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  Qty = :Qty,'
      '  BLSB = :BLSB,'
      '  HGLB = :HGLB,'
      '  CNO = :CNO,'
      '  PKNO = :PKNO'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH'
      ''
      ''
      '')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (Qty, BLSB)'
      'values'
      '  (:Qty, :BLSB)'
      '')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH'
      ''
      '')
    Left = 468
    Top = 161
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 128
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 160
  end
  object DelTot: TQuery
    CachedUpdates = True
    AfterPost = DelTotAfterPost
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select CLBH,sum(TempQty) as TempQty,sum(Qty) as Qty '
      'from KCLLS'
      'where LLNO=:LLNO'
      'group by CLBH')
    UpdateObject = UpdateSQL1
    Left = 844
    Top = 333
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelTotCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCLLS.CLBH'
      FixedChar = True
      Size = 15
    end
    object DelTotTempQty: TCurrencyField
      FieldName = 'TempQty'
      Origin = 'DB.KCLLS.TempQty'
      DisplayFormat = '##,#0.00'
    end
    object DelTotQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = DelTot
    Left = 876
    Top = 333
  end
  object UpdateSQL1: TUpdateSQL
    Left = 844
    Top = 365
  end
  object DelSCBH: TQuery
    CachedUpdates = True
    BeforeEdit = DelSCBHBeforeEdit
    AfterPost = DelSCBHAfterPost
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select LLNO,SCBH,DFL,CLBH,TempQty,Qty'
      'from KCLLS'
      'where LLNO=:LLNO'
      'order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH')
    UpdateObject = UpdateSQL2
    Left = 844
    Top = 469
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelSCBHLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLLS.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelSCBHSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object DelSCBHDFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCLLS.DFL'
      FixedChar = True
      Size = 15
    end
    object DelSCBHCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCLLS.CLBH'
      FixedChar = True
      Size = 15
    end
    object DelSCBHTempQty: TCurrencyField
      FieldName = 'TempQty'
      Origin = 'DB.KCLLS.TempQty'
      DisplayFormat = '##,#0.00'
    end
    object DelSCBHQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS2: TDataSource
    DataSet = DelSCBH
    Left = 876
    Top = 469
  end
  object UpdateSQL2: TUpdateSQL
    Left = 844
    Top = 501
  end
  object HGBHQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'Select CKBH,CLBH,HGLB,CNO,Sum(Qty) as Qty,Sum(Qty) as NowQty fro' +
        'm ('
      
        'Select CKBH,CLBH,HGLB,Case when CNO='#39'ZZZZ'#39' then '#39#39' else CNO end ' +
        'as CNO,Qty,'#39'Last'#39' as SB '
      'from KCCLMONTH_HGBH'
      
        'where KCYEAR='#39'2022'#39' and KCMONTH='#39'06'#39' and CKBH in (Select CKBH fr' +
        'om KCCK where GSBH='#39'VA12'#39')  --and CLBH='#39'G010000174'#39
      'Union all'
      
        'Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKS.CNO,'#39#39') as CN' +
        'O,Sum(IsNull(KCRKS.Qty,0.0)) as RKQty,'#39'RK'#39' as SB'
      'from KCRKS '
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      'where 1=1 '
      
        '   and Convert(smalldatetime,convert(varchar,KCRK.UserDate,111))' +
        ' between '
      #9#9#39'2022/07/01'#39'and '#39'2022/07/31'#39' '
      
        '   and KCRK.CKBH  in (Select CKBH from KCCK where GSBH='#39'VA12'#39')  ' +
        '--and KCRKS.CLBH='#39'G010000174'#39
      'Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,KCRKS.CNO'
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLS.CNO,'#39#39') as C' +
        'NO,-1*Sum(IsNull(KCLLS.Qty,0.0)) as LLQty,'#39'LL'#39' as SB'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNo'
      'where 1=1 and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39
      
        '   and Convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) ' +
        'between '
      #9#9#39'2022/07/01'#39'and '#39'2022/07/31'#39' '
      
        '   and KCLL.CKBH  in (Select CKBH from KCCK where GSBH='#39'VA12'#39')  ' +
        '--and KCLLS.CLBH='#39'G010000174'#39
      'Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,KCLLS.CNO'
      'union all'
      
        'Select JGZL.CKBH,JGZLS.CLBH,'#39'GC'#39' as HGLB,'#39#39' as CNO,Sum(IsNull(JG' +
        'ZLS.Qty,0.0)) as JGQty,'#39'GR'#39' as SB'
      'from JGZL'
      'left join JGZLS on JGZL.JGNO=JGZLS.JGNO'
      
        'where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) ' +
        'between'
      '   '#39'2022/07/01'#39'and '#39'2022/07/31'#39' '
      #9'  and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39'    --and JGZLS.CLBH='#39'G010000174'#39
      #9'  and JGZL.CKBH  in (Select CKBH from KCCK where GSBH='#39'VA12'#39') '
      #9'  Group by JGZL.CKBH,JGZLS.CLBH'
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLS.CNO,'#39#39') as C' +
        'NO,-1*Sum(IsNull(KCLLS.Qty,0.0)) as LLQty,'#39'CK'#39' as SB'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNo'
      'where 1=1 and KCLL.SCBH='#39'JJJJJJJJJJ'#39'  and KCLL.CFMID<>'#39'NO'#39
      
        '   and Convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) ' +
        'between '
      #9#9#39'2022/07/01'#39'and '#39'2022/07/31'#39' '
      
        '   and KCLL.CKBH  in (Select CKBH from KCCK where GSBH='#39'VA12'#39')  ' +
        '--and KCLLS.CLBH='#39'G010000174'#39
      'Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,KCLLS.CNO'
      ')   KCCLMonth_HGBH'
      'Group by  CKBH,CLBH,HGLB,CNO'
      'order by CKBH,CLBH,HGLB,CNO')
    UpdateObject = UpdateSQL3
    Left = 684
    Top = 133
    object HGBHQryCKBH: TStringField
      DisplayWidth = 6
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object HGBHQryCLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object HGBHQryHGLB: TStringField
      DisplayWidth = 5
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object HGBHQryCNO: TStringField
      DisplayWidth = 7
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object HGBHQryQty: TCurrencyField
      DisplayWidth = 11
      FieldName = 'Qty'
      DisplayFormat = '0.0000'
    end
    object HGBHQryNowQty: TCurrencyField
      DisplayWidth = 12
      FieldName = 'NowQty'
      DisplayFormat = '0.0000'
    end
  end
  object UpdateSQL3: TUpdateSQL
    Left = 684
    Top = 165
  end
  object DS5: TDataSource
    DataSet = HGBHQry
    Left = 716
    Top = 132
  end
  object DelDetS: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS4
    RequestLive = True
    SQL.Strings = (
      'Select KCLLSS.*'
      'from KCLLSS'
      
        'where KCLLSS.LLNO=:LLNO and KCLLSS.CLBH=:CLBH and KCLLSS.DFL=:DF' +
        'L and KCLLSS.SCBH=:SCBH')
    UpdateObject = UPDetS
    Left = 572
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DFL'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DelDetSLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLLSS.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCLLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object DelDetSDFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCLLSS.DFL'
      FixedChar = True
      Size = 15
    end
    object DelDetSSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLSS.SCBH'
      FixedChar = True
      Size = 15
    end
    object DelDetSSIZE: TStringField
      FieldName = 'SIZE'
      Origin = 'DB.KCLLSS.SIZE'
      FixedChar = True
      Size = 6
    end
    object DelDetSCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.KCLLSS.CLSL'
    end
    object DelDetSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLSS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object DelDetSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.KCLLSS.USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCLLSS.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCLLSS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UPDetS: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLSS'
      'set'
      '  Qty = :Qty'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH and'
      '  SIZE =:OLD_SIZE')
    InsertSQL.Strings = (
      'insert into KCLLS'
      
        '  (LLNO, CLBH, DFL, SCBH, TempQty, Qty, USPrice, VNPrice, CWHL, ' +
        'CostID, '
      '   USERDATE, USERID, YN, CLSL,MeMo)'
      'values'
      
        '  (:LLNO, :CLBH, :DFL, :SCBH, :TempQty, :Qty, :USPrice, :VNPrice' +
        ', :CWHL, '
      '   :CostID, :USERDATE, :USERID, :YN, :CLSL,:MeMo)')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 572
    Top = 162
  end
  object DS6: TDataSource
    DataSet = DelDetS
    Left = 612
    Top = 132
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    Left = 1144
    Top = 353
    object MenuItem1: TMenuItem
      Caption = 'Save'
      OnClick = MenuItem1Click
    end
  end
  object KCCLMONTH_BDepQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'Select KCCLMONTH_Dep.*,IsNull(Bdepartment.DepName,'#39'Stock'#39') as De' +
        'pName,IsNull(Bdepartment.DepMemo,'#39'??'#39') as DepMemorom'
      'from ('
      'Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from ('
      'Select CKBH,CLBH,DepID,Qty,'#39'1'#39' as SB'
      'from KCCLMONTH_BDepartment'
      'where KCYEAR='#39'2023'#39' and KCMONTH='#39'02'#39
      '      and KCCLMONTH_BDepartment.CKBH=:CKBH'
      '      and KCCLMONTH_BDepartment.CLBH=:CLBH'
      '      and KCCLMONTH_BDepartment.DepID=:DepID'
      'Union all'
      
        'Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo' +
        ','#39'ZZZZZZZZZZ'#39')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Q' +
        'ty,'#39'2'#39' as SB'
      'from KCRK'
      'left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      'left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO'
      'left join SGDH on SGDH.SGNO=KCRKSS.CGBH'
      
        'left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS' +
        '.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE a' +
        'nd CGZLSS.Stage='#39'TVu'#39
      
        'where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between'
      #9'     '#9#39'2023/03/01'#39'and '#39'2023/03/31'#39
      '        and KCRK.CKBH=:CKBH and KCRKS.CLBH is not null'
      '        and KCRKS.CLBH=:CLBH'
      '        and KCRKSS.DepID=:DepID'
      
        'Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Me' +
        'mo,'#39'ZZZZZZZZZZ'#39'))'
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty' +
        ' ,'#39'3'#39' as SB '
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        'where  KCLL.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert(varcha' +
        'r,KCLL.CFMDATE,111)) between'
      #9'     '#9#39'2023/03/01'#39' and '#39'2023/03/31'#39
      '        and KCLL.CKBH=:CKBH and KCLLS.CLBH is not null '
      '        and KCLLS.CLBH=:CLBH'
      '        and KCLL.DepID=:DepID'
      'Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   )  KCCLMONTH_Dep'
      'Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep'
      'Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID'
      '')
    Left = 816
    Top = 133
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
      end>
    object KCCLMONTH_BDepQryCKBH: TStringField
      DisplayWidth = 6
      FieldName = 'CKBH'
      FixedChar = True
    end
    object KCCLMONTH_BDepQryCLBH: TStringField
      DisplayWidth = 11
      FieldName = 'CLBH'
      FixedChar = True
      Size = 30
    end
    object KCCLMONTH_BDepQryDepID: TStringField
      DisplayWidth = 7
      FieldName = 'DepID'
      FixedChar = True
    end
    object KCCLMONTH_BDepQryQty: TFloatField
      DisplayWidth = 4
      FieldName = 'Qty'
    end
    object KCCLMONTH_BDepQryDepName: TStringField
      DisplayWidth = 10
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object KCCLMONTH_BDepQryDepMemo: TStringField
      DisplayWidth = 13
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
  end
  object DS7: TDataSource
    DataSet = KCCLMONTH_BDepQry
    Left = 852
    Top = 133
  end
  object KCCLMONTH_BDepNotQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'Select KCCLMONTH_Dep.*,IsNull(Bdepartment.DepName,'#39'Stock'#39') as De' +
        'pName,IsNull(Bdepartment.DepMemo,'#39'??'#39') as DepMemorom'
      'from ('
      'Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from ('
      'Select CKBH,CLBH,DepID,Qty,'#39'1'#39' as SB'
      'from KCCLMONTH_BDepartment'
      'where KCYEAR='#39'2023'#39' and KCMONTH='#39'02'#39
      '      and KCCLMONTH_BDepartment.CKBH=:CKBH'
      '      and KCCLMONTH_BDepartment.CLBH=:CLBH'
      '      and KCCLMONTH_BDepartment.DepID=:DepID'
      'Union all'
      
        'Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo' +
        ','#39'ZZZZZZZZZZ'#39')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Q' +
        'ty,'#39'2'#39' as SB'
      'from KCRK'
      'left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      'left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO'
      'left join SGDH on SGDH.SGNO=KCRKSS.CGBH'
      
        'left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS' +
        '.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE a' +
        'nd CGZLSS.Stage='#39'TVu'#39
      
        'where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between'
      #9'     '#9#39'2023/03/01'#39'and '#39'2023/03/31'#39
      '        and KCRK.CKBH=:CKBH and KCRKS.CLBH is not null'
      '        and KCRKS.CLBH=:CLBH'
      '        and KCRKSS.DepID=:DepID'
      
        'Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Me' +
        'mo,'#39'ZZZZZZZZZZ'#39'))'
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty' +
        ' ,'#39'3'#39' as SB '
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        'where  KCLL.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert(varcha' +
        'r,KCLL.CFMDATE,111)) between'
      #9'     '#9#39'2023/03/01'#39' and '#39'2023/03/31'#39
      '        and KCLL.CKBH=:CKBH and KCLLS.CLBH is not null '
      '        and KCLLS.CLBH=:CLBH'
      '        and KCLL.DepID=:DepID'
      'Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   )  KCCLMONTH_Dep'
      'Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep'
      'Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID'
      '')
    Left = 816
    Top = 165
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      DisplayWidth = 6
      FieldName = 'CKBH'
      FixedChar = True
    end
    object StringField2: TStringField
      DisplayWidth = 11
      FieldName = 'CLBH'
      FixedChar = True
      Size = 30
    end
    object StringField3: TStringField
      DisplayWidth = 7
      FieldName = 'DepID'
      FixedChar = True
    end
    object FloatField1: TFloatField
      DisplayWidth = 4
      FieldName = 'Qty'
    end
    object StringField4: TStringField
      DisplayWidth = 10
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object StringField5: TStringField
      DisplayWidth = 13
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
  end
  object DS8: TDataSource
    DataSet = KCCLMONTH_BDepNotQry
    Left = 852
    Top = 165
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 184
    Top = 128
  end
end
