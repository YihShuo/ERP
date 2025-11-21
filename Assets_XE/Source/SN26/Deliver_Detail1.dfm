object Deliver_Detail: TDeliver_Detail
  Left = 0
  Top = 0
  Caption = 'Deliver Detail'
  ClientHeight = 534
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 372
      Top = 41
      Width = 32
      Height = 17
      Caption = 'TSID:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 26
      Top = 11
      Width = 55
      Height = 17
      Caption = 'UserDate:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 211
      Top = 11
      Width = 19
      Height = 17
      Caption = 'To:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 533
      Top = 40
      Width = 59
      Height = 17
      Caption = 'DepName:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 369
      Top = 9
      Width = 36
      Height = 17
      Caption = 'LLNo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 26
      Top = 41
      Width = 57
      Height = 17
      Caption = 'UserCFM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 211
      Top = 42
      Width = 19
      Height = 17
      Caption = 'To:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 557
      Top = 10
      Width = 38
      Height = 17
      Caption = 'SBBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object edtTSID: TEdit
      Left = 411
      Top = 38
      Width = 112
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
    object btnQuery: TButton
      Left = 755
      Top = 3
      Width = 75
      Height = 30
      Caption = 'QUERY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnQueryClick
    end
    object DTP1: TDateTimePicker
      Left = 92
      Top = 8
      Width = 105
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 603
      Top = 38
      Width = 119
      Height = 25
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
    object Edit2: TEdit
      Left = 411
      Top = 6
      Width = 112
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 241
      Top = 8
      Width = 104
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP4: TDateTimePicker
      Left = 241
      Top = 39
      Width = 104
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DTP3: TDateTimePicker
      Left = 96
      Top = 38
      Width = 105
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 602
      Top = 6
      Width = 120
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Button1: TButton
      Left = 755
      Top = 35
      Width = 75
      Height = 31
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button1Click
    end
    object Usedatecheck: TCheckBox
      Left = 7
      Top = 13
      Width = 16
      Height = 16
      TabOrder = 10
    end
    object CFMcheck: TCheckBox
      Left = 7
      Top = 43
      Width = 16
      Height = 16
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 72
    Width = 1103
    Height = 462
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 1
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -12
    TitleParams.Font.Name = 'Tahoma'
    TitleParams.Font.Style = []
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35519#21205#21934#34399'|LLNO'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        PickList.Strings = (
          '01.Chuyen vi tri'
          '02.Bao Phe'
          '03.Cho Muon'
          '')
        ReadOnly = True
        Title.Caption = #39006#21029'|LB'
        Width = 89
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 59
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        Title.Caption = #35373#20633'ID|TSID'
        Width = 94
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'vwpm'
        Footers = <>
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 195
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 198
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 186
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#21934#20301'|DepName'
        Width = 103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'userid'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|USERID'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'userdate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399'|USERDATE'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'cfmid'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'cfmdate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Width = 104
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.' +
        'LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.' +
        'cfmid,TSCD_KCLL.cfmdate'
      
        ',TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.de' +
        'pname'
      '  from TSCD_KCLLS  '
      '  left join TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  '
      '  left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  '
      '  left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  '
      
        '  left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.' +
        'DepID  '
      '  where TSCD_KCLL.CFMID<>'#39'NO'#39'  '
      
        'and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111' +
        ')) between '
      #39'2022/06/30'#39
      ' and  '
      #39'2022/08/03'#39
      'and TSCD_KCLLS.LLNO ='#39'20220700001'#39
      
        'group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCL' +
        'L.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCL' +
        'L.cfmid,TSCD_KCLL.cfmdate'
      
        ',TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.de' +
        'pname'
      '  order by TSCD_KCLLS.LLNO')
    Left = 212
    Top = 340
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object KCLLQty: TFloatField
      FieldName = 'Qty'
    end
    object KCLLLB: TStringField
      FieldName = 'LB'
      FixedChar = True
    end
    object KCLLGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object KCLLuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 10
    end
    object KCLLuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object KCLLcfmid: TStringField
      FieldName = 'cfmid'
      FixedChar = True
      Size = 10
    end
    object KCLLcfmdate: TDateTimeField
      FieldName = 'cfmdate'
    end
    object KCLLSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object KCLLywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object KCLLzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object KCLLvwpm: TStringField
      FieldName = 'vwpm'
      FixedChar = True
      Size = 250
    end
    object KCLLdepname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = KCLL
    Left = 260
    Top = 341
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 432
    Top = 341
  end
end
