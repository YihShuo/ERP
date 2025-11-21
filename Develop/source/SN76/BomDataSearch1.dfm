object BomDataSearch: TBomDataSearch
  Left = 241
  Top = 144
  Width = 1305
  Height = 675
  Caption = 'BomDataSearch'
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
    Width = 1289
    Height = 636
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1287
      Height = 634
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Sample'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1279
          Height = 140
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 22
            Top = 28
            Width = 36
            Height = 13
            Caption = 'Season'
          end
          object Label2: TLabel
            Left = 31
            Top = 51
            Width = 28
            Height = 13
            Caption = 'Stage'
          end
          object Label3: TLabel
            Left = 29
            Top = 76
            Width = 30
            Height = 13
            Caption = 'Buyno'
          end
          object Label4: TLabel
            Left = 140
            Top = 28
            Width = 53
            Height = 13
            Caption = 'ShoeName'
          end
          object Label7: TLabel
            Left = 345
            Top = 0
            Width = 52
            Height = 20
            Caption = 'Include'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 507
            Top = 0
            Width = 77
            Height = 20
            Caption = 'NotInclude'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 140
            Top = 53
            Width = 57
            Height = 13
            Caption = 'Supplier.NO'
          end
          object Label12: TLabel
            Left = 133
            Top = 76
            Width = 60
            Height = 13
            Caption = 'Supplier.Des'
          end
          object Label14: TLabel
            Left = 625
            Top = 31
            Width = 36
            Height = 13
            Caption = 'Outsole'
          end
          object Label15: TLabel
            Left = 640
            Top = 53
            Width = 20
            Height = 13
            Caption = 'Last'
          end
          object CuttingDie: TLabel
            Left = 614
            Top = 77
            Width = 49
            Height = 13
            Caption = 'CuttingDie'
          end
          object Label46: TLabel
            Left = 636
            Top = 102
            Width = 24
            Height = 13
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 763
            Top = 31
            Width = 38
            Height = 13
            Caption = 'Part NO'
          end
          object Label34: TLabel
            Left = 764
            Top = 56
            Width = 37
            Height = 13
            Caption = 'Part CN'
          end
          object Label35: TLabel
            Left = 764
            Top = 79
            Width = 37
            Height = 13
            Caption = 'Part EN'
          end
          object Label38: TLabel
            Left = 163
            Top = 105
            Width = 16
            Height = 13
            Caption = 'To:'
          end
          object Label37: TLabel
            Left = 337
            Top = 117
            Width = 22
            Height = 13
            Caption = 'SR#'
          end
          object Button1: TButton
            Left = 896
            Top = 22
            Width = 60
            Height = 30
            Caption = 'Query'
            TabOrder = 0
            OnClick = Button1Click
          end
          object jijiet: TEdit
            Left = 65
            Top = 26
            Width = 66
            Height = 21
            TabOrder = 1
          end
          object Staget: TEdit
            Left = 65
            Top = 51
            Width = 66
            Height = 21
            TabOrder = 2
          end
          object Buynoc: TCheckBox
            Left = 980
            Top = 66
            Width = 78
            Height = 14
            Caption = 'Buyno'
            TabOrder = 3
          end
          object Buynot: TEdit
            Left = 65
            Top = 74
            Width = 65
            Height = 21
            TabOrder = 4
          end
          object Shoenamet: TEdit
            Left = 202
            Top = 27
            Width = 78
            Height = 21
            TabOrder = 5
          end
          object SplitCK: TCheckBox
            Left = 980
            Top = 50
            Width = 59
            Height = 14
            Caption = 'Split=*'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
          object Panel4: TPanel
            Left = 293
            Top = 20
            Width = 156
            Height = 92
            Color = clActiveCaption
            TabOrder = 7
            object Label5: TLabel
              Left = 26
              Top = 9
              Width = 40
              Height = 13
              Caption = 'Mat.Eng'
            end
            object Label6: TLabel
              Left = 6
              Top = 28
              Width = 59
              Height = 13
              Caption = 'Mat.Chinese'
            end
            object MatNO: TLabel
              Left = 32
              Top = 48
              Width = 34
              Height = 13
              Caption = 'MatNO'
            end
            object Label36: TLabel
              Left = 45
              Top = 70
              Width = 19
              Height = 13
              Caption = 'Unit'
            end
            object MatEngt: TEdit
              Left = 72
              Top = 7
              Width = 78
              Height = 21
              TabOrder = 0
            end
            object MatChineset: TEdit
              Left = 72
              Top = 27
              Width = 78
              Height = 21
              TabOrder = 1
            end
            object MatNOt: TEdit
              Left = 72
              Top = 46
              Width = 78
              Height = 21
              TabOrder = 2
            end
            object unit_in: TEdit
              Left = 72
              Top = 68
              Width = 78
              Height = 21
              TabOrder = 3
            end
          end
          object Panel5: TPanel
            Left = 455
            Top = 20
            Width = 157
            Height = 91
            Color = clActiveCaption
            TabOrder = 8
            object Label9: TLabel
              Left = 26
              Top = 9
              Width = 40
              Height = 13
              Caption = 'Mat.Eng'
            end
            object Label10: TLabel
              Left = 6
              Top = 28
              Width = 59
              Height = 13
              Caption = 'Mat.Chinese'
            end
            object Label13: TLabel
              Left = 32
              Top = 48
              Width = 34
              Height = 13
              Caption = 'MatNO'
            end
            object Label39: TLabel
              Left = 45
              Top = 69
              Width = 19
              Height = 13
              Caption = 'Unit'
            end
            object NotMatEngt: TEdit
              Left = 72
              Top = 6
              Width = 78
              Height = 21
              TabOrder = 0
            end
            object notMatChineset: TEdit
              Left = 72
              Top = 25
              Width = 78
              Height = 21
              TabOrder = 1
            end
            object NotMatNOt: TEdit
              Left = 72
              Top = 45
              Width = 78
              Height = 21
              TabOrder = 2
            end
            object not_unit: TEdit
              Left = 72
              Top = 66
              Width = 78
              Height = 21
              TabOrder = 3
            end
          end
          object SupplierNOt: TEdit
            Left = 202
            Top = 51
            Width = 78
            Height = 21
            TabOrder = 9
          end
          object SupplierDest: TEdit
            Left = 202
            Top = 75
            Width = 78
            Height = 21
            TabOrder = 10
          end
          object Outsolet: TEdit
            Left = 667
            Top = 27
            Width = 79
            Height = 21
            TabOrder = 11
          end
          object Lastt: TEdit
            Left = 667
            Top = 50
            Width = 79
            Height = 21
            TabOrder = 12
          end
          object DAOMHt: TEdit
            Left = 667
            Top = 74
            Width = 79
            Height = 21
            TabOrder = 13
          end
          object Button2: TButton
            Left = 896
            Top = 59
            Width = 60
            Height = 30
            Caption = 'Excel'
            TabOrder = 14
            OnClick = Button2Click
          end
          object CheckBox1: TCheckBox
            Left = 980
            Top = 83
            Width = 78
            Height = 13
            Caption = 'or'
            TabOrder = 15
            OnClick = CheckBox1Click
          end
          object devtype: TComboBox
            Left = 667
            Top = 98
            Width = 61
            Height = 24
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 16
            Text = 'Inline'
            Items.Strings = (
              ''
              'Inline'
              'Great@Good'
              'QuickResponse'
              'Incubate'
              'SMU')
          end
          object CB4: TCheckBox
            Left = 980
            Top = 8
            Width = 157
            Height = 26
            BiDiMode = bdLeftToRight
            Caption = 'Developing Dropped Show'
            Color = clBtnFace
            ParentBiDiMode = False
            ParentColor = False
            TabOrder = 17
          end
          object CB7: TCheckBox
            Left = 980
            Top = 29
            Width = 151
            Height = 22
            BiDiMode = bdLeftToRight
            Caption = 'Production Dropped Show'
            Color = clBtnFace
            ParentBiDiMode = False
            ParentColor = False
            TabOrder = 18
          end
          object Edit1: TEdit
            Left = 808
            Top = 76
            Width = 78
            Height = 21
            TabOrder = 19
          end
          object Edit2: TEdit
            Left = 808
            Top = 52
            Width = 78
            Height = 21
            TabOrder = 20
          end
          object Edit3: TEdit
            Left = 808
            Top = 27
            Width = 78
            Height = 21
            TabOrder = 21
          end
          object DateCK: TCheckBox
            Left = 14
            Top = 103
            Width = 47
            Height = 17
            Caption = 'Date'
            TabOrder = 22
          end
          object DTP1: TDateTimePicker
            Left = 65
            Top = 101
            Width = 97
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            TabOrder = 23
          end
          object DTP2: TDateTimePicker
            Left = 184
            Top = 101
            Width = 97
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            TabOrder = 24
          end
          object Edit4: TEdit
            Left = 365
            Top = 114
            Width = 243
            Height = 21
            TabOrder = 25
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 140
          Width = 1279
          Height = 466
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1277
            Height = 464
            Align = alClient
            DataSource = SampleDS
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
          end
          object Memo1: TMemo
            Left = 752
            Top = 392
            Width = 385
            Height = 41
            Lines.Strings = (
              'Memo1')
            TabOrder = 1
            Visible = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Prod'
        ImageIndex = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1279
          Height = 98
          Align = alTop
          TabOrder = 0
          object Label16: TLabel
            Left = 22
            Top = 28
            Width = 36
            Height = 13
            Caption = 'Season'
          end
          object Label18: TLabel
            Left = 29
            Top = 67
            Width = 30
            Height = 13
            Caption = 'Buyno'
          end
          object Label19: TLabel
            Left = 140
            Top = 28
            Width = 53
            Height = 13
            Caption = 'ShoeName'
          end
          object Label20: TLabel
            Left = 345
            Top = 0
            Width = 52
            Height = 20
            Caption = 'Include'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 507
            Top = 0
            Width = 77
            Height = 20
            Caption = 'NotInclude'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 140
            Top = 48
            Width = 57
            Height = 13
            Caption = 'Supplier.NO'
          end
          object Label23: TLabel
            Left = 133
            Top = 67
            Width = 60
            Height = 13
            Caption = 'Supplier.Des'
          end
          object Label24: TLabel
            Left = 625
            Top = 31
            Width = 36
            Height = 13
            Caption = 'Outsole'
          end
          object Label25: TLabel
            Left = 640
            Top = 49
            Width = 20
            Height = 13
            Caption = 'Last'
          end
          object Label26: TLabel
            Left = 614
            Top = 67
            Width = 49
            Height = 13
            Caption = 'CuttingDie'
          end
          object Label17: TLabel
            Left = 752
            Top = 28
            Width = 32
            Height = 16
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button3: TButton
            Left = 800
            Top = 72
            Width = 60
            Height = 20
            Caption = 'Query'
            TabOrder = 0
            OnClick = Button3Click
          end
          object jijiep: TEdit
            Left = 65
            Top = 26
            Width = 66
            Height = 21
            TabOrder = 1
          end
          object c2: TCheckBox
            Left = 865
            Top = 26
            Width = 78
            Height = 14
            Caption = 'Buyno'
            TabOrder = 2
          end
          object buynop: TEdit
            Left = 65
            Top = 65
            Width = 65
            Height = 21
            TabOrder = 3
          end
          object shoenamep: TEdit
            Left = 202
            Top = 27
            Width = 78
            Height = 21
            TabOrder = 4
          end
          object c1: TCheckBox
            Left = 865
            Top = 13
            Width = 59
            Height = 14
            Caption = 'Split=*'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object Panel7: TPanel
            Left = 293
            Top = 20
            Width = 156
            Height = 68
            Color = clActiveCaption
            TabOrder = 6
            object Label27: TLabel
              Left = 26
              Top = 9
              Width = 40
              Height = 13
              Caption = 'Mat.Eng'
            end
            object Label28: TLabel
              Left = 6
              Top = 28
              Width = 59
              Height = 13
              Caption = 'Mat.Chinese'
            end
            object Label29: TLabel
              Left = 32
              Top = 48
              Width = 34
              Height = 13
              Caption = 'MatNO'
            end
            object matengp: TEdit
              Left = 72
              Top = 7
              Width = 78
              Height = 21
              TabOrder = 0
            end
            object matchinesep: TEdit
              Left = 72
              Top = 27
              Width = 78
              Height = 21
              TabOrder = 1
            end
            object matnop: TEdit
              Left = 72
              Top = 46
              Width = 78
              Height = 21
              TabOrder = 2
            end
          end
          object Panel8: TPanel
            Left = 455
            Top = 20
            Width = 157
            Height = 65
            Color = clActiveCaption
            TabOrder = 7
            object Label30: TLabel
              Left = 26
              Top = 9
              Width = 40
              Height = 13
              Caption = 'Mat.Eng'
            end
            object Label31: TLabel
              Left = 6
              Top = 28
              Width = 59
              Height = 13
              Caption = 'Mat.Chinese'
            end
            object Label32: TLabel
              Left = 32
              Top = 48
              Width = 34
              Height = 13
              Caption = 'MatNO'
            end
            object NotMatEngp: TEdit
              Left = 72
              Top = 6
              Width = 78
              Height = 21
              TabOrder = 0
            end
            object NotMatChineseP: TEdit
              Left = 72
              Top = 25
              Width = 78
              Height = 21
              TabOrder = 1
            end
            object NotMatNop: TEdit
              Left = 72
              Top = 45
              Width = 78
              Height = 21
              TabOrder = 2
            end
          end
          object suppliernop: TEdit
            Left = 202
            Top = 46
            Width = 78
            Height = 21
            TabOrder = 8
          end
          object supplierdesp: TEdit
            Left = 202
            Top = 66
            Width = 78
            Height = 21
            TabOrder = 9
          end
          object Outsolep: TEdit
            Left = 667
            Top = 27
            Width = 79
            Height = 21
            TabOrder = 10
          end
          object Lastp: TEdit
            Left = 667
            Top = 46
            Width = 79
            Height = 21
            TabOrder = 11
          end
          object DAOMHp: TEdit
            Left = 667
            Top = 66
            Width = 79
            Height = 21
            TabOrder = 12
          end
          object Button4: TButton
            Left = 878
            Top = 72
            Width = 60
            Height = 20
            Caption = 'Excel'
            TabOrder = 13
            OnClick = Button4Click
          end
          object CheckBox2: TCheckBox
            Left = 865
            Top = 39
            Width = 78
            Height = 14
            Caption = 'or'
            TabOrder = 14
            OnClick = CheckBox2Click
          end
          object devtypeep: TComboBox
            Left = 788
            Top = 24
            Width = 61
            Height = 24
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 15
            Text = 'Inline'
            Items.Strings = (
              ''
              'Inline'
              'Great@Good'
              'QuickResponse'
              'Incubate'
              'SMU')
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 98
          Width = 1279
          Height = 508
          Align = alClient
          DataSource = ProdDS
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
        end
        object Memo2: TMemo
          Left = 806
          Top = 130
          Width = 150
          Height = 274
          Lines.Strings = (
            'Memo2')
          TabOrder = 2
          Visible = False
        end
      end
    end
  end
  object SampleQry: TQuery
    DatabaseName = 'dB'
    Left = 149
    Top = 301
  end
  object SampleDS: TDataSource
    DataSet = SampleQry
    Left = 149
    Top = 269
  end
  object ProdDS: TDataSource
    DataSet = ProdQry
    Left = 197
    Top = 260
  end
  object ProdQry: TQuery
    DatabaseName = 'dB'
    Left = 197
    Top = 300
  end
  object tempQ: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 304
  end
end
