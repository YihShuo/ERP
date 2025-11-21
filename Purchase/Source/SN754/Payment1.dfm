object Payment: TPayment
  Left = 187
  Top = 67
  Width = 1075
  Height = 629
  Caption = 'Payment'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1059
    Height = 591
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Payment'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 10
          Top = 6
          Width = 38
          Height = 16
          Caption = 'Mat ID'
        end
        object Label5: TLabel
          Left = 163
          Top = 6
          Width = 62
          Height = 16
          Caption = 'Mat Name'
        end
        object Label2: TLabel
          Left = 10
          Top = 31
          Width = 38
          Height = 16
          Caption = 'RKNO'
        end
        object Label7: TLabel
          Left = 153
          Top = 31
          Width = 72
          Height = 16
          Caption = 'Supp Name'
        end
        object Label8: TLabel
          Left = 357
          Top = 31
          Width = 45
          Height = 16
          Caption = 'Country'
        end
        object Label9: TLabel
          Left = 535
          Top = 31
          Width = 68
          Height = 16
          Caption = 'Supp. Style'
        end
        object Label10: TLabel
          Left = 614
          Top = 6
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Edit2: TEdit
          Left = 227
          Top = 2
          Width = 98
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 49
          Top = 2
          Width = 97
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 725
          Top = 3
          Width = 84
          Height = 30
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 327
          Top = 2
          Width = 70
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 49
          Top = 27
          Width = 97
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Edit6: TEdit
          Left = 227
          Top = 27
          Width = 98
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object CheckBox1: TCheckBox
          Left = 820
          Top = 33
          Width = 101
          Height = 17
          Caption = 'Show PDT'
          TabOrder = 6
        end
        object Chk_PurAcc: TCheckBox
          Left = 929
          Top = 1
          Width = 135
          Height = 17
          Caption = 'Pur Acc not Confirm'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object CheckBox2: TCheckBox
          Left = 820
          Top = 17
          Width = 105
          Height = 17
          Caption = 'Show Tooling'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object CheckBox3: TCheckBox
          Left = 820
          Top = 1
          Width = 106
          Height = 17
          Caption = 'Show Material'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object Chk_PurAccCfm: TCheckBox
          Left = 930
          Top = 17
          Width = 144
          Height = 17
          Caption = 'Pur Acc Confirmed'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object Edit8: TEdit
          Left = 420
          Top = 28
          Width = 96
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object BBTT4: TBitBtn
          Left = 500
          Top = 28
          Width = 16
          Height = 25
          Caption = '...'
          TabOrder = 12
          OnClick = BBTT4Click
        end
        object Edit4: TEdit
          Left = 613
          Top = 28
          Width = 98
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object BBTT2: TBitBtn
          Left = 696
          Top = 28
          Width = 16
          Height = 24
          Caption = '...'
          TabOrder = 14
          OnClick = BBTT2Click
        end
        object CheckBox5: TCheckBox
          Left = 416
          Top = 6
          Width = 107
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Received Date'
          Checked = True
          State = cbChecked
          TabOrder = 15
        end
        object DTP1: TDateTimePicker
          Left = 526
          Top = 2
          Width = 89
          Height = 24
          Date = 39846.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39846.000000000000000000
          TabOrder = 16
        end
        object DTP2: TDateTimePicker
          Left = 624
          Top = 2
          Width = 89
          Height = 24
          Date = 39846.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39846.000000000000000000
          TabOrder = 17
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 57
        Width = 1051
        Height = 503
        ActivePage = TabSheet5
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style = tsButtons
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = 'Head'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Splitter2: TSplitter
            Left = 0
            Top = 200
            Width = 1043
            Height = 3
            Cursor = crVSplit
            Align = alBottom
            Color = clSkyBlue
            ParentColor = False
          end
          object DBGrid1: TDBGridEh
            Left = 0
            Top = 0
            Width = 1043
            Height = 200
            Align = alClient
            DataSource = DS_Master
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = 16763080
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
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'CKBH'
                Footers = <>
                Title.Caption = 'W.H'
                Title.TitleButton = True
                Width = 36
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'RKNO'
                Footers = <
                  item
                    FieldName = 'RKNO'
                    ValueType = fvtCount
                  end>
                Title.TitleButton = True
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'ZSBH'
                Footers = <>
                Title.Caption = 'Supplier|ID'
                Title.TitleButton = True
                Width = 42
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Title.Caption = 'Supplier|Name'
                Title.TitleButton = True
                Width = 99
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                Title.Caption = 'Received Date'
                Title.TitleButton = True
                Width = 62
              end
              item
                ButtonStyle = cbsNone
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'PurConfirm'
                Footers = <>
                Title.Caption = 'Pur Cfm'
                Title.TitleButton = True
                Width = 30
              end
              item
                ButtonStyle = cbsNone
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'CFMDATE'
                Footers = <>
                Title.Caption = 'Pur Acc Cfm Date'
                Title.TitleButton = True
                Width = 60
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'AccountCFM'
                Footers = <>
                Title.Caption = 'Account CFM'
                Title.TitleButton = True
                Width = 48
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'DOCNO'
                Footers = <>
                Title.TitleButton = True
                Width = 106
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USACC'
                Footers = <
                  item
                    DisplayFormat = '##,#0.00'
                    FieldName = 'USACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = '    USD     Amount'
                Title.TitleButton = True
                Width = 66
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'VNACC'
                Footers = <
                  item
                    DisplayFormat = '##,#0'
                    FieldName = 'VNACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = '     VND     Amount'
                Title.TitleButton = True
                Width = 87
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'W.H Worker'
                Title.TitleButton = True
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'SamplePurchaser_Name'
                Footers = <>
                Title.Caption = 'Purchaser'
                Title.TitleButton = True
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'USamount'
                Footers = <
                  item
                    FieldName = 'USamount'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Total [USD]'
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'RKSB'
                Footers = <>
                Title.Caption = 'Type'
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'MZSYWJC'
                Footers = <>
                Title.Caption = 'Payment Agent'
                Title.TitleButton = True
              end>
          end
          object DBGridEh_RD: TDBGridEh
            Left = 0
            Top = 203
            Width = 1043
            Height = 266
            Align = alBottom
            DataSource = DS4
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = 16371647
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 0
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
                Title.Caption = 'Mat ID'
                Title.TitleButton = True
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <
                  item
                    FieldName = 'Qty'
                    ValueType = fvtSum
                  end>
                ReadOnly = True
                Title.TitleButton = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Unit'
                Title.TitleButton = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'USPrice'
                Footers = <
                  item
                    FieldName = 'USPrice'
                    ValueType = fvtAvg
                  end>
                Title.Caption = 'USD|Price'
                Title.TitleButton = True
                Width = 53
              end
              item
                Color = clSilver
                EditButtons = <>
                FieldName = 'ERP_USPrice_'
                Footers = <>
                Title.Caption = 'USD|ERP'
                Title.TitleButton = True
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'USACC'
                Footers = <
                  item
                    FieldName = 'USACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'USD|Amount'
                Title.TitleButton = True
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'VNPrice'
                Footers = <
                  item
                    FieldName = 'VNPrice'
                    ValueType = fvtAvg
                  end>
                Title.Caption = 'VND|Price'
                Title.TitleButton = True
                Width = 60
              end
              item
                Color = clSilver
                EditButtons = <>
                FieldName = 'ERP_VNPrice_'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'VND|ERP'
                Title.TitleButton = True
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'VNACC'
                Footers = <
                  item
                    FieldName = 'VNACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'VND|Amount'
                Title.TitleButton = True
                Width = 59
              end
              item
                Color = clBlack
                EditButtons = <>
                Footers = <>
                Width = 3
              end
              item
                EditButtons = <>
                FieldName = 'HandCarry_USPrice'
                Footers = <>
                Title.Caption = 'Hand Carry|USPrice'
              end
              item
                EditButtons = <>
                FieldName = 'HandCarry_USACC'
                Footers = <>
                Title.Caption = 'Hand Carry|USACC'
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Material Name'
                Title.TitleButton = True
                Width = 297
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Sea.'
                Title.TitleButton = True
                Width = 34
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Purpose'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Pur.'
                Title.TitleButton = True
                Width = 30
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'FreeQty_'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Free Qty'
                Title.TitleButton = True
                Width = 32
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Charge_'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Charge % '
                Title.TitleButton = True
                Width = 46
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Q_USPrice_'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Quotation|USD'
                Title.TitleButton = True
                Width = 49
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Q_VNPrice_'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Quotation|VND'
                Title.TitleButton = True
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'MEMO'
                Footers = <>
                Title.TitleButton = True
                Width = 152
              end
              item
                EditButtons = <>
                FieldName = 'RKSB'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'TP'
                Title.TitleButton = True
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'CGBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Pur NO'
                Title.TitleButton = True
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'DOCNO'
                Footers = <>
                ReadOnly = True
                Title.TitleButton = True
                Width = 100
              end
              item
                ButtonStyle = cbsEllipsis
                EditButtons = <>
                FieldName = 'CWHL'
                Footers = <>
                Title.Caption = 'Rate'
                Title.TitleButton = True
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'PaQty'
                Footers = <
                  item
                    FieldName = 'PaQty'
                    ValueType = fvtSum
                  end>
                ReadOnly = True
                Title.TitleButton = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'CGDATE'
                Footers = <>
                Title.Caption = 'Pur Date'
                Title.TitleButton = True
                Width = 70
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object Splitter4: TSplitter
            Left = 0
            Top = 278
            Width = 1043
            Height = 3
            Cursor = crVSplit
            Align = alBottom
            Color = clSkyBlue
            ParentColor = False
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1043
            Height = 28
            Align = alTop
            TabOrder = 0
            object Label11: TLabel
              Left = 403
              Top = 6
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
            object Label12: TLabel
              Left = 289
              Top = 6
              Width = 47
              Height = 16
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 503
              Top = 6
              Width = 36
              Height = 16
              Caption = 'Stage'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 9
              Top = 6
              Width = 60
              Height = 16
              Caption = 'Dev Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 150
              Top = 6
              Width = 55
              Height = 16
              Caption = 'Category'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 662
              Top = 8
              Width = 83
              Height = 16
              Caption = 'Prod Location'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit7: TEdit
              Left = 441
              Top = 2
              Width = 63
              Height = 24
              AutoSelect = False
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit9: TEdit
              Left = 337
              Top = 2
              Width = 63
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
            object Cb_DevTP: TComboBox
              Left = 71
              Top = 2
              Width = 80
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
              TabOrder = 2
              Items.Strings = (
                ''
                'Inline'
                'SMU')
            end
            object CB_Category: TComboBox
              Left = 207
              Top = 2
              Width = 80
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
              TabOrder = 3
              Items.Strings = (
                ''
                'Sports'
                'Originals')
            end
            object Cb_Stage: TComboBox
              Left = 539
              Top = 2
              Width = 62
              Height = 24
              DropDownCount = 12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 4
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
                'FES'
                'PDT'
                'SMU')
            end
            object Cb_Stage2: TComboBox
              Left = 601
              Top = 2
              Width = 62
              Height = 24
              DropDownCount = 12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 5
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
                'FES'
                'PDT'
                'SMU')
            end
            object CheckBox4: TCheckBox
              Left = 853
              Top = 6
              Width = 136
              Height = 17
              Caption = 'Show Free/Charge'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object Edit10: TEdit
              Left = 748
              Top = 4
              Width = 96
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object BitBtn1: TBitBtn
              Left = 828
              Top = 3
              Width = 16
              Height = 25
              Caption = '...'
              TabOrder = 8
              OnClick = BitBtn1Click
            end
          end
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 28
            Width = 1043
            Height = 250
            Align = alClient
            DataSource = DS_Detail
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = 16763080
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 2
            Columns = <
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'CKBH'
                Footers = <>
                Title.Caption = 'W.H'
                Title.TitleButton = True
                Width = 33
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'RKNO'
                Footers = <
                  item
                    FieldName = 'RKNO'
                    ValueType = fvtCount
                  end>
                Title.TitleButton = True
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'ZSBH'
                Footers = <>
                Title.Caption = 'Supplier|ID'
                Title.TitleButton = True
                Width = 38
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Title.Caption = 'Supplier|Name'
                Title.TitleButton = True
                Width = 102
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                Title.Caption = 'Received Date'
                Title.TitleButton = True
                Width = 67
              end
              item
                ButtonStyle = cbsNone
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'PurConfirm'
                Footers = <>
                Title.Caption = 'Pur Cfm'
                Title.TitleButton = True
                Width = 25
              end
              item
                ButtonStyle = cbsNone
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'CFMDATE'
                Footers = <>
                Title.Caption = 'Pur Acc Cfm Date'
                Title.TitleButton = True
                Width = 62
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'AccountCFM'
                Footers = <>
                Title.Caption = 'Account Cfm'
                Title.TitleButton = True
                Width = 44
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'DOCNO'
                Footers = <>
                Title.TitleButton = True
                Width = 110
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <
                  item
                    FieldName = 'Qty'
                    ValueType = fvtSum
                  end>
                Title.TitleButton = True
                Width = 53
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <
                  item
                    Alignment = taRightJustify
                    Value = 'Total:'
                    ValueType = fvtStaticText
                  end>
                Title.Caption = 'Unit'
                Title.TitleButton = True
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USPrice'
                Footers = <>
                Title.Caption = 'USD|Price'
                Title.TitleButton = True
                Width = 55
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USACC'
                Footers = <
                  item
                    DisplayFormat = '##,#0.00'
                    FieldName = 'USACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'USD|Amount'
                Title.TitleButton = True
                Width = 54
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'VNPrice'
                Footers = <>
                Title.Caption = 'VND|Price'
                Title.TitleButton = True
                Width = 59
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'VNACC'
                Footers = <
                  item
                    DisplayFormat = '##,#0'
                    FieldName = 'VNACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'VND|Amount'
                Title.TitleButton = True
                Width = 87
              end
              item
                EditButtons = <>
                FieldName = 'HandCarry_USPrice'
                Footers = <>
                Title.Caption = 'Hand Carry [USD]|Price'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'HandCarry_USACC'
                Footers = <
                  item
                    FieldName = 'HandCarry_USACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Hand Carry [USD]|Amount'
                Width = 55
              end
              item
                Color = clBlack
                EditButtons = <>
                Footers = <>
                Width = 3
              end
              item
                EditButtons = <>
                FieldName = 'USamount'
                Footers = <
                  item
                    FieldName = 'USamount'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Total [USD]'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'SEASON'
                Footers = <>
                Title.Caption = 'Season'
                Title.TitleButton = True
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'PURPOSE'
                Footers = <>
                Title.Caption = 'Stage'
                Title.TitleButton = True
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'FreeQty_'
                Footers = <>
                Title.Caption = 'Free Qty'
                Title.TitleButton = True
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'Charge_'
                Footers = <>
                Title.Caption = 'Charge%'
                Title.TitleButton = True
                Width = 46
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'CGBH'
                Footers = <>
                Title.Caption = 'Pur NO'
                Title.TitleButton = True
                Width = 80
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Mat ID'
                Title.TitleButton = True
                Width = 73
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = 'Mat Name'
                Title.TitleButton = True
                Width = 205
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'W.H Worker'
                Title.TitleButton = True
                Width = 45
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'RKSB'
                Footers = <>
                Title.Caption = 'Type'
                Title.TitleButton = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'MZSYWJC'
                Footers = <>
                Title.Caption = 'Payment Agent'
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'Country'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'location'
                Footers = <>
                Title.Caption = 'Prod Location'
              end>
          end
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 281
            Width = 1043
            Height = 188
            Align = alBottom
            DataSource = DS_Supplier
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = 16763080
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                Color = clBlack
                EditButtons = <>
                FieldName = 'ZSBH'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <
                  item
                    FieldName = 'ZSBH'
                    ValueType = fvtCount
                  end>
                Title.Caption = 'ID'
                Title.TitleButton = True
                Width = 59
              end
              item
                ButtonStyle = cbsNone
                Color = clBlack
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'Supplier Name'
                Title.TitleButton = True
                Width = 99
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USACC'
                Footers = <
                  item
                    DisplayFormat = '##,#0.00'
                    FieldName = 'USACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'USD'
                Title.TitleButton = True
                Width = 63
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'VNACC'
                Footers = <
                  item
                    DisplayFormat = '##,#0'
                    FieldName = 'VNACC'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'VND'
                Title.TitleButton = True
                Width = 79
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'USamount'
                Footers = <
                  item
                    FieldName = 'USamount'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Amount [USD]'
                Title.TitleButton = True
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'MZSYWJC'
                Footers = <>
                Title.Caption = 'Agent'
                Title.TitleButton = True
                Width = 86
              end>
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Analysis'
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 0
        Top = 305
        Width = 1051
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 29
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 6
          Width = 29
          Height = 16
          Caption = 'Year'
        end
        object Button2: TButton
          Left = 102
          Top = 3
          Width = 65
          Height = 22
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button2Click
        end
        object ComboBox1: TComboBox
          Left = 38
          Top = 2
          Width = 56
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 5
          TabOrder = 1
          Text = '2011'
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
            '2020')
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 29
        Width = 1051
        Height = 276
        Align = alTop
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 593
          Height = 274
          Align = alLeft
          DataSource = DS_Monthly
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = 16763080
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_Monthly
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          Columns = <
            item
              Color = clBlack
              EditButtons = <>
              FieldName = 'YM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Month'
              Width = 42
            end
            item
              Color = clBlack
              EditButtons = <>
              FieldName = 'USamount'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <
                item
                  FieldName = 'USamount'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Payment'
              Width = 62
            end
            item
              Color = clBlack
              EditButtons = <>
              FieldName = 'HandCarry'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.FieldName = 'HandCarry'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Hand Carry'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'Entry'
              Footers = <>
              Title.Caption = 'Receipt|Confirm'
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'NoCfm'
              Footers = <>
              Title.Caption = 'Receipt|Wait'
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Width = 36
            end
            item
              Color = clBlack
              EditButtons = <>
              Footers = <>
              Width = 3
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Material'
              Footer.FieldName = 'Material'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Sample Material|Dev'
              Width = 54
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'FES'
              Footer.FieldName = 'FES'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Sample Material|FES'
              Width = 49
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Tool'
              Footer.FieldName = 'Tool'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Tooling'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'Transport'
              Footers = <>
              Width = 51
            end
            item
              Color = clBlack
              EditButtons = <>
              Footers = <>
              Width = 3
            end
            item
              Color = 8454143
              EditButtons = <>
              FieldName = 'PDT'
              Footer.FieldName = 'PDT'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 45
            end>
        end
        object Panel2: TPanel
          Left = 594
          Top = 1
          Width = 456
          Height = 274
          Align = alClient
          TabOrder = 1
          object DBChart1: TDBChart
            Left = 1
            Top = 1
            Width = 454
            Height = 272
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Payment')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            Legend.LegendStyle = lsLastValues
            View3D = False
            Align = alClient
            TabOrder = 0
            object Series2: TFastLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = Qry_Monthly
              SeriesColor = clNavy
              ShowInLegend = False
              XLabelsSource = 'YM'
              LinePen.Color = clNavy
              LinePen.Width = 4
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'USamount'
            end
          end
        end
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 337
        Width = 1051
        Height = 223
        Align = alClient
        Color = clWhite
        DataSource = DS_Season
        Flat = False
        Font.Charset = DEFAULT_CHARSET
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
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'jijie'
            Footers = <>
            Title.Caption = 'Season'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 40
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'SEE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CR1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CR2PSE'
            Footers = <>
            Title.Caption = 'CR2/PSE'
          end
          item
            EditButtons = <>
            FieldName = 'SMS'
            Footers = <>
            Title.Caption = 'SMS/MCS'
          end
          item
            Color = clBlack
            EditButtons = <>
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'FES'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PDT'
            Footers = <>
          end
          item
            Color = clBlack
            EditButtons = <>
            Footer.Color = clBlack
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'SMU'
            Footers = <>
          end
          item
            Color = clBlack
            EditButtons = <>
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'OTHER'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOOL'
            Footers = <>
          end
          item
            Color = clBlack
            EditButtons = <>
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'SUM_'
            Footers = <>
            Title.Caption = 'Amount'
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 308
        Width = 1051
        Height = 29
        Align = alTop
        TabOrder = 3
        object Button3: TButton
          Left = 102
          Top = 4
          Width = 65
          Height = 22
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Check'
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 84
        Top = 0
        Height = 564
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 84
        Height = 564
        Align = alLeft
        DataSource = DS_Check
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        VTitleMargin = 2
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STAGE'
            Footers = <>
            Title.Caption = 'Stage'
            Width = 44
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 87
        Top = 0
        Width = 95
        Height = 564
        Align = alLeft
        DataSource = DS_Check2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        VTitleMargin = 2
        Columns = <
          item
            EditButtons = <>
            FieldName = 'season'
            Footers = <>
            Title.Caption = 'Season'
            Width = 48
          end>
      end
    end
  end
  object Qry_Master: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZSZL.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_N' +
        'ame,KCRK.*'
      '       ,KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KCZLS.CWBH'
      
        '       ,ZSZL.MZSDH , (SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=Z' +
        'SZL.MZSDH) AS MZSYWJC'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH'
      'left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser'
      'where KCRK.RKNO=KCRKS.RKNO and 1=2'
      '')
    Left = 72
    Top = 256
    object Qry_MasterGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Qry_MasterRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Qry_MasterZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_MasterUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Qry_MasterCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Qry_MasterUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Qry_MasterVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Qry_MasterCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Qry_MasterUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_MasterDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object Qry_MasterPurConfirm: TStringField
      FieldName = 'PurConfirm'
      FixedChar = True
      Size = 1
    end
    object Qry_MasterAccountCFM: TStringField
      FieldName = 'AccountCFM'
      Size = 10
    end
    object Qry_MasterZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_MasterSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object Qry_MasterSamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Qry_MasterUSamount: TCurrencyField
      FieldName = 'USamount'
      currency = False
    end
    object Qry_MasterRKSB: TStringField
      FieldName = 'RKSB'
      Size = 4
    end
    object Qry_MasterMZSDH: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object Qry_MasterMZSYWJC: TStringField
      FieldName = 'MZSYWJC'
      FixedChar = True
    end
    object Qry_MasterCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
  end
  object DS_Master: TDataSource
    DataSet = Qry_Master
    Left = 72
    Top = 224
  end
  object DS_Detail: TDataSource
    DataSet = Qry_Detail
    Left = 112
    Top = 224
  end
  object Qry_Detail: TQuery
    OnCalcFields = Qry_DetailCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.*,KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KCZLS.CWBH'
      
        '         ,CGZL.SEASON,CGZL.PURPOSE,CGDate  ,CGDate,ZSZL.MZSDH,(S' +
        'ELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZL.MZSDH) AS MZSYWJC ,' +
        'ZSZL.Country,MaterialMOQ.location'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CGZL on CGZL.CGNO=KCRKS.CGBH'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH'
      
        'left join MaterialMOQ on MaterialMOQ.CLBH=KCRKS.clbh and Materia' +
        'lMOQ.Season=CGZL.SEASON'
      'where KCRK.RKNO=KCRKS.RKNO and 1=2'
      '')
    Left = 112
    Top = 256
    object StringField1: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object FloatField1: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object FloatField2: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object StringField7: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object StringField12: TStringField
      FieldName = 'PurConfirm'
      FixedChar = True
      Size = 1
    end
    object Qry_DetailAccountCFM: TStringField
      FieldName = 'AccountCFM'
      Size = 10
    end
    object Qry_DetailZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_DetailSEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Qry_DetailPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object Qry_DetailFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object Qry_DetailCharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object Qry_DetailQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object Qry_DetailQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object Qry_DetailCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object Qry_DetailMZSDH: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object Qry_DetailMZSYWJC: TStringField
      FieldName = 'MZSYWJC'
      FixedChar = True
    end
    object Qry_DetailHandCarry_USPrice: TCurrencyField
      FieldName = 'HandCarry_USPrice'
      DisplayFormat = '##,#0.0000'
      currency = False
    end
    object Qry_DetailHandCarry_USACC: TCurrencyField
      FieldName = 'HandCarry_USACC'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Qry_DetailUSamount: TCurrencyField
      FieldName = 'USamount'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Qry_DetailCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
    object Qry_Detaillocation: TStringField
      FieldName = 'location'
      FixedChar = True
      Size = 15
    end
  end
  object Qry_zszlSamplePayment: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 792
    Top = 416
    object Qry_zszlSamplePaymentFreeQty: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentCharge: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object Qry_SamplePayment_Unit: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 792
    Top = 456
    object CurrencyField4: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object Qry_MaterialPrice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  SamplePrice,SamplePriceVN ,EffectiveDate'
      'from MaterialMOQ'
      'where 1=2'
      '')
    Left = 832
    Top = 416
    object Qry_MaterialPriceSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      Origin = 'DB.MaterialMOQ.SamplePrice'
    end
    object Qry_MaterialPriceSamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
      Origin = 'DB.MaterialMOQ.SamplePriceVN'
    end
    object Qry_MaterialPriceEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
      Origin = 'DB.MaterialMOQ.EffectiveDate'
    end
  end
  object DS_Monthly: TDataSource
    DataSet = Qry_Monthly
    Left = 152
    Top = 224
  end
  object Qry_Monthly: TQuery
    OnCalcFields = Qry_MonthlyCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '     select CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAST(' +
        'MONTH(KCRK.USERDate)as varchar),2) as YM'
      
        '            ,SUM(isnull(KCRKS.USACC,0)+(isnull(KCRKS.VNACC,0)/IS' +
        'NULL(CGHLS.CWHL,0))) as USamount'
      '     from KCRK'
      '    left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      '    left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      '    left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        '    left join CGHLS on CGHLS.HLYEAR+'#39'/'#39'+CGHLS.HLMONTH+'#39'/'#39'+CGHLS.' +
        'HLDAY=convert(varchar,KCRK.USERDate,111)'
      '    where 1=2'
      
        '     group by CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAS' +
        'T(MONTH(KCRK.USERDate)as varchar),2)'
      
        '     order by CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAS' +
        'T(MONTH(KCRK.USERDate)as varchar),2)'
      '')
    Left = 152
    Top = 256
    object Qry_MonthlyYM: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 34
    end
    object Qry_MonthlyUSamount: TCurrencyField
      FieldName = 'USamount'
      DisplayFormat = '##.00'
      currency = False
    end
    object Qry_MonthlyArticle_: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Article_'
      Calculated = True
    end
    object Qry_MonthlyEntry_: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Entry_'
      Calculated = True
    end
    object Qry_MonthlyNoCfm_: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NoCfm_'
      Calculated = True
    end
    object Qry_MonthlyNoCfm: TIntegerField
      FieldName = 'NoCfm'
    end
    object Qry_MonthlyEntry: TIntegerField
      FieldName = 'Entry'
    end
    object Qry_MonthlyArticle: TIntegerField
      FieldName = 'Article'
    end
    object Qry_MonthlyTool: TCurrencyField
      FieldName = 'Tool'
      DisplayFormat = '##.00'
      currency = False
    end
    object Qry_MonthlyMaterial: TCurrencyField
      FieldName = 'Material'
      DisplayFormat = '##.00'
      currency = False
    end
    object Qry_MonthlyFES: TCurrencyField
      FieldName = 'FES'
      DisplayFormat = '##.00'
      currency = False
    end
    object Qry_MonthlyPDT: TCurrencyField
      FieldName = 'PDT'
      DisplayFormat = '##.00'
      currency = False
    end
    object Qry_MonthlyHandCarry: TCurrencyField
      FieldName = 'HandCarry'
      currency = False
    end
    object Qry_MonthlyTransport: TCurrencyField
      FieldName = 'Transport'
      currency = False
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '     select CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAST(' +
        'MONTH(KCRK.USERDate)as varchar),2) as YM'
      
        '            ,SUM(isnull(KCRKS.USACC,0)+(isnull(KCRKS.VNACC,0)/IS' +
        'NULL(CGHLS.CWHL,0))) as USamount'
      '     from KCRK'
      '    left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      '    left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      '    left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        '    left join CGHLS on CGHLS.HLYEAR+'#39'/'#39'+CGHLS.HLMONTH+'#39'/'#39'+CGHLS.' +
        'HLDAY=convert(varchar,KCRK.USERDate,111)'
      '    where 1=2'
      
        '     group by CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAS' +
        'T(MONTH(KCRK.USERDate)as varchar),2)'
      
        '     order by CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAS' +
        'T(MONTH(KCRK.USERDate)as varchar),2)'
      '')
    Left = 328
    Top = 224
  end
  object DS_Season: TDataSource
    DataSet = Qry_Season
    Left = 192
    Top = 224
  end
  object Qry_Season: TQuery
    OnCalcFields = Qry_SeasonCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select A.DR,'
      '         C.TR,'
      '         B.OK,'
      '         A.jijie'
      'from (select count(Dropped)as DR,'
      '             jijie'
      '      from (select XXZLKF.XieXing,'
      '                   XXZLKF.shehao,'
      '                   XXZLKF.dropped,'
      '                   KFXXZL.jijie'
      '            from XXZLKF'
      '            left join KFXXZL on XXZLKF.XieXing=KFXXZL.XieXing'
      
        '                                and XXZLKF.shehao=KFXXZL.shehao)' +
        'A'
      '      where (Dropped='#39'1'#39')'
      
        '            and right(left(jijie,4),2) between '#39'09'#39' and '#39'11'#39' gro' +
        'up by jijie) A'
      ''
      'LEFT JOIN (select count(transfer)as TR,'
      '             jijie'
      '      from (select XXZLKF.XieXing,'
      '                   XXZLKF.shehao,'
      '                   XXZLKF.transfer,'
      '                   KFXXZL.jijie'
      '            from XXZLKF'
      '            left join KFXXZL on XXZLKF.XieXing=KFXXZL.XieXing'
      
        '                                and XXZLKF.shehao=KFXXZL.shehao)' +
        'A'
      '      where (transfer='#39'1'#39')'
      
        '            and right(left(jijie,4),2) between '#39'09'#39' and '#39'11'#39' gro' +
        'up by jijie) C on a.jijie=c.jijie'
      'left join (select count(*)as OK,'
      '                  jijie'
      '           from (select XXZLKF.XieXing,'
      '                        XXZLKF.shehao,'
      '                        XXZLKF.dropped,'
      '                        XXZLKF.transfer,'
      '                        KFXXZL.jijie'
      '                 from XXZLKF'
      
        '                 left join KFXXZL on XXZLKF.XieXing=KFXXZL.XieXi' +
        'ng and XXZLKF.shehao=KFXXZL.shehao)A'
      '                 where ((Dropped='#39'0'#39' or Dropped is null)'
      '                        and'
      '                       (transfer='#39'0'#39' or transfer is null))'
      
        '                       and right(left(jijie,4),2) between '#39'09'#39' a' +
        'nd '#39'11'#39
      '                 group by jijie) B on A.jijie = B.jijie')
    Left = 192
    Top = 256
    object strngfldQuery1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Qry_SeasonARTICLE: TIntegerField
      FieldName = 'ARTICLE'
    end
    object Qry_SeasonCR1: TCurrencyField
      FieldName = 'CR1'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonCR2PSE: TCurrencyField
      FieldName = 'CR2PSE'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonSMS: TCurrencyField
      FieldName = 'SMS'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonSMU: TCurrencyField
      FieldName = 'SMU'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonSEE: TCurrencyField
      FieldName = 'SEE'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonFES: TCurrencyField
      FieldName = 'FES'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonPDT: TCurrencyField
      FieldName = 'PDT'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonOTHER: TCurrencyField
      FieldName = 'OTHER'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonTOOL: TCurrencyField
      FieldName = 'TOOL'
      DisplayFormat = '##,##'
      currency = False
    end
    object Qry_SeasonSUM_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SUM_'
      DisplayFormat = '##,##'
      currency = False
      Calculated = True
    end
  end
  object DS_Check: TDataSource
    DataSet = Qry_Check
    Left = 232
    Top = 224
  end
  object Qry_Check: TQuery
    OnCalcFields = Qry_SeasonCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select STAGE from cgzlss'
      
        'where exists (select * from CGZL WHERE CGLX='#39'6'#39' AND CGZL.CGNO=CG' +
        'ZLSS.CGNO)'
      
        '      AND EXISTS (SELECT * FROM KFXXZL WHERE KFXXZL.ARTICLE=CGZL' +
        'SS.ZLBH)'
      'GROUP BY STAGE')
    Left = 232
    Top = 256
    object Qry_CheckSTAGE: TStringField
      FieldName = 'STAGE'
      FixedChar = True
      Size = 15
    end
  end
  object DS_Check2: TDataSource
    DataSet = Qry_Check2
    Left = 264
    Top = 224
  end
  object Qry_Check2: TQuery
    OnCalcFields = Qry_SeasonCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select season from cgzl  where  cglx='#39'6'#39' '
      
        '                          and exists (select * from cgzls where ' +
        'cgzls.qty>0 and cgzls.cgno=cgzl.cgno)'
      ' group by season')
    Left = 264
    Top = 256
    object Qry_Check2season: TStringField
      FieldName = 'season'
      FixedChar = True
    end
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 71
    Top = 300
  end
  object EnDet: TQuery
    OnCalcFields = EnDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS_Master
    SQL.Strings = (
      'select'
      'KCRKS.RKNO'
      ',KCRKS.CLBH'
      ',KCRKS.CGBH'
      ',KCRKS.RKSB'
      ',KCRKS.Qty'
      ',KCRKS.PaQty'
      ',KCRKS.USPrice'
      ',KCRKS.USACC'
      ',KCRKS.HandCarry_USPrice'
      ',KCRKS.HandCarry_USACC'
      ',KCRKS.VNPrice'
      ',KCRKS.VNACC'
      ',KCRKS.CWHL'
      ',KCRKS.CostID'
      ',KCRKS.USERID'
      ',KCRKS.USERDATE'
      ',KCRKS.YN'
      ',KCRKS.FKZT'
      ',KCRKS.DOCNO'
      ',KCRKS.VNPriceCT'
      ',KCRKS.RKMEMO'
      ',KCRKS.CNO'
      ',KCRKS.MEMO'
      
        ',CLZL.YWPM,CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpos' +
        'e ,CGZL.CGDATE'
      ''
      'from KCRKS'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH'
      'left join CGZL on CGZL.CGNO=KCRKS.CGBH'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.CGBH,KCRKS.CLBH')
    Left = 71
    Top = 328
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EnDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object EnDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object EnDetPaQty: TCurrencyField
      FieldName = 'PaQty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EnDetCWHL: TIntegerField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object EnDetVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0.0000'
    end
    object EnDetVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object EnDetCARTON_: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CARTON_'
      Calculated = True
    end
    object EnDetLENGTH: TFloatField
      FieldName = 'LENGTH'
    end
    object EnDetWIDTH: TFloatField
      FieldName = 'WIDTH'
    end
    object EnDetHEIGHT: TFloatField
      FieldName = 'HEIGHT'
    end
    object EnDetVNACC1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VNACC1'
      Calculated = True
    end
    object EnDetVNPriceCT: TFloatField
      FieldName = 'VNPriceCT'
    end
    object EnDetMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 200
    end
    object EnDetSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object EnDetPurpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object EnDetFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object EnDetCharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object EnDetQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object EnDetQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object EnDetERP_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ERP_USPrice_'
      currency = False
      Calculated = True
    end
    object EnDetERP_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ERP_VNPrice_'
      currency = False
      Calculated = True
    end
    object EnDetCGDATE: TDateTimeField
      FieldName = 'CGDATE'
    end
    object EnDetHandCarry_USPrice: TCurrencyField
      FieldName = 'HandCarry_USPrice'
    end
    object EnDetHandCarry_USACC: TCurrencyField
      FieldName = 'HandCarry_USACC'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '     select CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAST(' +
        'MONTH(KCRK.USERDate)as varchar),2) as YM'
      
        '            ,SUM(isnull(KCRKS.USACC,0)+(isnull(KCRKS.VNACC,0)/IS' +
        'NULL(CGHLS.CWHL,0))) as USamount'
      '     from KCRK'
      '    left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      '    left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      '    left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        '    left join CGHLS on CGHLS.HLYEAR+'#39'/'#39'+CGHLS.HLMONTH+'#39'/'#39'+CGHLS.' +
        'HLDAY=convert(varchar,KCRK.USERDate,111)'
      '    where 1=2'
      
        '     group by CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAS' +
        'T(MONTH(KCRK.USERDate)as varchar),2)'
      
        '     order by CAST(YEAR(KCRK.USERDate)as varchar)+right('#39'00'#39'+CAS' +
        'T(MONTH(KCRK.USERDate)as varchar),2)'
      '')
    Left = 376
    Top = 224
  end
  object DS_Supplier: TDataSource
    DataSet = Qry_Supplier
    Left = 424
    Top = 224
  end
  object Qry_Supplier: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZSZL.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_N' +
        'ame'
      '       ,ZSZL.ZSYWJC'
      
        '       ,ZSZL.MZSDH,(SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZ' +
        'L.MZSDH) AS MZSYWJC'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH'
      'left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser'
      'where KCRK.RKNO=KCRKS.RKNO and 1=2'
      '')
    Left = 424
    Top = 256
    object StringField15: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object StringField21: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField22: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object StringField23: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'USamount'
      currency = False
    end
    object StringField25: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object StringField26: TStringField
      FieldName = 'MZSYWJC'
      FixedChar = True
    end
  end
  object Pop_Monthly: TPopupMenu
    Left = 153
    Top = 292
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
