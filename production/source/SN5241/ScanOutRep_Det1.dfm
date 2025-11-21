object ScanOutRep_Det: TScanOutRep_Det
  Left = 244
  Top = 203
  Width = 820
  Height = 429
  BorderIcons = [biSystemMenu]
  Caption = 'ScanOutRep_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 812
    Height = 398
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = #26032#32048#26126#39636
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <
          item
            FieldName = 'CARTONBAR'
            ValueType = fvtCount
          end>
        Title.Caption = #22806#31665#32232#34399'|CARTONBAR'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'CARTONNO'
        Footers = <>
        Title.Caption = #31665#34399'|NO'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #25104#21697#20489'|CKBH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Title.Caption = #24235#20301'|KCBH'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'OUTCS'
        Footers = <
          item
            FieldName = 'OUTCS'
            ValueType = fvtAvg
          end>
        Title.Caption = #32763#31665#27425#25976'|OutCS'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'OUTDATE'
        Footers = <>
        Title.Caption = #32763#31665#26178#38291'|OutDATE'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #38617#25976'|Qty'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Title.Caption = #29376#24907'|SB'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.Caption = #24207#34399'|XH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #29983#29986#37096#38272'|DepName'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'STT'
        Footers = <>
        Title.Caption = #29376#24907'|Status'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Width = 79
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #25104#21697#20489#20837#24235#22806#31665#26126#32048#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 152
    Top = 80
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanOutRep.DS1
    SQL.Strings = (
      
        'select YWCP.*,BDepartment.DepName, case when SB=2 then '#39'Tai Che ' +
        #32763#31665#39' else case when SB=4 then '#39'Kiem hang '#39511#36008#39' end end as STT'
      'from YWCP'
      'left join BDepartment on BDepartment.ID=YWCP.DepNo'
      'where DDBH=:DDBH'
      'order by CartonBar')
    Left = 152
    Top = 48
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCP.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1CARTONNO: TIntegerField
      FieldName = 'CARTONNO'
      Origin = 'DB.YWCP.CARTONNO'
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
      DisplayFormat = '##,#0'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.YWCP.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      Origin = 'DB.YWCP.KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1OUTCS: TSmallintField
      FieldName = 'OUTCS'
      Origin = 'DB.YWCP.OUTCS'
    end
    object Query1OUTDATE: TDateTimeField
      FieldName = 'OUTDATE'
      Origin = 'DB.YWCP.OUTDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1STT: TStringField
      FieldName = 'STT'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 80
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end
