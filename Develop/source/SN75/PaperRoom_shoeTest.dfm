object PaperRoom: TPaperRoom
  Left = 207
  Top = 135
  Width = 1380
  Height = 788
  Caption = 'PaperRoom'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1364
    Height = 749
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Article'
      object Label8: TLabel
        Left = 128
        Top = 192
        Width = 32
        Height = 13
        Caption = 'Label8'
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 181
        Width = 1356
        Height = 288
        Align = alTop
        Color = clHighlightText
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 6
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = pmMaspm
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnDrawColumnCell = dbgrdh1DrawColumnCell
        OnGetCellParams = dbgrdh1GetCellParams
        Columns = <
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'TBcancel'
            Footers = <>
            Title.Caption = 'TBCancel'
            Title.Color = clActiveCaption
            Width = 56
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'TBReceive'
            Footers = <>
            ReadOnly = True
            Width = 61
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'TBreceiveDate'
            Footers = <>
            ReadOnly = True
            Width = 83
          end
          item
            Color = 8454143
            EditButtons = <>
            FieldName = 'TestNo'
            Footer.FieldName = 'TestNo'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Color = 8454143
            Width = 74
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ypdh'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SampleOrder'
            Title.Color = clWindow
            Width = 109
          end
          item
            ButtonStyle = cbsEllipsis
            Color = clYellow
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SR#'
            Title.Color = clWindow
            Width = 153
            OnEditButtonClick = dbgrdh1Columns1EditButtonClick
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'Brand'
            Footers = <>
            Title.Color = clWindow
            Visible = False
            Width = 53
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'season'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Season'
            Title.Color = clWindow
            Width = 50
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'DevTp'
            Footers = <>
            PickList.Strings = (
              ''
              'Inline'
              'SMU'
              'Great@Good'
              'QuickResponse'
              'Incubate')
            ReadOnly = True
            Title.Color = clWindow
            Width = 62
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'subTp'
            Footers = <>
            PickList.Strings = (
              ''
              'Inline'
              'Great@Good'
              'QuickResponse'
              'Incubate'
              'SMU'
              'Segment')
            ReadOnly = True
            Title.Caption = 'SubTp'
            Title.Color = clWindow
            Width = 73
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'stage'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Stage'
            Title.Color = clWindow
            Title.TitleButton = True
            Width = 56
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'SeeStage'
            Footers = <>
            PickList.Strings = (
              ''
              'CR0'
              'CR1'
              'CR2'
              'SMS'
              'CR4'
              'CFM')
            Title.Color = clWindow
            Width = 62
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'seetype'
            Footers = <>
            PickList.Strings = (
              '4'
              '24'
              'N'
              'PM'
              'HT')
            Title.Caption = 'Seetype'
            Width = 46
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Purpose'
            Footers = <>
            PickList.Strings = (
              ''
              'First trial'
              'Slab test'
              'Production trial'
              'Construction trial'
              'Material trial'
              'HQ request'
              'CTS request'
              'Option trial'
              'Printing trial'
              'Pattern revise'
              'Chemical trial'
              'Foxing trial'
              'Foxing printing trial'
              'Logo trial'
              'Others')
            Title.Color = clWindow
            Width = 109
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'TestTime'
            Footers = <>
            PickList.Strings = (
              ''
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
              '15')
            Title.Caption = 'Trial time'
            Title.Color = clWindow
            Width = 60
          end
          item
            Color = clLime
            EditButtons = <>
            FieldName = 'ETC'
            Footers = <>
            Title.Color = clWindow
            Width = 80
          end
          item
            Color = clLime
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Color = clWindow
            Width = 87
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Print_Request'
            Footers = <>
            Title.Caption = 'ColorCheck|Printing Signed|Need'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'Print_Check'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ColorCheck|Printing Signed|Finish'
            Width = 47
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Rubber_Request'
            Footers = <>
            Title.Caption = 'ColorCheck|Rubber Signed|Need'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'Rubber_Check'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ColorCheck|Rubber Signed|Finish'
            Width = 40
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            ReadOnly = True
            Title.Color = clWindow
            Title.TitleButton = True
            Width = 60
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ShoeName'
            Title.Color = clWindow
            Title.TitleButton = True
            Width = 161
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'SIZ'
            Footers = <>
            PickList.Strings = (
              ' 01.0K'
              ' 01.5K'
              ' 02.0K'
              ' 02.5K'
              ' 03.0K'
              ' 03.5K'
              ' 04.0K'
              ' 04.5K'
              ' 05.0K'
              ' 05.5K'
              ' 06.0K'
              ' 06.5K'
              ' 07.0K'
              ' 07.5K'
              ' 08.0K'
              ' 08.5K'
              ' 09.0K'
              ' 09.5K'
              ' 10.0K'
              ' 10.5K'
              ' 11.0K'
              ' 11.5K'
              ' 12.0K'
              ' 12.5K'
              ' 13.0K'
              ' 13.5K'
              ' 14.0K'
              ' 14.5K'
              ' 15.0K'
              ' 15.5K'
              '01'
              '01.5'
              '02'
              '02.5'
              '03'
              '03.5'
              '04'
              '04.5'
              '05'
              '05.5'
              '06'
              '06.5'
              '07'
              '07.5'
              '08'
              '08.5'
              '09'
              '09.5'
              '10'
              '10.5'
              '11'
              '11.5'
              '12'
              '12.5'
              '13'
              '13.5'
              '14'
              '14.5'
              '15'
              '15.5')
            ReadOnly = True
            Title.Caption = 'SIZE'
            Title.Color = clWindow
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'quantity'
            Footers = <>
            Title.Caption = 'Qty|Qriginal'
            Width = 74
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'QTY'
            Footer.FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Qty|Shoe'
            Title.Color = clWindow
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'UpperQty'
            Footers = <>
            Title.Caption = 'Qty|Upper'
            Title.Color = clWindow
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'BottomQty'
            Footers = <>
            Title.Caption = 'Qty|Bottom'
            Title.Color = clWindow
            Width = 89
          end
          item
            DisplayFormat = '0.#'
            EditButtons = <>
            FieldName = 'SPQty'
            Footer.DisplayFormat = '0.#'
            Footer.FieldName = 'SPQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'ShippingTeam|Qty'
            Width = 81
          end
          item
            DisplayFormat = '0.#'
            EditButtons = <>
            FieldName = 'monthqty'
            Footer.DisplayFormat = '0.#'
            Footer.FieldName = 'monthqty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'ShippingTeam|MonthQty'
            Width = 87
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'LastNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Last #'
            Title.Color = clWindow
            Width = 58
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'DDMH'
            Footers = <>
            ReadOnly = True
            Title.Color = clWindow
            Width = 141
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'CutDieNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cutting Die No'
            Title.Color = clWindow
            Width = 91
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'Construction'
            Footers = <>
            PickList.Strings = (
              'Vulcanized'
              'ColdCement')
            Title.Color = clWindow
            Width = 75
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Color = clWindow
            Width = 91
          end
          item
            Color = clWindow
            EditButtons = <>
            FieldName = 'Memo1'
            Footers = <>
            Title.Caption = 'FD Memo'
            Title.Color = clWindow
            Width = 300
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'PreparationDate_first'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Preparation|F_Date'
            Title.Color = 8454016
            Width = 130
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'PreparationDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Preparation|Date'
            Title.Color = 8454016
            Width = 107
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Preparation|OK'
            Title.Color = 8454016
            Width = 57
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'CutDate_first'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cutting|F_Date'
            Title.Color = 8454016
            Width = 130
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'CutDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cutting|Date'
            Title.Color = 8454016
            Width = 130
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Pending_C'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cutting|OK'
            Title.Color = 8454016
            Width = 54
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'StitchingDate_first'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Stitching|F_Date'
            Title.Color = 8454016
            Width = 130
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'StitchingDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Stitching|Date'
            Title.Color = 8454016
            Width = 89
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Pending_S'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Stitching|OK'
            Title.Color = 8454016
            Width = 54
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'AssembiyDate_first'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Assembiy|F_Date'
            Title.Color = 8454016
            Width = 130
          end
          item
            Color = 8454016
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'AssembiyDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Assembiy|Date'
            Title.Color = 8454016
            Width = 97
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Pending_A'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Assembiy|OK'
            Title.Color = 8454016
            Width = 32
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Complete'
            Footers = <>
            ReadOnly = True
            Title.Color = 8454016
            Width = 72
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Memo2'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sample Memo'
            Title.Color = 8454016
            Width = 301
          end
          item
            Color = 8454016
            EditButtons = <>
            FieldName = 'Finish'
            Footers = <>
            ReadOnly = True
            Title.Color = 8454016
            Visible = False
            Width = 40
          end
          item
            Color = 16744703
            EditButtons = <>
            FieldName = 'QIP_Check'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'QIP Check'
            Title.Color = 16744703
            Width = 78
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'FD UserID'
            Title.Color = clSilver
            Width = 110
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'UserID_s'
            Footers = <>
            Title.Caption = 'Sample userid'
            Title.Color = clSilver
            Width = 71
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'UserDate_s'
            Footers = <>
            Title.Caption = 'Sample userdate'
            Title.Color = clSilver
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
            Width = 143
          end>
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 181
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lbl2: TLabel
          Left = 192
          Top = 12
          Width = 49
          Height = 16
          Caption = 'Dev TP.'
        end
        object lbl3: TLabel
          Left = 455
          Top = 12
          Width = 36
          Height = 16
          Caption = 'Stage'
        end
        object Label7: TLabel
          Left = 193
          Top = 64
          Width = 21
          Height = 16
          Caption = 'FD:'
        end
        object lbl7: TLabel
          Left = 559
          Top = 12
          Width = 50
          Height = 16
          Caption = 'Season:'
        end
        object lbl8: TLabel
          Left = 183
          Top = 42
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label1: TLabel
          Left = 307
          Top = 12
          Width = 56
          Height = 16
          Caption = 'SubType'
        end
        object Label2: TLabel
          Left = 32
          Top = 64
          Width = 29
          Height = 16
          Caption = 'SR#:'
        end
        object Label3: TLabel
          Left = 8
          Top = 12
          Width = 53
          Height = 16
          Caption = 'Test NO:'
        end
        object Label4: TLabel
          Left = 510
          Top = 42
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label5: TLabel
          Left = 328
          Top = 64
          Width = 67
          Height = 16
          Caption = 'SampleNO'
        end
        object Label6: TLabel
          Left = 149
          Top = 91
          Width = 82
          Height = 16
          Caption = 'CancelStatus:'
        end
        object Label9: TLabel
          Left = 411
          Top = 91
          Width = 27
          Height = 16
          Caption = 'CTS'
        end
        object Label10: TLabel
          Left = 24
          Top = 91
          Width = 37
          Height = 16
          Caption = 'SKU#:'
        end
        object Label11: TLabel
          Left = 329
          Top = 91
          Width = 41
          Height = 16
          Caption = 'Forzen'
        end
        object Label12: TLabel
          Left = 344
          Top = 116
          Width = 36
          Height = 16
          Caption = 'Brand'
          Visible = False
        end
        object Label14: TLabel
          Left = 230
          Top = 120
          Width = 9
          Height = 16
          Caption = '~'
        end
        object cbb2: TComboBox
          Left = 243
          Top = 8
          Width = 57
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          OnChange = cbb2Change
          Items.Strings = (
            'Inline'
            'Great@Good'
            'Quick Response'
            'Incubate'
            'SMU')
        end
        object cbb3: TComboBox
          Left = 495
          Top = 8
          Width = 57
          Height = 24
          ItemHeight = 16
          TabOrder = 1
        end
        object btn1: TButton
          Left = 672
          Top = 7
          Width = 75
          Height = 24
          Caption = 'Query'
          TabOrder = 2
          OnClick = btn1Click
        end
        object Article_edt1: TEdit
          Left = 64
          Top = 60
          Width = 113
          Height = 24
          TabOrder = 3
        end
        object FD_Edt1: TEdit
          Left = 217
          Top = 60
          Width = 105
          Height = 24
          TabOrder = 4
        end
        object Finish_chk: TCheckBox
          Left = 536
          Top = 61
          Width = 57
          Height = 17
          Caption = 'Finish'
          TabOrder = 5
        end
        object Info_chk: TCheckBox
          Left = 8
          Top = 38
          Width = 89
          Height = 17
          Caption = 'UserDate'
          TabOrder = 6
          OnClick = Info_chkClick
        end
        object dtp1: TDateTimePicker
          Left = 86
          Top = 34
          Width = 98
          Height = 24
          Date = 41675.431051550920000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431051550920000000
          TabOrder = 7
        end
        object dtp2: TDateTimePicker
          Left = 193
          Top = 34
          Width = 97
          Height = 24
          Date = 41675.431356041660000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431356041660000000
          TabOrder = 8
        end
        object usemodify: TEdit
          Left = 626
          Top = 34
          Width = 41
          Height = 24
          TabOrder = 9
          Visible = False
        end
        object Season_edt1: TComboBox
          Left = 611
          Top = 8
          Width = 57
          Height = 24
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 10
          Text = '18S'
          Items.Strings = (
            '18S')
        end
        object subtype: TComboBox
          Left = 367
          Top = 8
          Width = 81
          Height = 24
          ItemHeight = 16
          TabOrder = 11
          Items.Strings = (
            'Inline'#9
            'Great@Good'#9
            'Quick Response'#9
            'Incubate'#9
            'Segment'#9
            'SMU'#9)
        end
        object testno_edt1: TEdit
          Left = 64
          Top = 8
          Width = 120
          Height = 24
          TabOrder = 12
        end
        object Button1: TButton
          Left = 672
          Top = 33
          Width = 75
          Height = 24
          Caption = 'Excel'
          TabOrder = 13
          OnClick = Button1Click
        end
        object CheckBox1: TCheckBox
          Left = 608
          Top = 61
          Width = 57
          Height = 17
          Caption = 'Mine'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 14
        end
        object ComboBox1: TComboBox
          Left = 397
          Top = 60
          Width = 135
          Height = 24
          ItemHeight = 16
          TabOrder = 15
        end
        object DBMemo1: TDBMemo
          Left = 752
          Top = 8
          Width = 385
          Height = 128
          DataField = 'Memo1'
          DataSource = DS1
          TabOrder = 16
        end
        object DBMemo2: TDBMemo
          Left = 1144
          Top = 8
          Width = 385
          Height = 128
          Color = clScrollBar
          DataField = 'Memo2'
          DataSource = DS1
          ReadOnly = True
          TabOrder = 17
        end
        object Problem: TCheckBox
          Left = 536
          Top = 77
          Width = 97
          Height = 17
          Caption = 'Problem'
          TabOrder = 18
        end
        object CheckBox2: TCheckBox
          Left = 304
          Top = 38
          Width = 113
          Height = 17
          Caption = 'ShippingTeam'
          TabOrder = 19
          OnClick = CheckBox2Click
        end
        object dtp3: TDateTimePicker
          Left = 414
          Top = 34
          Width = 96
          Height = 24
          Date = 41675.431051550920000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431051550920000000
          TabOrder = 20
        end
        object dtp4: TDateTimePicker
          Left = 520
          Top = 34
          Width = 103
          Height = 24
          Date = 41675.431356041660000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431356041660000000
          TabOrder = 21
        end
        object CheckBox3: TCheckBox
          Left = 608
          Top = 77
          Width = 57
          Height = 17
          Caption = 'Memo'
          TabOrder = 22
        end
        object Button4: TButton
          Left = 672
          Top = 59
          Width = 75
          Height = 24
          Caption = 'Excel SS'
          TabOrder = 23
          OnClick = Button4Click
        end
        object cancelCBX: TComboBox
          Left = 234
          Top = 86
          Width = 89
          Height = 24
          ItemHeight = 16
          TabOrder = 24
          Text = 'All'
          Items.Strings = (
            'All'
            'Cancel'
            'NotCancel')
        end
        object CheckBox4: TCheckBox
          Left = 536
          Top = 93
          Width = 105
          Height = 17
          Caption = 'Fast (64 data)'
          Checked = True
          State = cbChecked
          TabOrder = 25
        end
        object Panel3: TPanel
          Left = 1
          Top = 139
          Width = 1354
          Height = 41
          Align = alBottom
          TabOrder = 26
          object DBEdit1: TDBEdit
            Left = 96
            Top = 8
            Width = 162
            Height = 24
            Color = clActiveCaption
            DataField = 'TBreceiveDate'
            DataSource = DS1
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 360
            Top = 8
            Width = 162
            Height = 24
            Color = clActiveCaption
            DataField = 'CutDate'
            DataSource = DS1
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 632
            Top = 8
            Width = 162
            Height = 24
            Color = clActiveCaption
            DataField = 'StitchingDate'
            DataSource = DS1
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 910
            Top = 8
            Width = 162
            Height = 24
            Color = clActiveCaption
            DataField = 'Complete'
            DataSource = DS1
            TabOrder = 3
          end
          object Edit1: TEdit
            Left = 8
            Top = 8
            Width = 89
            Height = 24
            Color = clInactiveCaption
            TabOrder = 4
            Text = 'ReceiveTime'
          end
          object Edit2: TEdit
            Left = 280
            Top = 8
            Width = 81
            Height = 24
            Color = clInactiveCaption
            TabOrder = 5
            Text = 'CuttingTime'
          end
          object Edit3: TEdit
            Left = 544
            Top = 8
            Width = 89
            Height = 24
            Color = clInactiveCaption
            TabOrder = 6
            Text = 'StitchingTime'
          end
          object Edit4: TEdit
            Left = 815
            Top = 8
            Width = 97
            Height = 24
            Color = clInactiveCaption
            TabOrder = 7
            Text = 'CompleteTime'
          end
        end
        object CTS_Edit: TEdit
          Left = 442
          Top = 86
          Width = 90
          Height = 24
          TabOrder = 27
        end
        object Sku_edt: TEdit
          Left = 64
          Top = 86
          Width = 81
          Height = 24
          TabOrder = 28
        end
        object Edit5: TEdit
          Left = 376
          Top = 86
          Width = 20
          Height = 24
          TabOrder = 29
          Text = '6'
        end
        object ComboBox2: TComboBox
          Left = 384
          Top = 112
          Width = 73
          Height = 24
          Style = csDropDownList
          Color = clYellow
          ItemHeight = 16
          TabOrder = 30
          Visible = False
          Items.Strings = (
            'SKX'
            'SRL')
        end
        object DTP5: TDateTimePicker
          Left = 133
          Top = 112
          Width = 98
          Height = 24
          Date = 41675.431051550920000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431051550920000000
          TabOrder = 31
        end
        object DTP6: TDateTimePicker
          Left = 240
          Top = 112
          Width = 97
          Height = 24
          Date = 41675.431356041660000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431356041660000000
          TabOrder = 32
        end
        object CheckBox5: TCheckBox
          Left = 8
          Top = 116
          Width = 121
          Height = 17
          Caption = 'TB Receive Date'
          TabOrder = 33
        end
      end
      object dbgrdh3: TDBGridEh
        Left = 0
        Top = 469
        Width = 1356
        Height = 252
        Align = alClient
        DataSource = ds3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = pm4
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Color = 8454143
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            ReadOnly = True
            Title.Color = 8454143
            Width = 74
            OnEditButtonClick = dbgrdh3Columns0EditButtonClick
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Status|NO'
            Width = 67
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Status|Eng'
            Width = 93
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Status|Chinese'
            Width = 93
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'VWSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Status|Viet'
            Width = 81
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'parts'
            Footers = <>
            Title.Caption = 'Parts|NO'
            Width = 77
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'YWSM_1'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Parts|Eng'
            Width = 98
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ZWSM_1'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Parts|Chinese'
            Width = 101
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'VWSM_1'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Parts|Viet'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footers = <
              item
                Color = 8388863
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Color = clWindow
            Width = 44
            OnUpdateData = dbgrdh3Columns1UpdateData
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'userid'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Userid'
            Title.Color = clSilver
            Width = 109
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Userdate'
            Title.Color = clSilver
            Width = 73
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Analysis'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1070
        Height = 41
        Align = alTop
        TabOrder = 0
        object Button2: TButton
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 112
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 1070
        Height = 580
        Align = alClient
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 1068
          Height = 578
          Align = alClient
          DataSource = AnalysisDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
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
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'TestNo'
              Footer.ValueType = fvtCount
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Width = 277
            end
            item
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Width = 190
            end
            item
              EditButtons = <>
              FieldName = 'SampleOrder'
              Footers = <>
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'Developer'
              Footers = <>
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'Shipping'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'Finished_Shoes_Test'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 167
            end
            item
              EditButtons = <>
              FieldName = 'Fit_Test'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'Wear_Test'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'Keeping'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Social_Sample'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 122
            end
            item
              EditButtons = <>
              FieldName = 'Tech_Team'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'Half_Stitching_Upper'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 164
            end
            item
              EditButtons = <>
              FieldName = 'Lasted_Upper'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 112
            end
            item
              EditButtons = <>
              FieldName = 'Upper_Component'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 146
            end
            item
              EditButtons = <>
              FieldName = 'Bottom_Component'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 155
            end
            item
              EditButtons = <>
              FieldName = 'TW_BY'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'QC_CFM'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'Memo1'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Memo2'
              Footers = <>
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Memo'
      ImageIndex = 2
      object Memo: TMemo
        Left = 0
        Top = 0
        Width = 1356
        Height = 721
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'ETC: Developer hope when can finish this TestNO'
          'UserDate:When this TestNo  be create '
          'ShipDate:When will this TestNO be ship'
          ''
          'if SampleOrder is LAIV and Original Qty is 0  '
          'or'
          'SampleOrder is LAIV and Original Qty < Shoe+Upper+Bottom '
          'then background will be green')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DS1: TDataSource
    DataSet = masqry
    Left = 64
    Top = 280
  end
  object masqry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select top 64'
      'kfxxzl.DDMH'
      ',isnull(shoetest.ypdh,'#39#39') as ypdh'
      ',kfxxzl.XieMing'
      ',kfxxzl.JiJie as season'
      ',kfzl.kfjc as brand'
      ',YPZL.FD'
      ',shoetest.TestNo'
      ',shoetest.Article'
      ',kfxxzl.DevType as DevTp'
      ',YPZL.SubType as subTp'
      ',YPZL.KFJD as stage'
      ',TestTime'
      ',YPZL.YPCC as SIZ'
      ',ypzl.quantity'
      ',SPQty'
      ',shoetestshippingmonth.monthqty'
      ',isnull(shoe.ShoeQTY,0)as QTY'
      ',isnull(upper.UpperQty,0)as UpperQty '
      ',isnull(Bottom.BottomQty,0) as BottomQty '
      ',kfxxzl.XTMH as LastNo'
      ',kfxxzl.DAOMH as CutDieNo'
      ',Purpose'
      ',ETC'
      ',ShipDate'
      ',PreparationDate_first'
      ',PreparationDate'
      ',CutDate'
      ',CutDate_first'
      ',StitchingDate'
      ',StitchingDate_first'
      ',AssembiyDate'
      ',AssembiyDate_first'
      ',Cast(Memo1 as text) as Memo1'
      ',Cast(Memo2 as text) as Memo2'
      ',shoetest.UserID'
      ',shoetest.UserDate'
      ',choose'
      ',Pending_P'
      ',Pending_C'
      ',Pending_A'
      ',Pending_S'
      ',QIP_Check'
      ',Finish'
      ',Complete'
      ',UserID_s'
      ',UserDate_s'
      ',Construction'
      ',TBcancel'
      ',TBReceive'
      ',TBReceiveDate'
      ',SeeStage'
      ','#39#39' as YN'
      ',xxzlkf.CTS'
      
        ',shoetest.SeeType,shoetest.Print_Request,shoetest.Print_Check,sh' +
        'oetest.Rubber_Check,shoetest.Rubber_Request'
      'from ShoeTest'
      
        'left join (select testno,sum(qty) as monthqty from shoetestshipp' +
        'ing '
      
        'group by testno)shoetestshippingmonth on shoetestshippingmonth.t' +
        'estno=shoetest.testno'
      
        'left join (select testno,sum(qty) as spqty from shoetestshipping' +
        ' group by testno) shoetestshipping on shoetestshipping.testno=sh' +
        'oetest.testno'
      
        'left join ( select shoetest2.testno,sum(shoetest2.qty) as ShoeQt' +
        'y from shoetest2'
      
        'left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh ' +
        'where shoetestdetail.class='#39'shoe'#39' group by shoetest2.testno) sho' +
        'e on shoe.testno=ShoeTest.testno'
      
        'left join ( select shoetest2.testno,sum(shoetest2.qty) as UpperQ' +
        'ty from shoetest2'
      
        'left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh ' +
        'where shoetestdetail.class='#39'upper'#39' group by shoetest2.testno) up' +
        'per on upper.testno=ShoeTest.testno'
      
        'left join ( select shoetest2.testno,sum(shoetest2.qty) as Bottom' +
        'Qty from shoetest2'
      
        'left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh ' +
        'where shoetestdetail.class='#39'Bottom'#39' group by shoetest2.testno) B' +
        'ottom on Bottom.testno=ShoeTest.testno'
      'left join ypzl on ypzl.ypdh=shoetest.ypdh'
      
        'left join xxzlkf on ypzl.xiexing=xxzlkf.xiexing and  ypzl.shehao' +
        '=xxzlkf.shehao'
      
        'left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and  ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join kfzl on kfxxzl.khdh=kfzl.kfdh'
      
        'left join shoetestshipping SHIPPINGTEAMQRY on SHIPPINGTEAMQRY.TE' +
        'STNO=shoetest.TESTNO'
      'left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH'
      'where 1=1 and kfzl_GS.GSBH= '#39'CDC'#39' '
      ' and isnull(choose,'#39'0'#39') = '#39'0'#39
      ' and shoetest.userid ='#39'51022'#39
      ' and shoetest.userdate between'
      ' convert(datetime,'#39'2021-12-25'#39')'
      ' and  '
      ' convert(datetime,'#39'2022-01-24'#39')'
      
        'group by kfxxzl.DDMH,shoetest.ypdh,kfxxzl.XieMing,kfzl.kfjc,kfxx' +
        'zl.JiJie,brand,YPZL.FD,shoetest.TestNo,shoetest.Article,kfxxzl.D' +
        'evType,YPZL.SubType'
      
        ',YPZL.KFJD,TestTime,YPZL.YPCC,ypzl.quantity,SPQty,shoetestshippi' +
        'ngmonth.monthqty,shoe.ShoeQTY,upper.UpperQty,Bottom.BottomQty'
      
        ',kfxxzl.XTMH,kfxxzl.DAOMH,Purpose,ETC,ShipDate,PreparationDate_f' +
        'irst,PreparationDate,CutDate,CutDate_first,StitchingDate'
      
        ',StitchingDate_first,AssembiyDate,AssembiyDate_first,Memo1,Memo2' +
        ',shoetest.UserID,shoetest.UserDate,choose,Pending_P,TBcancel,TBR' +
        'eceive,TBReceiveDate,SeeStage'
      
        ',Pending_C,Pending_A,Pending_S,QIP_Check,Finish,Complete,UserID_' +
        's,UserDate_s,Construction,xxzlkf.CTS,kfxxzl.YSSM,kfxxzl.Article,' +
        'shoetest.SeeType,shoetest.Print_Request,shoetest.Print_Check,sho' +
        'etest.Rubber_Check,shoetest.Rubber_Request'
      'order by shoetest.TestNo desc')
    UpdateObject = UpSQL1
    Left = 104
    Top = 280
    object masqryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object masqryDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object masqryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object masqryseason: TStringField
      FieldName = 'season'
      FixedChar = True
      Size = 4
    end
    object masqryBrand: TStringField
      FieldName = 'Brand'
      FixedChar = True
    end
    object masqryFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object masqryTestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object masqrysubTp: TStringField
      FieldName = 'subTp'
      FixedChar = True
      Size = 15
    end
    object masqryDevTp: TStringField
      FieldName = 'DevTp'
      FixedChar = True
      Size = 15
    end
    object masqrystage: TStringField
      FieldName = 'stage'
      FixedChar = True
      Size = 15
    end
    object masqryTestTime: TStringField
      FieldName = 'TestTime'
      FixedChar = True
      Size = 4
    end
    object masqrySIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 6
    end
    object masqryQTY: TFloatField
      FieldName = 'QTY'
    end
    object masqryLastNo: TStringField
      FieldName = 'LastNo'
      FixedChar = True
      Size = 30
    end
    object masqryCutDieNo: TStringField
      FieldName = 'CutDieNo'
      FixedChar = True
      Size = 15
    end
    object masqryPurpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 35
    end
    object masqryETC: TDateTimeField
      FieldName = 'ETC'
    end
    object masqryPreparationDate_first: TDateTimeField
      FieldName = 'PreparationDate_first'
    end
    object masqryPreparationDate: TDateTimeField
      FieldName = 'PreparationDate'
    end
    object masqryCutDate: TDateTimeField
      FieldName = 'CutDate'
    end
    object masqryCutDate_first: TDateTimeField
      FieldName = 'CutDate_first'
    end
    object masqryStitchingDate: TDateTimeField
      FieldName = 'StitchingDate'
    end
    object masqryStitchingDate_first: TDateTimeField
      FieldName = 'StitchingDate_first'
    end
    object masqryAssembiyDate: TDateTimeField
      FieldName = 'AssembiyDate'
    end
    object masqryAssembiyDate_first: TDateTimeField
      FieldName = 'AssembiyDate_first'
    end
    object masqryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object masqryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object masqrychoose: TStringField
      FieldName = 'choose'
      FixedChar = True
      Size = 1
    end
    object masqryPending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object masqryPending_C: TBooleanField
      FieldName = 'Pending_C'
    end
    object masqryPending_A: TBooleanField
      FieldName = 'Pending_A'
    end
    object masqryPending_S: TBooleanField
      FieldName = 'Pending_S'
    end
    object masqryQIP_Check: TStringField
      FieldName = 'QIP_Check'
      FixedChar = True
      Size = 50
    end
    object masqryFinish: TBooleanField
      FieldName = 'Finish'
    end
    object masqryComplete: TDateTimeField
      FieldName = 'Complete'
    end
    object masqryUserID_s: TStringField
      FieldName = 'UserID_s'
      FixedChar = True
      Size = 15
    end
    object masqryUserDate_s: TDateTimeField
      FieldName = 'UserDate_s'
    end
    object masqryConstruction: TStringField
      FieldName = 'Construction'
      FixedChar = True
      Size = 15
    end
    object masqryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object masqryypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object masqryUpperQty: TFloatField
      FieldName = 'UpperQty'
    end
    object masqryBottomQty: TFloatField
      FieldName = 'BottomQty'
    end
    object masqryMemo1: TMemoField
      FieldName = 'Memo1'
      BlobType = ftMemo
    end
    object masqryMemo2: TMemoField
      FieldName = 'Memo2'
      BlobType = ftMemo
    end
    object masqryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object masqryquantity: TFloatField
      FieldName = 'quantity'
    end
    object masqrySPQty: TCurrencyField
      FieldName = 'SPQty'
    end
    object masqrymonthqty: TCurrencyField
      FieldName = 'monthqty'
    end
    object masqryTBcancel: TBooleanField
      FieldName = 'TBcancel'
    end
    object masqryTBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object masqryTBreceiveDate: TDateTimeField
      FieldName = 'TBreceiveDate'
    end
    object masqrySeeStage: TStringField
      FieldName = 'SeeStage'
      FixedChar = True
      Size = 4
    end
    object masqryCTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object masqryseetype: TStringField
      FieldName = 'seetype'
      FixedChar = True
      Size = 3
    end
    object masqryPrint_Request: TBooleanField
      FieldName = 'Print_Request'
    end
    object masqryPrint_Check: TBooleanField
      FieldName = 'Print_Check'
    end
    object masqryRubber_Check: TBooleanField
      FieldName = 'Rubber_Check'
    end
    object masqryRubber_Request: TBooleanField
      FieldName = 'Rubber_Request'
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update shoetest'
      'set'
      '  TestNo = :TestNo,'
      '  Article = :Article,'
      '  DevTp = :DevTp,'
      '  subTp = :subTp,'
      '  stage = :stage,'
      '  TestTime = :TestTime,'
      '  Season = :Season,'
      '  SIZ = :SIZ,'
      '  LastNo = :LastNo,'
      '  CutDieNo = :CutDieNo,'
      '  Purpose = :Purpose,'
      '  ETC = :ETC,'
      '  ShipDate = :ShipDate,'
      '  PreparationDate = :PreparationDate,'
      '  CutDate = :CutDate,'
      '  StitchingDate = :StitchingDate,'
      '  AssembiyDate = :AssembiyDate,'
      '  Memo1 = :Memo1,'
      '  choose = :choose,'
      '  FD =:FD,'
      '  XieMing =:XieMing ,'
      '  Brand =:Brand,'
      ' Pending_P= :Pending_P,'
      ' Pending_C = :Pending_C,'
      ' Pending_A = :Pending_A,'
      ' Pending_S = :Pending_S,'
      ' Finish = :Finish,'
      ' Complete =:Complete,'
      ' userid_s = :userid_s,'
      ' userdate_s = :userdate_s,'
      ' Construction =:Construction,'
      ' TBcancel =:TBcancel ,'
      'SeeStage =:SeeStage,'
      'SeeType=:SeeType,'
      'Print_Request=:Print_Request,'
      'Rubber_Request=:Rubber_Request,'
      ' ypdh=:ypdh'
      'where'
      '  TestNo = :OLD_TestNo '
      '')
    InsertSQL.Strings = (
      'insert into shoetest'
      
        '  (TestNo, Article, DevTp, Subtp,stage, TestTime, Season, SIZ,  ' +
        'LastNo, CutDieNo, DDMH,'
      
        '   Purpose, ETC, ShipDate, PreparationDate, CutDate, StitchingDa' +
        'te, AssembiyDate,'
      '   Memo1, Memo2, UserID, UserDate,Choose,FD,XieMing ,Brand, '
      ' Pending_P,'
      ' Pending_C,'
      ' Pending_A,'
      ' Pending_S,'
      ' Finish,Complete,'
      ' userid_s,'
      ' userdate_s,'
      
        ' Construction,ypdh,SeeStage,SeeType,Print_Request,Rubber_Request' +
        ')'
      'values'
      
        '  (:TestNo, :Article, :DevTp,:subtp, :stage, :TestTime, :Season,' +
        ' :SIZ,:LastNo, '
      
        '   :CutDieNo,:DDMH ,:Purpose, :ETC, :ShipDate, :PreparationDate,' +
        ' :CutDate, :StitchingDate, '
      
        '   :AssembiyDate, :Memo1, :Memo2, :UserID, :UserDate,:Choose,:FD' +
        ',:XieMing ,:Brand,'
      ' :Pending_P,'
      ' :Pending_C,'
      ' :Pending_A,'
      ' :Pending_S,'
      ' :Finish,:Complete,'
      ' :userid_s,'
      ' :userdate,'
      
        ' :Construction,:ypdh,:SeeStage,:SeeType,:Print_Request,:Rubber_R' +
        'equest)')
    DeleteSQL.Strings = (
      'delete from shoetest'
      'where'
      '  TestNo = :OLD_TestNo ')
    Left = 104
    Top = 320
  end
  object pmMaspm: TPopupMenu
    Left = 104
    Top = 352
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '----------'
    end
    object Execl1: TMenuItem
      Caption = 'Excel'
      OnClick = Execl1Click
    end
    object Print: TMenuItem
      Caption = 'Print'
      Visible = False
      OnClick = PrintClick
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 288
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 323
    Top = 368
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 360
  end
  object SIZEqry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select ShoeTest2.TestNo,ShoeTest2.DepName,ShoeTest2.parts,purpos' +
        'e.*,part.*,ShoeTest2.Qty,ShoeTest2.userdate,ShoeTest2.userid,'#39#39' ' +
        'as YN from ShoeTest2'
      
        'left join shoetestDetail purpose on purpose.YYBH=shoetest2.DepNa' +
        'me'
      'left join shoetestDetail part on part.YYBH=shoetest2.parts'
      'where ShoeTest2.TestNo = :TestNo'
      
        'GROUP BY ShoeTest2.TestNo,ShoeTest2.DepName,ShoeTest2.parts,purp' +
        'ose.YYBH,purpose.YWSM,purpose.ZWSM,purpose.VWSM,purpose.class,'
      
        'part.YYBH,part.YWSM,part.ZWSM,part.VWSM,part.class,ShoeTest2.Qty' +
        ',ShoeTest2.userdate,ShoeTest2.userid')
    UpdateObject = UpdateSQL2
    Left = 736
    Top = 464
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TestNo'
        ParamType = ptUnknown
        Size = 11
      end>
    object SIZEqryTestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object SIZEqryuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object SIZEqryuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object SIZEqryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SIZEqryQty: TFloatField
      FieldName = 'Qty'
    end
    object SIZEqryYYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object SIZEqryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object SIZEqryZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object SIZEqryVWSM: TStringField
      FieldName = 'VWSM'
      FixedChar = True
      Size = 50
    end
    object SIZEqryYYBH_1: TStringField
      FieldName = 'YYBH_1'
      FixedChar = True
      Size = 4
    end
    object SIZEqryYWSM_1: TStringField
      FieldName = 'YWSM_1'
      FixedChar = True
      Size = 50
    end
    object SIZEqryZWSM_1: TStringField
      FieldName = 'ZWSM_1'
      FixedChar = True
      Size = 50
    end
    object SIZEqryVWSM_1: TStringField
      FieldName = 'VWSM_1'
      FixedChar = True
      Size = 50
    end
    object SIZEqryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
    end
    object SIZEqryparts: TStringField
      FieldName = 'parts'
      FixedChar = True
      Size = 4
    end
  end
  object ds3: TDataSource
    DataSet = SIZEqry
    Left = 768
    Top = 464
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update ShoeTest2'
      'set'
      '  TestNo = :TestNo,'
      '  DepName = :DepName,'
      '  parts = :parts ,'
      '  Qty = :Qty,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'where'
      '  TestNo = :OLD_TestNo and'
      '  DepName = :OLD_DepName and'
      '  parts = :OLD_parts  and'
      '  Qty = :OLD_Qty and'
      '  UserID = :OLD_UserID and'
      '  UserDate = :OLD_UserDate')
    InsertSQL.Strings = (
      'insert into ShoeTest2'
      '  (TestNo, DepName,parts , Qty, UserID, UserDate)'
      'values'
      '  (:TestNo, :DepName,:parts , :Qty, :UserID, :UserDate)')
    DeleteSQL.Strings = (
      'delete from ShoeTest2'
      'where'
      '  TestNo = :OLD_TestNo and'
      '  DepName = :OLD_DepName and'
      '  parts = :OLD_parts and  '
      '  Qty = :OLD_Qty and'
      '  UserID = :OLD_UserID and'
      '  UserDate = :OLD_UserDate')
    Left = 808
    Top = 464
  end
  object pm4: TPopupMenu
    Left = 848
    Top = 464
    object SModify: TMenuItem
      Caption = 'Modify'
      OnClick = SModifyClick
    end
    object SDelete: TMenuItem
      Caption = 'Delete'
      OnClick = SDeleteClick
    end
    object SInsert: TMenuItem
      Caption = 'Insert'
      OnClick = SInsertClick
    end
    object SSave: TMenuItem
      Caption = 'Save'
      OnClick = SSaveClick
    end
    object SCancel: TMenuItem
      Caption = 'Cancel'
      OnClick = SCancelClick
    end
    object MenuItem6: TMenuItem
      Caption = '----------'
    end
  end
  object qry_Print: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfxxzl.XieXing'
      ',kfxxzl.DDMH'
      ',kfxxzl.DAOMH'
      ',kfxxzl.XieMing'
      ',kfxxzl.JiJie'
      ',kfxxzl.KHDH'
      ',Case kfxxzl.KHDH'
      '  when '#39'0038'#39' then '#39'Adidas'#39
      '  when '#39'0060'#39' then '#39'Reebok'#39
      '  else '#39#39' '
      '  end as Brand'
      ',kfxxzl.GENDER'
      ',kfxxzl.FD'
      ',kfxxzl.DevType'
      ', shoetest.TestNo '
      #9',shoetest.Article '
      #9',shoetest.DevTp   '
      #9',shoetest.stage    '
      #9',shoetest.TestTime '
      #9',shoetest.Season '
      #9',shoetest.SIZ '
      #9',shoetest.QTY '
      #9',shoetest.LastNo '#9
      #9',shoetest.CutDieNo '#9
      #9',shoetest.Purpose '
      #9',shoetest.ETC '#9
      #9',shoetest.InfomDate '
      #9',shoetest.PreparationDate'
      #9',shoetest.CutDate '
      #9',shoetest.StitchingDate '
      #9',shoetest.AssembiyDate '#9
      #9',Cast(shoetest.Memo1 as VarChar(254)) as Memo1 '
      #9',Cast(shoetest.Memo2 as VarChar(254)) as Memo2'
      #9',shoetest.UserID '
      #9',shoetest.UserDate'
      '                ,shoetest.Choose'
      ' ,shoetest.Pending_P'
      ' ,shoetest.Pending_C'
      ' ,shoetest.Pending_A'
      ' ,shoetest.Pending_S'
      ' ,shoetest.QIP_Check'
      ' ,shoetest.Finish'
      ' ,shoetest.Complete'
      ' ,shoetest.userid_s'
      ' ,shoetest.userdate_s'
      ','#39#39' as YN'
      'from kfxxzl'
      'left  join ShoeTest on kfxxzl.ARTICLE = ShoeTest.Article'
      'where 1=2')
    Left = 288
    Top = 304
    object qry_PrintXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qry_PrintDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qry_PrintDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object qry_PrintXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qry_PrintJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object qry_PrintKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object qry_PrintBrand: TStringField
      FieldName = 'Brand'
      FixedChar = True
      Size = 6
    end
    object qry_PrintGENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qry_PrintFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry_PrintDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object qry_PrintTestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object qry_PrintArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 10
    end
    object qry_PrintDevTp: TStringField
      FieldName = 'DevTp'
      FixedChar = True
      Size = 15
    end
    object qry_Printstage: TStringField
      FieldName = 'stage'
      FixedChar = True
      Size = 15
    end
    object qry_PrintTestTime: TStringField
      FieldName = 'TestTime'
      FixedChar = True
      Size = 4
    end
    object qry_PrintSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object qry_PrintSIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 4
    end
    object qry_PrintQTY: TFloatField
      FieldName = 'QTY'
    end
    object qry_PrintLastNo: TStringField
      FieldName = 'LastNo'
      FixedChar = True
      Size = 15
    end
    object qry_PrintCutDieNo: TStringField
      FieldName = 'CutDieNo'
      FixedChar = True
      Size = 15
    end
    object qry_PrintPurpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object qry_PrintETC: TDateTimeField
      FieldName = 'ETC'
    end
    object qry_PrintInfomDate: TDateTimeField
      FieldName = 'InfomDate'
    end
    object qry_PrintPreparationDate: TDateTimeField
      FieldName = 'PreparationDate'
    end
    object qry_PrintCutDate: TDateTimeField
      FieldName = 'CutDate'
    end
    object qry_PrintStitchingDate: TDateTimeField
      FieldName = 'StitchingDate'
    end
    object qry_PrintAssembiyDate: TDateTimeField
      FieldName = 'AssembiyDate'
    end
    object qry_PrintMemo1: TStringField
      FieldName = 'Memo1'
      FixedChar = True
      Size = 254
    end
    object qry_PrintMemo2: TStringField
      FieldName = 'Memo2'
      FixedChar = True
      Size = 254
    end
    object qry_PrintUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object qry_PrintUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object qry_PrintChoose: TStringField
      FieldName = 'Choose'
      FixedChar = True
      Size = 1
    end
    object qry_PrintPending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object qry_PrintPending_C: TBooleanField
      FieldName = 'Pending_C'
    end
    object qry_PrintPending_A: TBooleanField
      FieldName = 'Pending_A'
    end
    object qry_PrintPending_S: TBooleanField
      FieldName = 'Pending_S'
    end
    object qry_PrintQIP_Check: TStringField
      FieldName = 'QIP_Check'
      FixedChar = True
      Size = 50
    end
    object qry_PrintFinish: TBooleanField
      FieldName = 'Finish'
    end
    object qry_PrintComplete: TDateTimeField
      FieldName = 'Complete'
    end
    object qry_Printuserid_s: TStringField
      FieldName = 'userid_s'
      FixedChar = True
      Size = 15
    end
    object qry_Printuserdate_s: TDateTimeField
      FieldName = 'userdate_s'
    end
    object qry_PrintYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object qry_total: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'declare @sql varchar(8000)'
      'declare @Article varchar(20)'
      'set @Article=:article'
      ''
      'set @sql='#39'select aaa.Article'#39
      
        'select @sql=@sql + '#39',max(case [stage] when '#39#39#39'+[stage]+'#39#39#39' then ' +
        'Qty else 0 end) as ['#39'+[stage]+'#39'] '#39
      
        'from (select stage from ShoeTest where article=@Article group by' +
        ' stage)a'
      'set @sql=@sql+'#39'from ('
      #9#9#9#9'select article,stage,sum(qty)Qty'
      #9#9#9#9'from ShoeTest '
      #9#9#9#9'where article='#39#39#39'+@Article+'#39#39#39
      #9#9#9#9'group by article,stage )aaa group by aaa.article'#39
      'exec(@sql)')
    Left = 525
    Top = 601
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'article'
        ParamType = ptUnknown
      end>
  end
  object DS_total: TDataSource
    DataSet = qry_total
    Left = 565
    Top = 601
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DS1
    SQL.Strings = (
      'select ypzl.ypdh from ypzl'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'where kfxxzl.devcode=:article and kfjd=:stage  and ypzl.ypcc=:si' +
        'z')
    Left = 148
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'article'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'siz'
        ParamType = ptUnknown
      end>
  end
  object AnalysisQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select shoetest.TestNo,shoetest.XieMing,shoetest.Article as SR,s' +
        'hoetest.ypdh as SampleOrder,shoetest.FD as Developer,shoetest.QT' +
        'Y as Total_Qty'
      ',isnull(Shipping.qty,0) as Shipping'
      ',isnull(Finished_shoes_test.qty,0) as Finished_Shoes_Test'
      ',isnull(Fit_test.qty,0) as Fit_Test'
      ',isnull(Wear_test.qty,0) as Wear_Test'
      ',isnull(Keeping.qty,0) as Keeping'
      ',isnull(Social_Sample.qty,0) as Social_Sample'
      ',isnull(Tech_team.qty,0) as Tech_Team'
      ',isnull(Half_stitching_upper.qty,0) as Half_Stitching_Upper'
      ',isnull(Lasted_upper.qty,0) as Lasted_Upper'
      ',isnull(Upper_component.qty,0) as Upper_Component'
      ',isnull(Bottom_component.qty,0) as Bottom_Component'
      ',isnull(TW_BY.qty,0) as TW_BY'
      ',isnull(QC_CFM.qty,0) as QC_CFM'
      ',shoetest.Season'
      ',shoetest.Stage'
      ' ,Cast(shoetest.Memo1 as VarChar(254)) as Memo1'
      ',Cast(shoetest.Memo2 as VarChar(254)) as Memo2'
      ''
      'from  ShoeTest'
      
        'left join (select * from shoetest2 where depname='#39'Shipping'#39') Shi' +
        'pping on Shipping.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Finished shoes' +
        ' test'#39') Finished_shoes_test on Finished_shoes_test.testno=ShoeTe' +
        'st.testno'
      
        'left join (select * from shoetest2 where depname='#39'Fit test'#39') Fit' +
        '_test on Fit_test.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Wear test'#39') We' +
        'ar_test on Wear_test.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Keeping'#39') Keep' +
        'ing on Keeping.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Social Sample'#39 +
        ') Social_Sample on Social_Sample.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Tech team'#39') Te' +
        'ch_team on Tech_team.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Half stitching' +
        ' upper'#39') Half_stitching_upper on Half_stitching_upper.testno=Sho' +
        'eTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Lasted upper'#39')' +
        ' Lasted_upper on Lasted_upper.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Upper componen' +
        't'#39') Upper_component on Upper_component.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'Bottom compone' +
        'nt'#39') Bottom_component on Bottom_component.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'TW/BY'#39') TW_BY ' +
        'on TW_BY.testno=ShoeTest.testno'
      
        'left join (select * from shoetest2 where depname='#39'QC CFM'#39') QC_CF' +
        'M on QC_CFM.testno=ShoeTest.testno'
      ''
      'where 1=2'
      ''
      ' ')
    Left = 484
    Top = 257
    object AnalysisQryTestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object AnalysisQryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object AnalysisQrySR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object AnalysisQrySampleOrder: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
      Size = 15
    end
    object AnalysisQryDeveloper: TStringField
      FieldName = 'Developer'
      FixedChar = True
    end
    object AnalysisQryShipping: TFloatField
      FieldName = 'Shipping'
    end
    object AnalysisQryFinished_Shoes_Test: TFloatField
      FieldName = 'Finished_Shoes_Test'
    end
    object AnalysisQryFit_Test: TFloatField
      FieldName = 'Fit_Test'
    end
    object AnalysisQryWear_Test: TFloatField
      FieldName = 'Wear_Test'
    end
    object AnalysisQryKeeping: TFloatField
      FieldName = 'Keeping'
    end
    object AnalysisQrySocial_Sample: TFloatField
      FieldName = 'Social_Sample'
    end
    object AnalysisQryTech_Team: TFloatField
      FieldName = 'Tech_Team'
    end
    object AnalysisQryHalf_Stitching_Upper: TFloatField
      FieldName = 'Half_Stitching_Upper'
    end
    object AnalysisQryLasted_Upper: TFloatField
      FieldName = 'Lasted_Upper'
    end
    object AnalysisQryUpper_Component: TFloatField
      FieldName = 'Upper_Component'
    end
    object AnalysisQryBottom_Component: TFloatField
      FieldName = 'Bottom_Component'
    end
    object AnalysisQryTW_BY: TFloatField
      FieldName = 'TW_BY'
    end
    object AnalysisQryQC_CFM: TFloatField
      FieldName = 'QC_CFM'
    end
    object AnalysisQrySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object AnalysisQryStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object AnalysisQryMemo1: TStringField
      FieldName = 'Memo1'
      FixedChar = True
      Size = 254
    end
    object AnalysisQryMemo2: TStringField
      FieldName = 'Memo2'
      FixedChar = True
      Size = 254
    end
  end
  object AnalysisDS: TDataSource
    DataSet = AnalysisQry
    Left = 484
    Top = 225
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      ' from ('
      'select '
      'DDMH'
      ',isnull(shoetest.ypdh,'#39#39') as ypdh'
      ',XieMing'
      ',season'
      ','#39'Converse'#39' as brand'
      ',shoetest.FD'
      ' ,shoetest.TestNo'
      '        ,shoetest.Article'
      '        ,DevTp'
      '        ,subTp'
      '        ,stage'
      '        ,TestTime'
      '        ,SIZ'
      ' ,ypzl.quantity'
      ' ,SPQty'
      ' ,shoetestshippingmonth.monthqty'
      ' ,isnull(shoe.ShoeQTY,0)as QTY'
      ' ,isnull(upper.UpperQty,0)as UpperQty '
      ' ,isnull(Bottom.BottomQty,0) as BottomQty'
      '        ,LastNo'
      '        ,CutDieNo'
      '        ,Purpose'
      '        ,ETC'
      '        ,ShipDate'
      '        ,PreparationDate_first'
      '        ,PreparationDate'
      '        ,CutDate'
      '        ,CutDate_first'
      '        ,StitchingDate'
      '        ,StitchingDate_first'
      '        ,AssembiyDate'
      '        ,AssembiyDate_first'
      '        ,Cast(Memo1 as text) as Memo1'
      '        ,Cast(Memo2 as text) as Memo2'
      '        ,shoetest.UserID'
      '        ,shoetest.UserDate'
      '        ,choose'
      '        ,Pending_P'
      '        ,Pending_C'
      '        ,Pending_A'
      '        ,Pending_S'
      '        ,QIP_Check'
      '        ,Finish'
      '        ,Complete'
      '        ,UserID_s'
      '        ,UserDate_s'
      '        ,Construction'
      ' ,'#39#39' as YN'
      ''
      'from  ShoeTest'
      
        'left join (select testno,sum(qty) as monthqty from shoetestshipp' +
        'ing '
      
        'group by testno )shoetestshippingmonth on shoetestshippingmonth.' +
        'testno=shoetest.testno'
      
        'left join (select testno,sum(qty) as spqty from shoetestshipping' +
        ' group by testno) shoetestshipping on shoetestshipping.testno=sh' +
        'oetest.testno'
      
        'left join ( select shoetest2.testno,sum(shoetest2.qty) as ShoeQt' +
        'y from shoetest2'
      
        'left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh ' +
        'where shoetestdetail.class='#39'shoe'#39' group by shoetest2.testno) sho' +
        'e on shoe.testno=ShoeTest.testno'
      
        'left join ( select shoetest2.testno,sum(shoetest2.qty) as UpperQ' +
        'ty from shoetest2'
      
        'left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh ' +
        'where shoetestdetail.class='#39'upper'#39' group by shoetest2.testno) up' +
        'per on upper.testno=ShoeTest.testno'
      
        'left join ( select shoetest2.testno,sum(shoetest2.qty) as Bottom' +
        'Qty from shoetest2'
      
        'left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh ' +
        'where shoetestdetail.class='#39'Bottom'#39' group by shoetest2.testno) B' +
        'ottom on Bottom.testno=ShoeTest.testno'
      'left join ypzl on ypzl.ypdh=shoetest.ypdh'
      
        'left join shoetestshipping SHIPPINGTEAMQRY on SHIPPINGTEAMQRY.TE' +
        'STNO=shoetest.TESTNO'
      'where 1=1'
      ' and isnull(choose,'#39'0'#39') = '#39'0'#39
      ' --and shoetest.FD like '#39'jenny%'#39
      ' and season =: season'
      
        'group by  DDMH,shoetest.ypdh,XieMing,season,brand,shoetest.FD ,s' +
        'hoetest.TestNo,shoetest.Article,DevTp,subTp,stage'
      
        ',TestTime,SIZ,ypzl.quantity,SPQty,shoetestshippingmonth.monthqty' +
        ',shoe.ShoeQTY,upper.UpperQty,Bottom.BottomQty'
      
        ',LastNo,CutDieNo,Purpose,ETC,ShipDate,PreparationDate_first,Prep' +
        'arationDate,CutDate,CutDate_first,StitchingDate'
      
        ',StitchingDate_first,AssembiyDate,AssembiyDate_first,Memo1,Memo2' +
        ',shoetest.UserID,shoetest.UserDate,choose,Pending_P'
      
        ',Pending_C,Pending_A,Pending_S,QIP_Check,Finish,Complete,UserID_' +
        's,UserDate_s,Construction'
      ') shoeTest'
      'left join ('
      'select TestNo as TestNo2'
      '   ,Max(case when YWSM='#39'Shipping'#39' then Qty end) as '#39'Shipping'#39
      '   ,Max(case when YWSM='#39'Testing'#39' then Qty end) as '#39'Testing'#39
      '   ,Max(case when YWSM='#39'Fit Test'#39' then Qty end) as '#39'Fit Test'#39
      '   ,Max(case when YWSM='#39'Wear Test'#39' then Qty end) as '#39'Wear Test'#39
      '   ,Max(case when YWSM='#39'Keeping'#39' then Qty end) as '#39'Keeping'#39
      
        '   ,Max(case when YWSM='#39'Social Sample'#39' then Qty end) as '#39'Social ' +
        'Sample'#39
      '   ,Max(case when YWSM='#39'Tech Team'#39' then Qty end) as '#39'Tech Team'#39
      '   ,Max(case when YWSM='#39'TW/BY'#39' then Qty end) as '#39'TW/BY'#39
      '   ,Max(case when YWSM='#39'QC'#39' then Qty end) as '#39'QC'#39
      '   ,Max(case when YWSM='#39'IE'#39' then Qty end) as '#39'IE'#39
      '   ,Max(case when YWSM='#39'Costing'#39' then Qty end) as '#39'Costing'#39'  '
      '   from ('
      'select shoetest2.TestNo,shoetestdetail.YWSM,Sum(Qty) as Qty '
      'from shoetest2'
      'left join shoeTest on shoeTest.testno=shoetest2.testno'
      
        'left join shoetestdetail on shoetestdetail.yybh=shoeTest2.DepNam' +
        'e'
      
        'where shoetest.season=:season and shoetestdetail.YWSM is not nul' +
        'l'
      'Group by shoetest2.TestNo,shoetestdetail.YWSM ) ShoeTest2'
      'Group by TestNo ) ShoeTest2 on ShoeTest.TestNo=ShoeTest2.TestNo2')
    Left = 596
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'season'
        ParamType = ptUnknown
      end>
  end
  object Qry_ETC: TQuery
    DatabaseName = 'dB'
    Left = 601
    Top = 321
  end
end
