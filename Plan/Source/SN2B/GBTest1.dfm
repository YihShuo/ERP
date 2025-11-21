object GBTest: TGBTest
  Left = 253
  Top = 148
  Width = 1118
  Height = 480
  Caption = 'GB Test'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1102
    Height = 76
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 11
      Width = 26
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 701
      Top = 13
      Width = 50
      Height = 16
      Caption = 'Season:'
    end
    object Label5: TLabel
      Left = 341
      Top = 12
      Width = 71
      Height = 16
      Caption = 'Test Result:'
    end
    object Label6: TLabel
      Left = 206
      Top = 9
      Width = 30
      Height = 16
      Caption = 'SKU:'
    end
    object Label8: TLabel
      Left = 311
      Top = 47
      Width = 22
      Height = 16
      Caption = 'SR:'
    end
    object Label9: TLabel
      Left = 506
      Top = 45
      Width = 51
      Height = 16
      Caption = 'BUYNO:'
    end
    object InfoLable: TLabel
      Left = 655
      Top = 45
      Width = 73
      Height = 16
      AutoSize = False
      Color = clWhite
      ParentColor = False
    end
    object Label3: TLabel
      Left = 26
      Top = 46
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 168
      Top = 46
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 532
      Top = 12
      Width = 48
      Height = 16
      Caption = 'Country:'
    end
    object ShoeImage: TImage
      Left = 1000
      Top = 8
      Width = 97
      Height = 65
      Stretch = True
    end
    object Edit1: TEdit
      Left = 43
      Top = 7
      Width = 140
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 836
      Top = 19
      Width = 71
      Height = 36
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Check: TCheckBox
      Left = 760
      Top = 43
      Width = 57
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 757
      Top = 9
      Width = 56
      Height = 24
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 419
      Top = 9
      Width = 95
      Height = 24
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 240
      Top = 6
      Width = 81
      Height = 24
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 342
      Top = 42
      Width = 150
      Height = 24
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 562
      Top = 42
      Width = 85
      Height = 24
      TabOrder = 7
    end
    object Button2: TButton
      Left = 911
      Top = 19
      Width = 67
      Height = 36
      Caption = 'Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 14
      Top = 46
      Width = 14
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object DTP1: TDateTimePicker
      Left = 68
      Top = 43
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 10
    end
    object DTP2: TDateTimePicker
      Left = 190
      Top = 43
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 11
    end
    object Edit7: TEdit
      Left = 587
      Top = 9
      Width = 95
      Height = 24
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 76
    Width = 1102
    Height = 365
    Align = alClient
    DataSource = DS1
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
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = Popmenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = 'Basic Information|BUYNO'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Title.Caption = 'Basic Information|Season'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Basic Information|RY'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RY_same_group'
        Footers = <>
        Title.Caption = 'Basic Information|RY# with the same group#'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        Title.Caption = 'Basic Information|PO'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        Title.Caption = 'Basic Information|SKU'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Caption = 'Basic Information|Country'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Groups'
        Footers = <>
        Title.Caption = 'Basic Information|Groups'
      end
      item
        EditButtons = <>
        FieldName = 'ProductionType'
        Footers = <>
        Title.Caption = 'Basic Information|Production Type'
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        Title.Caption = 'Basic Information|SR'
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'MaterialDescription'
        Footers = <>
        Title.Caption = 'Basic Information|Material Description'
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'ModelDescription'
        Footers = <>
        Title.Caption = 'Basic Information|Model Description'
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'Color'
        Footers = <>
        Title.Caption = 'Basic Information|Color'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Basic Information|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'Gender'
        Footers = <>
        Title.Caption = 'Basic Information|Gender'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SendSize'
        Footers = <>
        Title.Caption = 'Basic Information|Send Size'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SendQty'
        Footers = <>
        Title.Caption = 'Basic Information|Send Q'#39'ty (pr)'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'GAC_Date'
        Footers = <>
        Title.Caption = 'Basic Information|GAC'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'GB_Test'
        Footers = <>
        Title.Caption = 'Offical GB Test|GB Test'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'LAB'
        Footers = <>
        Title.Caption = 'Offical GB Test|LAB'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'REMARK_Gore_tex'
        Footers = <>
        Title.Caption = 'Offical GB Test|REMARK(Gore-tex)'
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'AWBNo'
        Footers = <>
        Title.Caption = 'Offical GB Test|AWB No'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SendGBDate'
        Footers = <>
        Title.Caption = 'Offical GB Test|Send GB Date'
      end
      item
        EditButtons = <>
        FieldName = 'TestResult'
        Footers = <>
        Title.Caption = 'Offical GB Test|Test Result'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ReceivedDate'
        Footers = <>
        Title.Caption = 'Offical GB Test|Received result date'
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'KCNumber'
        Footers = <>
        Title.Caption = 'Offical GB Test|KC Number for Korea test'
        Width = 159
      end
      item
        EditButtons = <>
        FieldName = 'Arrived_on_DTTlab'
        Footers = <>
        Title.Caption = 'Offical GB Test|Arrived on DTT lab'
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'DayReceiveResult'
        Footers = <>
        Title.Caption = 'Offical GB Test|Day from send to receive result'
        Width = 231
      end
      item
        EditButtons = <>
        FieldName = 'Late_Reason'
        Footers = <>
        Title.Caption = 'Offical GB Test|NOTE'#10' (reason for long time receiving result)'
        Width = 265
      end
      item
        EditButtons = <>
        FieldName = 'EstimatedReceivedDate'
        Footers = <>
        Title.Caption = 'Offical GB Test|Estimated receiving result date'
        Width = 201
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Title.Caption = 'Offical GB Test|Remark'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TestReportFile'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Title.Caption = 'Offical GB Test|TestReportFile'
        Width = 100
        OnEditButtonClick = DBGridEh1Columns31EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'User|USERID'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Title.Caption = 'User|USERDate'
        Width = 105
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 153
  end
  object Popmenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 145
    Top = 229
    object Modify: TMenuItem
      Caption = 'Modify'
      OnClick = ModifyClick
    end
    object Save: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = SaveClick
    end
    object Cancel: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = CancelClick
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Details1: TMenuItem
      Caption = 'Details'
      OnClick = Details1Click
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 58
    Top = 152
  end
  object OpenDialog: TOpenDialog
    Left = 189
    Top = 155
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GBTest')
    UpdateObject = UpdateSQL1
    Left = 144
    Top = 152
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      Origin = 'DB.GBTest.BUYNO'
      FixedChar = True
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      Origin = 'DB.GBTest.Season'
      FixedChar = True
    end
    object Query1RY: TStringField
      FieldName = 'RY'
      Origin = 'DB.GBTest.RY'
      FixedChar = True
      Size = 15
    end
    object Query1RY_same_group: TStringField
      FieldName = 'RY_same_group'
      Origin = 'DB.GBTest.RY_same_group'
      FixedChar = True
      Size = 255
    end
    object Query1PO: TStringField
      FieldName = 'PO'
      Origin = 'DB.GBTest.PO'
      FixedChar = True
      Size = 30
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      Origin = 'DB.GBTest.SKU'
      FixedChar = True
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.GBTest.Country'
      FixedChar = True
      Size = 50
    end
    object Query1Groups: TStringField
      FieldName = 'Groups'
      Origin = 'DB.GBTest.Groups'
      FixedChar = True
      Size = 10
    end
    object Query1ProductionType: TStringField
      FieldName = 'ProductionType'
      Origin = 'DB.GBTest.ProductionType'
      FixedChar = True
      Size = 50
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      Origin = 'DB.GBTest.SR'
      FixedChar = True
    end
    object Query1MaterialDescription: TStringField
      FieldName = 'MaterialDescription'
      Origin = 'DB.GBTest.MaterialDescription'
      FixedChar = True
      Size = 255
    end
    object Query1ModelDescription: TStringField
      FieldName = 'ModelDescription'
      Origin = 'DB.GBTest.ModelDescription'
      FixedChar = True
      Size = 50
    end
    object Query1Color: TStringField
      FieldName = 'Color'
      Origin = 'DB.GBTest.Color'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.GBTest.Qty'
    end
    object Query1Gender: TStringField
      FieldName = 'Gender'
      Origin = 'DB.GBTest.Gender'
      FixedChar = True
    end
    object Query1SendSize: TStringField
      FieldName = 'SendSize'
      Origin = 'DB.GBTest.SendSize'
      FixedChar = True
      Size = 30
    end
    object Query1SendQty: TStringField
      FieldName = 'SendQty'
      Origin = 'DB.GBTest.SendQty'
      FixedChar = True
      Size = 30
    end
    object Query1GAC_Date: TDateTimeField
      FieldName = 'GAC_Date'
      Origin = 'DB.GBTest.GAC_Date'
    end
    object Query1GB_Test: TStringField
      FieldName = 'GB_Test'
      Origin = 'DB.GBTest.GB_Test'
      FixedChar = True
      Size = 50
    end
    object Query1LAB: TStringField
      FieldName = 'LAB'
      Origin = 'DB.GBTest.LAB'
      FixedChar = True
      Size = 50
    end
    object Query1REMARK_Gore_tex: TStringField
      FieldName = 'REMARK_Gore_tex'
      Origin = 'DB.GBTest.REMARK_Gore_tex'
      FixedChar = True
      Size = 255
    end
    object Query1AWBNo: TStringField
      FieldName = 'AWBNo'
      Origin = 'DB.GBTest.AWBNo'
      FixedChar = True
      Size = 30
    end
    object Query1SendGBDate: TDateTimeField
      FieldName = 'SendGBDate'
      Origin = 'DB.GBTest.SendGBDate'
    end
    object Query1TestResult: TStringField
      FieldName = 'TestResult'
      Origin = 'DB.GBTest.TestResult'
      FixedChar = True
      Size = 30
    end
    object Query1ReceivedDate: TDateTimeField
      FieldName = 'ReceivedDate'
      Origin = 'DB.GBTest.ReceivedDate'
    end
    object Query1KCNumber: TStringField
      FieldName = 'KCNumber'
      Origin = 'DB.GBTest.KCNumber'
      FixedChar = True
      Size = 30
    end
    object Query1Arrived_on_DTTlab: TStringField
      FieldName = 'Arrived_on_DTTlab'
      Origin = 'DB.GBTest.Arrived_on_DTTlab'
      FixedChar = True
      Size = 50
    end
    object Query1DayReceiveResult: TStringField
      FieldName = 'DayReceiveResult'
      Origin = 'DB.GBTest.DayReceiveResult'
      FixedChar = True
    end
    object Query1Late_Reason: TStringField
      FieldName = 'Late_Reason'
      Origin = 'DB.GBTest.Late_Reason'
      FixedChar = True
      Size = 255
    end
    object Query1EstimatedReceivedDate: TDateTimeField
      FieldName = 'EstimatedReceivedDate'
      Origin = 'DB.GBTest.EstimatedReceivedDate'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.GBTest.Remark'
      FixedChar = True
      Size = 255
    end
    object Query1TestReportFile: TStringField
      FieldName = 'TestReportFile'
      Origin = 'DB.GBTest.TestReportFile'
      FixedChar = True
      Size = 100
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.GBTest.USERID'
      FixedChar = True
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.GBTest.USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.GBTest.YN'
      FixedChar = True
      Size = 1
    end
    object Query1IMGName: TStringField
      FieldName = 'IMGName'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE GBTest'
      'SET'
      '  BUYNO = :BUYNO,'
      '  Season = :Season,'
      '  RY_same_group = :RY_same_group,'
      '  PO = :PO,'
      '  SKU = :SKU,'
      '  Country = :Country,'
      '  Groups = :Groups,'
      '  ProductionType = :ProductionType,'
      '  SR = :SR,'
      '  MaterialDescription = :MaterialDescription,'
      '  ModelDescription = :ModelDescription,'
      '  Color = :Color,'
      '  Qty = :Qty,'
      '  Gender = :Gender,'
      '  SendSize = :SendSize,'
      '  SendQty = :SendQty,'
      '  GAC_Date = :GAC_Date,'
      '  GB_Test = :GB_Test,'
      '  LAB = :LAB,'
      '  REMARK_Gore_tex = :REMARK_Gore_tex,'
      '  AWBNo = :AWBNo,'
      '  SendGBDate = :SendGBDate,'
      '  TestResult = :TestResult,'
      '  ReceivedDate = :ReceivedDate,'
      '  KCNumber = :KCNumber,'
      '  Arrived_on_DTTlab = :Arrived_on_DTTlab,'
      '  DayReceiveResult = :DayReceiveResult,'
      '  Late_Reason = :Late_Reason,'
      '  EstimatedReceivedDate = :EstimatedReceivedDate,'
      '  Remark = :Remark,'
      '  TestReportFile = :TestReportFile,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate'
      'WHERE'
      '  RY = :OLD_RY')
    InsertSQL.Strings = (
      'Insert into GBTest'
      
        '    (BUYNO , Season, RY,  RY_same_group, PO, SKU, Country, Group' +
        's, ProductionType, SR, MaterialDescription, ModelDescription'
      
        '    ,Color, Qty, Gender, SendSize, SendQty, GAC_Date, GB_Test, L' +
        'AB, REMARK_Gore_tex, AWBNo, SendGBDate, TestResult'
      
        '    ,ReceivedDate, KCNumber, Arrived_on_DTTlab, DayReceiveResult' +
        ', Late_Reason, EstimatedReceivedDate'
      '    ,Remark, TestReportFile, USERID, USERDate, YN)'
      'Values'
      
        '    (:BUYNO , :Season, :RY,  :RY_same_group, :PO, :SKU, :Country' +
        ', :Groups, :ProductionType, :SR, :MaterialDescription, :ModelDes' +
        'cription'
      
        '    ,:Color, :Qty, :Gender, :SendSize, :SendQty, :GAC_Date, :GB_' +
        'Test, :LAB, :REMARK_Gore_tex, :AWBNo, :SendGBDate, :TestResult'
      
        '    ,:ReceivedDate, :KCNumber, :Arrived_on_DTTlab, :DayReceiveRe' +
        'sult, :Late_Reason, :EstimatedReceivedDate'
      '    ,:Remark,  :TestReportFile, :USERID, :USERDate, :YN)')
    Left = 144
    Top = 190
  end
end
