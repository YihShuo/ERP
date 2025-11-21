object SampleMaterial: TSampleMaterial
  Left = 250
  Top = 217
  Width = 1581
  Height = 742
  Caption = 'SampleMaterial'
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
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1565
    Height = 638
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 241
      Width = 1563
      Height = 396
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnColEnter = DBGrid1ColEnter
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnEditButtonClick = DBGrid1EditButtonClick
      OnGetCellParams = DBGrid1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLDH'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          Footers = <
            item
              FieldName = 'cldh'
              ValueType = fvtCount
            end>
          ReadOnly = True
          Title.Caption = 'Temporary MatNo|'#26448#26009#20195#30908
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Caption = 'Temporary MatNo|'#33521#25991#21517#31281
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 378
        end
        item
          EditButtons = <>
          FieldName = 'CLLB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Class|'#39006#21029
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'cltd'
          Footers = <>
          PickList.Strings = (
            'VT Mat'
            'VT Phu May'
            'VT Phu Go'
            'VT De')
          Title.Caption = 'Main|'#22823#20998#39006' '
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'JHDH'
          Footers = <>
          Title.Caption = 'Formal MatNo|'#27491#24335#26009#34399
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'JHYWPM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Formal MatNo|'#33521#25991#21517#31281
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 252
        end
        item
          ButtonStyle = cbsEllipsis
          EditButtons = <>
          FieldName = 'UseCount'
          Footers = <>
          Title.Caption = 'Used|'#27425#25976
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          Footers = <>
          Title.Caption = 'Unit|'#21934#20301
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'clzmlb'
          Footers = <>
          Title.Caption = 'Com|'#32068#21512
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'tyjh'
          Footers = <>
          Title.Caption = 'Stop|'#20572#29992
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'zsdh'
          Footers = <>
          Title.Caption = 'Supplier|ID'
        end
        item
          EditButtons = <>
          FieldName = 'ZSJC'
          Footers = <>
          Title.Caption = 'Supplier|'#21517#31281
        end
        item
          EditButtons = <>
          FieldName = 'UserID'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'UserID|'#20351#29992#32773
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 56
        end
        item
          EditButtons = <>
          FieldName = 'UserDATE'
          Footers = <>
          Title.Caption = 'Date|'#20462#25913#26085#26399
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 106
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1563
      Height = 72
      Align = alTop
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 44
        Top = 16
        Width = 23
        Height = 16
        Caption = 'NO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 47
        Width = 47
        Height = 16
        Caption = 'English:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 955
        Top = 36
        Width = 128
        Height = 32
        Caption = 'Create date >180 can not modify and delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 181
        Top = 16
        Width = 32
        Height = 16
        Caption = 'User:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = -7
        Top = 61
        Width = 16
        Height = 17
        Brush.Color = clTeal
        OnMouseDown = Shape1MouseDown
      end
      object Label18: TLabel
        Left = 282
        Top = 16
        Width = 32
        Height = 16
        Caption = 'Main:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 808
        Top = 45
        Width = 43
        Height = 20
        Caption = 'Brand'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Edit1: TEdit
        Left = 70
        Top = 11
        Width = 107
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object YWPMEdit: TEdit
        Left = 68
        Top = 44
        Width = 733
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
      object Button1: TButton
        Left = 859
        Top = 6
        Width = 89
        Height = 33
        Caption = 'QUERY'
        TabOrder = 2
        OnClick = Button1Click
      end
      object ShowCK: TCheckBox
        Left = 964
        Top = 5
        Width = 119
        Height = 17
        Caption = 'Show 12 recourd'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 214
        Top = 12
        Width = 58
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object SplitCK: TCheckBox
        Left = 963
        Top = 22
        Width = 65
        Height = 17
        Caption = 'Split=*'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 5
      end
      object GroupBox2: TGroupBox
        Left = 428
        Top = -5
        Width = 421
        Height = 49
        TabOrder = 6
        object UsedCK: TCheckBox
          Left = 167
          Top = 21
          Width = 97
          Height = 17
          Caption = 'Used>0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object TransferviewBtn: TBitBtn
          Left = 368
          Top = 13
          Width = 49
          Height = 33
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = TransferviewBtnClick
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object SortCK: TCheckBox
          Left = 254
          Top = 21
          Width = 107
          Height = 17
          Caption = 'Sort by "Used"'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object FormalCK: TComboBox
          Left = 13
          Top = 15
          Width = 132
          Height = 28
          Style = csDropDownList
          ItemHeight = 20
          TabOrder = 3
          Items.Strings = (
            ''
            'Having Formal '
            'Not having Formal ')
        end
      end
      object ClassCombo: TComboBox
        Left = 317
        Top = 10
        Width = 108
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        TabOrder = 7
        Items.Strings = (
          ''
          'VT Mat'
          'VT Phu May'
          'VT Phu Go'
          'VT De')
      end
      object OnlyDC: TCheckBox
        Left = 1028
        Top = 20
        Width = 77
        Height = 17
        Caption = 'Only DC'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 8
      end
      object ComboBox2: TComboBox
        Left = 856
        Top = 42
        Width = 73
        Height = 28
        Style = csDropDownList
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 9
        Visible = False
        Items.Strings = (
          'SKX'
          'SRL')
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 145
      Width = 1563
      Height = 96
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 16
        Top = 9
        Width = 51
        Height = 20
        Caption = 'MatNo:'
      end
      object Label4: TLabel
        Left = 224
        Top = 7
        Width = 38
        Height = 20
        Caption = 'Type:'
      end
      object Label5: TLabel
        Left = 8
        Top = 39
        Width = 62
        Height = 20
        Caption = 'Chinese:'
      end
      object Label6: TLabel
        Left = 385
        Top = 8
        Width = 33
        Height = 20
        Caption = 'Unit:'
      end
      object Label9: TLabel
        Left = 11
        Top = 69
        Width = 56
        Height = 20
        Caption = 'English:'
      end
      object Label10: TLabel
        Left = 536
        Top = 8
        Width = 47
        Height = 20
        Caption = 'Stage:'
      end
      object DBEdit2: TDBEdit
        Left = 272
        Top = 7
        Width = 105
        Height = 24
        DataField = 'cllb'
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 69
        Top = 6
        Width = 145
        Height = 24
        DataField = 'cldh'
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 70
        Top = 38
        Width = 883
        Height = 25
        DataField = 'zwpm'
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CBX2: TDBComboBox
        Left = 424
        Top = 5
        Width = 89
        Height = 24
        DataField = 'dwbh'
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
      end
      object DBMemo2: TDBMemo
        Left = 70
        Top = 67
        Width = 883
        Height = 25
        DataField = 'ywpm'
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object StageCombox: TComboBox
        Left = 589
        Top = 7
        Width = 68
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 5
        Text = 'V90A'
        OnChange = StageComboxChange
        Items.Strings = (
          'V90A'
          'V90B'
          'V90C'
          'V90G'
          'V90H'
          'V90I')
      end
    end
    object DBX2: TDBComboBox
      Left = 112
      Top = 256
      Width = 57
      Height = 28
      DataField = 'dwbh'
      DataSource = DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      Items.Strings = (
        'PPP :Cement'
        'QQQ: Thream'
        'RRR: Machine'
        'SSS: Office'
        'TTT: Other'
        'UUU:Packing'
        'VVV:Temp')
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object FilterPanel: TPanel
      Left = 1
      Top = 73
      Width = 1563
      Height = 72
      Align = alTop
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      object Label11: TLabel
        Left = 315
        Top = 14
        Width = 65
        Height = 16
        Caption = 'Combined:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 312
        Top = 41
        Width = 66
        Height = 16
        Caption = 'Formal No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 453
        Top = 14
        Width = 31
        Height = 16
        Caption = 'Stop:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 566
        Top = 16
        Width = 55
        Height = 16
        Caption = 'Sppe DT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 725
        Top = 15
        Width = 20
        Height = 16
        Caption = 'To:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ComType: TComboBox
        Left = 383
        Top = 10
        Width = 65
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        TabOrder = 0
        Items.Strings = (
          ''
          'Y'
          'N')
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 2
        Width = 289
        Height = 63
        Caption = 'Used in'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label13: TLabel
          Left = 151
          Top = 16
          Width = 50
          Height = 16
          Caption = 'Season:'
        end
        object Label14: TLabel
          Left = 160
          Top = 39
          Width = 39
          Height = 16
          Caption = 'Stage:'
        end
        object UsedSpecCK: TCheckBox
          Left = 10
          Top = 17
          Width = 65
          Height = 17
          Caption = 'Spec'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object UsedPurCK: TCheckBox
          Left = 10
          Top = 40
          Width = 81
          Height = 17
          Caption = 'Purchase'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object SeasonEdit: TEdit
          Left = 205
          Top = 11
          Width = 75
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = Edit1KeyPress
        end
        object StageEdit: TEdit
          Left = 205
          Top = 35
          Width = 75
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = Edit1KeyPress
        end
        object UsedInvCK: TCheckBox
          Left = 90
          Top = 39
          Width = 63
          Height = 17
          Caption = 'Invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object FormalMatEdit: TEdit
        Left = 382
        Top = 39
        Width = 155
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = Edit1KeyPress
      end
      object OpenV_T: TCheckBox
        Left = 696
        Top = 45
        Width = 135
        Height = 17
        Caption = 'Open MatV=>TW'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = OpenV_TClick
      end
      object StopCombo: TComboBox
        Left = 487
        Top = 10
        Width = 48
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        TabOrder = 4
        Items.Strings = (
          ''
          'Y'
          'N')
      end
      object DTP1: TDateTimePicker
        Left = 627
        Top = 11
        Width = 97
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DTP2: TDateTimePicker
        Left = 749
        Top = 11
        Width = 97
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DTPCK: TCheckBox
        Left = 544
        Top = 16
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object DropCK: TCheckBox
        Left = 544
        Top = 45
        Width = 153
        Height = 17
        Caption = 'Not show spec drop'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 8
        OnClick = OpenV_TClick
      end
      object AddSpecVTCK: TCheckBox
        Left = 852
        Top = 12
        Width = 245
        Height = 17
        Caption = 'Not Show  add Spec Material'
        TabOrder = 9
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1565
    Height = 65
    Align = alTop
    TabOrder = 1
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB7: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BB7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT1: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BBT1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT2: TBitBtn
      Left = 416
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BBT2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT3: TBitBtn
      Left = 464
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BBT3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT4: TBitBtn
      Left = 512
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BBT4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt5: TBitBtn
      Left = 584
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt7: TBitBtn
      Left = 688
      Top = 8
      Width = 81
      Height = 49
      Hint = 'Modify Current'
      Caption = 'A1M(TW)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = bbt7Click
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBF0F0F0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF
        DFDF959595A5A5A5D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE8E8E88F8F8F656566B5B5B5A7A7A7B0B0B0E6E6
        E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0A0A0A067
        6767B1B1B1FFFFFFE1E1E1B7B7B7A0A0A0C7C7C7F1F1F1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCB2B2B2717171969696F4F4F4F5F5F5F2F2F2E9E9E9CFCF
        CFA8A8A8ADADADD6D6D6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC7C7C779797A858585D7
        D7D7E8E8E8E2E2E2E2E2E2E4E4E4E9E9E9DDDDDDBBBBBBA3A3A3B5B5B5EBEBEB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFDDDDDD82828279797AC3C3C3E0E0E0DDDDDDDEDEDEDFDFDFD9D9D9BEBE
        BEC6C6C6E2E2E2D1D1D1AEAEAEA0A0A0CBCBCBFAFAFAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFE4E4E4919191747474B5B5B5DEDEDED3
        D3D3C5C5C5A8A8A8858585616161424242919191DCDCDCD9D9D9DEDEDEC5C5C5
        A3A3A3ABABABDBDBDBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFEEEEEE
        A2A2A3757576A1A1A1CECECE9999997878785C5C5C4C4C4C4B4B4B5252524D4D
        4D949494D7D7D7CFCFCFD1D1D1D8D8D8D1D1D1B8B8B8A2A2A2BDBDBDECECECFF
        FFFFFFFFFFFFFFFF0000FAFAFAB2B2B37B7B7C8D8D8ECECECEC2C2C376767649
        49494A4A4A4F4F4F5151515151514646468E8E8ED3D3D3CBCBCBCBCBCBCBCBCB
        CFCFCFD3D3D3C9C9C8ACACACA8A8A8CECECEF8F8F8FFFFFF0000D2D2D2808081
        848484BDBDBEC9C9CACCCCCDBEBEBE6161624646464949494A4A4A4A4A4A4040
        40888889CECECFC6C6C7C6C6C7C6C6C7C6C6C7C7C7C8CCCCCDD2D2D2BDBDBDA3
        A3A2B0B0B0ECECEC0000E5E5E5949495B1B1B1C4C4C5C4C4C5BEBEBD6E6E6E3A
        3A3A4141414040403F3F3F3D3D3D333333828283C9C9CAC1C1C0C1C1C2C1C1C2
        C1C1C0C1C1C0C0C0C0C0C0C0CBCBCCCCCCCDB3B3B3C6C6C60000F4F4F4BDBDBD
        BCBCBCBFBFBFBEBEBE7373733636363939393B3B3B3939394040405D5D5D3C3C
        3C7A7A7AC5C5C5BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBBC0
        C0C0C6C6C6D6D6D70000ECECECBBBBBBB4B4B5BDBDBD7A7A7A32323232323236
        3636343434333333727273B2B2B2929292919191BCBCBCB7B7B8B7B7B8B7B7B8
        B7B7B7B7B7B7B7B7B7B7B7B8B7B7B7B4B4B4C2C2C2F2F2F20000FEFEFEEEEEEE
        D2D2D39595952D2D2D2C2C2C2E2E2E2E2E2E252525636362B1B1B1B7B7B7B6B6
        B7B2B2B2B3B3B3B3B3B2B3B3B3B3B3B3B3B3B3B3B3B2B3B3B3B2B2B3B0B0B0B9
        B9B9EAEAEBFFFFFF0000FFFFFFFFFFFFFFFFFF7373732626262C2C2C2A2A2A22
        2222535353B0B0B1B1B1B1ADADADADADADAEAEAEADADADADADADADADADADADAD
        ADADADADADAEADADADAAAAABB5B5B6EBEBEAFFFFFFFFFFFF0000FFFFFFFFFFFF
        F7F7F75E5E5E242424252525232323646464C8C8C8B1B1B2A5A5A6A7A7A7A8A8
        A9A8A8A8A8A8A8A8A8AAA8A8A8A8A8A9A8A8A9A8A8A9A5A5A6AFAFB0EBEBEBFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF0F0F06161614141413030302F2F2FCA
        CACAFFFFFFE4E4E5BFBFC0A5A5A6A1A1A1A4A4A4A4A4A5A4A4A4A4A4A5A4A4A4
        A4A4A4A1A1A2AAAAABE3E3E3FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F0F0F0646464333333393939666666EAEAEAFFFFFFFFFFFFF9F9F9DEDEDEB2B2
        B19898999E9E9EA0A0A0A0A0A1A0A0A09C9C9DA6A6A6DFDFDFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFEAEAEA5757574B4B4B383838525252E6
        E6E6FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCECECEA2A2A29898989B9B9B989899
        A1A1A2DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F6F6F6828282313131313131656565EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F3F3C3C3C39E9E9E9D9D9DE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC8C8C86A6A6A5E5E5EE4
        E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2DDDDDD
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF5F5F5D8D8D8F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      Layout = blGlyphTop
    end
    object bbt8: TBitBtn
      Left = 776
      Top = 8
      Width = 81
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Mat(TW)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = bbt8Click
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFEEFAFFEAF9FFEEFA
        FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F6FFA8EBFF9FECFF
        ABEEFFB5EFFFADEEFFA3ECFFAEEAFFF1F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FAFF8DE7FF7D
        F2FFB7FCFFD3FDFFEEFFFFFEFFFFF6FEFFDAFCFFBCFCFF7EEFFFA0E9FFF9FBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFD3F3
        FF53EBFF7FFEFFB8FFFFCDFFFFDBFFFFECFFFFF8FFFFF3FFFFE2FFFFD4FFFFBF
        FFFF7FFBFF66EAFFE6F5FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFD1F3FF43EEFF7AFFFFA7FFFFB7FFFFC6FFFFD3FFFFE2FFFFEAFFFFE6FF
        FFD8FFFFCDFFFFBEFFFFACFFFF75FFFF56EBFFE9F6FFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFEDF8FF33EBFF5AFFFF95FFFFA0FFFFAEFFFFC7FFFFD1FAFD
        C8EAFAC0E6F9C9EAF9D3F8FDCCFFFFB4FFFFA5FFFF9AFFFF51FFFF4CE9FFFBFB
        FFFFFFFFFFFFFF000000FFFFFFFFFFFF6EE4FF3BFFFF79FFFF8AFFFF9AFFFFAE
        FFFF6FBCED3192E2218EE32192E51E91E43092E46AB6EAAFFEFEA0FFFF91FFFF
        75FFFF2DFBFF9AE9FFFFFFFFFFFFFF000000FFFFFFD8F2FF30EEFF61FDFF7BFF
        FF83FFFF89F8FC2F93E2349DE57DDEF6A5F8FDACF9FDA5F8FD83E9FA46BAF033
        A0E689F2FB86FFFF7AFFFF56FFFF37E9FFF8F9FFFFFFFF000000FFFFFF7FE4FF
        32F1FF6FFBFF77FFFF77F9FE3AB0E961D3F2A3FFFFA0FFFF9FFFFFA1FFFFA0FF
        FFA2FFFFA4FFFF76F2FC49C8F276FAFD77FFFF68FCFF32F3FF9EE5FEFFFFFF00
        0000F6FAFF4FDEFF3AF0FF6FF9FF72FEFF6AF2FB66E8F880FFFF81FFFF86FFFF
        8AFFFF8CFFFF8CFFFF87FFFF82FFFF7FFFFF6FF7FE6CF8FD72FDFF6AFAFF34F0
        FF5ADCFDF5FBFF000000E9F7FD36D7FD40EAFF6AF6FF69F8FF6EFCFF71FFFF71
        FFFF71FEFF73FFFF75FFFF78FFFF76FFFF74FFFF76FFFF73FFFF70FEFF6DFCFF
        69F9FF65F7FF34EAFF34D6FDE9F7FD000000E7F6FE30D1FD39E5FF61F2FF61F4
        FF68FBFF6AFDFF6BFBFF6CFDFF70FFFF6DFEFF6EFEFF6DFEFF70FFFF58DFF65D
        E8F96CFFFF66F8FF63F5FF5DF3FF30E4FF30D0FCE7F7FE000000E8F6FE31CAFC
        2BDBFF56ECFF5EF6FF4BD6F55EF1FC6BFFFF6EFFFF4FD9F466F9FD68FDFF68FD
        FF64F5FC1089E21794E466FEFF5FF6FF5BF0FF53EDFF27DBFF30CAFBE9F7FE00
        0000F6F9FE47C7FA19CCFF45E1FF54EEFF42D1F51084DE29A9EA1A8FE2249DE5
        63FFFF5DF7FF60FAFF4CE2FA078EE8088FE84FE8FC56F1FF50E9FF40E2FF19CF
        FF53C7F9F5F9FE000000FFFFFF75CEFA0EC0FE2FD4FF46E1FF4EEBFF39CAF51B
        9CE82AB1ED51EDFD55F2FF55F1FF56F3FF44DFFB099EEF0AA0F046E2FD4DE9FF
        45E1FF2BD4FF15C4FE98D7F9FFFFFF000000FFFFFFD3EAFA13B3FC16BFFF2FD0
        FF3EDBFF43E4FF48EAFF4BECFF48E7FF48E7FF48E7FF48E8FF43E2FE0EB5F912
        B7F942E1FE40DCFF2AD0FF14C3FF1FB6F9F5F9FCFFFFFF000000FFFFFFFFFFFF
        5ABCF601ADFF16BBFF2AC9FF34D1FF37D5FF38D8FF3ADAFF3BDAFF3BDCFF3ADC
        FF3CDCFF29CFFE2BD0FE36D5FF29CAFF15BDFF00AEFD8CCFF8FFFFFFFFFFFF00
        0000FFFFFFFFFFFFE8F4FC0DA5FB05ABFF12B4FF1CBEFF25C5FF2BCBFF2DCEFF
        2ECEFF2ED0FF2ED0FF2DCEFF2DCDFF27C7FF1BBFFF12B6FF02ADFF2DB1FCF9FA
        FEFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC3DAEB169DEE13ABFF19AFFF15
        B0FF16B3FF15B6FF16B8FF15B8FF16B8FF16B6FF16B4FF15B1FF1AB0FF0FADFF
        2EA2E5E3E7ECFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFBC6D7
        E8219CED2FB4FF4BC1FF44BEFF3DBCFF37BBFF33B9FF38BCFF3EBCFF44C0FF4B
        C3FF2CB3FF38A3E5E0E6ECFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEFF3F575B6E951B8FB7ED4FD90DFFE9AE4FF9AE5FF9AE5
        FF91DFFD80D6FE5ABBF994C6E9F9F6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF2F899CCF789CAF8
        8DCFF78BCFF88FD1F792CDF7AAD6F7F9FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEF9FAFCF7FAFCFAFBFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      Layout = blGlyphTop
    end
    object bbt9: TBitBtn
      Left = 928
      Top = 8
      Width = 81
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Mat V=>TW'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = bbt9Click
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9F881B29699
        C3ABFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFF8FBFA609F7C50C9AD4DB291FDFCFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF6F9F752987246BB9B66FFF351
        AC8BD3DFD3E0E8E1E4EBE4EAEEE9EFF1ECF5F4F1FBF7F5FFFAF9FFFDFDFFFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        ECF4EF53956E4CBA9C6BF8E855E9D358CFB555C3A65CC9AF64CEB46CD4BC71D7
        C076DDC67CE0CA82E2CE8AE5D09CECDABAF5EADCFAF5FBFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFE7F0EC4A916850B99C7CF7EB61E6D354E5CF4E
        E8D349ECD541E8CE3BE5CA33E2C42CDFC021DBBA1BD8B314D3AB14CAA02ED2AD
        67E7CDB3F5E9F7FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFA5C8B3
        43B4948AFDF374EDDF69EBD959EBD74FE6D046E6CE40E2C73AE0C433DEBF2DDB
        BB24D7B422D6B224D0AB32CDA85DDDC096EEDDD4F9F3FCFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFADCDBA2CA57F5EEBD64BDCC33ED9BB2ED8B925
        D5B321D6B11DD2AD19D3AB15D1A813CFA50ECDA40FCCA216C99E25C69E53D9B8
        94F1DCD7FEF3FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFEEF5F2
        629F7B37A88257EBD53CD4B42ED1AF2DDABB29E1C024DDBB1EDCB919DAB516D8
        B30ED5AE0CD2AA0DCEA417CCA13FD9B561C6C791C7D5F7FCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF7FAF869A28031A67E47EDD42ED9B949
        C0A04DB59359BC9D61C4A66DC9AF79D1B985D8C390DECA9DE3D2AFECDCC5EFE7
        3A95C72D96CB9AAED2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF609F7C2DA9813FF8E047A985EFEEE7FCF8F4FEFAF5FFFCF8FFFF
        FAFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF358FC80DD7FF2877B995ACD0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DAC8F40B9984A
        B392EEF5F8D7EDF9C6DFF2B6D4EBA5CAE595BDDF81B0D76FA3D15E98C94E8AC2
        409BD20DB9F608D1FF116BB388A1CBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7FBF994C6B68AD3D096EAFC37CEF727BCF329BCF427BD
        F525C0F521C1F51DC1F719C2F817C4F913BBF50FA8ED0AA4EB00C7FB1572B687
        A1CAF9FBFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFCD
        F9FF90E8FA3BC4F438B7EF38B5F033B1EF31B1EE2CB2EE27B2F021B4F11EB5F1
        18B4F213B2F00BACEE05ADF000BFF30978BCBBC9E1FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFEFFEDFCFFCAF6FD84E6FA31C0F439B6F039B3EE33AC
        ED31A4EB2BA2EA26A0EB21A0EB1D9DE91898E81391E70B82E10476DB0090EA00
        84CFA8B9D7FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFECFCFFC5
        F5FD9DEBFA40C2F230AEED32ABED2EA5EC2CA3EB26A0EB229BEA1D98E91A96E8
        158EE71080E00971D8017DE1008DD83B6AABD8E3EFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFFF1FDFFD6F7FDB7EFFB70DBF761CAF25BC5F054C2
        EF4DBDEC42B7E939B0E62FAAE428A4E2239BE10C83E10889E60591DA4B71ADDC
        E5F1FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFFFEFEFFF9FAFAF4F7F1EEF4E8E8F0DFE1EDD5DAE9CBD3E5C4CEE2B7C2DB
        4189C60BAEF61194DA4777B3E0E7F2FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD2B8ECA12ACE54D7EB9DDE5F0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFD
        709CC95789C0E0E7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      Layout = blGlyphTop
    end
  end
  object DS1: TDataSource
    DataSet = MatQuery
    Left = 128
    Top = 112
  end
  object MatQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 12 CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CLBM,' +
        'CLZL.CLLB,CLZL.clzmlb,CLZL.lycc,CLZL.xhcl,CLZL.jkcl,CLZL.gjlb,'
      
        '              CLZL.cltd,CLZL.tyjh,CLZL.cqdh,CLZL.UserID,CLZL.Use' +
        'rDATE,CLZL.YN,CLZL_LS.JHDH,JHZL.YWPM as JHYWPM,YPZLS.UseCount,cl' +
        'zl.zsdh,zszl.zsywjc  from CLZL '
      'left join zszl on zszl.zsdh=clzl.zsdh'
      'left join CLZL_LS on CLZL.CLDH=CLZL_LS.CLDH  '
      'left join CLZL as JHZL on JHZL.CLDH=CLZL_LS.JHDH  '
      'left join ( '
      'select CLBH,Count(CLBH) as UseCount from ( '
      
        'select '#39'Spec'#39' as Type,YPZL.YPDH as No,Null as Mother,CLBH  from ' +
        'YPZLS,YPZL,KFXXZL where YPZL.YPDH=YPZLS.YPDH and  YPZL.SheHao=KF' +
        'XXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing  and YPZL.UserDate>=' +
        #39'20130911'#39' '
      'and KFXXZL.KHDH='#39'036'#39' and YPZLS.CLBH like '#39'V90%'#39'  '
      'union all '
      
        'select '#39'Child'#39' as Type,YPZL.YPDH as No,YPZLS.CLBH as Mother,Clzh' +
        'zl.CLDH1 as CLBH from YPZLS '
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH '
      
        'inner join KFXXZL on YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXin' +
        'g=YPZL.XieXing '
      'inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  '
      
        'left join XXZLKF on XXZLKF.SheHao=KFXXZL.SheHao and KFXXZL.XieXi' +
        'ng=XXZLKF.XieXing  '
      'where YPZL.UserDate>='#39'20130911'#39' and Clzhzl.CLDH1 like '#39'V90%'#39' '
      'and KFXXZL.KHDH='#39'036'#39' '
      'and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) '
      'union all '
      
        'select '#39'Purchase'#39' as Type,CGZL.CGNO as No,Null as Mother,CLBH fr' +
        'om CGZLS '
      'inner join CGZL on CGZL.CGNO=CGZLS.CGNO '
      
        'where CGZL.GSBH='#39'CDC'#39' and CGZLS.UserDate>='#39'20130911'#39' and CGZLS.C' +
        'LBH like '#39'V90%'#39' '
      ') YPZLSAll  Group by CLBH ) YPZLS on YPZLS.CLBH=CLZL.CLDH  '
      'where CLZL.CLDH like '#39'V90%'#39' '
      'and CLZL.CLDH like '#39'%'#39
      'and CLZL.userid like '#39'%'#39
      'and (CLZL.YN='#39'2'#39
      'or CLZL.YN='#39'3'#39')'
      
        ' and ((CLZL.CLDH not like '#39'V90D%'#39' ) and (CLZL.CLDH not like '#39'V90' +
        'E%'#39' ) and (CLZL.CLDH not like '#39'V90F%'#39' ) and (CLZL.CLDH not like ' +
        #39'V90J%'#39' ) and (CLZL.CLDH not like '#39'V90K%'#39' ) and (CLZL.CLDH not l' +
        'ike '#39'V90L%'#39' ))'
      'order by CLZL.UserDate desc,YPZLS.UseCount desc'
      '')
    UpdateObject = UpSQL1
    Left = 96
    Top = 112
    object MatQueryCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object MatQueryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object MatQueryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object MatQueryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object MatQueryCLBM: TStringField
      FieldName = 'CLBM'
      FixedChar = True
      Size = 100
    end
    object MatQueryCLLB: TStringField
      FieldName = 'CLLB'
      FixedChar = True
      Size = 4
    end
    object MatQueryclzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object MatQuerylycc: TStringField
      FieldName = 'lycc'
      FixedChar = True
      Size = 1
    end
    object MatQueryxhcl: TStringField
      FieldName = 'xhcl'
      FixedChar = True
      Size = 1
    end
    object MatQueryjkcl: TStringField
      FieldName = 'jkcl'
      FixedChar = True
      Size = 1
    end
    object MatQuerygjlb: TStringField
      FieldName = 'gjlb'
      FixedChar = True
      Size = 4
    end
    object MatQuerycltd: TStringField
      FieldName = 'cltd'
      FixedChar = True
      Size = 50
    end
    object MatQuerytyjh: TStringField
      FieldName = 'tyjh'
      FixedChar = True
      Size = 1
    end
    object MatQuerycqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object MatQueryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object MatQueryUserDATE: TDateTimeField
      FieldName = 'UserDATE'
      DisplayFormat = 'YYYY/MM/DD hh:nn:ss'
    end
    object MatQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object MatQueryJHDH: TStringField
      FieldName = 'JHDH'
      FixedChar = True
      Size = 10
    end
    object MatQueryJHYWPM: TStringField
      FieldName = 'JHYWPM'
      FixedChar = True
      Size = 200
    end
    object MatQueryUseCount: TIntegerField
      FieldName = 'UseCount'
    end
    object MatQueryzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object MatQueryzsywjc: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update clzl'
      'set'
      '  zwpm = :zwpm,'
      '  ywpm = :ywpm,'
      '  dwbh = :dwbh,'
      '  clzmlb = :clzmlb,'
      '  lycc = :lycc,'
      '  xhcl = :xhcl,'
      '  jkcl = :jkcl,'
      '  gjlb = :gjlb,'
      '  cqdh = :cqdh,'
      '  cltd = :cltd,'
      '  tyjh = :tyjh,'
      '  zsdh = :zsdh,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  cldh = :OLD_cldh and'
      '  clbm = :OLD_clbm and'
      '  cllb = :OLD_cllb')
    InsertSQL.Strings = (
      'insert into clzl'
      
        '  (cldh, clbm, cllb, zwpm, ywpm, dwbh, clzmlb, lycc, xhcl, jkcl,' +
        ' gjlb, cqdh,'
      '   cltd, tyjh, zsdh, USERID, USERDATE, YN)'
      'values'
      
        '  (:cldh, :clbm, :cllb,  :zwpm, :ywpm, :dwbh, :clzmlb, :lycc, :x' +
        'hcl, :jkcl, :gjlb, :cqdh, :cltd, :tyjh, :zsdh ,:USERID, :USERDAT' +
        'E,:YN)')
    DeleteSQL.Strings = (
      'delete from clzl'
      'where'
      '  cldh = :OLD_cldh and'
      '  clbm = :OLD_clbm and'
      '  cllb = :OLD_cllb')
    Left = 96
    Top = 144
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    Left = 161
    Top = 114
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 321
    object N1: TMenuItem
      Caption = 'Lock Old'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Cancel Lock'
      OnClick = N2Click
    end
    object Combined1: TMenuItem
      Caption = 'Combined Materail'
      OnClick = Combined1Click
    end
  end
  object TWQuery: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sql2;Persist Security Info=True;Use' +
      'r ID=su2;Initial Catalog=LIY_SHOE;Data Source=192.168.2.213'
    Parameters = <>
    Left = 704
    Top = 72
  end
  object ERPQuery: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=ITErp@2022;Persist Security Info=Tr' +
      'ue;User ID=tyxuan;Initial Catalog=LIY_ERP;Data Source=192.168.23' +
      '.9'
    Parameters = <>
    Left = 704
    Top = 104
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    Left = 161
    Top = 146
  end
end
