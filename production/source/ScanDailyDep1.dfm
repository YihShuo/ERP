object ScanDailyDep: TScanDailyDep
  Left = 228
  Top = 180
  Width = 925
  Height = 500
  Caption = 'ScanDailyDep'
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
    Width = 917
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 45
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 189
      Top = 45
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 355
      Top = 19
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 195
      Height = 19
      Caption = #21508#21934#20301#20837#25104#21697#20489#26085#22577#34920':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 480
      Top = 45
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 616
      Top = 45
      Width = 29
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 360
      Top = 45
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 43
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 256
      Top = 43
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 416
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 740
      Top = 32
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 528
      Top = 43
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 648
      Top = 43
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object CBX4: TComboBox
      Left = 416
      Top = 43
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 917
    Height = 396
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    Columns = <
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <
          item
            Alignment = taCenter
            FieldName = 'DepName'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtCount
          end>
        Title.Caption = #37096#38272#21517#31281'|DepName'
        Title.TitleButton = True
        Width = 149
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Title.Caption = #37096#38272#20013#25991#21517#31281'|DepMemo'
        Title.TitleButton = True
        Width = 186
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'InDate'
        Footers = <>
        Title.Caption = #20837#24235#26085#26399'|InDate'
        Title.TitleButton = True
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#25976#37327'|Qty'
        Title.TitleButton = True
        Width = 124
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,conver' +
        't(varchar,YWCP.InDate,111) as InDate,sum(YWCP.Qty) as Qty'
      'from YWCP with (nolock)'
      'left join YWDD  with (nolock) on YWCP.DDBH=YWDD.DDBH '
      'left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH '
      
        'left join LBZLS  with (nolock) on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=D' +
        'DZL.DDGB'
      'left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH '
      
        'left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepN' +
        'o '
      'where YWCP.DDBH like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      '      and convert(varchar,YWCP.InDate,111) between '
      '      '#39'2009/03/17'#39' and '#39'2009/03/30'#39
      
        'group by  YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,con' +
        'vert(varchar,YWCP.InDate,111)'
      
        'order by  YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,con' +
        'vert(varchar,YWCP.InDate,111)'
      
        'select YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,conver' +
        't(varchar,YWCP.InDate,111) as InDate,sum(YWCP.Qty) as Qty'
      'from YWCP with (nolock)'
      'left join YWDD  with (nolock) on YWCP.DDBH=YWDD.DDBH '
      'left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH '
      
        'left join LBZLS  with (nolock) on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=D' +
        'DZL.DDGB'
      'left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH '
      
        'left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepN' +
        'o '
      'where YWCP.DDBH like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      '      and convert(varchar,YWCP.InDate,111) between '
      '      '#39'2009/03/17'#39' and '#39'2009/03/30'#39
      
        'group by  YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,con' +
        'vert(varchar,YWCP.InDate,111)'
      
        'order by  YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,con' +
        'vert(varchar,YWCP.InDate,111)')
    Left = 168
    Top = 120
    object Query1DepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1InDate: TStringField
      FieldName = 'InDate'
      FixedChar = True
      Size = 30
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 160
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.400000000000000000
    Page.LeftMargin = 0.400000000000000000
    Page.RightMargin = 0.400000000000000000
    Page.TopMargin = 0.400000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -24
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #21508#21934#20301#20837#25104#21697#20489#26085#22577#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 168
    Top = 152
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 168
    Top = 192
  end
end
