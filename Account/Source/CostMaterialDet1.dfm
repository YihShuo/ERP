object CostMaterialDet: TCostMaterialDet
  Left = 292
  Top = 217
  Width = 906
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'CostMaterialDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 898
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
        Title.TitleButton = True
        Width = 90
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
    Width = 898
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
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = CostMaterial.DS1
    SQL.Strings = (
      
        'select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,BDepartment' +
        '.DepName,'
      
        '        KCLLS.Qty,KCLLS.VNPrice,KCLLS.VNACC,CLZL.YWPM,CLZl.DWBH,' +
        'isnull(KCLLS.YN,'#39'1'#39') as SB'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join DDZL on KCLLS.SCBH=DDZl.ZLBH '
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'where KCLLS.SCBH='#39'Y0910-043'#39' '
      '      and isnull(KCLLS.YN,'#39'1'#39')='#39'0'#39' '
      '      and KCLL.GSBH='#39'VA12'#39' '
      
        '      and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111' +
        ')) between '
      '          '#39'2009/10/01'#39' and '#39'2009/10/31'#39
      
        '      and not exists(select YSBH from CWDD where CWDD.CWYEAR+CWD' +
        'D.CWMONTH<'#39'200910'#39
      
        '                    and CWDD.YSBH=KCLLS.SCBH and CWDD.SB='#39'1'#39' and' +
        ' CWDD.YN='#39'2'#39')'
      '      and  DDZl.Article is not  null '
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
    object Query1VNACC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      Calculated = True
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
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 240
    Top = 152
  end
end
