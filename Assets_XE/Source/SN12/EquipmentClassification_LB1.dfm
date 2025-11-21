object EquipmentClassification_LB: TEquipmentClassification_LB
  Left = 489
  Top = 167
  Caption = 'EquipmentClassification_LB'
  ClientHeight = 662
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 353
    Width = 887
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 895
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 10
      Width = 116
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SBBH:'
    end
    object SBBHEdit: TEdit
      Left = 127
      Top = 8
      Width = 255
      Height = 28
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 0
      OnChange = SBBHEditChange
    end
    object ButtonOK: TBitBtn
      Left = 394
      Top = -4
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
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonOKClick
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 49
    Width = 887
    Height = 304
    Align = alTop
    Caption = 'Panel8'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 449
      Top = 1
      Height = 302
    end
    object SubPanel1: TPanel
      Left = 1
      Top = 1
      Width = 448
      Height = 302
      Align = alLeft
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 446
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 320
          Top = 16
          Width = 121
          Height = 20
          AutoSize = False
          Caption = #22823#20998#39006
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGrid1: TDBGridEh
        Left = 1
        Top = 52
        Width = 446
        Height = 249
        Align = alClient
        DataSource = DS1
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 151
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 193
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object SubPanel2: TPanel
      Left = 452
      Top = 1
      Width = 434
      Height = 302
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 432
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 312
          Top = 16
          Width = 121
          Height = 20
          AutoSize = False
          Caption = #20729#20540#37329#38989#20998#39006
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGrid3: TDBGridEh
        Left = 1
        Top = 52
        Width = 432
        Height = 249
        Align = alClient
        DataSource = DS3
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 154
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 183
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 356
    Width = 887
    Height = 306
    Align = alClient
    Caption = 'Panel9'
    TabOrder = 2
    object Splitter3: TSplitter
      Left = 449
      Top = 1
      Height = 304
      ExplicitHeight = 312
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 448
      Height = 304
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 446
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 312
          Top = 16
          Width = 129
          Height = 20
          AutoSize = False
          Caption = #27231#22120#21697#21517#20998#39006' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 3
          Top = 18
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Name'
        end
        object ZWSM2Edit: TEdit
          Left = 56
          Top = 16
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyDown = ZWSM2EditKeyDown
        end
        object YWSM2Edit: TEdit
          Left = 184
          Top = 16
          Width = 121
          Height = 24
          TabOrder = 1
          OnKeyDown = YWSM2EditKeyDown
        end
      end
      object DBGrid2: TDBGridEh
        Left = 1
        Top = 52
        Width = 446
        Height = 251
        Align = alClient
        DataSource = DS2
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 162
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 183
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel6: TPanel
      Left = 452
      Top = 1
      Width = 434
      Height = 304
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 432
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 302
          Top = 16
          Width = 131
          Height = 20
          AutoSize = False
          Caption = #27231#22120#22411#34399#20998#39006' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 5
          Top = 18
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Name'
        end
        object ZWSM4Edit: TEdit
          Left = 52
          Top = 15
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyDown = ZWSM4EditKeyDown
        end
        object YWSM4Edit: TEdit
          Left = 180
          Top = 15
          Width = 121
          Height = 24
          TabOrder = 1
          OnKeyDown = YWSM4EditKeyDown
        end
      end
      object DBGrid4: TDBGridEh
        Left = 1
        Top = 52
        Width = 432
        Height = 251
        Align = alClient
        DataSource = DS4
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        OnDblClick = DBGrid4DblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 164
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 183
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 200
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TSCD_LBZLS where lb='#39'1'#39)
    Left = 200
    Top = 232
    object Query1LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 3
    end
    object Query1LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 4
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select * from TSCD_LBZLS where lb=:LBDH')
    Left = 200
    Top = 487
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query2LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 3
    end
    object Query2LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 4
    end
    object Query2ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 200
    Top = 455
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 608
    Top = 192
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TSCD_LBZLS where lb='#39'3'#39)
    Left = 608
    Top = 224
    object Query3LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 3
    end
    object Query3LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 4
    end
    object Query3ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query3YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query3USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 600
    Top = 440
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select * from TSCD_LBZLS where lb=:LBDH')
    Left = 600
    Top = 472
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query4LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 3
    end
    object Query4LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 4
    end
    object Query4ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query4YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query4USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query4USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query4YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 234
    Top = 230
  end
end
