object ScanPerHourPPHDet: TScanPerHourPPHDet
  Left = 457
  Top = 175
  Width = 542
  Height = 340
  Caption = 'ScanPerHourPPHDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 526
    Height = 302
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
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SMNO'
        Footers = <>
        Title.Caption = #24207#34399'|SMNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #35330#21934'|YSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.Caption = #24037#27573'|GXLB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
        Title.Caption = #25475#25551#26085#26399#26178#38291'|ScanDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 154
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #24037#34399'|USERID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMZL.SMNO,SMDD.YSBH,SMDDSS.GXLB,SMZL.ScanDate,SMZL.CTS*SM' +
        'DDSS.Qty as Qty,SMZL.USERID  from SMZL '
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      
        'where  SMZL.ScanDate between convert(smalldatetime,'#39'2017/12/08 0' +
        '0:00:00'#39') and convert(smalldatetime,'#39'2017/12/08 23:59:59'#39') '
      '      and SMDDSS.GXLB='#39'A'#39
      '      and SMDDSS.DDBH like '#39'Y1712-0707%'#39)
    Left = 240
    Top = 112
    object Query1SMNO: TFloatField
      DisplayWidth = 10
      FieldName = 'SMNO'
    end
    object Query1YSBH: TStringField
      DisplayWidth = 11
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1GXLB: TStringField
      DisplayWidth = 6
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object Query1ScanDate: TDateTimeField
      DisplayWidth = 23
      FieldName = 'ScanDate'
    end
    object Query1Qty: TIntegerField
      DisplayWidth = 5
      FieldName = 'Qty'
    end
    object Query1USERID: TStringField
      DisplayWidth = 8
      FieldName = 'USERID'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 112
    object N1: TMenuItem
      Caption = 'Excel'
      OnClick = N1Click
    end
  end
end
