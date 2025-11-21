object EquipmentR: TEquipmentR
  Left = 323
  Top = 346
  Caption = 'EquipmentR'
  ClientHeight = 423
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 140
      Top = 10
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Label3: TLabel
      Left = 3
      Top = 9
      Width = 40
      Height = 16
      Caption = 'SBBH:'
    end
    object Label1: TLabel
      Left = 145
      Top = 43
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 3
      Top = 43
      Width = 40
      Height = 16
      Caption = 'TSBH:'
    end
    object Label5: TLabel
      Left = 485
      Top = 9
      Width = 37
      Height = 16
      Caption = 'LLNO:'
    end
    object Label6: TLabel
      Left = 304
      Top = 8
      Width = 44
      Height = 16
      Caption = 'ZWPM:'
    end
    object Button1: TButton
      Left = 698
      Top = 34
      Width = 87
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object YWPMEdit: TEdit
      Left = 185
      Top = 7
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object ZWPMEdit: TEdit
      Left = 352
      Top = 6
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object SBBHEdit: TEdit
      Left = 45
      Top = 6
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object applyDepnameEdit: TEdit
      Left = 216
      Top = 39
      Width = 169
      Height = 24
      TabOrder = 4
    end
    object TSBHEdit: TEdit
      Left = 45
      Top = 40
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Button2: TButton
      Left = 699
      Top = 0
      Width = 86
      Height = 33
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button2Click
    end
    object LLNOEdit: TEdit
      Left = 527
      Top = 6
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object GroupBox2: TGroupBox
      Left = 791
      Top = 0
      Width = 403
      Height = 123
      Caption = 'Status'
      TabOrder = 8
      object CKLL: TCheckBox
        Left = 16
        Top = 36
        Width = 177
        Height = 17
        Caption = #24050#38936#20986#20351#29992' '#272#227' l'#227'nh s'#7917' d'#7909'ng'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CKRK: TCheckBox
        Left = 16
        Top = 14
        Width = 225
        Height = 17
        Caption = #25505#36092#20837#24235#23578#26410#38936'  Mua nh'#7853'p kho ch'#432'a l'#227'nh'
        Enabled = False
        TabOrder = 1
      end
      object CKBB: TCheckBox
        Left = 16
        Top = 58
        Width = 177
        Height = 17
        Caption = #24050#22577#24290' '#272#227' ba'#769'o ph'#234#769
        Enabled = False
        TabOrder = 2
      end
      object CKMM: TCheckBox
        Left = 16
        Top = 79
        Width = 169
        Height = 17
        Caption = #24050#20511#20986' '#272#227' cho  m'#432#417#803'n'
        Enabled = False
        TabOrder = 3
      end
      object CKHH: TCheckBox
        Left = 16
        Top = 101
        Width = 233
        Height = 17
        Caption = #24050#20511#20986#27512#36996' '#272#227' hoa'#768'n tra'#777' cho m'#432#417#803'n'
        Enabled = False
        TabOrder = 4
      end
      object CKRR: TCheckBox
        Left = 199
        Top = 36
        Width = 169
        Height = 17
        Caption = #24050#36864#24235' '#272#227' tr'#7843' v'#7873' kho'
        Enabled = False
        TabOrder = 5
      end
      object CKFF: TCheckBox
        Left = 199
        Top = 58
        Width = 169
        Height = 17
        Caption = #24050#20511#26781#20511#20837' '#272#227' m'#432#417#803'n'
        Enabled = False
        TabOrder = 6
      end
      object CKTT: TCheckBox
        Left = 199
        Top = 79
        Width = 169
        Height = 17
        Caption = #24050#27512#36996'  '#272#227' hoa'#768'n tra'#777
        Enabled = False
        TabOrder = 7
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 129
    Width = 1047
    Height = 294
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Title.Caption = #36001#29986#32232#34399'|TSBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684'|QUCBH'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Title.Caption = #22411#34399'|LSBH'
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 156
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 182
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 33
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Caption = #23384#25918#20301#32622'|DepID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #23384#25918#20301#32622'|Location'
        Width = 109
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID_Memo'
        Footers = <>
        Title.Caption = #23384#25918#20301#32622'|D_Memo'
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_yw'
        Footers = <>
        Title.Caption = #24288#21830'|ZSJC_YW'
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'applyDepname'
        Footers = <>
        Title.Caption = #30003#35531#21934#20301'|DepName'
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        Title.Caption = #35373#20633'ID|TSID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
        Title.Caption = #29376#24907'|Status'
        Width = 34
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD.TSID,TSCD.SBBH,TSCD.TSBH,TSCD.Status,TSCD.Qty,TSCD.X' +
        'SBH,TSCD.NSX,TSCD.InDATE,TSCD.JDBDATE,TSCD.JDEDATE,IsNull(TSCD.J' +
        'DTS,TSCD.DepID) as DepID,TSCD.DepID_Memo,IsNull(JDBDep.DepName,B' +
        'dep_loca.DepName) as DepName,TSCD_ZSZL.zsjc_yw, '
      
        '       TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.AuthCE,TSCD_SB.YWPM,TS' +
        'CD_SB.ZWPM,Bdep_appy.DepName as applyDepname '
      'from TSCD '
      'left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH '
      'left join BDepartment Bdep_loca on Bdep_loca.ID=TSCD.DepID  '
      'left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_SB.ZSDH '
      'left join TSCD_KCRK on TSCD_KCRK.RKNO=TSCD.RKNO '
      'left join BDepartment Bdep_appy on Bdep_appy.ID=TSCD_KCRK.DepID '
      'left join BDepartment JDBDep on JDBDep.ID=TSCD.JDTS '
      'where TSCD.SBBH like '#39'%'#39
      'and Status='#39'N'#39' '
      'order by TSID')
    Left = 232
    Top = 192
    object Query1TSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 10
    end
    object Query1TSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object Query1Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1XSBH: TStringField
      FieldName = 'XSBH'
      FixedChar = True
      Size = 10
    end
    object Query1NSX: TStringField
      FieldName = 'NSX'
      FixedChar = True
      Size = 10
    end
    object Query1InDATE: TDateTimeField
      FieldName = 'InDATE'
    end
    object Query1JDBDATE: TStringField
      FieldName = 'JDBDATE'
      FixedChar = True
      Size = 12
    end
    object Query1JDEDATE: TStringField
      FieldName = 'JDEDATE'
      FixedChar = True
      Size = 12
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepID_Memo: TStringField
      FieldName = 'DepID_Memo'
      FixedChar = True
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1LSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object Query1QUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object Query1AuthCE: TBooleanField
      FieldName = 'AuthCE'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1applyDepname: TStringField
      FieldName = 'applyDepname'
      FixedChar = True
      Size = 50
    end
    object Query1zsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 192
  end
end
