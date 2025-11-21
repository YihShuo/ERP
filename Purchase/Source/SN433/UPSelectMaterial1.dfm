object UPSelectMaterial: TUPSelectMaterial
  Left = 349
  Top = 322
  Width = 1135
  Height = 677
  Caption = 'UP Select Material'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 100
    Width = 1127
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object Label4: TLabel
    Left = 698
    Top = 3
    Width = 3
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Candara'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1127
    Height = 100
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 841
      Top = 11
      Width = 193
      Height = 81
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 2
      Width = 143
      Height = 90
      Caption = 'Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadioButton1: TRadioButton
      Left = 31
      Top = 21
      Width = 121
      Height = 17
      Caption = 'BOM Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadioButton2: TRadioButton
      Left = 31
      Top = 37
      Width = 75
      Height = 17
      Caption = 'Carton'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RadioButton3: TRadioButton
      Left = 31
      Top = 55
      Width = 75
      Height = 17
      Caption = 'Label'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 635
      Top = 2
      Width = 200
      Height = 90
      Caption = 'ERP Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label3: TLabel
        Left = 36
        Top = 29
        Width = 14
        Height = 18
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 58
        Width = 37
        Height = 18
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 56
        Top = 25
        Width = 129
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit6: TEdit
        Left = 56
        Top = 55
        Width = 129
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 171
      Top = 2
      Width = 460
      Height = 90
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object Label6: TLabel
        Left = 38
        Top = 29
        Width = 14
        Height = 18
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 13
        Top = 58
        Width = 37
        Height = 18
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 58
        Top = 24
        Width = 129
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 58
        Top = 56
        Width = 129
        Height = 27
        Color = 14286847
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 188
        Top = 56
        Width = 129
        Height = 27
        Color = 14286847
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 318
        Top = 56
        Width = 129
        Height = 27
        Color = 14286847
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object RadioButton4: TRadioButton
      Left = 31
      Top = 73
      Width = 121
      Height = 17
      Caption = 'General Material'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 102
    Width = 1127
    Height = 544
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1125
      Height = 542
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'Calibri'
      FooterFont.Style = [fsBold]
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Candara'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.Color = 14286847
          Footer.FieldName = 'CLBH'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Material|ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          Title.Caption = 'Material|English Name'
          Title.TitleButton = True
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'zwpm'
          Footers = <>
          Title.Caption = 'Material|Chinese Name'
          Title.TitleButton = True
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          Title.Caption = 'Material|Unit'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'zsdh'
          Footers = <>
          Title.Caption = 'ERP Supplier|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          Title.Caption = 'ERP Supplier|Name'
          Title.TitleButton = True
          Width = 160
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '              SELECT  '
      
        '              DISTINCT Z2.CLBH, c.ywpm, c.zwpm, c.dwbh, z.zsdh, ' +
        'z.zsywjc'
      '              FROM ZLZLS2 Z2  '
      '              LEFT JOIN CLZL C ON Z2.CLBH = C.cldh  '
      '              LEFT JOIN zszl z ON z2.CSBH = z.Zsdh_TW '
      '              WHERE 1=2   '
      '')
    Left = 96
    Top = 115
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 148
  end
end
