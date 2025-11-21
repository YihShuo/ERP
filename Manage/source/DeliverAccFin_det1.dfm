object DeliverAccFin_det: TDeliverAccFin_det
  Left = 311
  Top = 420
  Width = 655
  Height = 327
  BorderIcons = [biSystemMenu]
  Caption = 'DeliverAccFin_det'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 647
    Height = 296
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
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
        FieldName = 'LLNO'
        Footers = <
          item
            FieldName = 'LLNO'
            ValueType = fvtCount
          end>
        Title.Caption = #20986#26448#26009#21934'|LLNO'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #38936#26009#37096#38272'|DepName'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Width = 290
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #21934#20729'|USPrice'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #37329#38989'|USACC'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Title.Caption = #35036#26009'|BLSB'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'|SCBH'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30332#26009#26085'|CFMDate'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 221
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DeliverAccFin.DS1
    SQL.Strings = (
      'select #KCLLS.LLNO,Bdepartment.DepName,#KCLLS.SCBH,#KCLLS.Qty,'
      
        '         #KCLLS.CFMDate,#KCLLS.BLSB,#KCLLS.CLBH,CLZL.YWPM,CLZL.Z' +
        'WPM,CLZL.DWBH,CWDJ.USPrice,'
      '          #KCLLS.Qty*CWDJ.USPrice as USACC'
      'from #KCLLS'
      'left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH '
      
        '                             and CWDJ.DJYear=convert(varchar,dat' +
        'epart(yyyy,#KCLLS.CFMDate)) '
      
        '                             and CWDJ.DJMonth=convert(varchar,da' +
        'tepart(MM,#KCLLS.CFMDate)) '
      'left join CLZL on #KCLLS.CLBH=CLZL.CLDH'
      'left join BDepartment on BDepartment.ID=#KCLLS.DepID'
      'where #KCLLS.SCBH=:DDBH and substring(BDepartment.ID,1,1)<>'#39'R'#39
      'order by #KCLLS.CLBH,#KCLLS.LLNO')
    Left = 200
    Top = 80
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 56
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghRowAutoStretch]
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
      #35330#21934#38936#29992#26448#26009#28165#21934)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 200
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 144
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
