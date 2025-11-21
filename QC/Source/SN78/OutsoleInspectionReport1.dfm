object OutsoleInspectionReport: TOutsoleInspectionReport
  Left = 444
  Top = 239
  Width = 1305
  Height = 675
  Caption = 'OutsoleInspectionReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 152
      Top = 17
      Width = 11
      Height = 16
      Caption = 'to'
    end
    object Button1: TButton
      Left = 280
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 50
      Top = 13
      Width = 97
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 1
    end
    object Button2: TButton
      Left = 368
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object DTP2: TDateTimePicker
      Left = 170
      Top = 13
      Width = 97
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1297
    Height = 595
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CR_Code'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Campaign_Name'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Questionnaire_Name'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Date'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Unit_Type_Code'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Shift'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Bottom_Part_Code'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Defect_Code'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Model_Name'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Model_ID'
        Footers = <>
        Title.Caption = 'Model ID'
      end
      item
        EditButtons = <>
        FieldName = 'Mold_ID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MCS_Code'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Multiple_MCS'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Component_Color_Code'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Index_Placeholder'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = QReport
    Left = 16
    Top = 96
  end
  object QReport: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 16
    Top = 128
    object QReportCRCode: TStringField
      DisplayLabel = 'CR Code'
      FieldName = 'CR_Code'
    end
    object QReportCampaign_Name: TStringField
      DisplayLabel = 'Campaign Name'
      FieldName = 'Campaign_Name'
    end
    object QReportQuestionnaire_Name: TStringField
      DisplayLabel = 'Questionnaire Name'
      FieldName = 'Questionnaire_Name'
    end
    object QReportDate: TStringField
      FieldName = 'Date'
    end
    object QReportUnit_Type_Code: TStringField
      DisplayLabel = 'Unit Type Code'
      FieldName = 'Unit_Type_Code'
    end
    object QReportShift: TStringField
      FieldName = 'Shift'
    end
    object QReportBottom_Part_Code: TStringField
      DisplayLabel = 'Bottom Part Code'
      FieldName = 'Bottom_Part_Code'
    end
    object QReportDefect_Code: TStringField
      DisplayLabel = 'Defect Code'
      FieldName = 'Defect_Code'
    end
    object QReportModel_Name: TStringField
      DisplayLabel = 'Model Name'
      FieldName = 'Model_Name'
    end
    object QReportModel_ID: TStringField
      DisplayLabel = 'Model Id'
      FieldName = 'Model_ID'
    end
    object QReportMold_ID: TStringField
      DisplayLabel = 'Mold Id'
      FieldName = 'Mold_ID'
    end
    object QReportMCS_Code: TStringField
      DisplayLabel = 'MCS Code'
      FieldName = 'MCS_Code'
    end
    object QReportMultiple_MCS: TStringField
      DisplayLabel = 'Multiple MCS #s'
      FieldName = 'Multiple_MCS'
    end
    object QReportComponent_Color_Code: TStringField
      DisplayLabel = 'Component Color Code'
      FieldName = 'Component_Color_Code'
    end
    object QReportQty: TFloatField
      DisplayLabel = 'Number of Pairs'
      FieldName = 'Qty'
    end
    object QReportIndex: TStringField
      DisplayLabel = 'Index'
      FieldName = 'Index_Placeholder'
    end
  end
end
