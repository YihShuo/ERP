object AccountConfirm: TAccountConfirm
  Left = 0
  Top = 0
  Caption = 'Account Confirm'
  ClientHeight = 578
  ClientWidth = 1160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1160
    Height = 243
    Align = alTop
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#32232#34399'|RKNO'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        Title.Caption = #39006#21029'|LB'
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #24288#21830'|ID'
        Width = 43
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_YW'
        Footers = <>
        Title.Caption = #24288#21830'|Supplier'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SOHIEU'
        Footers = <>
        Title.Caption = #32232#34399'|SOHIEU'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = #30332#31080#32232#34399'|DOCNO'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCDate'
        Footers = <>
        Title.Caption = #30332#31080#26085#26399'|DOCDate'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HDNO'
        Footers = <>
        Title.Caption = #21512#21516#32232#34399'|HDNO'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HDDate'
        Footers = <>
        Title.Caption = #21512#21516#26085#26399'|HDDate'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TOKHAI'
        Footers = <>
        Title.Caption = #22577#38364#21934'|TOKHAI'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TKDate'
        Footers = <>
        Title.Caption = #22577#38364#26085#26399'|TKDate'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Caption = #30003#35531#21934#20301'|DepID'
        Width = 61
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #30003#35531#21934#20301'|DepName'
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 69
      end
      item
        CellButtons = <>
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #26085#26399'|USERDATE'
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 69
      end
      item
        CellButtons = <>
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 22
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 243
    Width = 1160
    Height = 60
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 119
      Top = 26
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 255
      Top = 25
      Width = 47
      Height = 16
      Caption = 'RKNO:'
    end
    object btnSearch: TButton
      Left = 436
      Top = 18
      Width = 75
      Height = 30
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSearchClick
    end
    object btnConfirm: TButton
      Left = 516
      Top = 18
      Width = 76
      Height = 30
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = btnConfirmClick
    end
    object btnCancel: TButton
      Left = 598
      Top = 18
      Width = 68
      Height = 30
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btnCancelClick
    end
    object DTP1: TDateTimePicker
      Left = 15
      Top = 22
      Width = 97
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 149
      Top = 22
      Width = 97
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object edtRKNO: TEdit
      Left = 300
      Top = 22
      Width = 127
      Height = 24
      TabOrder = 5
    end
    object btnReset: TButton
      Left = 676
      Top = 18
      Width = 68
      Height = 30
      Caption = 'Reset'
      TabOrder = 6
      OnClick = btnResetClick
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 303
    Width = 832
    Height = 275
    Align = alLeft
    DataSource = DS2
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Visible = False
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30446#37636#32232#34399'|SBBH'
        Width = 76
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633#21517#31281'|VWPM'
        Width = 155
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633#21517#31281'|ZWPM'
        Width = 159
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35215#26684'|QUCBH'
        Visible = False
        Width = 199
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22411#34399'|LSBH'
        Visible = False
        Width = 198
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25976#37327'|Qty'
        Width = 35
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633'ID|TSID'
        Visible = False
        Width = 78
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DropDownSpecRow.Value = 0.000000000000000000
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'VND|Price'
        Width = 51
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'VND|Amout'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21295#29575'|CWHL'
        Width = 69
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DropDownSpecRow.Value = 0.000000000000000000
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'USD|Price'
        Width = 53
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'USD|Amount'
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL_HG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36914#21475#21295#29575'|CWHL'
        Width = 57
      end
      item
        ButtonStyle = cbsEllipsis
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButton.Style = ebsEllipsisEh
        EditButton.Visible = True
        EditButtons = <>
        FieldName = 'VNACC_HG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36914#21475'|VN ACC'
        Width = 69
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice_HG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36914#21475'| Price'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNTax_HG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36914#21475'| Tax'
        Width = 59
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'MonthS'
        Footers = <>
        Title.Caption = #25892#25552#27425#25976'|Months'
        Width = 68
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Title.Caption = #26371#35336#31185#30446'|CostID'
        Width = 70
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|ZSYWJC'
        Visible = False
        Width = 91
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 56
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 75
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 23
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 832
    Top = 303
    Width = 328
    Height = 275
    Align = alClient
    TabOrder = 3
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 1
      Width = 326
      Height = 175
      Align = alTop
      DataSource = DS3
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterParams.Color = clWindow
      ParentFont = False
      TabOrder = 0
      TitleParams.MultiTitle = True
      Columns = <
        item
          CellButtons = <>
          Color = clBtnFace
          DynProps = <>
          EditButtons = <>
          FieldName = 'TSID'
          Footers = <>
          ReadOnly = True
          Title.Caption = #36001#29986'ID|TSID'
          Width = 65
        end
        item
          CellButtons = <>
          Color = clBtnFace
          DynProps = <>
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25976#37327'|Qty'
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TSBH'
          Footers = <>
          Title.Caption = #36001#29986#32232#34399'|TSBH'
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'XSBH'
          Footers = <>
          Title.Caption = #20986#24288#34399#30908'|XSBH'
          Width = 78
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NSX'
          Footers = <>
          Title.Caption = #35069#36896#24180#26376'|NSX'
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InDATE'
          Footers = <>
          Title.Caption = #20837#24288#26085'|InDATE'
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DepID'
          Footers = <>
          Title.Caption = #23384#25918#20301#32622'|DepID'
          Width = 60
        end
        item
          CellButtons = <>
          Color = clBtnFace
          DynProps = <>
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          ReadOnly = True
          Title.Caption = #23384#25918#20301#32622'|DepName'
          Width = 74
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DepID_Memo'
          Footers = <>
          Title.Caption = #23384#25918#20301#32622'|Memo'
          Width = 164
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGrid4: TDBGridEh
      Left = 1
      Top = 176
      Width = 326
      Height = 98
      Align = alClient
      DataSource = DS4
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterParams.Color = clWindow
      ParentFont = False
      TabOrder = 1
      TitleParams.MultiTitle = True
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SBBH1'
          Footers = <>
          Title.Caption = #30446#37636#32232#34399'1|SBBH1'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'VWPM'
          Footers = <>
          Title.Caption = #36234#25991#21517#31281'|VWPM'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = #25976#37327'|Qty'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'VNPrice'
          Footers = <>
          Title.Caption = #22577#20729'|VNPrice'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <>
          Title.Caption = #22577#20729'|USPrice'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Title.Caption = #20351#29992#32773'|USERID'
        end
        item
          CellButtons = <>
          DisplayFormat = 'YYYY/MM/DD'
          DynProps = <>
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
          Width = 113
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'YN'
          Footers = <>
          Width = 25
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DelDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_KCRKS.RKNO,TSCD_SB.SBBH,TSCD_KCRKS.Qty,TSCD_KCRKS.US' +
        'ERID,TSCD_KCRKS.USERDATE,TSCD_KCRKS.YN'
      
        '       ,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.ZSDH,TSCD' +
        '_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH'
      
        '       ,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USPrice,T' +
        'SCD_KCRKS.USACC,TSCD_KCRKS.CWHL,TSCD_KCRKS.CWHL_HG'
      
        '       ,TSCD_KCRKS.VNACC_HG,TSCD_KCRKS.VNPrice_HG,TSCD_KCRKS.VNT' +
        'ax_HG,TSCD_KCRKS.VNACC_Tax,TSCD_KCRKS.MonthS,TSCD_KCRKS.CostID'
      'from TSCD_KCRKS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH'
      'where TSCD_KCRKS.RKNO=:RKNO'
      'order by TSCD_KCRKS.RKNO'
      ''
      ''
      '')
    UpdateObject = UPDet
    Left = 436
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DelDetSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object DelDetQty: TFloatField
      FieldName = 'Qty'
    end
    object DelDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      FieldName = 'DWBH'
      Origin = 'DB.TSCD_SB.DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object DelDetLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object DelDetQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object DelDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
      Origin = 'DB.TSCD_KCRKS.CWHL'
      DisplayFormat = '0'
    end
    object DelDetUSPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object DelDetUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '#,##0.00'
    end
    object DelDetCWHL_HG: TCurrencyField
      FieldName = 'CWHL_HG'
      DisplayFormat = '0'
    end
    object DelDetVNACC_HG: TCurrencyField
      FieldName = 'VNACC_HG'
      DisplayFormat = '##,#0'
    end
    object DelDetVNTax_HG: TCurrencyField
      FieldName = 'VNTax_HG'
      DisplayFormat = '##,#0'
    end
    object DelDetVNPrice_HG: TCurrencyField
      FieldName = 'VNPrice_HG'
      DisplayFormat = '##,#0'
    end
    object DelDetVNACC_Tax: TCurrencyField
      FieldName = 'VNACC_Tax'
    end
    object DelDetMonthS: TIntegerField
      FieldName = 'MonthS'
      DisplayFormat = '0'
    end
    object DelDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object DelDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRKS'
      'set'
      '  VNPrice=:VNPrice,'
      '  VNACC=:VNACC,'
      '  CWHL=:CWHL,'
      '  CWHL_HG =:CWHL_HG,'
      '  VNACC_HG =:VNACC_HG,'
      '  VNPrice_HG=:VNPrice_HG,'
      '  VNTax_HG =:VNTax_HG,'
      '  VNACC_Tax=:VNACC_Tax,'
      '  MonthS =:MonthS,'
      '  CostID =:CostID,'
      '  YN = :YN'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  SBBH = :OLD_SBBH'
      ''
      '')
    Left = 436
    Top = 165
  end
  object DS2: TDataSource
    DataSet = DelDet
    Left = 468
    Top = 132
  end
  object UpdTSCD: TUpdateSQL
    ModifySQL.Strings = (
      'Update TSCD'
      'set'
      '  YN =:YN'
      'where'
      '  TSID =:OLD_TSID')
    InsertSQL.Strings = (
      'insert into TSCD'
      
        '  (TSID , TSBH  , SBBH, Qty, XSBH, NSX, InDate, DepID, DepID_Mem' +
        'o,'
      '   USERID ,USERDATE ,YN , CFMID, CFMID_RK, CFMID_LL, RKNO, LB)'
      'values'
      
        '  (:TSID , :TSBH  , :SBBH, :Qty, :XSBH, :NSX, :InDate, :DepID, :' +
        'DepID_Memo,'
      
        '    :USERID , :USERDATE , :YN , :CFMID, :CFMID_RK, :CFMID_LL, :R' +
        'KNO, :LB)')
    DeleteSQL.Strings = (
      'delete TSCD'
      'where'
      '  TSID =:OLD_TSID')
    Left = 550
    Top = 166
  end
  object TSCDQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select TSCD.RKNO,TSCD.TSID,TSCD.TSBH,TSCD_SB.SBBH,TSCD.XSBH,TSCD' +
        '.NSX,TSCD.InDATE,TSCD.Status,TSCD.DepID,BDepartment.DepName,TSCD' +
        '.DepID_Memo,TSCD.USERID,TSCD.USERDATE,TSCD.YN'
      
        '       ,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.ZSDH,TSCD_ZSZL.ZSJC_YW' +
        ',TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD.Qty,TSCD.CFMID,TSCD.CFMID_LL, T' +
        'SCD.CFMID_RK,TSCD.LB'
      'from TSCD'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      'left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh'
      
        'left join TSCD_BDepartment BDepartment on BDepartment.ID = TSCD.' +
        'DepID'
      'where TSCD.RKNO=:RKNO and TSCD.SBBH=:SBBH  and LB=1')
    UpdateObject = UpdTSCD
    Left = 550
    Top = 134
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'SBBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object TSCDQryTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object TSCDQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQrySBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQryXSBH: TStringField
      FieldName = 'XSBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQryNSX: TStringField
      FieldName = 'NSX'
      FixedChar = True
      Size = 10
    end
    object TSCDQryInDATE: TDateTimeField
      FieldName = 'InDATE'
    end
    object TSCDQryDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object TSCDQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object TSCDQryDepID_Memo: TStringField
      FieldName = 'DepID_Memo'
      FixedChar = True
    end
    object TSCDQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDQryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDQryZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object TSCDQryZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
      Size = 50
    end
    object TSCDQryLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object TSCDQryQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object TSCDQryStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object TSCDQryQty: TFloatField
      FieldName = 'Qty'
    end
    object TSCDQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object TSCDQryCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 10
    end
    object TSCDQryCFMID_LL: TStringField
      FieldName = 'CFMID_LL'
      FixedChar = True
      Size = 10
    end
    object TSCDQryCFMID_RK: TStringField
      FieldName = 'CFMID_RK'
      FixedChar = True
      Size = 10
    end
    object TSCDQryLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
    object TSCDQryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object TSCDQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object TSCDQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = TSCDQry
    Left = 590
    Top = 133
  end
  object TSCD: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS2
    RequestLive = True
    SQL.Strings = (
      'select TSCD.*'
      'from TSCD'
      'where TSID=:TSID'
      'order by TSID')
    Left = 674
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TSID'
        ParamType = ptUnknown
      end>
  end
  object DS1: TDataSource
    DataSet = DelMas
    Left = 359
    Top = 132
  end
  object DelMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_KCRK.*,BDepartment.DepName,TSCD_ZSZL.ZSJC_YW ,TSCD_K' +
        'CPK.Declaretion as TOKHAI,TSCD_KCPK.TKDate'
      'from TSCD_KCRK'
      'left join  BDepartment on BDepartment.ID=TSCD_KCRK.DepID'
      'left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH'
      'left join TSCD_KCPK on TSCD_KCRK.RKNO=TSCD_KCPK.PKNO'
      'where TSCD_KCRK.CFMID='#39'NO'#39)
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object DelMasRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.TSCD_KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object DelMasDOCNO: TStringField
      FieldName = 'DOCNO'
      Origin = 'DB.TSCD_KCRK.DOCNO'
      FixedChar = True
      Size = 50
    end
    object DelMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCRK.YN'
      FixedChar = True
      Size = 1
    end
    object DelMasLB: TStringField
      FieldName = 'LB'
      Origin = 'DB.TSCD_KCRK.LB'
      FixedChar = True
    end
    object DelMasDepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.TSCD_KCRK.DepID'
      FixedChar = True
      Size = 10
    end
    object DelMasDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object DelMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      Origin = 'DB.TSCD_KCRK.CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object DelMasCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.TSCD_KCRK.CFMID'
      FixedChar = True
      Size = 10
    end
    object DelMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCRK.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object DelMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCRK.USERID'
      FixedChar = True
      Size = 10
    end
    object DelMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object DelMasZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
    end
    object DelMasHDNO: TStringField
      DisplayWidth = 50
      FieldName = 'HDNO'
      FixedChar = True
      Size = 50
    end
    object DelMasDOCDate: TDateTimeField
      FieldName = 'DOCDate'
    end
    object DelMasHDDate: TDateTimeField
      FieldName = 'HDDate'
    end
    object DelMasSOHIEU: TStringField
      FieldName = 'SOHIEU'
      FixedChar = True
    end
    object DelMasTOKHAI: TStringField
      FieldName = 'TOKHAI'
      FixedChar = True
      Size = 50
    end
    object DelMasTKDate: TDateTimeField
      FieldName = 'TKDate'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 261
    Top = 133
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRK'
      'set'
      '  CFMID = :CFMID,'
      '  YN = :YN,'
      '  DOCNO =:DOCNO,'
      '  DOCDate =:DOCDate,'
      '  HDNO =:HDNO,'
      '  HDDate =:HDDate'
      'where'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      '')
    Left = 324
    Top = 164
  end
  object DelDetS: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS2
    RequestLive = True
    SQL.Strings = (
      'select TSCD_KCRKSS.*,TSCD_SB.VWPM'
      'from TSCD_KCRKSS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKSS.SBBH1'
      'where TSCD_KCRKSS.RKNO=:RKNO'
      'and TSCD_KCRKSS.SBBH=:SBBH'
      'order by TSCD_KCRKSS.SBBH1'
      ''
      ''
      '')
    UpdateObject = UpDetS
    Left = 778
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'SBBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DelDetSRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DelDetSSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object DelDetSSBBH1: TStringField
      FieldName = 'SBBH1'
      FixedChar = True
      Size = 15
    end
    object DelDetSQty: TFloatField
      FieldName = 'Qty'
    end
    object DelDetSVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object DelDetSUSPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object DelDetSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object DelDetSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DelDetSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetSVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
  end
  object DS4: TDataSource
    DataSet = DelDetS
    Left = 810
    Top = 132
  end
  object UpDetS: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRKSS'
      'set'
      '  SBBH =:SBBH,'
      '  SBBH1 =:SBBH1,'
      '  Qty =:Qty,'
      '  USPrice =:USPrice,'
      '  VNPrice =:VNPrice,'
      '  USERID =:USERID,'
      '  USERDATE =:USERDATE,'
      '  YN =:YN'
      'where'
      '  RKNO =:OLD_RKNO and'
      '  SBBH =:OLD_SBBH and'
      '  SBBH1 =:OLD_SBBH1')
    Left = 778
    Top = 165
  end
end
