object CutProcessImport: TCutProcessImport
  Left = 292
  Top = 297
  Width = 1362
  Height = 675
  Caption = 'CutProcessImport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1346
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 10
      Width = 80
      Height = 16
      Caption = 'Cutting DLNO'
    end
    object Label3: TLabel
      Left = 603
      Top = 43
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label4: TLabel
      Left = 52
      Top = 39
      Width = 45
      Height = 16
      Caption = 'Factory'
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 207
      Top = 39
      Width = 30
      Height = 16
      Caption = 'Lean'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 1043
      Top = 10
      Width = 38
      Height = 16
      Caption = 'Memo'
    end
    object Label6: TLabel
      Left = 1003
      Top = 37
      Width = 78
      Height = 16
      Caption = 'GC PlanDate'
    end
    object EDIT_DLNO: TEdit
      Left = 104
      Top = 6
      Width = 609
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 736
      Top = 8
      Width = 89
      Height = 49
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 504
      Top = 35
      Width = 97
      Height = 24
      Date = 43834.392626909720000000
      Format = 'yyyy/MM/dd'
      Time = 43834.392626909720000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 616
      Top = 35
      Width = 97
      Height = 24
      Date = 43834.392626909720000000
      Format = 'yyyy/MM/dd'
      Time = 43834.392626909720000000
      TabOrder = 3
    end
    object XuongCB: TComboBox
      Left = 104
      Top = 35
      Width = 82
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      OnChange = XuongCBChange
    end
    object DepNameCB: TComboBox
      Left = 244
      Top = 35
      Width = 153
      Height = 24
      ItemHeight = 16
      TabOrder = 5
    end
    object CB_PlanDate: TCheckBox
      Left = 424
      Top = 38
      Width = 73
      Height = 17
      Caption = 'PlanDate'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object BB9: TBitBtn
      Left = 1232
      Top = 8
      Width = 89
      Height = 49
      Caption = 'Import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BB9Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000F0F0F05F5F5F
        0707070000000000000000000000000000000000000000000000000000000000
        000000000000000000000C0C0C7B7B7BF1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F2
        F2F2606060000000000000171717151515141414141414141414141414141414
        1414141414141414141414141616161010100000000000009D9D9DF0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0000000060606CBCBCBEEEEEEEEEEEEEEEEEEEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEB3B3B3000000
        2D2D2DF0F0F0F0F0F0F0F0F0F0F0F0F1F1F1000000111111F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0EAEAEA0000003C3C3CF0F0F0F0F0F0F0F0F0F0F0F0F1F1F10000000F0F0F
        EDEDEDF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0DEDEDE000000414141F0F0F0F0F0F0F0F0F0F0F0F0F1
        F1F10000000F0F0FECECECF0F0F0F0F0F0BDBDBD3030303030302D2D2D262626
        262626383838E6E6E6F0F0F0F0F0F0F0F0F0DDDDDD0000004C4C4CF0F0F0F0F0
        F0F0F0F0F0F0F0F1F1F10000000F0F0FECECECF0F0F0F0F0F02D2D2D00000000
        00000A0A0A010101000000000000D8D8D8F0F0F0F0F0F0F0F0F0DDDDDD000000
        1F1F1FA8A8A8ABABAB9A9A9ACACACAF1F1F10000000F0F0FECECECF0F0F0F0F0
        F05A5A5A0000000000002C2C2CE1E1E1E9E9E9E1E1E1F0F0F0F0F0F0F0F0F0F0
        F0F0DDDDDD000000000000000000000000000000000000C3C3C30000000F0F0F
        ECECECF0F0F0F0F0F05353530000001D1D1D000000787878F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0DDDDDD000000282828B8B8B8B3B3B36F6F6F00000001
        01010000000F0F0FECECECF0F0F0F0F0F0494949000000E8E8E87E7E7E000000
        4D4D4DF1F1F1F0F0F0F0F0F0F0F0F0F0F0F0DDDDDD000000515151F0F0F0F0F0
        F0F0F0F01212120000000000000F0F0FECECECF0F0F0F0F0F03A3A3A000000EC
        ECECF0F0F05C5C5C000000484848F0F0F0F0F0F0F0F0F0F0F0F0DEDEDE000000
        404040F0F0F0F0F0F0F0F0F01717170000000000000F0F0FECECECF0F0F0F0F0
        F0434343000000E4E4E4F0F0F0F0F0F0545454000000464646F0F0F0F0F0F0F0
        F0F0D5D5D5000000484848F0F0F0F0F0F0EEEEEE1515150000000000000F0F0F
        EDEDEDF0F0F0F0F0F0E5E5E5CFCFCFF0F0F0F0F0F0F0F0F0F0F0F05454540000
        004A4A4AF1F1F1F0F0F0E7E7E7000000121212F0F0F0F0F0F0EEEEEE15151500
        00000000000F0F0FEDEDEDF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0545454000000474747F1F1F1F0F0F0CBCBCB2E2E2EF0F0F0F0F0
        F0EEEEEE1515150000000000000F0F0FEEEEEEF0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0565656000000474747F0F0F0F0F0F0
        ECECECF0F0F0F0F0F0EEEEEE151515000000000000101010F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F055555500
        0000474747F0F0F0F0F0F0F0F0F0F0F0F0EEEEEE151515000000000000030303
        A8A8A8DDDDDDDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD7D7D7E6E6
        E6F0F0F0F0F0F0555555000000474747F0F0F0F0F0F0F0F0F0EEEEEE15151500
        0000929292000000000000000000000000000000000000000000000000000000
        000000000000000000C8C8C8F0F0F0F0F0F05454540000002C2C2CEFEFEFF0F0
        F0EEEEEE151515000000F1F1F19797974E4E4E4C4C4C4A4A4A5151511D1D1D00
        00002525255454544A4A4A4B4B4B3F3F3F474747EAEAEAF0F0F0F0F0F0474747
        000000EEEEEEF0F0F0EEEEEE151515000000F1F1F1F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0AFAFAF000000B9B9B9F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0EEEEEEF0F0F0F0F0F0EEEEEE151515000000F1F1F1F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0A8A8A8000000C3C3C3F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F018181800
        0000F1F1F1F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0979797000000717171E9E9E9
        ECECECECECECECECECECECECECECECEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDCACACA080808000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0DEDEDE00
        00000000000000001414140F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
        0F0F0F1010101010100000000000005D5D5DF2F2F2F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1C1C1C127272700000000000000000000000000000000000000
        0000000000000000000000000000000000070707606060F0F0F0}
      Layout = blGlyphTop
    end
    object DTP: TDateTimePicker
      Left = 1088
      Top = 33
      Width = 137
      Height = 24
      Date = 43834.392626909720000000
      Format = 'yyyy/MM/dd'
      Time = 43834.392626909720000000
      TabOrder = 8
    end
    object EDIT_MEMO: TEdit
      Left = 1088
      Top = 6
      Width = 137
      Height = 24
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 473
    Height = 571
    Align = alLeft
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'DLLB'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 132
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 473
    Top = 65
    Width = 873
    Height = 571
    Align = alClient
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'BWYWSM'
        Footers = <>
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'BWZWSM'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'GCBWBH'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'GCYWSM'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'GCZWSM'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 31
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 144
    object Query1DLNO: TStringField
      FieldName = 'DLNO'
      Size = 12
    end
    object Query1DLLB: TStringField
      FieldName = 'DLLB'
      Size = 6
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Size = 50
    end
    object Query1ListStatus: TIntegerField
      FieldName = 'ListStatus'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 112
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 176
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    Left = 488
    Top = 144
    object Query2ZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query2BWBH: TStringField
      FieldName = 'BWBH'
      Size = 4
    end
    object Query2BWYWSM: TStringField
      FieldName = 'BWYWSM'
      Size = 40
    end
    object Query2BWZWSM: TStringField
      FieldName = 'BWZWSM'
      Size = 40
    end
    object Query2GCBWBH: TStringField
      FieldName = 'GCBWBH'
      Size = 6
    end
    object Query2GCYWSM: TStringField
      FieldName = 'GCYWSM'
      Size = 40
    end
    object Query2GCZWSM: TStringField
      FieldName = 'GCZWSM'
      Size = 40
    end
    object Query2SIZE: TStringField
      FieldName = 'SIZE'
      Size = 50
    end
    object Query2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query2ProcessStatus: TIntegerField
      FieldName = 'ProcessStatus'
    end
    object Query2CuttingStatus: TIntegerField
      FieldName = 'CuttingStatus'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 488
    Top = 112
  end
end
