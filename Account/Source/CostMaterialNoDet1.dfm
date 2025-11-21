object CostMaterialNoDet: TCostMaterialNoDet
  Left = 280
  Top = 245
  Width = 870
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'CostMaterialNoDet'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 862
    Height = 425
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.TitleButton = True
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.TitleButton = True
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.TitleButton = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.TitleButton = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Title.TitleButton = True
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 78
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 864
      Height = 13
      Caption = 
        '****************************************************************' +
        '****************************************************************' +
        '****************************************************************' +
        '************************'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = CostmaterialNo.DS1
    SQL.Strings = (
      
        'select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,Bdepartment' +
        '.DepName,KCLLS.Qty,KCLLS.VNPrice'
      
        '        ,KCLLS.VNACC,CLZL.YWPM,CLZl.DWBH,isnull(KCLLS.CWSB,'#39'1'#39') ' +
        'as SB'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        'left join CLLBFYS on CLLBFYS.GSBH=KCLL.GSBH and CLLBFYS.CLBH=KCL' +
        'LS.CLBH '
      
        'left join CLLBFY on CLLBFY.LBBH=substring(CLLBFYS.FYLB,1,1) and ' +
        'CLLBFY.XH='#39'01'#39
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'where isnull(KCLLS.CWSB,'#39'1'#39')='#39'1'#39' '
      '      and KCLL.GSBH='#39'VA12'#39' '
      '      and substring(CLLBFYS.FYLB,1,1)='#39'E'#39' '
      
        '      and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111' +
        ')) between '
      '          '#39'2009/10/01'#39' and '#39'2009/10/31'#39
      
        '      and ( exists(select DDBH from CWDD where CWDD.CWYEAR+CWDD.' +
        'CWMONTH<'#39'200910'#39
      '                     and CWDD.DDBH=KCLLS.SCBH and CWDD.YN='#39'2'#39')'
      
        '            or not exists(select DDBH from DDZL where DDZL.DDBH=' +
        'KCLLS.SCBH )  )'
      'order by KCLLS.CLBH,KCLLS.LLNO ')
    Left = 192
    Top = 72
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
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
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 200
    object Print1: TMenuItem
      Caption = 'Print'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
