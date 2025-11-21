object DailyPro: TDailyPro
  Left = 333
  Top = 208
  Width = 870
  Height = 500
  Caption = 'Daily Production total'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #26032#32048#26126#39636
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
    Width = 862
    Height = 73
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 265
      Height = 16
      AutoSize = False
      Caption = #27599#26085#21508#24288#29983#29986#32317#35336#29376#27841#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 30
      Height = 13
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 160
      Top = 48
      Width = 16
      Height = 13
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 280
      Top = 45
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 424
      Top = 49
      Width = 36
      Height = 13
      Caption = 'GSBH:'
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 40
      Width = 89
      Height = 21
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 184
      Top = 40
      Width = 89
      Height = 21
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 360
      Top = 44
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CB1: TComboBox
      Left = 464
      Top = 44
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 3
      Text = 'VTX'
      Items.Strings = (
        'ALL')
    end
    object Button2: TButton
      Left = 640
      Top = 32
      Width = 65
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 552
      Top = 32
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 862
    Height = 393
    Align = alClient
    DataSource = DS1
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
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Title.Caption = #26085#26399'|SCDate'
        Title.TitleButton = True
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24037#24288#32232#34399'|GSBH'
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'DepNo'
        Footers = <>
        Title.Caption = #22823#37096#38272'|DepNo'
        Title.TitleButton = True
        Width = 44
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'C_Qty'
        Footers = <
          item
            FieldName = 'C_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35009#26039#29986#37327'|C_Qty'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'C_Stock'
        Footers = <
          item
            FieldName = 'C_Stock'
            ValueType = fvtSum
          end>
        Title.Caption = #35009#26039#24235#23384'|C_Stock'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'S_Qty'
        Footers = <
          item
            FieldName = 'S_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #37341#36554#29986#37327'|S_Qty'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'S_Stock'
        Footers = <
          item
            FieldName = 'S_Stock'
            ValueType = fvtSum
          end>
        Title.Caption = #37341#36554#24235#23384'|S_Stock'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'W_Qty'
        Footers = <
          item
            FieldName = 'W_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #22823#36554#29986#37327'|W_Qty'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'W_Stock'
        Footers = <
          item
            FieldName = 'W_Stock'
            ValueType = fvtSum
          end>
        Title.Caption = #22823#36554#24235#23384'|W_Stock'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'O_Qty'
        Footers = <
          item
            FieldName = 'O_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #22823#24213#29986#37327'|O_Qty'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'O_Stock'
        Footers = <
          item
            FieldName = 'O_Stock'
            ValueType = fvtSum
          end>
        Title.Caption = #22823#24213#24235#23384'|O_Stock'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'A_Qty'
        Footers = <
          item
            FieldName = 'A_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25104#22411#29986#37327'|A_Qty'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'A_Set'
        Footers = <
          item
            FieldName = 'A_Set'
            ValueType = fvtSum
          end>
        Title.Caption = #25104#22411#37197#22871'|A_Set'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'RSCQ'
        Footers = <
          item
            FieldName = 'RSCQ'
            ValueType = fvtAvg
          end>
        Title.Caption = #20986#21220#20154#25976'|RSCQ'
        Title.TitleButton = True
        Width = 58
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'QJQty'
        Footers = <
          item
            FieldName = 'QJQty'
            ValueType = fvtSum
          end>
        Title.Caption = #32570#21220#20154#25976'|QJQty'
        Title.TitleButton = True
        Width = 58
      end>
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,BD' +
        'epartment.DepName,'
      
        '       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as b' +
        'zQty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/11/06'#39'and '#39'2008/11/13'#39
      '       and SCBB.DepNo like '#39'%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and BDepartment.DepName like '#39'%%'#39
      
        'Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,BDepartmen' +
        't.DepName ,SCBZCL.Qty'
      'union all '
      
        'select '#39'2008/11/13'#39' as SCDate ,SCBB.DepNo,'#39'Total'#39' as DepName, is' +
        'null(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as bzQty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2008/11/06'#39'and '#39'2008/11/13'#39
      
        '           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCB' +
        'B.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/11/06'#39' and '#39'2008/11/13'#39
      '       and SCBB.DepNo like '#39'%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and BDepartment.DepName like '#39'%%'#39
      'Group by SCBB.DepNo,BDepartment.DepName ,SCBZCLA.Qty'
      
        'Order by  SCBB.DepNo,convert(varchar,SCBB.SCDate,111),BDepartmen' +
        't.DepName,SCBZCLA.Qty ')
    Left = 304
    Top = 176
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SCPTZL.*,sum(CQQty) as RSCQ,sum(QJQty) as QJQty'
      'from SCPTZL'
      
        'left join RSCQ on convert(varchar,SCPTZL.SCDate,111)=convert(var' +
        'char,RSCQ.RSDate,111)'
      
        'group by SCPTZL.SCDate,SCPTZL.GSBH,SCPTZL.DepNo,SCPTZL.C_Qty,SCP' +
        'TZL.C_Stock,'
      
        '             SCPTZL.S_Qty,SCPTZL.S_Stock,SCPTZL.W_Qty,SCPTZL.W_S' +
        'tock,SCPTZL.Z_Qty,'
      
        '             SCPTZL.Z_Stock,SCPTZL.O_Qty,SCPTZL.O_Stock,SCPTZL.A' +
        '_Qty,SCPTZL.A_Set'
      'order by SCPTZL.SCDate')
    Left = 392
    Top = 160
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 3
    end
    object Query1C_Qty: TIntegerField
      FieldName = 'C_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1C_Stock: TIntegerField
      FieldName = 'C_Stock'
      DisplayFormat = '##,#0'
    end
    object Query1S_Qty: TIntegerField
      FieldName = 'S_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1S_Stock: TIntegerField
      FieldName = 'S_Stock'
      DisplayFormat = '##,#0'
    end
    object Query1W_Qty: TIntegerField
      FieldName = 'W_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1W_Stock: TIntegerField
      FieldName = 'W_Stock'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Qty: TIntegerField
      FieldName = 'Z_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Stock: TIntegerField
      FieldName = 'Z_Stock'
      DisplayFormat = '##,#0'
    end
    object Query1O_Qty: TIntegerField
      FieldName = 'O_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1O_Stock: TIntegerField
      FieldName = 'O_Stock'
      DisplayFormat = '##,#0'
    end
    object Query1A_Qty: TIntegerField
      FieldName = 'A_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1A_Set: TIntegerField
      FieldName = 'A_Set'
      DisplayFormat = '##,#0'
    end
    object Query1RSCQ: TIntegerField
      FieldName = 'RSCQ'
      DisplayFormat = '##,#0'
    end
    object Query1QJQty: TIntegerField
      FieldName = 'QJQty'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 160
  end
  object ImportData: TQuery
    DatabaseName = 'DB'
    Left = 688
    Top = 176
  end
end
