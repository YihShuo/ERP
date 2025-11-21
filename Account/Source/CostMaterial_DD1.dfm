object CostMaterial_DD: TCostMaterial_DD
  Left = 299
  Top = 199
  Width = 780
  Height = 439
  BorderIcons = [biSystemMenu]
  Caption = 'CostMaterial_DD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 49
    Align = alTop
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 40
      Top = 16
      Width = 97
      Height = 17
      Caption = 'No Ok'
      TabOrder = 0
    end
    object Button1: TButton
      Left = 152
      Top = 8
      Width = 75
      Height = 33
      Caption = 'All'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 256
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Selected'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 772
    Height = 356
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.TitleButton = True
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.TitleButton = True
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Title.TitleButton = True
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.TitleButton = True
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 187
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
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'okVNACC'
        Footers = <
          item
            FieldName = 'okVNACC'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.TitleButton = True
        Width = 41
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.GSBH,isnull(KCLLS.CWSB,'#39'1'#39') as SB,KCLLS.SCBH as DDBH' +
        ',sum(VNPrice*Qty) as VNACC'
      
        '       ,DDZl.Article,XXZl.XieMing,DDZL.Pairs,CWCLFY.VNACC as okV' +
        'NACC '
      'from  KCLLS '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join DDZL on DDZl.DDBH=KCLLS.SCBH '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZL' +
        '.SheHao '
      
        'left join CWCLFY on CWCLFY.DDBH=KCLLS.SCBH and CWCLFY.SB=KCLLS.Y' +
        'N and CWCLFY.GSBH=KCLL.GSBH '
      
        '                 and CWCLFY.CWYEAR='#39'2009'#39' and CWCLFY.CWMONTH='#39'10' +
        #39
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) b' +
        'etween'
      #39'2009/10/01'#39' and '#39'2009/10/31'#39
      
        '      and not exists(select DDBH from CWDD where CWDD.CWYEAR+CWD' +
        'D.CWMONTH<'#39'200910'#39
      '                     and CWDD.DDBH=KCLLS.SCBH and CWDD.SB='#39'2'#39')'
      '      and DDZL.Article is not null '
      
        'group by KCLL.GSBH,KCLLS.CWSB,KCLLS.SCBH,CWCLFY.VNACC,DDZl.Artic' +
        'le,DDZL.Pairs,XXZl.XieMing    '
      
        'order by KCLL.GSBH,KCLLS.CWSB,KCLLS.SCBH,DDZl.Article,XXZl.XieMi' +
        'ng')
    Left = 200
    Top = 120
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1okVNACC: TFloatField
      FieldName = 'okVNACC'
      DisplayFormat = '##,#0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 120
  end
end
