object MaterialTestFD_TestData: TMaterialTestFD_TestData
  Left = 269
  Top = 201
  Width = 931
  Height = 585
  Caption = 'MaterialTestFD_TestData'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 923
    Height = 512
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object dbgrdh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 921
      Height = 510
      Align = alClient
      Color = cl3DLight
      DataSource = ds_CLZLTEST
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'time'
          Footers = <>
          Width = 33
        end
        item
          EditButtons = <>
          FieldName = 'FormCode'
          Footers = <>
          Width = 39
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'FDSentDate'
          Footers = <>
          Width = 69
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'SentDate'
          Footers = <>
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'undertest'
          Footers = <>
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'pass'
          Footers = <>
          Width = 34
        end
        item
          EditButtons = <>
          FieldName = 'fail'
          Footers = <>
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'Guarantee'
          Footers = <>
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'TestReportCode'
          Footers = <>
          Width = 72
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'TestReportDate'
          Footers = <>
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'REMARK'
          Footers = <>
          Width = 121
        end
        item
          EditButtons = <>
          FieldName = 'PDMCode'
          Footers = <>
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 52
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 39
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 85
      Top = 9
      Width = 81
      Height = 20
      Caption = 'Material ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 171
      Top = 9
      Width = 70
      Height = 20
      AutoSize = True
      Color = clBlack
      DataField = 'CLBH'
      DataSource = MaterialTestFD.DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 281
      Top = 10
      Width = 60
      Height = 16
      AutoSize = True
      Color = clBlack
      DataField = 'YWPM'
      DataSource = MaterialTestFD.DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 6
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ds_CLZLTEST: TDataSource
    DataSet = Qry_CLZLTEST
    Left = 138
    Top = 189
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
  object Qry_CLZLTEST: TQuery
    DatabaseName = 'dB'
    DataSource = MaterialTestFD.DS1
    SQL.Strings = (
      'select * from CLZLTEST'
      'where  cldh=:CLBH'
      '')
    Left = 196
    Top = 220
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Qry_CLZLTESTcldh: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'cldh'
      Origin = 'DB.CLZLTEST.cldh'
      FixedChar = True
      Size = 50
    end
    object Qry_CLZLTESTFormCode: TStringField
      DisplayLabel = 'Form Code'
      FieldName = 'FormCode'
      Origin = 'DB.CLZLTEST.FormCode'
      FixedChar = True
    end
    object Qry_CLZLTESTFDSentDate: TDateTimeField
      DisplayLabel = 'FD SentDate'
      FieldName = 'FDSentDate'
      Origin = 'DB.CLZLTEST.FDSentDate'
    end
    object Qry_CLZLTESTSentDate: TDateTimeField
      DisplayLabel = 'Lab GetDate'
      FieldName = 'SentDate'
      Origin = 'DB.CLZLTEST.SentDate'
    end
    object Qry_CLZLTESTundertest: TBooleanField
      DisplayLabel = 'Under test'
      FieldName = 'undertest'
      Origin = 'DB.CLZLTEST.undertest'
    end
    object Qry_CLZLTESTpass: TBooleanField
      FieldName = 'pass'
      Origin = 'DB.CLZLTEST.pass'
    end
    object Qry_CLZLTESTfail: TBooleanField
      FieldName = 'fail'
      Origin = 'DB.CLZLTEST.fail'
    end
    object Qry_CLZLTESTGuarantee: TBooleanField
      FieldName = 'Guarantee'
      Origin = 'DB.CLZLTEST.Guarantee'
    end
    object Qry_CLZLTESTTestReportCode: TStringField
      DisplayLabel = 'Test Rep.NO'
      FieldName = 'TestReportCode'
      Origin = 'DB.CLZLTEST.TestReportCode'
      FixedChar = True
      Size = 50
    end
    object Qry_CLZLTESTTestReportDate: TDateTimeField
      DisplayLabel = 'Test Rep.Date'
      FieldName = 'TestReportDate'
      Origin = 'DB.CLZLTEST.TestReportDate'
    end
    object Qry_CLZLTESTSupplier: TStringField
      FieldName = 'Supplier'
      Origin = 'DB.CLZLTEST.Supplier'
      FixedChar = True
    end
    object Qry_CLZLTESTPDMCode: TStringField
      FieldName = 'PDMCode'
      Origin = 'DB.CLZLTEST.PDMCode'
      FixedChar = True
    end
    object Qry_CLZLTESTREMARK: TStringField
      FieldName = 'REMARK'
      Origin = 'DB.CLZLTEST.REMARK'
      FixedChar = True
      Size = 100
    end
    object Qry_CLZLTESTUSERDATE: TDateTimeField
      DisplayLabel = 'User Date'
      FieldName = 'USERDATE'
      Origin = 'DB.CLZLTEST.USERDATE'
    end
    object Qry_CLZLTESTUSERID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      Origin = 'DB.CLZLTEST.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_CLZLTESTtime: TIntegerField
      DisplayLabel = 'Time'
      FieldName = 'time'
      Origin = 'DB.CLZLTEST.time'
    end
  end
end
