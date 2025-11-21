object ScanTBReceive1: TScanTBReceive1
  Left = 276
  Top = 190
  Width = 1428
  Height = 756
  Caption = 'Scan TBReceive'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1412
    Height = 717
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1410
      Height = 208
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 243
        Height = 37
        Caption = 'TB Receive Scan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 48
        Top = 93
        Width = 63
        Height = 20
        Caption = 'GiaCong'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 256
        Top = 32
        Width = 182
        Height = 45
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 624
        Top = 139
        Width = 65
        Height = 24
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object DBCheckBox1: TDBCheckBox
        Left = 459
        Top = 20
        Width = 144
        Height = 13
        Caption = 'lamination_JNG'
        Color = clMenu
        DataField = 'lamination'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 459
        Top = 43
        Width = 164
        Height = 14
        Caption = 'lamination_CRMTO'
        DataField = 'lamination_CRMTO'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 459
        Top = 67
        Width = 164
        Height = 14
        Caption = 'lamination_Amico'
        DataField = 'Amico'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 626
        Top = 20
        Width = 96
        Height = 14
        Caption = 'BAO HE'
        DataField = 'Sublimation'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 626
        Top = 43
        Width = 115
        Height = 14
        Caption = 'Kiet Phong'
        DataField = 'kietphong'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 626
        Top = 67
        Width = 115
        Height = 14
        Caption = 'LiMao'
        DataField = 'Limao'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 626
        Top = 89
        Width = 150
        Height = 14
        Caption = 'Laser_ThangKim'
        DataField = 'Laser'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 458
        Top = 91
        Width = 152
        Height = 14
        Caption = 'Printing'
        DataField = 'Printing'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 458
        Top = 116
        Width = 152
        Height = 14
        Caption = 'Embroidery'
        DataField = 'E_embroidery'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object PageControl1: TPageControl
        Left = 776
        Top = 7
        Width = 601
        Height = 170
        ActivePage = TabSheet1
        TabOrder = 11
        object TabSheet1: TTabSheet
          Caption = 'PlanTeam'
          object CheckBox2: TCheckBox
            Left = 139
            Top = 10
            Width = 71
            Height = 25
            Caption = 'BAO HE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object CheckBox1: TCheckBox
            Left = 8
            Top = 8
            Width = 116
            Height = 25
            Caption = 'lamination_JNG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object CheckBox5: TCheckBox
            Left = 8
            Top = 28
            Width = 116
            Height = 26
            Caption = 'lamination_CRMTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object CheckBox7: TCheckBox
            Left = 8
            Top = 50
            Width = 108
            Height = 24
            Caption = 'lamination_Amico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object CheckBox8: TCheckBox
            Left = 138
            Top = 47
            Width = 71
            Height = 25
            Caption = 'LiMao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object CheckBox6: TCheckBox
            Left = 138
            Top = 28
            Width = 71
            Height = 25
            Caption = 'Kiet Phong'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CheckBox9: TCheckBox
            Left = 8
            Top = 71
            Width = 120
            Height = 26
            Caption = 'Laser_Thang Kim'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object CheckBox4: TCheckBox
            Left = 8
            Top = 89
            Width = 104
            Height = 25
            Caption = 'Printing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object CheckBox3: TCheckBox
            Left = 8
            Top = 110
            Width = 146
            Height = 25
            Caption = 'Embroidery'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit3: TDBEdit
            Left = 156
            Top = 97
            Width = 98
            Height = 21
            Color = clScrollBar
            DataField = 'ETC'
            DataSource = DataSource3
            ReadOnly = True
            TabOrder = 9
          end
          object Edit2: TEdit
            Left = 106
            Top = 97
            Width = 52
            Height = 21
            Color = clScrollBar
            ReadOnly = True
            TabOrder = 10
            Text = 'OldETC'
          end
          object Edit3: TEdit
            Left = 106
            Top = 116
            Width = 52
            Height = 21
            Color = clScrollBar
            ReadOnly = True
            TabOrder = 11
            Text = 'NewETC'
          end
          object Edit4: TEdit
            Left = 156
            Top = 116
            Width = 98
            Height = 21
            TabOrder = 12
          end
          object CheckBox10: TCheckBox
            Left = 137
            Top = 70
            Width = 71
            Height = 25
            Caption = 'DA JU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object Panel5: TPanel
            Left = 448
            Top = 0
            Width = 145
            Height = 142
            Align = alRight
            TabOrder = 14
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 143
              Height = 32
              Align = alTop
              Caption = 'Sample Room'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox11: TCheckBox
              Left = 10
              Top = 38
              Width = 103
              Height = 25
              Caption = 'CuttingOK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox12: TCheckBox
              Left = 10
              Top = 64
              Width = 103
              Height = 25
              Caption = 'StitchingOK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox13: TCheckBox
              Left = 10
              Top = 89
              Width = 126
              Height = 25
              Caption = 'AssemblingOK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox18: TCheckBox
              Left = 10
              Top = 115
              Width = 126
              Height = 25
              Caption = 'PackingOK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel7: TPanel
            Left = 288
            Top = 0
            Width = 160
            Height = 142
            Align = alRight
            TabOrder = 15
            object Panel8: TPanel
              Left = 1
              Top = 1
              Width = 158
              Height = 32
              Align = alTop
              Caption = 'WareHouse'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox14: TCheckBox
              Left = 10
              Top = 38
              Width = 119
              Height = 25
              Caption = 'CuttingMTRL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox15: TCheckBox
              Left = 10
              Top = 64
              Width = 135
              Height = 25
              Caption = 'StitchingMTRL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox16: TCheckBox
              Left = 10
              Top = 90
              Width = 149
              Height = 25
              Caption = 'AssemblingMTRL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox17: TCheckBox
              Left = 9
              Top = 115
              Width = 136
              Height = 25
              Caption = 'PackingMTRL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
      object DBEdit1: TDBEdit
        Left = 113
        Top = 93
        Width = 98
        Height = 28
        Color = clScrollBar
        DataField = 'GCuserid'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit2: TDBEdit
        Left = 223
        Top = 93
        Width = 215
        Height = 28
        Color = clScrollBar
        DataField = 'GCuserdate'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DateTimePicker1: TDateTimePicker
        Left = 1034
        Top = 126
        Width = 18
        Height = 21
        Date = 0.717534120369236900
        Time = 0.717534120369236900
        TabOrder = 14
        OnChange = DateTimePicker1Change
      end
      object DBCheckBox10: TDBCheckBox
        Left = 626
        Top = 113
        Width = 79
        Height = 14
        Caption = 'DA JU'
        DataField = 'DAJU'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 852
      Top = 209
      Width = 559
      Height = 507
      Align = alClient
      DataSource = DataSource3
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
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Testno'
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'clzmlb'
          Footers = <>
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'ywsm'
          Footers = <>
          Title.Caption = 'Parts'
          Width = 146
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          Title.Caption = 'Supplier'
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'giacong'
          Footers = <>
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'days'
          Footers = <>
          Title.Caption = 'Days'
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Title.Caption = 'Material'
          Width = 3
        end
        item
          EditButtons = <>
          FieldName = 'CLYWMC'
          Footers = <>
          Title.Caption = 'MaterialDES.'
          Width = 1141
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 209
      Width = 851
      Height = 507
      Align = alLeft
      Caption = 'Panel3'
      TabOrder = 2
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 849
        Height = 104
        Align = alTop
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'TestNO'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SR'
            Width = 161
          end
          item
            EditButtons = <>
            FieldName = 'ETC'
            Footers = <>
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'TBReceive'
            Footers = <>
            Visible = False
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'TBReceiveDate'
            Footers = <>
            Title.Caption = 'TBReceive Date'
            Width = 161
          end
          item
            EditButtons = <>
            FieldName = 'lamination'
            Footers = <>
            Title.Caption = 'JNG'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'lamination_CRMTO'
            Footers = <>
            Title.Caption = 'CRMTO'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'Amico'
            Footers = <>
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'Sublimation'
            Footers = <>
            Title.Caption = 'BAO HE'
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'kietphong'
            Footers = <>
            Title.Caption = 'Kiet Phong'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'Limao'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Laser'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Printing'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'E_embroidery'
            Footers = <>
            Title.Caption = 'Embroidery'
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'DAJU'
            Footers = <>
          end>
      end
      object Panel4: TPanel
        Left = 1
        Top = 105
        Width = 849
        Height = 401
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 847
          Height = 399
          Align = alClient
          Color = clWhite
          ColumnDefValues.Title.TitleButton = True
          DataSource = DataSource2
          EvenRowColor = clWhite
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = DBGridEh3CellClick
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'testno'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'TestNO'
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SR'
              Width = 161
            end
            item
              EditButtons = <>
              FieldName = 'ETC'
              Footers = <>
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'TBReceive'
              Footers = <>
              Visible = False
              Width = 105
            end
            item
              EditButtons = <>
              FieldName = 'TBReceiveDate'
              Footers = <>
              Title.Caption = 'TBReceive Date'
              Width = 162
            end
            item
              EditButtons = <>
              FieldName = 'lamination'
              Footers = <>
              Title.Caption = 'JNG'
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'lamination_CRMTO'
              Footers = <>
              Title.Caption = 'CRMTO'
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'Amico'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Sublimation'
              Footers = <>
              Title.Caption = 'BAO HE'
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'kietphong'
              Footers = <>
              Title.Caption = 'Kiet Phong'
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'Limao'
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'Laser'
              Footers = <>
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'Printing'
              Footers = <>
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'E_embroidery'
              Footers = <>
              Title.Caption = 'Embroidery'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'DAJU'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'GCuserid'
              Footers = <>
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'GCuserdate'
              Footers = <>
              Width = 135
            end>
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 176
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Stage,ETC,testno,Article,TBReceive,TBReceiveDate,laminati' +
        'on,Sublimation,E_embroidery,Printing,lamination_CRMTO,kietphong,' +
        'Amico,Limao,Laser,DAJU,GCuserid,GCuserdate  from shoetest')
    Left = 224
    Top = 224
    object Query1testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1TBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object Query1lamination: TBooleanField
      DisplayWidth = 12
      FieldName = 'lamination'
    end
    object Query1Sublimation: TBooleanField
      FieldName = 'Sublimation'
    end
    object Query1E_embroidery: TBooleanField
      FieldName = 'E_embroidery'
    end
    object Query1Printing: TBooleanField
      FieldName = 'Printing'
    end
    object Query1lamination_CRMTO: TBooleanField
      FieldName = 'lamination_CRMTO'
    end
    object Query1kietphong: TBooleanField
      FieldName = 'kietphong'
    end
    object Query1Amico: TBooleanField
      FieldName = 'Amico'
    end
    object Query1Limao: TBooleanField
      FieldName = 'Limao'
    end
    object Query1Laser: TBooleanField
      FieldName = 'Laser'
    end
    object Query1DAJU: TBooleanField
      FieldName = 'DAJU'
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1ETC: TDateTimeField
      FieldName = 'ETC'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1finish: TBooleanField
      FieldName = 'finish'
    end
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select testno,Article,TBReceive,TBReceiveDate from shoetest')
    Left = 320
    Top = 344
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 616
    Top = 192
  end
  object Query4: TQuery
    AfterScroll = Query4AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select stage,shoetest.testno,Article,shoetest.ETC,TBReceive,TBRe' +
        'ceiveDate,lamination,Sublimation,E_embroidery,Printing,laminatio' +
        'n_CRMTO,kietphong,Amico,Limao,Laser,DAJU,GCuserid,GCuserdate fro' +
        'm shoetest'
      
        'where CONVERT(varchar(100), TBReceiveDate, 112) = CONVERT(varcha' +
        'r(100), GETDATE(), 112)')
    Left = 282
    Top = 530
    object Query4testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query4Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query4Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query4ETC: TDateTimeField
      FieldName = 'ETC'
    end
    object Query4TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query4TBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object Query4lamination: TBooleanField
      FieldName = 'lamination'
    end
    object Query4Sublimation: TBooleanField
      FieldName = 'Sublimation'
    end
    object Query4E_embroidery: TBooleanField
      FieldName = 'E_embroidery'
    end
    object Query4Printing: TBooleanField
      FieldName = 'Printing'
    end
    object Query4lamination_CRMTO: TBooleanField
      FieldName = 'lamination_CRMTO'
    end
    object Query4kietphong: TBooleanField
      FieldName = 'kietphong'
    end
    object Query4Amico: TBooleanField
      FieldName = 'Amico'
    end
    object Query4Limao: TBooleanField
      FieldName = 'Limao'
    end
    object Query4Laser: TBooleanField
      FieldName = 'Laser'
    end
    object Query4DAJU: TBooleanField
      FieldName = 'DAJU'
    end
    object Query4GCuserid: TStringField
      FieldName = 'GCuserid'
      FixedChar = True
      Size = 15
    end
    object Query4GCuserdate: TDateTimeField
      FieldName = 'GCuserdate'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 282
    Top = 490
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select Testno,ETC,ywsm,clzmlb,ypdh,zsywjc,CLBH,isnull(giacong,'#39#39 +
        ') giacong,CLBH,'
      'case when zsywjc='#39'CRMTO'#39' then '#39'3'#39
      '     when zsywjc='#39'JNG'#39' and giacong='#39'Lamination-JNG'#39' then '#39'1'#39
      '     when zsywjc='#39'JNG'#39' and giacong='#39'Print-JNG'#39' then '#39'1'#39
      '     when zsywjc='#39'JNG'#39' and giacong='#39'Print3D-JNG'#39' then '#39'3'#39
      '     when zsywjc='#39'Amico'#39'  then '#39'6'#39
      '     when zsywjc='#39'LiMao'#39'  then '#39'6'#39
      '     when zsywjc='#39'BAO HE'#39'  then '#39'6'#39
      '     when zsywjc='#39'Kiet Phong'#39'  then '#39'6'#39
      '     when giacong='#39'Embroidery'#39' then '#39'3'#39
      'end days'
      ',CLYWMC from ('
      'select Testno,ETC,clzmlb,ywsm,ypdh,zsywjc,CLBH'
      
        ',case when CLYWMC like '#39'%print%'#39' and CLYWMC not like '#39'%3D%'#39' and ' +
        'zsywjc='#39'JNG'#39' then '#39'Print-JNG'#39
      
        #9'  when CLYWMC like '#39'%3D%print%'#39'  and zsywjc='#39'JNG'#39' then '#39'Print3D' +
        '-JNG'#39
      #9'  when CLYWMC like '#39'%Embroidery%'#39' then '#39'Embroidery'#39
      
        #9'  when CLYWMC not like '#39'%Print%'#39' and zsywjc='#39'JNG'#39' then '#39'Laminat' +
        'ion-JNG'#39
      #9'  end giacong'
      ',CLYWMC from ('
      
        'SELECT  shoetest.testno,shoetest.ETC,ypzls.YPDH ,ypzls.xh ,ypzls' +
        '.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss' +
        ' ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH'
      
        ',ypzls.Remark ,bwzl.ywsm+'#39'-'#39'+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl' +
        '.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.z' +
        'sjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc'
      'FROM shoetest'
      'left join ypzls on ypzls.YPDH=shoetest.ypdh'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh'
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE  1=2'
      'union all'
      
        'SELECT shoetest.testno,shoetest.ETC,ypzls.YPDH ,ypzls.xh ,ypzls.' +
        'xh1 ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1 as CLBH'
      ' ,ypzls.BWLB ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH'
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,bwzl.zwsm,bwzl.ywsm ,clzl.zwpm AS CL' +
        'MC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc'
      'FROM shoetest'
      'left join ypzls on ypzls.YPDH=shoetest.ypdh'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE CLZHZL.SYL>0   and 1=2'
      'union all'
      
        'Select testno,ETC,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Re' +
        'lation+'#39'1'#39' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,c' +
        'lzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH'
      
        ',clzhzl2.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm A' +
        'S CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc'
      ' from ('
      
        'SELECT shoetest.testno,shoetest.ETC,ypzls.YPDH ,ypzls.xh ,ypzls.' +
        'xh1 ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1 as CLBH'
      ' ,ypzls.BWLB ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH'
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,bwzl.zwsm,bwzl.ywsm ,clzl.zwpm AS CL' +
        'MC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc'
      'FROM shoetest'
      'left join ypzls on ypzls.YPDH=shoetest.ypdh'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE  CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39'  and 1=2'
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      
        ')  YPZLS where zsywjc in ('#39'BAO HE'#39','#39'LiMao'#39','#39'kiet phong'#39','#39'Amico'#39',' +
        #39'CRMTO'#39','#39'JNG'#39','#39'TIENHUNG'#39')'
      'group by testno,ETC,clzmlb,ypdh,zsywjc,CLYWMC,ywsm,CLBH)main'
      'order by zsywjc,giacong'
      ''
      ''
      '')
    Left = 658
    Top = 194
    object Query3Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query3ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object Query3clzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object Query3ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query3zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query3CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3giacong: TStringField
      FieldName = 'giacong'
      FixedChar = True
      Size = 14
    end
    object Query3CLBH_1: TStringField
      FieldName = 'CLBH_1'
      FixedChar = True
      Size = 15
    end
    object Query3days: TStringField
      FieldName = 'days'
      FixedChar = True
      Size = 1
    end
    object Query3CLYWMC: TStringField
      FieldName = 'CLYWMC'
      FixedChar = True
      Size = 200
    end
    object Query3ETC: TDateTimeField
      FieldName = 'ETC'
    end
  end
end
