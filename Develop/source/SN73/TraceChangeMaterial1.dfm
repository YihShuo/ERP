object TraceChangeMaterial: TTraceChangeMaterial
  Left = 85
  Top = 125
  Width = 1779
  Height = 900
  Caption = 'Trace Change Material'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1771
    Height = 57
    Align = alTop
    TabOrder = 0
    object bnShow: TBitBtn
      Left = 8
      Top = 8
      Width = 57
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bnShowClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bnExcel: TBitBtn
      Left = 80
      Top = 8
      Width = 57
      Height = 41
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bnExcelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1771
    Height = 54
    Align = alTop
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 0
      Top = 20
      Width = 57
      Height = 13
      Caption = 'Sample NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 20
      Width = 52
      Height = 13
      Caption = 'Merge NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 408
      Top = 20
      Width = 36
      Height = 13
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 536
      Top = 20
      Width = 28
      Height = 13
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 853
      Top = 21
      Width = 12
      Height = 16
      Caption = #65374
    end
    object YPDHEdit: TEdit
      Left = 67
      Top = 16
      Width = 121
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 997
      Top = 11
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 268
      Top = 16
      Width = 121
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 1093
      Top = 20
      Width = 78
      Height = 13
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 451
      Top = 16
      Width = 62
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 568
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 880
      Top = 16
      Width = 89
      Height = 24
      Date = 44261.608594953700000000
      Format = 'yyyy/MM/dd'
      Time = 44261.608594953700000000
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 680
      Top = 21
      Width = 97
      Height = 17
      Caption = 'UserDate'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 760
      Top = 16
      Width = 89
      Height = 24
      Date = 44261.608227916670000000
      Format = 'yyyy/MM/dd'
      Time = 44261.608227916670000000
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 111
    Width = 1771
    Height = 758
    Align = alClient
    DataSource = DS_TCM
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypdh'
        Footers = <>
        Title.Caption = 'SampleOrder'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'SR#'
        Width = 171
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'Samplepurchaser'
        Footers = <>
        Title.Caption = 'Purchaser'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ypzlbh'
        Footers = <>
        Title.Caption = 'MergeNO'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'newbwzl'
        Footers = <>
        Title.Caption = 'Part|New'
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'oldbwzl'
        Footers = <>
        Title.Caption = 'Part|Old'
        Width = 147
      end
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        Title.Caption = 'MatNO|New'
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'OLDclbh'
        Footers = <>
        Title.Caption = 'MatNO|Old'
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'cldh1'
        Footers = <>
        Title.Caption = 'MatNO|Sub'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'MatNO|Sub'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'clsl'
        Footers = <>
        Title.Caption = 'Usage|New'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'OLDclsl'
        Footers = <>
        Title.Caption = 'Usage|Old'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'newzszl'
        Footers = <>
        Title.Caption = 'Supplier|New'
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'oldzszl'
        Footers = <>
        Title.Caption = 'Supplier|Old'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'quantity'
        Footers = <>
        Title.Caption = 'Pairs|New'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'OLDquantity'
        Footers = <>
        Title.Caption = 'Pairs|Old'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ypcc'
        Footers = <>
        Title.Caption = 'Size|New'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'OLDYPCC'
        Footers = <>
        Title.Caption = 'Size|Old'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'ypcco'
        Footers = <>
        Title.Caption = 'OutsoleSize|New'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'OLDYPCCO'
        Footers = <>
        Title.Caption = 'OutsoleSize|Old'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'ypccl'
        Footers = <>
        Title.Caption = 'LastSize|New'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'OLDYPCCL'
        Footers = <>
        Title.Caption = 'LastSize|Old'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'userdate'
        Footers = <>
        Title.Caption = 'UpdateTime'
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'userID'
        Footers = <>
        Title.Caption = 'UpdateID'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'csbh'
        Footers = <>
        Title.Caption = 'Supplier|New'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'OLDcsbh'
        Footers = <>
        Title.Caption = 'Supplier|Old'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'OLDbwbh'
        Footers = <>
        Title.Caption = 'Part|Old'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'bwbh'
        Footers = <>
        Title.Caption = 'Part|New'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'MatNO|Sub|Supplier'
        Visible = False
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Width = 48
      end>
  end
  object TCMQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select MAIN.*,newzszl.zsywjc AS newzszl,oldzszl.zsywjc AS oldzsz' +
        'l,newbwzl.YWSM AS newbwzl,oldbwzl.YWSM AS oldbwzl,zszl_dev.Sampl' +
        'epurchaser,mixclbh.cldh1,mixclbh.zsdh,subzszl.zsywjc from('
      
        'select YPZL_log.ypdh,YPZLZLS.ypzlbh,ypzl.article,YPZL_log.bwbh,Y' +
        'PZL_log.clbh,YPZL_log.clsl,'
      'YPZL_log.csbh,YPZL_log.quantity,YPZL_log.ypcc,'
      
        'YPZL_log.ypcco,YPZL_log.ypccl,YPZL_log.userdate,YPZL_log.userID,' +
        'kfxxzl.JiJie,YPZL.KFJD,YPZL.FD,'
      
        'case when YPZL_log.bwbh=YPZL_log.oldbwbh then null else YPZL_log' +
        '.OLDbwbh end as OLDbwbh,'
      
        'case when YPZL_log.clbh=YPZL_log.oldclbh then null else YPZL_log' +
        '.OLDclbh end as OLDclbh,'
      
        'case when YPZL_log.csbh=YPZL_log.oldcsbh then null else YPZL_log' +
        '.OLDcsbh end as OLDcsbh,'
      
        'case when YPZL_log.quantity=YPZL_log.oldquantity then null else ' +
        'OLDquantity end as OLDquantity,'
      
        'case when YPZL_log.clsl=YPZL_log.oldclsl then null else YPZL_log' +
        '.oldclsl end as OLDclsl,'
      
        'case when YPZL_log.YPCC=YPZL_log.oldYPCC then null else YPZL_log' +
        '.oldYPCC end as OLDYPCC,'
      
        'case when YPZL_log.YPCCO=YPZL_log.oldYPCCO then null else YPZL_l' +
        'og.oldYPCCO end as OLDYPCCO,'
      
        'case when YPZL_log.YPCCL=YPZL_log.oldYPCCL then null else YPZL_l' +
        'og.oldYPCCL end as OLDYPCCL'
      'from YPZL_log'
      'left join ypzl on ypzl.ypdh=YPZL_log.ypdh'
      'left join YPZLZLS on YPZLZLS.ypdh=YPZL_log.ypdh'
      
        'left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.She' +
        'Hao = YPZL.SheHao'
      'where 1=1'
      'and YPZL_log.YPDH like  '#39'%LAIV170200027%'#39
      'and kfxxzl.JiJie = '#39'20S'#39
      'and YPZL.KFJD = '#39'R1'#39
      ')main'
      'left join zszl newzszl on main.csbh=newzszl.zsdh'
      'left join zszl oldzszl on main.OLDcsbh=oldzszl.zsdh'
      'left join bwzl newbwzl on main.bwbh=newbwzl.BWDH'
      'left join bwzl oldbwzl on main.OLDbwbh=oldbwzl.BWDH'
      'left join clzhzl mixclbh on main.clbh=mixclbh.cldh'
      'left join zszl subzszl on mixclbh.zsdh=subzszl.zsdh'
      
        'left join (select zsdh,gsbh,Samplepurchaser from zszl_dev where ' +
        'gsbh='#39'CDC'#39')zszl_dev on main.CSBH=zszl_dev.zsdh'
      
        'group by MAIN.ypdh,MAIN.ypzlbh,MAIN.article,MAIN.bwbh,MAIN.clbh,' +
        'MAIN.clsl,'
      'MAIN.csbh,MAIN.quantity,MAIN.ypcc,'
      
        'MAIN.ypcco,MAIN.ypccl,MAIN.userdate,MAIN.userID,OLDbwbh,OLDclbh,' +
        'OLDcsbh,OLDquantity,OLDclsl,OLDYPCC,OLDYPCCO,OLDYPCCL,'
      
        'newzszl.zsywjc,oldzszl.zsywjc,newbwzl.YWSM,oldbwzl.YWSM,zszl_dev' +
        '.Samplepurchaser,mixclbh.cldh1,mixclbh.zsdh,subzszl.zsywjc,'
      'main.JiJie,main.KFJD,main.FD'
      'order by MAIN.UserDate desc')
    Left = 184
    Top = 216
    object TCMQryypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object TCMQryarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object TCMQrybwbh: TStringField
      FieldName = 'bwbh'
      FixedChar = True
      Size = 10
    end
    object TCMQryclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
    end
    object TCMQryclsl: TFloatField
      FieldName = 'clsl'
    end
    object TCMQrycsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object TCMQryquantity: TFloatField
      FieldName = 'quantity'
    end
    object TCMQryuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object TCMQryuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
    end
    object TCMQryOLDbwbh: TStringField
      FieldName = 'OLDbwbh'
      FixedChar = True
      Size = 10
    end
    object TCMQryOLDclbh: TStringField
      FieldName = 'OLDclbh'
      FixedChar = True
    end
    object TCMQryOLDcsbh: TStringField
      FieldName = 'OLDcsbh'
      FixedChar = True
      Size = 6
    end
    object TCMQryOLDquantity: TFloatField
      FieldName = 'OLDquantity'
    end
    object TCMQryOLDclsl: TFloatField
      FieldName = 'OLDclsl'
    end
    object TCMQryOLDYPCC: TStringField
      FieldName = 'OLDYPCC'
      FixedChar = True
      Size = 6
    end
    object TCMQryOLDYPCCO: TStringField
      FieldName = 'OLDYPCCO'
      FixedChar = True
      Size = 6
    end
    object TCMQryOLDYPCCL: TStringField
      FieldName = 'OLDYPCCL'
      FixedChar = True
      Size = 6
    end
    object TCMQryypcc: TStringField
      FieldName = 'ypcc'
      FixedChar = True
      Size = 6
    end
    object TCMQryypcco: TStringField
      FieldName = 'ypcco'
      FixedChar = True
      Size = 6
    end
    object TCMQryypccl: TStringField
      FieldName = 'ypccl'
      FixedChar = True
      Size = 6
    end
    object TCMQryypzlbh: TStringField
      FieldName = 'ypzlbh'
      FixedChar = True
      Size = 15
    end
    object TCMQrynewzszl: TStringField
      FieldName = 'newzszl'
      FixedChar = True
    end
    object TCMQryoldzszl: TStringField
      FieldName = 'oldzszl'
      FixedChar = True
    end
    object TCMQrynewbwzl: TStringField
      FieldName = 'newbwzl'
      FixedChar = True
      Size = 40
    end
    object TCMQryoldbwzl: TStringField
      FieldName = 'oldbwzl'
      FixedChar = True
      Size = 40
    end
    object TCMQrySamplepurchaser: TStringField
      FieldName = 'Samplepurchaser'
      FixedChar = True
    end
    object TCMQrycldh1: TStringField
      FieldName = 'cldh1'
      FixedChar = True
      Size = 10
    end
    object TCMQryzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object TCMQryzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object TCMQryJiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
      FixedChar = True
    end
    object TCMQryKFJD: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object TCMQryFD: TStringField
      DisplayLabel = 'Developer Name'
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object DS_TCM: TDataSource
    DataSet = TCMQry
    Left = 216
    Top = 216
  end
  object QTEMP: TQuery
    DatabaseName = 'DB'
    Left = 184
    Top = 304
  end
end
