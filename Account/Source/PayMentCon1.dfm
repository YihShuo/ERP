object PayMentCon: TPayMentCon
  Left = 312
  Top = 111
  Width = 901
  Height = 500
  Caption = 'PayMentCon'
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
    Width = 885
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 32
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 272
      Top = 40
      Width = 45
      Height = 16
      Caption = 'FKNO:'
    end
    object Button1: TButton
      Left = 480
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 568
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 656
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 320
      Top = 32
      Width = 137
      Height = 24
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 320
      Top = 8
      Width = 137
      Height = 17
      Caption = 'No Confirm'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 64
    Width = 885
    Height = 398
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 883
      Height = 169
      Align = alTop
      DataSource = DS3
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
      ParentFont = False
      PopupMenu = Pop1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnGetCellParams = DBGrid1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'FKBH'
          Footers = <>
          ReadOnly = True
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          ReadOnly = True
          Width = 108
        end
        item
          ButtonStyle = cbsEllipsis
          Color = 11206655
          EditButtons = <>
          FieldName = 'ZHBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Class No'
        end
        item
          ButtonStyle = cbsEllipsis
          Color = 11206655
          EditButtons = <>
          FieldName = 'BankNo'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ACCNo'
        end
        item
          ButtonStyle = cbsEllipsis
          Color = 11206655
          EditButtons = <>
          FieldName = 'ZHJC'
          Footers = <>
          ReadOnly = True
          Width = 95
        end
        item
          EditButtons = <>
          FieldName = 'USACC'
          Footers = <>
          ReadOnly = True
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'USQty'
          Footers = <>
          ReadOnly = True
          Width = 67
        end
        item
          Color = 10813439
          EditButtons = <>
          FieldName = 'CWHL'
          Footers = <>
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'VNACC'
          Footers = <>
          ReadOnly = True
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'VNQty'
          Footers = <>
          ReadOnly = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'FKDate'
          Footers = <>
          ReadOnly = True
          Width = 74
        end
        item
          Color = 10813439
          EditButtons = <>
          FieldName = 'CMdate'
          Footers = <>
        end>
    end
    object DBGrid4: TDBGridEh
      Left = 1
      Top = 170
      Width = 883
      Height = 227
      Align = alClient
      DataSource = DS4
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16761281
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 5
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnGetCellParams = DBGrid4GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DJLX'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'DJNO'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'CGBH'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <
            item
              Value = 'Total:'
              ValueType = fvtStaticText
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 88
        end
        item
          EditButtons = <>
          FieldName = 'DJDATE'
          Footers = <
            item
              FieldName = 'DJDATE'
              ValueType = fvtCount
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <
            item
              DisplayFormat = '##,#0.00'
              FieldName = 'Qty'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 56
        end
        item
          DropDownBox.Columns = <
            item
            end>
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <
            item
              DisplayFormat = '##,#0.0000'
              FieldName = 'USPrice'
              ValueType = fvtAvg
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 57
        end
        item
          DropDownWidth = -1
          EditButtons = <>
          FieldName = 'USACC'
          Footers = <
            item
              DisplayFormat = '##,#0.00'
              FieldName = 'USACC'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'USQty'
          Footers = <
            item
              DisplayFormat = '##,#0.00'
              FieldName = 'USQty'
              ValueType = fvtSum
            end>
          Title.TitleButton = True
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'VNPrice'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'VNPrice'
              ValueType = fvtAvg
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'VNACC'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'VNACC'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'VNQty'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'VNQty'
              ValueType = fvtSum
            end>
          Title.TitleButton = True
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 300
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 50
        end>
    end
  end
  object PayMas: TQuery
    CachedUpdates = True
    AfterOpen = PayMasAfterOpen
    AfterScroll = PayMasAfterScroll
    OnNewRecord = PayMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CWFK.*,CWZH.BankNo,CWZH.ZHJC,ZSZL.ZSYWJC'
      'from CWFK'
      'left join CWZH on CWZH.ZHBH=CWFK.ZHBH '
      'left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH '
      
        'where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) be' +
        'tween '
      #39'2007/07/21'#39
      ' and '#39'2008/07/21'#39
      'order by CWFK.FKBH DESC')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object PayMasFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object PayMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object PayMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object PayMasZHBH: TStringField
      FieldName = 'ZHBH'
      FixedChar = True
      Size = 25
    end
    object PayMasBankNo: TStringField
      FieldName = 'BankNo'
      FixedChar = True
      Size = 25
    end
    object PayMasZHJC: TStringField
      DisplayLabel = 'Class Name'
      FieldName = 'ZHJC'
      FixedChar = True
    end
    object PayMasUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object PayMasVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object PayMasUSQty: TCurrencyField
      FieldName = 'USQty'
      DisplayFormat = '##,#0.00'
    end
    object PayMasCWHL: TFloatField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object PayMasVNQty: TFloatField
      FieldName = 'VNQty'
      DisplayFormat = '##,#0'
    end
    object PayMasFKDate: TDateTimeField
      FieldName = 'FKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object PayMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object PayMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object PayMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object PayMasCMdate: TDateTimeField
      FieldName = 'CMdate'
    end
    object PayMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CWFK'
      'set'
      '  CWHL = :CWHL,'
      '  ZHBH = :ZHBH,'
      '  CMdate = :CMdate'
      'where'
      '  FKBH = :OLD_FKBH')
    InsertSQL.Strings = (
      'insert into CWFK'
      '  (CWHL, ZHBH, CMdate)'
      'values'
      '  (:CWHL, :ZHBH, :CMdate)')
    DeleteSQL.Strings = (
      'delete from CWFK'
      'where'
      '  FKBH = :OLD_FKBH')
    Left = 324
    Top = 164
  end
  object DS3: TDataSource
    DataSet = PayMas
    Left = 364
    Top = 132
  end
  object PayDet: TQuery
    OnNewRecord = PayDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select CWYF.*,CLZL.YWPM,CLZL.DWBH'
      'from CWYF'
      'left join CLZL on CWYF.CLBH=CLZL.CLDH'
      'where CWYF.FKBH=:FKBH'
      'order by CWYF.DJNO,CWYF.DJLX,CWYF.CGBH,CWYF.CLBH')
    UpdateObject = UPDet
    Left = 452
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object PayDetFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object PayDetZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object PayDetDJLX: TStringField
      FieldName = 'DJLX'
      FixedChar = True
      Size = 2
    end
    object PayDetDJNO: TStringField
      FieldName = 'DJNO'
      FixedChar = True
      Size = 15
    end
    object PayDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object PayDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object PayDetDJDATE: TDateTimeField
      FieldName = 'DJDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object PayDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object PayDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object PayDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object PayDetUSQty: TCurrencyField
      FieldName = 'USQty'
      DisplayFormat = '##,#0.00'
    end
    object PayDetCWHL: TIntegerField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object PayDetVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object PayDetVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object PayDetVNQty: TFloatField
      FieldName = 'VNQty'
      DisplayFormat = '##,#0'
    end
    object PayDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object PayDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yy/MM/dd'
    end
    object PayDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object PayDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object PayDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object PayDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CWYF'
      'set'
      '  FKBH = :FKBH'
      'where'
      '  DJLX = :OLD_DJLX and'
      '  CGBH = :OLD_CGBH and'
      '  DJNO = :OLD_DJNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CWYF'
      '  (FKBH)'
      'values'
      '  (:FKBH)')
    DeleteSQL.Strings = (
      'delete from CWYF'
      'where'
      '  DJLX = :OLD_DJLX and'
      '  CGBH = :OLD_CGBH and'
      '  DJNO = :OLD_DJNO and'
      '  CLBH = :OLD_CLBH')
    Left = 452
    Top = 165
  end
  object DS4: TDataSource
    DataSet = PayDet
    Left = 484
    Top = 132
  end
  object Pop1: TPopupMenu
    Left = 304
    Top = 48
    object N1: TMenuItem
      Caption = 'Delete'
      OnClick = N1Click
    end
  end
  object QPrice: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select *'
      'from CGBJS'
      'where CLBH=:CLBH')
    Left = 328
    Top = 312
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object QPriceBJNO: TStringField
      FieldName = 'BJNO'
      Origin = 'DB.CGBJS.BJNO'
      FixedChar = True
      Size = 11
    end
    object QPriceCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CGBJS.CLBH'
      FixedChar = True
      Size = 15
    end
    object QPriceUSPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.CGBJS.USPrice'
    end
    object QPriceVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.CGBJS.VNPrice'
    end
    object QPriceUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.CGBJS.USERDate'
    end
    object QPriceUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGBJS.USERID'
      FixedChar = True
      Size = 15
    end
    object QPriceBJLX: TStringField
      FieldName = 'BJLX'
      Origin = 'DB.CGBJS.BJLX'
      FixedChar = True
      Size = 1
    end
    object QPriceMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CGBJS.Memo'
      FixedChar = True
      Size = 100
    end
    object QPriceYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGBJS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 328
    object N21: TMenuItem
      Caption = 'Price List'
      OnClick = N21Click
    end
  end
  object E2A: TQuery
    DatabaseName = 'erp2acc'
    Left = 576
    Top = 320
  end
end
