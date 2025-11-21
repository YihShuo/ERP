object MaterialTestFD: TMaterialTestFD
  Left = 422
  Top = 108
  Width = 988
  Height = 706
  Caption = 'MaterialTestFD'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 113
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 431
      Top = 12
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 428
      Top = 44
      Width = 40
      Height = 16
      Caption = 'MatNo'
    end
    object Label4: TLabel
      Left = 140
      Top = 12
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object Label6: TLabel
      Left = 151
      Top = 44
      Width = 36
      Height = 16
      Caption = 'Stage'
    end
    object lbl1: TLabel
      Left = 263
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Supplier'
    end
    object Label3: TLabel
      Left = 248
      Top = 44
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object lbl3: TLabel
      Left = 563
      Top = 13
      Width = 18
      Height = 16
      Caption = 'FD'
    end
    object Label7: TLabel
      Left = 11
      Top = 12
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
    end
    object Label8: TLabel
      Left = 2
      Top = 44
      Width = 55
      Height = 16
      Caption = 'Category'
    end
    object Label9: TLabel
      Left = 902
      Top = 8
      Width = 204
      Height = 19
      Caption = 'If Prod Used='#39'Y'#39' and Same Parts'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 958
      Top = 27
      Width = 86
      Height = 19
      Caption = 'No need Test '
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 681
      Top = 8
      Width = 64
      Height = 26
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 469
      Top = 8
      Width = 88
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 469
      Top = 40
      Width = 87
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object Button2: TButton
      Left = 750
      Top = 8
      Width = 64
      Height = 26
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 188
      Top = 8
      Width = 53
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 315
      Top = 8
      Width = 109
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 315
      Top = 40
      Width = 109
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object Edit7: TEdit
      Left = 586
      Top = 9
      Width = 68
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 1067
      Top = 36
      Width = 97
      Height = 17
      Caption = 'color'
      TabOrder = 8
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 562
      Top = 37
      Width = 351
      Height = 36
      Columns = 6
      ItemIndex = 5
      Items.Strings = (
        'New'
        'Under'
        'Pass'
        'Fail'
        'Limited'
        'All')
      TabOrder = 9
    end
    object CKBSel: TCheckBox
      Left = 1067
      Top = 54
      Width = 127
      Height = 17
      Caption = 'Selected Only'
      TabOrder = 14
      Visible = False
    end
    object cbb2: TComboBox
      Left = 57
      Top = 8
      Width = 77
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        ''
        'Inline'
        'SMU')
    end
    object cbb1: TComboBox
      Left = 57
      Top = 40
      Width = 78
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        ''
        'Sports'
        'Originals')
    end
    object Cmb_Stage: TComboBox
      Left = 188
      Top = 40
      Width = 57
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 11
      Items.Strings = (
        ''
        'SEE'
        'CR1'
        'CR2'
        'PSE'
        'SMS'
        'SM1'
        'SM2'
        'MCS'
        'SMU'
        'SU2'
        'SU3')
    end
    object BBTT2: TBitBtn
      Left = 653
      Top = 9
      Width = 19
      Height = 25
      Caption = '...'
      TabOrder = 7
      OnClick = BBTT2Click
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 72
      Width = 89
      Height = 17
      Caption = 'Send Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object DPT1: TDateTimePicker
      Left = 96
      Top = 68
      Width = 129
      Height = 24
      Date = 41305.714771041670000000
      Time = 41305.714771041670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DPT2: TDateTimePicker
      Left = 232
      Top = 68
      Width = 129
      Height = 24
      Date = 41305.714771041670000000
      Time = 41305.714771041670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object edtFD_remark: TEdit
      Left = 760
      Top = 80
      Width = 153
      Height = 24
      TabOrder = 18
    end
    object DPT_userdate: TDateTimePicker
      Left = 560
      Top = 80
      Width = 97
      Height = 24
      Date = 41414.330971851850000000
      Format = 'yyyy/MM/dd'
      Time = 41414.330971851850000000
      TabOrder = 19
    end
    object chk_FD_Remark: TCheckBox
      Left = 664
      Top = 84
      Width = 92
      Height = 17
      Caption = 'FD_Remark'
      TabOrder = 20
    end
    object chk_userdate: TCheckBox
      Left = 478
      Top = 84
      Width = 81
      Height = 17
      Caption = 'User Date'
      TabOrder = 21
    end
    object btnexcel: TButton
      Left = 820
      Top = 8
      Width = 74
      Height = 26
      Caption = 'Excel New'
      TabOrder = 22
      OnClick = btnexcelClick
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 113
    Width = 972
    Height = 555
    ActivePage = TS1
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = '1.By Material'
      object Splitter1: TSplitter
        Left = 0
        Top = 235
        Width = 964
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 964
        Height = 235
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
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
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        OnDrawColumnCell = DBGrid1DrawColumnCell
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
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 322
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 97
          end
          item
            ButtonStyle = cbsNone
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'FDSentDate'
            Footers = <>
            Title.Caption = 'FD SentDate'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'FormCode'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Form Code'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'SentDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Lab GetDate'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'UNDERTEST'
            Footers = <>
            MaxWidth = 40
            ReadOnly = True
            Title.Caption = 'Under Test'
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'PASS'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pass'
            Title.TitleButton = True
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'FAIL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Fail'
            Title.TitleButton = True
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Limited'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Ltd.Pass'
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'Guarantee'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Prod'
            Footers = <>
            MaxWidth = 1
            Title.Caption = 'Prod Used'
            Width = 0
          end
          item
            EditButtons = <>
            FieldName = 'TestReportCode'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Test Rep.NO'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'TestReportDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Test Rep.Date'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'REMARK'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Fail Items'
            Title.TitleButton = True
            Width = 93
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PDMCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PDM Material_ID'
            Title.TitleButton = True
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'time'
            Footers = <>
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'srtype'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'color_'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Title.Caption = 'User Date'
            WordWrap = True
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Caption = 'Updated User'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Visible = False
            Width = 32
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'FDRemark'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'FD Remark'
            Width = 100
          end>
      end
      object edt1: TEdit
        Left = 504
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 238
        Width = 964
        Height = 289
        Align = alBottom
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 437
          Top = 1
          Height = 287
          Color = clSkyBlue
          ParentColor = False
        end
        object pnl1: TPanel
          Left = 440
          Top = 1
          Width = 523
          Height = 287
          Align = alClient
          BorderStyle = bsSingle
          TabOrder = 1
          object pnl2: TPanel
            Left = 1
            Top = 136
            Width = 517
            Height = 17
            Align = alTop
            TabOrder = 2
            object chk_TestReport: TCheckBox
              Left = 5
              Top = 3
              Width = 198
              Height = 17
              Caption = 'Show Testing Report File'
              Checked = True
              Color = clSkyBlue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 0
              OnClick = chk_TestReportClick
              OnMouseDown = chk_TestReportMouseDown
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 153
            Width = 517
            Height = 129
            Align = alClient
            DataSource = DS_TestReport
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            PopupMenu = pm1
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
                FieldName = 'cldh'
                Footers = <>
                Visible = False
                Width = 78
              end
              item
                ButtonStyle = cbsNone
                Color = clMoneyGreen
                DropDownRows = 3
                EditButtons = <>
                FieldName = 'Result'
                Footers = <>
                PickList.Strings = (
                  'Pass'
                  'Fail'
                  'Guarantee')
                Width = 51
              end
              item
                ButtonStyle = cbsNone
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'SendDate'
                Footers = <>
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'File_Name'
                Footers = <>
                ReadOnly = True
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'File_Size'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'UserDate'
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'User ID'
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'ZipReport'
                Footers = <>
                ReadOnly = True
                Visible = False
              end>
          end
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 517
            Height = 16
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Test History'
            TabOrder = 0
          end
          object dbgrdh2: TDBGridEh
            Left = 1
            Top = 17
            Width = 517
            Height = 119
            Align = alTop
            Color = cl3DLight
            DataSource = ds_CLZLTEST
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'time'
                Footers = <>
                Width = 28
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'FDSentDate'
                Footers = <>
                Width = 69
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'SentDate'
                Footers = <>
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'undertest'
                Footers = <>
                Title.Caption = 'Under'
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'pass'
                Footers = <>
                Title.Caption = 'Pass'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'fail'
                Footers = <>
                Title.Caption = 'Fail'
                Width = 24
              end
              item
                EditButtons = <>
                FieldName = 'Limited'
                Footers = <>
                Title.Caption = 'Ltd.Pass'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'Guarantee'
                Footers = <>
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'TestReportCode'
                Footers = <>
                Width = 66
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'TestReportDate'
                Footers = <>
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'REMARK'
                Footers = <>
                Title.Caption = 'Fail Items'
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                Width = 41
              end>
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 436
          Height = 287
          Align = alLeft
          TabOrder = 0
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 434
            Height = 14
            Align = alTop
            Alignment = taLeftJustify
            Caption = '    Develop Season'
            TabOrder = 0
          end
          object Panel5: TPanel
            Left = 1
            Top = 140
            Width = 434
            Height = 16
            Align = alTop
            Alignment = taLeftJustify
            Caption = '      Show Production Article'
            Color = clScrollBar
            TabOrder = 2
            object Chk_Production: TCheckBox
              Left = 3
              Top = 0
              Width = 16
              Height = 17
              TabOrder = 0
              OnClick = Chk_ProductionClick
            end
          end
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 15
            Width = 434
            Height = 125
            Align = alTop
            Color = cl3DLight
            DataSource = ds_article
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ReadOnly = True
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
                FieldName = 'article'
                Footer.FieldName = 'article'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Article'
                Title.TitleButton = True
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'JiJie'
                Footers = <>
                Title.TitleButton = True
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Title.TitleButton = True
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'DEVCODE'
                Footers = <>
                Title.TitleButton = True
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'GENDER'
                Footers = <>
                Title.TitleButton = True
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'srtype'
                Footers = <>
                Title.TitleButton = True
                Visible = False
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'zsywjc'
                Footers = <>
                Title.Caption = 'Supplier'
                Title.TitleButton = True
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'BWMC'
                Footers = <>
                Title.TitleButton = True
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'DevType'
                Footers = <>
                Title.TitleButton = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Category'
                Footers = <>
                Title.TitleButton = True
                Width = 49
              end>
          end
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 156
            Width = 434
            Height = 130
            Align = alClient
            Color = clScrollBar
            DataSource = DS_Production
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'Article'
                Title.Color = clScrollBar
                Title.TitleButton = True
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'JiJie'
                Footers = <>
                Title.Color = clScrollBar
                Title.TitleButton = True
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Title.Color = clScrollBar
                Title.TitleButton = True
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Footers = <>
                Title.Caption = 'ShoeName'
                Title.Color = clScrollBar
                Title.TitleButton = True
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Title.Color = clScrollBar
                Title.TitleButton = True
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'BWMC'
                Footers = <>
                Title.Caption = 'Parts'
                Title.Color = clScrollBar
                Title.TitleButton = True
                Width = 105
              end>
          end
        end
      end
      object Memo1: TMemo
        Left = 64
        Top = 72
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 3
      end
    end
    object TS2: TTabSheet
      Caption = '2.By Article'
      ImageIndex = 1
      object spl1: TSplitter
        Left = 225
        Top = 27
        Height = 500
        Color = clSkyBlue
        ParentColor = False
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 27
        Width = 225
        Height = 500
        Align = alLeft
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
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
            FieldName = 'article'
            Footer.FieldName = 'article'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            Title.Caption = 'Shoename'
            Title.TitleButton = True
            Width = 101
          end>
      end
      object DBGridEh1: TDBGridEh
        Left = 228
        Top = 27
        Width = 736
        Height = 500
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
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
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh1CellClick
        OnDrawColumnCell = DBGridEh1DrawColumnCell
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
            Title.TitleButton = True
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 410
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'UNDERTEST'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Under Test'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'PASS'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pass'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'FAIL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Fail'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'REMARK'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Remark'
            Title.TitleButton = True
            Width = 201
          end
          item
            EditButtons = <>
            FieldName = 'PDMCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PDM CODE'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'srtype'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'color_'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 152
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 964
        Height = 27
        Align = alTop
        TabOrder = 0
        object Button3: TButton
          Left = 7
          Top = 4
          Width = 64
          Height = 20
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
      end
    end
    object TS3: TTabSheet
      Caption = 'All Test Data'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 964
        Height = 527
        Align = alClient
        DataSource = DS_ALL
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
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
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'jijie'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.TitleButton = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 400
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'FormCode'
            Footers = <>
            Title.Caption = 'Form Code'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'SentDate'
            Footers = <>
            Title.Caption = 'Lab GetDate'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'UNDERTEST'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Under Test'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'PASS'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pass'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'FAIL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Fail'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'Guarantee'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'TestReportCode'
            Footers = <>
            Title.Caption = 'Test Rep. No'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'TestReportDate'
            Footers = <>
            Title.Caption = 'Test  Rep.Date'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'REMARK'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Remark'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PDMCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PDM  Material ID'
            Title.TitleButton = True
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'srtype'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'color_'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 32
          end>
      end
    end
    object ts4: TTabSheet
      Caption = 'What'#39's ST?'
      ImageIndex = 3
      object mmo1: TMemo
        Left = 0
        Top = 41
        Width = 964
        Height = 486
        Align = alClient
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = []
        Lines.Strings = (
          'Test method   Test description                 Machinery'
          
            '----------------------------------------------------------------' +
            '------'
          'ST-02         Tear strength                    Tensile machine'
          'ST-03         Tensile strength                 Tensile machine'
          'ST-04         Stitch tear resistance           Tensile machine'
          'ST-05         Seam strength                    Tensile machine'
          'ST-06         Adhesion test                    Tensile machine'
          'ST-07         Strength test on Velcro closures Tensile machine'
          'ST-08         Pressure stability               Tensile machine'
          'ST-09         Slip resistance of laces         Tensile machine'
          'ST-10         Adhesion of textile packages     Tensile machine'
          'ST-11         Bending strength                 Tensile machine'
          'ST-12         Lace end strength                Tensile machine'
          'ST-16         Strength test on zipper          Tensile machine'
          'ST-17         Slippery test                    Tensile machine'
          'ST-18         Magnetic strength                Tensile machine'
          'ST-22         Dome test                        Tensile machine')
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 964
        Height = 41
        Align = alTop
        TabOrder = 0
        object lbl2: TLabel
          Left = 34
          Top = 10
          Width = 218
          Height = 20
          Caption = 'ST =Strength test methods'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object ts5: TTabSheet
      Caption = 'What'#39's FT?'
      ImageIndex = 4
      object mmo2: TMemo
        Left = 0
        Top = 41
        Width = 964
        Height = 486
        Align = alClient
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = []
        Lines.Strings = (
          'Test method   Test description                 Machinery'
          
            '----------------------------------------------------------------' +
            '-------------'
          
            'FT-00         Fastness test evaluation         Multilight compar' +
            'ison box'
          
            'FT-02         Migration fastness               Migration fastnes' +
            's tester'
          'FT-05         Nitrogen oxide test              Lab exhauster'
          'FT-06         Non marking test       '
          
            'FT-07         Heat Aging                       Air-circulating o' +
            'ven'
          
            'FT-08         Courtauld test                   Courtauld test ki' +
            't'
          
            'FT-10         Color migration textile          Air-circulating o' +
            'ven'
          
            'FT-11         Sun test                         Atlas Sun test XL' +
            'S+')
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 964
        Height = 41
        Align = alTop
        TabOrder = 0
        object lbl6: TLabel
          Left = 34
          Top = 10
          Width = 221
          Height = 20
          Caption = 'FT =Fastness test methods'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object ts6: TTabSheet
      Caption = 'What'#39's GE?'
      ImageIndex = 5
      object mmo3: TMemo
        Left = 0
        Top = 41
        Width = 964
        Height = 486
        Align = alClient
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = []
        Lines.Strings = (
          'Test method   Test description                     Machinery'
          
            '----------------------------------------------------------------' +
            '---------------------------------'
          'GE-01         Identification of materials          Lab exhauster'
          
            'GE-03         Conditioning of polymer materials    Air-circulati' +
            'ng oven'
          'GE-04         Corrosion resistance of metal parts  '
          
            'GE-05         Material thickness                   Thickness gau' +
            'ge'
          'GE-06         Thickness of coating        '
          
            'GE-07         Material weight                      Electronic sc' +
            'ale'
          
            'GE-08         Hydrolysis test                      Humidity cham' +
            'ber'
          
            'GE-09         Hardness measurement                 Hardness gaug' +
            'e'
          
            'GE-11         Bending test                         Ross flexing ' +
            'apparatus (shoe bending tester)'
          
            'GE-12         Resilience                           Resilience te' +
            'ster'
          
            'GE-14         Determination of Foam density        Electronic sc' +
            'ale'
          
            'GE-15         Determination of density             Electronic sc' +
            'ale/ density measurement jar'
          
            'GE-16         Shrinkage test                       Air-circulati' +
            'ng oven'
          
            'GE-22         Cracking of grain                    Hand-lastomet' +
            'er'
          
            'GE-24         Flexometer test                      Bally flexome' +
            'ter'
          
            'GE-27         DIN abrasion                         DIN abrasion ' +
            'tester'
          
            'GE-28         Taber abrasion                       Taber abrasio' +
            'n tester'
          'GE-29         Rubbing fastness                     Veslic tester'
          
            'GE-30         Lace abrasion                        PFI lace test' +
            'er'
          'GE-32         Number of ply       '
          'GE-33         Number of twists                     Microscope'
          
            'GE-34         Linear density of one yarn           Electronic sc' +
            'ale'
          
            'GE-38         Blooming test                        Humidity cham' +
            'ber'
          'GE-56         Water wicking test    '
          
            'GE-63         Martindale abrasion                  Martindale ab' +
            'rasion tester'
          'GE-72         Twist resistance of zipper')
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object pnl5: TPanel
        Left = 0
        Top = 0
        Width = 964
        Height = 41
        Align = alTop
        TabOrder = 0
        object lbl4: TLabel
          Left = 34
          Top = 10
          Width = 216
          Height = 20
          Caption = 'GE =General test methods'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '    select CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN' +
        '.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.' +
        'FAIL,CLZLTEST.Limited,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTES' +
        'T.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID'
      
        '           ,FDSentDate,FormCode,SentDate,TestReportCode,TestRepo' +
        'rtDate,CLZLTEST.FDRemark'
      '    from CGZLSS '
      '    left join CLZL  on CLZl.CLDH=CGZLSS.CLBH'
      '    left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH    '
      '    left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB    '
      '    left join CGZL  on CGZl.CGNO=CGZLSS.CGNO '
      '    left join zszl on zszl.zsdh=CGZl.ZSBH '
      '    left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE'
      '    where 1=2  '
      
        '    group by CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLS' +
        'VN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTES' +
        'T.FAIL,CLZLTEST.Limited,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLT' +
        'EST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID,FDSentDate,FormCod' +
        'e,SentDate,TestReportCode,TestReportDate,CLZLTEST.FDRemark'
      '')
    UpdateObject = UpSql1
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      DisplayLabel = 'Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1start: TStringField
      FieldName = 'start'
      FixedChar = True
      Size = 2
    end
    object Query1stop: TStringField
      FieldName = 'stop'
      FixedChar = True
      Size = 2
    end
    object Query1color_: TStringField
      FieldKind = fkCalculated
      FieldName = 'color_'
      Size = 50
      Calculated = True
    end
    object Query1srtype: TStringField
      FieldName = 'srtype'
      Size = 1
    end
    object Query1UNDERTEST: TBooleanField
      FieldName = 'UNDERTEST'
      OnChange = Query1UNDERTESTChange
    end
    object Query1PASS: TBooleanField
      FieldName = 'PASS'
      OnChange = Query1PASSChange
    end
    object Query1FAIL: TBooleanField
      FieldName = 'FAIL'
      OnChange = Query1FAILChange
    end
    object Query1REMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 100
    end
    object Query1PDMCODE: TStringField
      DisplayLabel = 'PDM Material ID'
      FieldName = 'PDMCODE'
      FixedChar = True
      Size = 30
    end
    object Query1USERDATE: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
    end
    object Query1USERID: TStringField
      DisplayLabel = 'User'
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1FormCode: TStringField
      FieldName = 'FormCode'
      FixedChar = True
    end
    object Query1SentDate: TDateTimeField
      FieldName = 'SentDate'
    end
    object Query1TestReportCode: TStringField
      FieldName = 'TestReportCode'
      FixedChar = True
      Size = 50
    end
    object Query1TestReportDate: TDateTimeField
      FieldName = 'TestReportDate'
    end
    object dtmfldQuery1FDSentDate: TDateTimeField
      FieldName = 'FDSentDate'
    end
    object Query1Guarantee: TBooleanField
      DisplayLabel = 'Supplier Guarantee'
      FieldName = 'Guarantee'
    end
    object Query1time: TIntegerField
      FieldName = 'time'
    end
    object Query1Prod: TBooleanField
      FieldName = 'Prod'
    end
    object Query1Limited: TBooleanField
      FieldName = 'Limited'
    end
    object Query1FDRemark: TStringField
      FieldName = 'FDRemark'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Qry_Cal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select nrywsm from cllbzlss where 1=2')
    Left = 584
    Top = 168
  end
  object ds_article: TDataSource
    DataSet = qry_article
    Left = 324
    Top = 628
  end
  object qry_article: TQuery
    DatabaseName = 'dB'
    DataSource = DS1
    SQL.Strings = (
      
        'select kfxxzl.jijie.ypzl.article,cg.cgdate,cg.yqdate,cg.eta,cg.r' +
        'kdate,cg.cgno,zszl.zsywjc,kfxxzl.FD,kfxxzl.DevType,kfxxzl.Catego' +
        'ry,kfxxzl.DEVCODE,kfxxzl.GENDER from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join '
      
        '(select cs.zlbh,cgzl.cgdate,cgzls.CFMdate as yqdate,cgzls.ETA,KC' +
        'RK.Userdate as rkdate,cgzls.cgno from cgzlss cs'
      'left join cgzl on cgzl.cgno=cs.cgno'
      'left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh'
      'left join kcrk on kcrk.zsno=cs.cgno'
      'where  1=2'
      ') cg on cg.zlbh=ypzl.article'
      'where 1=2'
      
        'group by kfxxzl.jijie,ypzl.article,cg.cgdate,cg.yqdate,cg.eta,cg' +
        '.rkdate,cg.cgno,zszl.zsywjc,kfxxzl.FD,kfxxzl.DevType,kfxxzl.Cate' +
        'gory,kfxxzl.DEVCODE,kfxxzl.GENDER'
      '')
    Left = 292
    Top = 628
    object strngfldqry4article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object strngfldqry4zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qry_articleFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry_articleDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object qry_articleCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object qry_articleDEVCODE: TStringField
      DisplayLabel = 'DevCode'
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object qry_articleGENDER: TStringField
      DisplayLabel = 'Gender'
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qry_articleJiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
    end
    object qry_articleBWMC: TStringField
      DisplayLabel = 'Parts'
      FieldName = 'BWMC'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 528
    Top = 168
    object S1: TMenuItem
      Caption = 'Modify'
      OnClick = S1Click
    end
    object S2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = S2Click
    end
    object S3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = S3Click
    end
    object S4: TMenuItem
      Caption = 'Export'
      OnClick = S4Click
    end
    object S5: TMenuItem
      Caption = 'Test history '
      OnClick = S5Click
    end
  end
  object UpSql1: TUpdateSQL
    Left = 424
    Top = 192
  end
  object qry1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.jijie,kfxxzl.article,kfxxzl.xieming,'#39'CR2'#39' as stage' +
        ' ,FD,isnull(yl.recs,0) as recs from KFXXZL'
      'left join ('
      
        'select article,kfjd,count(article) as recs from  ypzl group by a' +
        'rticle,kfjd ) yl on yl.article=kfxxzl.article and yl.kfjd='#39'CR2'#39
      'where 1=2')
    Left = 185
    Top = 362
    object strngfldqry1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object strngfldqry1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object strngfldqry1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object strngfldqry1stage: TStringField
      FieldName = 'stage'
    end
    object qry1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qry1
    Left = 185
    Top = 322
  end
  object DataSource2: TDataSource
    DataSet = qry2
    Left = 232
    Top = 317
  end
  object qry2: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        '    select CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN' +
        '.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.' +
        'FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE'
      '    from CGZLSS '
      '    left join CLZL  on CLZl.CLDH=CGZLSS.CLBH'
      '    left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH    '
      '    left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB    '
      '    left join CGZL  on CGZl.CGNO=CGZLSS.CGNO '
      '    left join zszl on zszl.zsdh=CGZl.ZSBH '
      '    left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE'
      '    where 1=2  '
      
        '    group by CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLS' +
        'VN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTES' +
        'T.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE'
      '')
    Left = 232
    Top = 365
    object StringField1: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      DisplayLabel = 'Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField3: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField4: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'start'
      FixedChar = True
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'stop'
      FixedChar = True
      Size = 2
    end
    object StringField7: TStringField
      FieldKind = fkCalculated
      FieldName = 'color_'
      Size = 50
      Calculated = True
    end
    object StringField8: TStringField
      FieldName = 'srtype'
      Size = 1
    end
    object BooleanField1: TBooleanField
      FieldName = 'UNDERTEST'
    end
    object BooleanField2: TBooleanField
      FieldName = 'PASS'
    end
    object BooleanField3: TBooleanField
      FieldName = 'FAIL'
    end
    object StringField9: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'PDMCODE'
      FixedChar = True
    end
  end
  object qry3: TQuery
    DatabaseName = 'dB'
    Left = 428
    Top = 237
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 532
    Top = 200
  end
  object DS_ALL: TDataSource
    DataSet = Qry_ALL
    Left = 656
    Top = 192
  end
  object Qry_ALL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '    select CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN' +
        '.start,CLLBZLSVN.stop,CLZLTEST.Guarantee,CLZLTEST.UNDERTEST,CLZL' +
        'TEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTES' +
        'T.USERDATE,CLZLTEST.USERID'
      '           ,FormCode,SentDate,TestReportCode,TestReportDate'
      '    from CGZLSS '
      '    left join CLZL  on CLZl.CLDH=CGZLSS.CLBH'
      '    left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH    '
      '    left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB    '
      '    left join CGZL  on CGZl.CGNO=CGZLSS.CGNO '
      '    left join zszl on zszl.zsdh=CGZl.ZSBH '
      '    left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE'
      '    where 1=2  '
      
        '    group by CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLS' +
        'VN.start,CLLBZLSVN.stop,CLZLTEST.Guarantee,CLZLTEST.UNDERTEST,CL' +
        'ZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLT' +
        'EST.USERDATE,CLZLTEST.USERID,FormCode,SentDate,TestReportCode,Te' +
        'stReportDate'
      '')
    Left = 656
    Top = 224
    object StringField11: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      DisplayLabel = 'Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField13: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField14: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object StringField15: TStringField
      FieldName = 'start'
      FixedChar = True
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'stop'
      FixedChar = True
      Size = 2
    end
    object StringField17: TStringField
      FieldKind = fkCalculated
      FieldName = 'color_'
      Size = 50
      Calculated = True
    end
    object StringField18: TStringField
      FieldName = 'srtype'
      Size = 1
    end
    object BooleanField4: TBooleanField
      FieldName = 'UNDERTEST'
      OnChange = Query1UNDERTESTChange
    end
    object BooleanField5: TBooleanField
      FieldName = 'PASS'
      OnChange = Query1PASSChange
    end
    object BooleanField6: TBooleanField
      FieldName = 'FAIL'
      OnChange = Query1FAILChange
    end
    object StringField19: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 100
    end
    object StringField20: TStringField
      DisplayLabel = 'PDM Material ID'
      FieldName = 'PDMCODE'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
    end
    object StringField21: TStringField
      DisplayLabel = 'User'
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object StringField22: TStringField
      FieldName = 'FormCode'
      FixedChar = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'SentDate'
    end
    object StringField23: TStringField
      FieldName = 'TestReportCode'
      FixedChar = True
      Size = 50
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'TestReportDate'
    end
    object Qry_ALLARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object Qry_ALLFD: TStringField
      FieldName = 'FD'
      Size = 10
    end
    object Qry_ALLjijie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'jijie'
      Size = 10
    end
    object Qry_ALLGuarantee: TBooleanField
      DisplayLabel = 'Supplier Guarantee'
      FieldName = 'Guarantee'
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 651
    Top = 152
  end
  object qry4: TQuery
    DatabaseName = 'dB'
    Left = 756
    Top = 213
  end
  object Qry_TestReport: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select cldh,Result,SendDate,USERDATE,USERID,File_Name,ZipReport,' +
        'File_Size  from CLZLTEST_REPORT'
      'where cldh=:clbh')
    UpdateObject = UpdateSQL1
    Left = 512
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end>
    object Qry_TestReportcldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.CLZLTEST_REPORT.cldh'
      FixedChar = True
      Size = 50
    end
    object Qry_TestReportResult: TStringField
      FieldName = 'Result'
      Origin = 'DB.CLZLTEST_REPORT.Result'
      FixedChar = True
      Size = 10
    end
    object Qry_TestReportSendDate: TDateTimeField
      FieldName = 'SendDate'
      Origin = 'DB.CLZLTEST_REPORT.SendDate'
    end
    object Qry_TestReportUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CLZLTEST_REPORT.USERDATE'
    end
    object Qry_TestReportUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CLZLTEST_REPORT.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_TestReportFile_Name: TStringField
      FieldName = 'File_Name'
      Origin = 'DB.CLZLTEST_REPORT.File_Name'
      FixedChar = True
      Size = 50
    end
    object Qry_TestReportFile_Size: TFloatField
      FieldName = 'File_Size'
      Origin = 'DB.CLZLTEST_REPORT.File_Size'
    end
  end
  object DS_TestReport: TDataSource
    DataSet = Qry_TestReport
    Left = 544
    Top = 648
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CLZLTEST_REPORT'
      'set'
      '  cldh = :cldh,'
      '  Result = :Result,'
      '  SendDate = :SendDate,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID'
      'where'
      '  cldh = :OLD_cldh and'
      '  Result = :OLD_Result and '
      '  SendDate = :OLD_SendDate')
    InsertSQL.Strings = (
      'insert into CLZLTEST_REPORT'
      '  (cldh, Result, SendDate, USERDATE, USERID, File_Name )'
      'values'
      '  (:cldh, :Result, :SendDate, :USERDATE, :USERID, :File_Name )')
    DeleteSQL.Strings = (
      'delete from CLZLTEST_REPORT'
      'where'
      '  cldh = :OLD_cldh and'
      '  Result = :OLD_Result and '
      '  SendDate = :OLD_SendDate')
    Left = 584
    Top = 640
  end
  object pm1: TPopupMenu
    Left = 636
    Top = 690
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuItem1: TMenuItem
      Caption = 'Upload'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Download'
      OnClick = MenuItem2Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 684
    Top = 690
  end
  object Qry_Production: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select XXZL.ARTICLE,XXZLS.XIEXING,XXZLS.SHEHAO,XXZLS.CLBH,XXZLS.' +
        'BWBH,XXZLS.USERID,XXZLS.USERDATE,kfxxzl.FD,XXZL.JiJie,XieMing,BW' +
        'ZL.ywsm BWMC,ZSZL.ZSYWJC'
      '  from  XXZLS'
      
        '  left join XXZL   ON XXZLS.XIEXING=XXZL.XIEXING AND  XXZLS.SHEH' +
        'AO=XXZL.SHEHAO'
      
        '  left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHa' +
        'o=kfxxzl.SheHao'
      '  LEFT JOIN BWZL   ON XXZLS.BWBH=BWZL.bwdh'
      '  left join ZSZL on  ZSZL.ZSDH=XXZLS.CSBH'
      '  WHERE LEFT(XXZLS.XIEXING,1)='#39'A'#39' AND XXZLS.CLBH=:CLBH'
      ''
      ' UNION ALL'
      ''
      
        'select XXZL.ARTICLE,XXZLS.XIEXING,XXZLS.SHEHAO,XXZLS.CLBH,XXZLS.' +
        'BWBH,XXZLS.USERID,XXZLS.USERDATE,kfxxzl.FD,XXZL.JiJie,XieMing,BW' +
        'ZL.ywsm BWMC,ZSZL.ZSYWJC'
      '  from  XXZLS'
      
        '  left join XXZL ON XXZLS.XIEXING=XXZL.XIEXING AND XXZLS.SHEHAO=' +
        'XXZL.SHEHAO'
      
        '  left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHa' +
        'o=kfxxzl.SheHao'
      '  LEFT JOIN BWZL  ON XXZLS.BWBH=BWZL.bwdh'
      '  left join ZSZL on  ZSZL.ZSDH=XXZLS.CSBH'
      
        ' WHERE LEFT(XXZLS.XIEXING,1)='#39'A'#39' AND exists (SELECT  CLDH FROM C' +
        'LZHZL WHERE CLZHZL.CLDH=XXZLS.CLBH  and CLDH1=:CLBH )'
      ''
      '')
    Left = 296
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Qry_ProductionARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Qry_ProductionXIEXING: TStringField
      FieldName = 'XIEXING'
      FixedChar = True
      Size = 15
    end
    object Qry_ProductionSHEHAO: TStringField
      FieldName = 'SHEHAO'
      FixedChar = True
      Size = 5
    end
    object Qry_ProductionCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ProductionBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ProductionUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Qry_ProductionUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Qry_ProductionFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Qry_ProductionJiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Qry_ProductionXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Qry_ProductionBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object Qry_ProductionZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DS_Production: TDataSource
    DataSet = Qry_Production
    Left = 328
    Top = 584
  end
  object ds_CLZLTEST: TDataSource
    DataSet = Qry_CLZLTEST
    Left = 818
    Top = 181
  end
  object Qry_CLZLTEST: TQuery
    DatabaseName = 'dB'
    DataSource = DS1
    SQL.Strings = (
      'select * from CLZLTEST'
      'where  cldh=:CLBH'
      '')
    Left = 820
    Top = 212
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Qry_CLZLTESTcldh: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'cldh'
      Origin = 'DB.CLZLTEST.cldh'
      FixedChar = True
      Size = 50
    end
    object Qry_CLZLTESTFormCode: TStringField
      DisplayLabel = 'Form Code'
      FieldName = 'FormCode'
      Origin = 'DB.CLZLTEST.FormCode'
      FixedChar = True
    end
    object Qry_CLZLTESTFDSentDate: TDateTimeField
      DisplayLabel = 'FD SentDate'
      FieldName = 'FDSentDate'
      Origin = 'DB.CLZLTEST.FDSentDate'
    end
    object Qry_CLZLTESTSentDate: TDateTimeField
      DisplayLabel = 'Lab GetDate'
      FieldName = 'SentDate'
      Origin = 'DB.CLZLTEST.SentDate'
    end
    object Qry_CLZLTESTundertest: TBooleanField
      DisplayLabel = 'Under test'
      FieldName = 'undertest'
      Origin = 'DB.CLZLTEST.undertest'
    end
    object Qry_CLZLTESTpass: TBooleanField
      FieldName = 'pass'
      Origin = 'DB.CLZLTEST.pass'
    end
    object Qry_CLZLTESTfail: TBooleanField
      FieldName = 'fail'
      Origin = 'DB.CLZLTEST.fail'
    end
    object Qry_CLZLTESTGuarantee: TBooleanField
      FieldName = 'Guarantee'
      Origin = 'DB.CLZLTEST.Guarantee'
    end
    object Qry_CLZLTESTTestReportCode: TStringField
      DisplayLabel = 'Test Rep.NO'
      FieldName = 'TestReportCode'
      Origin = 'DB.CLZLTEST.TestReportCode'
      FixedChar = True
      Size = 50
    end
    object Qry_CLZLTESTTestReportDate: TDateTimeField
      DisplayLabel = 'Test Rep.Date'
      FieldName = 'TestReportDate'
      Origin = 'DB.CLZLTEST.TestReportDate'
    end
    object Qry_CLZLTESTSupplier: TStringField
      FieldName = 'Supplier'
      Origin = 'DB.CLZLTEST.Supplier'
      FixedChar = True
    end
    object Qry_CLZLTESTPDMCode: TStringField
      FieldName = 'PDMCode'
      Origin = 'DB.CLZLTEST.PDMCode'
      FixedChar = True
    end
    object Qry_CLZLTESTREMARK: TStringField
      FieldName = 'REMARK'
      Origin = 'DB.CLZLTEST.REMARK'
      FixedChar = True
      Size = 100
    end
    object Qry_CLZLTESTUSERDATE: TDateTimeField
      DisplayLabel = 'User Date'
      FieldName = 'USERDATE'
      Origin = 'DB.CLZLTEST.USERDATE'
    end
    object Qry_CLZLTESTUSERID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      Origin = 'DB.CLZLTEST.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_CLZLTESTtime: TIntegerField
      DisplayLabel = 'Time'
      FieldName = 'time'
      Origin = 'DB.CLZLTEST.time'
    end
    object Qry_CLZLTESTLimited: TBooleanField
      FieldName = 'Limited'
      Origin = 'DB.CLZLTEST.Limited'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT distinct ypzls.CLBH,ypzl.ARTICLE,KFXXZL.FD'
      'FROM ypzls'
      #9#9'LEFT JOIN ypzl on ypzls.YPDH=ypzl.YPDH'
      
        #9#9'LEFT JOIN KFXXZL ON KFXXZL.xiexing=ypzl.xiexing and KFXXZL.she' +
        'hao=ypzl.shehao'
      'WHERE 1=2')
    Left = 428
    Top = 305
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT distinct ypzls.CLBH,KFXXZL.FD'
      'FROM ypzls'
      #9#9'LEFT JOIN ypzl on ypzls.YPDH=ypzl.YPDH'
      
        #9#9'LEFT JOIN KFXXZL ON KFXXZL.xiexing=ypzl.xiexing and KFXXZL.she' +
        'hao=ypzl.shehao'
      'WHERE 1=2')
    Left = 460
    Top = 305
  end
end
