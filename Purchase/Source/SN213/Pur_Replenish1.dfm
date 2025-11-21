object Pur_Replenish: TPur_Replenish
  Left = 305
  Top = 216
  Width = 1211
  Height = 553
  Caption = 'Pur_Replenish'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1203
    Height = 457
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'PO [NoSize]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1195
        Height = 426
        Align = alClient
        TabOrder = 0
        object Splitter3: TSplitter
          Left = 758
          Top = 33
          Height = 392
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1193
          Height = 32
          Align = alTop
          Color = clMoneyGreen
          TabOrder = 0
          object Label13: TLabel
            Left = 248
            Top = 9
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Supplier'
          end
          object Label11: TLabel
            Left = 423
            Top = 9
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Mat ID'
          end
          object Label12: TLabel
            Left = 586
            Top = 9
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Mat Name'
          end
          object Edit_Supplier1: TEdit
            Left = 307
            Top = 5
            Width = 112
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 0
          end
          object Button5: TButton
            Left = 794
            Top = 5
            Width = 73
            Height = 24
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = Button5Click
          end
          object Chk_NoPur1: TCheckBox
            Left = 7
            Top = 9
            Width = 99
            Height = 17
            Caption = 'Show No Pur'
            Checked = True
            State = cbChecked
            TabOrder = 5
            OnClick = Chk_NoPur1Click
          end
          object Chk_OverPur1: TCheckBox
            Left = 108
            Top = 9
            Width = 135
            Height = 17
            Caption = 'Show Pur too much'
            TabOrder = 6
            OnClick = Chk_OverPur1Click
          end
          object Edit_MatNo1: TEdit
            Left = 494
            Top = 5
            Width = 91
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 1
          end
          object Edit_MatNM1_A: TEdit
            Left = 665
            Top = 5
            Width = 59
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 2
          end
          object Edit_MatNM1_B: TEdit
            Left = 721
            Top = 5
            Width = 59
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 3
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 33
          Width = 757
          Height = 392
          Align = alLeft
          DataSource = DS_ToPO
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = Pop_ToPO
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 0
          OnGetCellParams = DBGridEh2GetCellParams
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
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material Name'
              Title.TitleButton = True
              Width = 328
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              ReadOnly = True
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supp ID'
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier'
              Title.TitleButton = True
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Usage Repl'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pur Qty Repl'
              Title.TitleButton = True
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'Diff'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Status'
              Title.TitleButton = True
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Unit'
              Title.TitleButton = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'PayVN'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'VN Supp'
              Title.TitleButton = True
              Width = 41
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 761
          Top = 33
          Width = 433
          Height = 392
          Align = alClient
          DataSource = DS_ToPO_RY
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = Pop_ToPO_RY1
          SumList.Active = True
          TabOrder = 2
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
              FieldName = 'BLNO'
              Footers = <>
              ReadOnly = True
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'RY'
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Usage Repl'
              Title.TitleButton = True
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pur Qty Repl'
              Title.TitleButton = True
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'Diff'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clRed
              Footer.Font.Height = -13
              Footer.Font.Name = 'MS Sans Serif'
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'SIZE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Size'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              Title.Caption = 'Article'
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'ArtName'
              Footers = <>
              Width = 150
            end>
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'PO [Size]'
      ImageIndex = 1
      object Splitter4: TSplitter
        Left = 757
        Top = 32
        Height = 394
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1195
        Height = 32
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Label10: TLabel
          Left = 272
          Top = 8
          Width = 64
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier'
        end
        object Label14: TLabel
          Left = 451
          Top = 9
          Width = 71
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat ID'
        end
        object Label15: TLabel
          Left = 616
          Top = 9
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat Name'
        end
        object Edit_Supplier2: TEdit
          Left = 338
          Top = 4
          Width = 111
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 0
        end
        object Button3: TButton
          Left = 838
          Top = 4
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object Chk_NoPur2: TCheckBox
          Left = 6
          Top = 9
          Width = 129
          Height = 17
          Caption = 'Show No Pur'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = Chk_NoPur2Click
        end
        object Chk_OverPur2: TCheckBox
          Left = 138
          Top = 9
          Width = 135
          Height = 17
          Caption = 'Show Pur too much'
          TabOrder = 6
          OnClick = Chk_OverPur2Click
        end
        object Edit_MatNo2: TEdit
          Left = 523
          Top = 5
          Width = 91
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 2
        end
        object Edit_MatNM2_A: TEdit
          Left = 683
          Top = 5
          Width = 70
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 3
        end
        object Edit_MatNM2_B: TEdit
          Left = 755
          Top = 5
          Width = 70
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 4
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 32
        Width = 757
        Height = 394
        Align = alLeft
        DataSource = DS_ToPO2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = Pop_ToPO2
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh4GetCellParams
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
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Material Name'
            Title.TitleButton = True
            Width = 328
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supp ID'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier'
            Title.TitleButton = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Usage Repl'
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pur Qty Repl'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Diff'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Status'
            Title.TitleButton = True
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit'
            Title.TitleButton = True
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'PayVN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'VN Supp'
            Title.TitleButton = True
            Width = 41
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 760
        Top = 32
        Width = 435
        Height = 394
        Align = alClient
        DataSource = DS_ToPO_RY2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = Pop_ToPO_RY2
        SumList.Active = True
        TabOrder = 2
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
            FieldName = 'BLNO'
            Footers = <>
            ReadOnly = True
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY'
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Usage Repl'
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pur Qty Repl'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Diff'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clRed
            Footer.Font.Height = -13
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'ArtName'
            Footers = <>
            Width = 150
          end>
      end
    end
  end
  object chk_shp: TCheckBox
    Left = 265
    Top = 31
    Width = 79
    Height = 17
    Caption = 'ShipDate'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1203
    Height = 65
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 32
      Top = 12
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
    end
    object Label2: TLabel
      Left = 176
      Top = 12
      Width = 29
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 314
      Top = 12
      Width = 89
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BLNO:'
    end
    object Label7: TLabel
      Left = 512
      Top = 12
      Width = 109
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MergNO:'
    end
    object Label20: TLabel
      Left = 280
      Top = 40
      Width = 83
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Location'
    end
    object DTP1: TDateTimePicker
      Left = 90
      Top = 9
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 210
      Top = 9
      Width = 89
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 1
    end
    object BLNOEdit: TEdit
      Left = 405
      Top = 9
      Width = 105
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object MergNoEdit: TEdit
      Left = 623
      Top = 9
      Width = 100
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckDate: TCheckBox
      Left = 10
      Top = 12
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object Chk_POInteger: TCheckBox
      Left = 728
      Top = 14
      Width = 155
      Height = 17
      Caption = 'PO# Qty= (Integer)'
      TabOrder = 5
    end
    object LocCB: TComboBox
      Left = 366
      Top = 38
      Width = 52
      Height = 24
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 6
      Text = 'VN'
      Items.Strings = (
        ''
        'VN'
        'TW')
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 31
    Top = 495
  end
  object DS_ToPO: TDataSource
    DataSet = Qry_ToPO1
    Left = 216
    Top = 272
  end
  object Qry_ToPO1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCBLS.CLBH,YWPM,DWBH,SUM(Qty) as Qty,CSBH,ZSYWJC,PayVN,CQ' +
        'DH,'
      
        #9#9'sum(isnull(CGQty,0)) as CGQty,sum(isnull(CG.CGQTY,0))-sum(Qty)' +
        ' as Diff  '
      'from ('
      
        'select SCBLS.CLBH,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,SCBLS.Qty,ZSZL.z' +
        'sdh as CSBH,ZSZL.zsywjc,zszl_dev.Zsdh_TW as PayVN,CLZL.cqdh,SCBL' +
        '.ZLBH,XXZL.ARTICLE,XXZL.XieMing as ArtName,SCBLS.SIZE '
      'from ('
      
        'Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,'#39'ZZZZ' +
        'ZZ'#39') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty,SCBLS.ZSDH '
      'from SCBLS left join SCBL on SCBLS.BLNO=SCBL.BLNO'
      
        'left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS' +
        '.BWBH and SCBLSS.CLBH=SCBLS.CLBH'
      
        'where SCBLS.Qty>0 and SCBLS.BLNO='#39'2021040407'#39' and SCBLS.ZMLB='#39'N'#39 +
        ' '
      ') SCBLS  '
      'left join SCBL on SCBL.BLNO=SCBLS.BLNO'
      'left join DDZL on DDZL.DDBH=SCBL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join CLZL on CLZL.cldh=SCBLS.CLBH'
      'left join ZSZL on ZSZL.zsdh=SCBLS.ZSDH '
      
        'left join zszl_dev on ZSZL_DEV.GSBH='#39'VA12'#39' and ZSZL_DEV.Zsdh=SCB' +
        'LS.ZSDH '
      'where scbls.size='#39'ZZZZZZ'#39
      ' ) SCBLS'
      
        'left join ( select CGZLSS.CLBH,SCBLS.ZSDH,SUM(isnull(CGZLSS.Qty,' +
        '0)) as CGQty '
      #9#9#9'from  CGZLSS LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      #9#9#9'left  join (select SCBLS.BLNO,SCBLS.CLBH,SCBLS.ZSDH '
      
        #9#9#9#9#9#9'from SCBLS,SCBL where SCBLS.BLNO=SCBL.BLNO and SCBLS.CLBH ' +
        'like '#39'%'#39' and scbls.BLNO='#39'2021040407'#39
      
        '                  Group by SCBLS.BLNO,SCBLS.CLBH,SCBLS.ZSDH) SCB' +
        'LS on SCBLS.BLNO=CGZLSS.ZLBH and SCBLS.CLBH=CGZLSS.CLBH'
      '            where  CGZLSS.ZLBH='#39'2021040407'#39'     '
      '            group by CGZLSS.CLBH,SCBLS.ZSDH      '
      
        '             )CG on CG.ZSDH=SCBlS.CSBH and CG.CLBH=SCBLS.CLBH   ' +
        ' '
      
        'Group by SCBLS.CLBH,YWPM,ZWPM,DWBH,CSBH,ZSYWJC,PayVN,CQDH,ZLBH,A' +
        'RTICLE,ArtName '
      'order by CQDH,PayVN')
    UpdateObject = Qry_ToPO1Upd
    Left = 216
    Top = 304
    object Qry_ToPO1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Qry_ToPO1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 255
    end
    object Qry_ToPO1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_ToPO1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_ToPO1PayVN: TStringField
      FieldName = 'PayVN'
      FixedChar = True
      Size = 6
    end
    object Qry_ToPO1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO1Diff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS_ToPO_RY: TDataSource
    DataSet = Qry_ToPO_RY1
    Left = 248
    Top = 272
  end
  object Qry_ToPO_RY1: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ToPO
    SQL.Strings = (
      
        'select SCBLS.BLNO,SCBLS.ZLBH,SCBLS.CLBH,SCBLS.Size,sum(SCBLS.Qty' +
        ') as Qty,sum(isnull(CGQty,0)) as CGQty,'
      
        #9#9'    sum(isnull(CGQty,0))-sum(SCBLS.Qty) as Diff,XXZL.ARTICLE,X' +
        'XZL.XieMing as ArtName'
      
        'from'#9'      (Select SCBL.ZLBH,SCBLS.BLNO,SCBLS.CLBH,IsNull(SCBLSS' +
        '.SIZE,'#39'ZZZZZZ'#39') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty,SCBL' +
        'S.ZSDH'
      '           from SCBLS left join SCBL on SCBLS.BLNO=SCBL.BLNO'
      
        '           left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS' +
        '.CLBH=SCBLS.CLBH'
      
        '           where SCBLS.Qty>0 and SCBLS.ZMLB='#39'N'#39' and scblS.CLBH=:' +
        'CLBH and scbls.zsdh=:CSBH'
      
        '          and convert(smalldatetime,convert(varchar,SCBL.BLDate,' +
        '111)) between'
      '          '#39'2021/04/11'#39' and '#39'2021/05/13'#39
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,SUM(isnull' +
        '(CGZLSS.Qty,0)) as CGQty'
      #9#9#9'      from  CGZLSS LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO'
      '     '#9#9#9'where CGZLSS.clbh=:CLBH'
      
        '          and  CGZLSS.ZLBH in  (  Select distinct BLNO from SCBL' +
        '  where convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) ' +
        'between'
      '          '#39'2021/04/11'#39' and '#39'2021/05/13'#39')'
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC'
      
        '           )CG on CG.CLBH=SCBLS.clbh and CG.ZLBH=SCBLS.BLNO and ' +
        'CG.XXCC=SCBLS.SIZE'
      'left join DDZL on DDZL.DDBH=SCBLS.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'where'
      'scbls.size = '#39'ZZZZZZ'#39
      
        'group by SCBLS.BLNO,SCBLS.ZLBH,SCBLS.CLBH,SCBLS.Size,XXZL.ARTICL' +
        'E,XXZL.XieMing')
    UpdateObject = Qry_ToPO_RY1Upd
    Left = 248
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Qry_ToPO_RY1BLNO: TStringField
      FieldName = 'BLNO'
      FixedChar = True
      Size = 11
    end
    object Qry_ToPO_RY1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ToPO_RY1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Qry_ToPO_RY1SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Qry_ToPO_RY1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY1Diff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Qry_ToPO_RY1ArtName: TStringField
      FieldName = 'ArtName'
      FixedChar = True
      Size = 50
    end
  end
  object Pop_ToPO: TPopupMenu
    AutoHotkeys = maManual
    Left = 217
    Top = 336
    object E1: TMenuItem
      Caption = 'Excel'
      OnClick = E1Click
    end
    object M1: TMenuItem
      Caption = 'Modify'
      OnClick = M1Click
    end
    object PO1: TMenuItem
      Caption = 'Transfer to PO'
      Enabled = False
      OnClick = PO1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object DS_ToPO2: TDataSource
    DataSet = Qry_ToPO2
    Left = 312
    Top = 272
  end
  object Qry_ToPO2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCBLS.CLBH,YWPM,DWBH,SUM(Qty) as Qty,CSBH,ZSYWJC,PayVN,CQ' +
        'DH,'
      
        #9#9'sum(isnull(CGQty,0)) as CGQty,sum(isnull(CG.CGQTY,0))-sum(Qty)' +
        ' as Diff  '
      'from ('
      
        'select SCBLS.CLBH,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,SCBLS.Qty,ZSZL.z' +
        'sdh as CSBH,ZSZL.zsywjc,zszl_dev.Zsdh_TW as PayVN,CLZL.cqdh,SCBL' +
        '.ZLBH,XXZL.ARTICLE,XXZL.XieMing as ArtName,SCBLS.SIZE '
      'from ('
      
        'Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,'#39'ZZZZ' +
        'ZZ'#39') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty,SCBLS.ZSDH '
      'from SCBLS left join SCBL on SCBLS.BLNO=SCBL.BLNO'
      
        'left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS' +
        '.BWBH and SCBLSS.CLBH=SCBLS.CLBH'
      
        'where SCBLS.Qty>0 and SCBLS.BLNO='#39'2021040407'#39' and SCBLS.ZMLB='#39'N'#39 +
        ' '
      ') SCBLS  '
      'left join SCBL on SCBL.BLNO=SCBLS.BLNO'
      'left join DDZL on DDZL.DDBH=SCBL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join CLZL on CLZL.cldh=SCBLS.CLBH'
      'left join ZSZL on ZSZL.zsdh=SCBLS.ZSDH '
      
        'left join zszl_dev on ZSZL_DEV.GSBH='#39'VA12'#39' and ZSZL_DEV.Zsdh=SCB' +
        'LS.ZSDH '
      'where scbls.size='#39'ZZZZZZ'#39
      ' ) SCBLS'
      
        'left join ( select CGZLSS.CLBH,SCBLS.ZSDH,SUM(isnull(CGZLSS.Qty,' +
        '0)) as CGQty '
      #9#9#9'from  CGZLSS LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      #9#9#9'left  join (select SCBLS.BLNO,SCBLS.CLBH,SCBLS.ZSDH '
      
        #9#9#9#9#9#9'from SCBLS,SCBL where SCBLS.BLNO=SCBL.BLNO and SCBLS.CLBH ' +
        'like '#39'%'#39' and scbls.BLNO='#39'2021040407'#39
      
        '                  Group by SCBLS.BLNO,SCBLS.CLBH,SCBLS.ZSDH) SCB' +
        'LS on SCBLS.BLNO=CGZLSS.ZLBH and SCBLS.CLBH=CGZLSS.CLBH'
      '            where  CGZLSS.ZLBH='#39'2021040407'#39'     '
      '            group by CGZLSS.CLBH,SCBLS.ZSDH      '
      
        '             )CG on CG.ZSDH=SCBlS.CSBH and CG.CLBH=SCBLS.CLBH   ' +
        ' '
      
        'Group by SCBLS.CLBH,YWPM,ZWPM,DWBH,CSBH,ZSYWJC,PayVN,CQDH,ZLBH,A' +
        'RTICLE,ArtName '
      'order by CQDH,PayVN'
      '')
    UpdateObject = Qry_ToPO2Upd
    Left = 312
    Top = 304
    object Qry_ToPO2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Qry_ToPO2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 255
    end
    object Qry_ToPO2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_ToPO2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_ToPO2PayVN: TStringField
      FieldName = 'PayVN'
      FixedChar = True
      Size = 6
    end
    object Qry_ToPO2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO2CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO2Diff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS_ToPO_RY2: TDataSource
    DataSet = Qry_ToPO_RY2
    Left = 352
    Top = 272
  end
  object Qry_ToPO_RY2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ToPO2
    SQL.Strings = (
      
        'select SCBLS.BLNO,SCBLS.ZLBH,SCBLS.CLBH,SCBLS.Size,sum(SCBLS.Qty' +
        ') as Qty,sum(isnull(CGQty,0)) as CGQty,'
      
        #9#9'    sum(isnull(CGQty,0))-sum(SCBLS.Qty) as Diff,XXZL.ARTICLE,X' +
        'XZL.XieMing as ArtName'
      
        'from'#9'      (Select SCBL.ZLBH,SCBLS.BLNO,SCBLS.CLBH,IsNull(SCBLSS' +
        '.SIZE,'#39'ZZZZZZ'#39') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty,SCBL' +
        'S.ZSDH'
      '           from SCBLS left join SCBL on SCBLS.BLNO=SCBL.BLNO'
      
        '           left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS' +
        '.CLBH=SCBLS.CLBH'
      
        '           where SCBLS.Qty>0 and SCBLS.ZMLB='#39'N'#39' and scblS.CLBH=:' +
        'CLBH and scbls.zsdh=:CSBH'
      
        '          and convert(smalldatetime,convert(varchar,SCBL.BLDate,' +
        '111)) between'
      '          '#39'2021/04/11'#39' and '#39'2021/05/13'#39
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,SUM(isnull' +
        '(CGZLSS.Qty,0)) as CGQty'
      #9#9#9'      from  CGZLSS LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO'
      '     '#9#9#9'where CGZLSS.clbh=:CLBH'
      
        '          and  CGZLSS.ZLBH in  (  Select distinct BLNO from SCBL' +
        '  where convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) ' +
        'between'
      '          '#39'2021/04/11'#39' and '#39'2021/05/13'#39')'
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC'
      
        '           )CG on CG.CLBH=SCBLS.clbh and CG.ZLBH=SCBLS.BLNO and ' +
        'CG.XXCC=SCBLS.SIZE'
      'left join DDZL on DDZL.DDBH=SCBLS.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'where'
      'scbls.size = '#39'ZZZZZZ'#39
      
        'group by SCBLS.BLNO,SCBLS.ZLBH,SCBLS.CLBH,SCBLS.Size,XXZL.ARTICL' +
        'E,XXZL.XieMing')
    UpdateObject = Qry_ToPO_RY2Upd
    Left = 352
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Qry_ToPO_RY2BLNO: TStringField
      FieldName = 'BLNO'
      FixedChar = True
      Size = 11
    end
    object Qry_ToPO_RY2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ToPO_RY2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Qry_ToPO_RY2SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Qry_ToPO_RY2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY2CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY2Diff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Qry_ToPO_RY2ArtName: TStringField
      FieldName = 'ArtName'
      FixedChar = True
      Size = 50
    end
  end
  object Pop_ToPO2: TPopupMenu
    AutoHotkeys = maManual
    Left = 313
    Top = 336
    object E2: TMenuItem
      Caption = 'Excel'
      OnClick = E2Click
    end
    object M2: TMenuItem
      Caption = 'Modify'
      OnClick = M2Click
    end
    object PO2: TMenuItem
      Caption = 'Transfer to PO'
      Enabled = False
      OnClick = PO2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 33
    Top = 463
  end
  object Qry_ToPO1Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 216
    Top = 368
  end
  object Qry_ToPO2Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 312
    Top = 368
  end
  object Qry_ToPO_RY1Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 248
    Top = 368
  end
  object Qry_ToPO_RY2Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 352
    Top = 368
  end
  object Pop_ToPO_RY1: TPopupMenu
    AutoHotkeys = maManual
    Left = 249
    Top = 336
    object E3: TMenuItem
      Caption = 'Excel'
      OnClick = E3Click
    end
  end
  object Pop_ToPO_RY2: TPopupMenu
    AutoHotkeys = maManual
    Left = 353
    Top = 336
    object E4: TMenuItem
      Caption = 'Excel'
      OnClick = E4Click
    end
  end
end
