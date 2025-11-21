object CostmaterialAcc: TCostmaterialAcc
  Left = 387
  Top = 206
  Width = 618
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'CostmaterialAcc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 40
      Top = 16
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 192
      Top = 21
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Button1: TButton
      Left = 336
      Top = 8
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 80
      Top = 13
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 1
      Text = '2007'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX2: TComboBox
      Left = 240
      Top = 13
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 2
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 610
    Height = 417
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'COSTID'
        Footers = <>
        Width = 172
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 154
      end>
  end
  object DTP1: TDateTimePicker
    Left = 320
    Top = 216
    Width = 97
    Height = 21
    Date = 39514.456229745370000000
    Format = 'yyyy/MM/dd'
    Time = 39514.456229745370000000
    TabOrder = 2
    Visible = False
  end
  object DTP2: TDateTimePicker
    Left = 440
    Top = 216
    Width = 81
    Height = 21
    Date = 39514.456285625000000000
    Format = 'yyyy/MM/dd'
    Time = 39514.456285625000000000
    TabOrder = 3
    Visible = False
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.GSBH,KCLLS.COSTID,isnull(KCLLS.CWSB,'#39'1'#39') as SB,sum(V' +
        'NACC) as VNACC'
      'from  KCLLS '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) b' +
        'etween'
      #39'2009/10/01'#39' and '#39'2009/10/31'#39
      '      and KCLLS.VNACC<>0'
      
        '      and ( exists(select DDBH from CWDD where CWDD.CWYEAR+CWDD.' +
        'CWMONTH<'#39'200910'#39
      '                     and CWDD.DDBH=KCLLS.SCBH and CWDD.YN='#39'2'#39')'
      
        '            or not exists(select DDBH from DDZL where DDZL.DDBH=' +
        'KCLLS.SCBH )  )'
      'group by KCLL.GSBH,isnull(KCLLS.CWSB,'#39'1'#39'),KCLLS.COSTID'
      'order by KCLL.GSBH,isnull(KCLLS.CWSB,'#39'1'#39'),KCLLS.COSTID')
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
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1COSTID: TStringField
      FieldName = 'COSTID'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 144
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
