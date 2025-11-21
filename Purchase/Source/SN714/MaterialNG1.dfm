object MaterialNG: TMaterialNG
  Left = 204
  Top = 175
  Width = 1076
  Height = 780
  Caption = 'MaterialNG'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1068
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 244
      Top = 9
      Width = 48
      Height = 16
      Caption = 'Supp ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 250
      Top = 37
      Width = 40
      Height = 16
      Caption = 'MatNo'
    end
    object Label4: TLabel
      Left = 137
      Top = 9
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object Label6: TLabel
      Left = 148
      Top = 37
      Width = 36
      Height = 16
      Caption = 'Stage'
    end
    object lbl1: TLabel
      Left = 390
      Top = 9
      Width = 72
      Height = 16
      Caption = 'Supp Name'
    end
    object Label3: TLabel
      Left = 398
      Top = 37
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object Label7: TLabel
      Left = 8
      Top = 9
      Width = 19
      Height = 16
      Caption = 'PO'
    end
    object Button1: TButton
      Left = 584
      Top = 6
      Width = 64
      Height = 22
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 293
      Top = 5
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
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 293
      Top = 33
      Width = 87
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Button2: TButton
      Left = 585
      Top = 34
      Width = 64
      Height = 22
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 185
      Top = 5
      Width = 50
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 185
      Top = 33
      Width = 50
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 465
      Top = 5
      Width = 109
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 465
      Top = 33
      Width = 109
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object RadioGroup1: TRadioGroup
      Left = 660
      Top = 5
      Width = 227
      Height = 40
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Solved'
        'Pending'
        'All')
      TabOrder = 5
    end
    object CKBSel: TCheckBox
      Left = 937
      Top = 4
      Width = 127
      Height = 17
      Caption = 'Selected Only'
      TabOrder = 9
      Visible = False
    end
    object Edit8: TEdit
      Left = 27
      Top = 5
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 63
    Width = 1068
    Height = 683
    ActivePage = TS3
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'By Purchase Order'
      object Splitter1: TSplitter
        Left = 0
        Top = 499
        Width = 1060
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1060
        Height = 499
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
        FrozenCols = 4
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            ReadOnly = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Width = 304
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Qty'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Unit'
          end
          item
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Sea.'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Stage'
            Width = 34
          end
          item
            ButtonStyle = cbsNone
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NG_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Confirm Date'
            Width = 63
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NG_Reason'
            Footers = <>
            PickList.Strings = (
              'OK'
              'Color NG'
              'Dimension NG'
              'Quality NG'
              'Emboss NG'
              'Lab Test NG')
            ReadOnly = True
            Title.Caption = 'Confirm   Status'
            Width = 75
          end
          item
            ButtonStyle = cbsNone
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NG_ETD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'NG|ETD'
            Width = 63
          end
          item
            ButtonStyle = cbsNone
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NG_ETA'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'NG|ETA'
            Width = 58
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'Result'
            Footers = <>
            PickList.Strings = (
              'Improved'
              'Can not improve'
              'Special release'
              'Guarantee'
              'Change Suuplier')
            ReadOnly = True
            Title.Caption = 'NG|Result'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'File_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Guarantee|File_Name'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'File_Size'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Guarantee|File_Size'
            Width = 61
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'REMARK'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Remark'
            Width = 182
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'UserDate'
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User ID'
            Width = 60
          end>
      end
      object edt1: TEdit
        Left = 776
        Top = 280
        Width = 121
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object dbgrdh4: TDBGridEh
        Left = 0
        Top = 502
        Width = 1060
        Height = 153
        Align = alBottom
        DataSource = ds_article
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdh4DrawColumnCell
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
            FieldName = 'FD'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'DevType'
            Footers = <>
            Width = 50
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'All NG Data'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1060
        Height = 655
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
            FieldName = 'SEASON'
            Footers = <>
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 280
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'NG_ETD'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'NG_ETA'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'NG_Date'
            Footers = <>
            Width = 67
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NG_Reason'
            Footers = <>
            Title.Caption = 'Confirm Status'
            Width = 106
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'Result'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'Guarantee'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'REMARK'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Title.Caption = 'UserDate'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Caption = 'UserID'
            Width = 71
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'By Season'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 120
        Top = 0
        Height = 655
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 123
        Top = 0
        Width = 937
        Height = 655
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
        TabOrder = 0
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
            FieldName = 'ZSYWJC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Time'
            Footers = <>
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 120
        Height = 655
        Align = alLeft
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'season'
            Footers = <>
            Width = 82
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'NG Process Flow Chart'
      ImageIndex = 3
      object Shape1: TShape
        Left = 32
        Top = 148
        Width = 153
        Height = 198
        Brush.Color = clSkyBlue
        Shape = stRoundRect
      end
      object Label8: TLabel
        Left = 43
        Top = 178
        Width = 89
        Height = 20
        Caption = '1.Color NG'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape2: TShape
        Left = 416
        Top = 100
        Width = 155
        Height = 46
        Brush.Color = clSkyBlue
        Shape = stRoundRect
      end
      object Label9: TLabel
        Left = 43
        Top = 206
        Width = 131
        Height = 20
        Caption = '2.Dimension NG'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape3: TShape
        Left = 267
        Top = 122
        Width = 152
        Height = 5
        Brush.Color = clBlack
      end
      object Label10: TLabel
        Left = 429
        Top = 115
        Width = 128
        Height = 16
        Caption = 'Supplier Improved'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape4: TShape
        Left = 183
        Top = 243
        Width = 82
        Height = 5
        Brush.Color = clBlack
      end
      object Shape6: TShape
        Left = 266
        Top = 214
        Width = 154
        Height = 5
        Brush.Color = clBlack
      end
      object Shape7: TShape
        Left = 416
        Top = 193
        Width = 164
        Height = 44
        Brush.Color = clSkyBlue
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 424
        Top = 208
        Width = 128
        Height = 16
        Caption = 'Use other material'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape8: TShape
        Left = 267
        Top = 298
        Width = 150
        Height = 5
        Brush.Color = clBlack
      end
      object Shape9: TShape
        Left = 416
        Top = 283
        Width = 164
        Height = 45
        Brush.Color = clSkyBlue
        Shape = stRoundRect
      end
      object Label14: TLabel
        Left = 423
        Top = 291
        Width = 154
        Height = 16
        Caption = 'PDM Special Release'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape11: TShape
        Left = 266
        Top = 389
        Width = 150
        Height = 5
        Brush.Color = clBlack
      end
      object Shape13: TShape
        Left = 416
        Top = 374
        Width = 164
        Height = 45
        Brush.Color = clSkyBlue
        Shape = stRoundRect
      end
      object Label17: TLabel
        Left = 424
        Top = 379
        Width = 59
        Height = 16
        Caption = 'Supplier'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 424
        Top = 395
        Width = 116
        Height = 16
        Caption = 'Guarantee Letter'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label19: TLabel
        Left = 43
        Top = 234
        Width = 102
        Height = 20
        Caption = '3.Quality NG'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 43
        Top = 262
        Width = 111
        Height = 20
        Caption = '4.Emboss NG'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label21: TLabel
        Left = 43
        Top = 290
        Width = 117
        Height = 20
        Caption = '5.Lab Test NG'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 59
        Top = 48
        Width = 94
        Height = 20
        Caption = 'NG Reason'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 451
        Top = 48
        Width = 84
        Height = 20
        Caption = 'NG Result'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape12: TShape
        Left = 262
        Top = 122
        Width = 5
        Height = 272
        Brush.Color = clBlack
      end
      object Label11: TLabel
        Left = 466
        Top = 307
        Width = 65
        Height = 13
        Caption = '(Pjm agree)'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '   select CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CLZL.YWPM,CLZL.DWB' +
        'H,ZSZL.ZSYWJC,NG_ETD,NG_ETA,CGZLS.Qty ,'
      
        '          MaterialNG.CGNO,MaterialNG.NG_Date,MaterialNG.NG_Reaso' +
        'n,MaterialNG.REMARK,MaterialNG.Result,MaterialNG.Guarantee,Mater' +
        'ialNG.USERDATE,MaterialNG.USERID,'
      '          MaterialNG.NG_Date as oldNG_Date,'
      '          File_Name,File_Size'
      '   from CGZLS'
      '   left join CLZL  on CLZl.CLDH=CGZLS.CLBH'
      
        '   left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS' +
        '.CGNO=MaterialNG.CGNO'
      '   left join CGZL  on CGZl.CGNO=CGZLS.CGNO'
      '   left join zszl on zszl.zsdh=CGZl.ZSBH'
      '   where 1=2'
      '')
    UpdateObject = UpSql1
    Left = 224
    Top = 208
    object Query1CGNO: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1SEASON: TStringField
      DisplayLabel = 'Season'
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Query1PURPOSE: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object Query1ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      DisplayLabel = 'Mat ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      DisplayLabel = 'Mat Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Query1DWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1NG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object Query1NG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object Query1REMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 50
    end
    object Query1NG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object Query1NG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object Query1Result: TStringField
      FieldName = 'Result'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1oldNG_Date: TDateTimeField
      FieldName = 'oldNG_Date'
    end
    object Query1File_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object Query1File_Size: TFloatField
      FieldName = 'File_Size'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 176
  end
  object Qry_Cal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select nrywsm from cllbzlss where 1=2')
    Left = 688
    Top = 216
  end
  object ds_article: TDataSource
    DataSet = qry_article
    Left = 228
    Top = 324
  end
  object qry_article: TQuery
    DatabaseName = 'dB'
    DataSource = DS1
    SQL.Strings = (
      
        'select kfxxzl.jijie.ypzl.article,cg.cgdate,cg.yqdate,cg.eta,cg.r' +
        'kdate,cg.cgno,zszl.zsywjc,FD,DevType,Category,DEVCODE,kfxxzl.GEN' +
        'DER from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
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
        '.rkdate,cg.cgno,zszl.zsywjc,FD,DevType,Category,DEVCODE,kfxxzl.G' +
        'ENDER'
      '')
    Left = 228
    Top = 364
    object strngfldqry4article: TStringField
      FieldName = 'article'
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
    object qry_articleJiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 272
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
      Caption = 'Upload'
      OnClick = S4Click
    end
    object S5: TMenuItem
      Caption = 'Download'
      OnClick = S5Click
    end
  end
  object UpSql1: TUpdateSQL
    Left = 224
    Top = 240
  end
  object qry1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      '          select season from MaterialNG'
      '          left join CGZL  on MaterialNG.CGNO=CGZL.CGNO'
      '           group by CGZL.Season  '
      '')
    Left = 297
    Top = 210
    object qry1season: TStringField
      DisplayLabel = 'Season'
      FieldName = 'season'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qry1
    Left = 297
    Top = 178
  end
  object DataSource2: TDataSource
    DataSet = qry2
    Left = 328
    Top = 179
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      '          select ZSZL.ZSYWJC,count(*) as Time from MaterialNG'
      '          left join CGZL  on MaterialNG.CGNO=CGZL.CGNO'
      '          left join zszl on zszl.zsdh=CGZl.ZSBH'
      
        '          where  MaterialNG.NG_Reason<>'#39'OK'#39' and CGZL.Season=:Sea' +
        'son  group by ZSZL.ZSYWJC'
      '')
    Left = 328
    Top = 211
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'season'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry2ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object qry2Time: TIntegerField
      FieldName = 'Time'
    end
  end
  object qry3: TQuery
    DatabaseName = 'dB'
    Left = 724
    Top = 213
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 700
    Top = 176
  end
  object DS_ALL: TDataSource
    DataSet = Qry_ALL
    Left = 264
    Top = 176
  end
  object Qry_ALL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '    select CGZL.SEASON,CGZL.PURPOSE,MaterialNG.CLBH,CLZL.YWPM,CL' +
        'ZL.DWBH,ZSZL.ZSYWJC,NG_ETD,NG_ETA ,'
      
        '           MaterialNG.Guarantee,MaterialNG.CGNO,MaterialNG.NG_Da' +
        'te,MaterialNG.NG_Reason,MaterialNG.REMARK,MaterialNG.Result,Mate' +
        'rialNG.USERDATE,MaterialNG.USERID'
      '    from MaterialNG'
      '    left join CLZL  on CLZl.CLDH=MaterialNG.CLBH'
      
        '    left join CGZLS  on CGZLS.CGNO=MaterialNG.CGNO and CGZLS.CLB' +
        'H=MaterialNG.CLBH'
      '    left join CGZL  on CGZLS.CGNO=CGZL.CGNO'
      '    left join zszl on zszl.zsdh=CGZl.ZSBH'
      '    where 1=2'
      '')
    Left = 264
    Top = 208
    object Qry_ALLSEASON: TStringField
      DisplayLabel = 'Season'
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Qry_ALLPURPOSE: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object Qry_ALLCLBH: TStringField
      DisplayLabel = 'Mat ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ALLYWPM: TStringField
      DisplayLabel = 'Mat Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_ALLDWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ALLZSYWJC: TStringField
      DisplayLabel = 'Supplier Name'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_ALLNG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object Qry_ALLNG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object Qry_ALLCGNO: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_ALLNG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object Qry_ALLNG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object Qry_ALLREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 50
    end
    object Qry_ALLResult: TStringField
      FieldName = 'Result'
      FixedChar = True
    end
    object Qry_ALLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Qry_ALLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 739
    Top = 176
  end
  object qry4: TQuery
    DatabaseName = 'dB'
    Left = 756
    Top = 213
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 772
    Top = 178
  end
end
