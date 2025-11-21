object FDStatus_Bom: TFDStatus_Bom
  Left = 272
  Top = 101
  Width = 981
  Height = 652
  Caption = 'FDStatus_BOM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 965
    Height = 575
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 963
      Height = 573
      Align = alClient
      DataSource = DataSource1
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
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'XH'
          Footers = <>
          Title.Caption = 'Itm'
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'BWBH'
          Footers = <>
          Title.Caption = 'Parts'
          Title.TitleButton = True
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'BWMC'
          Footers = <>
          Title.Caption = 'Name'
          Title.TitleButton = True
          Width = 133
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Title.Caption = 'Mat No'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CLMC'
          Footers = <>
          Title.Caption = 'Mat name'
          Title.TitleButton = True
          Width = 361
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Title.Caption = 'Unit'
          Title.TitleButton = True
          Width = 28
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'LYCC'
          Footers = <>
          Title.Caption = 'Size'
          Title.TitleButton = True
          Width = 29
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          Title.Caption = 'Supplier'
          Title.TitleButton = True
          Width = 75
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'LOSS'
          Footers = <>
          Title.Caption = 'Loss'
          Title.TitleButton = True
          Width = 33
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footers = <>
          Title.Caption = 'Usage'
          Title.TitleButton = True
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'CLZMLB'
          Footers = <>
          Title.Caption = 'Treatment'
          Title.TitleButton = True
          Width = 70
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 965
    Height = 39
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 492
      Top = 9
      Width = 102
      Height = 20
      Caption = 'Sample Order:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 9
      Width = 48
      Height = 20
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 234
      Top = 9
      Width = 47
      Height = 20
      Caption = 'Stage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 600
      Top = 9
      Width = 62
      Height = 20
      AutoSize = True
      DataField = 'YPDH'
      DataSource = FDStatus.ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 155
      Top = 9
      Width = 70
      Height = 20
      AutoSize = True
      Color = clBlack
      DataField = 'ARTICLE'
      DataSource = FDStatus.ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 285
      Top = 9
      Width = 70
      Height = 20
      AutoSize = True
      Color = clBlack
      DataField = 'stage'
      DataSource = FDStatus.ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 14
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 138
    Top = 189
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = FDStatus.ds1
    SQL.Strings = (
      
        'select YPZLS.XH, YPZLS.BWBH,BWZL.ywsm BWMC,YPZLS.CLBH,CLZL.YWPM ' +
        'as CLMC, '
      
        '           CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,ZSZL.ZSYWJC,YPZLS.LOSS,Y' +
        'PZLS.CLSL,CLZL.CLZMLB'
      ' FROM YPZLS'
      
        'LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh                       ' +
        '        '
      
        'LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh                      ' +
        '        '
      
        'LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39'                             '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLS.CSBH'
      'where YPZLS.YPDH=:YPDH'
      ''
      'UNION ALL'
      ''
      
        'select YPZLS.XH, YPZLS.BWBH,BWZL.ywsm BWMC,CLZHZL.CLDH1 AS CLBH,' +
        'CLZL.YWPM as CLMC,'
      
        '           CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,ZSZL.ZSYWJC,YPZLS.LOSS,Y' +
        'PZLS.CLSL* CLZHZL.SYL AS CLSL ,CLZL.CLZMLB'
      ' FROM YPZLS'
      'INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      'LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where YPZLS.YPDH=:YPDH  and CLZHZL.SYL>0'
      'ORDER BY BWBH')
    Left = 138
    Top = 219
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end>
    object Query1XH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1BWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object Query1BZ: TStringField
      FieldName = 'BZ'
      FixedChar = True
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1LOSS: TFloatField
      FieldName = 'LOSS'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.00'
    end
    object Query1CLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 675
    Top = 208
  end
end
