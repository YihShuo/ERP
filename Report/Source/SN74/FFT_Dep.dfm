object FFTDep: TFFTDep
  Left = 485
  Top = 110
  Width = 557
  Height = 586
  Caption = 'FFTDep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 29
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 49
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 89
      Height = 33
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 120
      Top = -4
      Width = 281
      Height = 44
      TabOrder = 1
      object RB1: TRadioButton
        Left = 24
        Top = 20
        Width = 73
        Height = 17
        Caption = 'All'
        TabOrder = 0
        OnClick = RB1Click
      end
      object RB2: TRadioButton
        Left = 152
        Top = 19
        Width = 97
        Height = 17
        Caption = 'Clear'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = RB2Click
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 541
    Height = 498
    Align = alClient
    DataSource = DS
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 256
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 71
      end>
  end
  object FFTDepQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select BDepartment.Sumline,'#39'N'#39' as YN, '
      'Case '
      
        'when SubString(BDepartment.Sumline,4,1)='#39'L'#39' then SubString(BDepa' +
        'rtment.Sumline,1,3)+'#39'-LEAN'#39'+SubString(BDepartment.Sumline,5,2)+'#39 +
        '-'#39'+SubString(BDepartment.Sumline,7,2) '
      
        'when SubString(BDepartment.Sumline,4,1)='#39'B'#39' then SubString(BDepa' +
        'rtment.Sumline,1,3)+'#39'-L'#39'+SubString(BDepartment.Sumline,5,2)+'#39'-'#39'+' +
        'SubString(BDepartment.Sumline,7,2)  '
      'end as DepName '
      'from WOPR '
      'left join BDepartment on WOPR.DepNo = BDepartment.ID '
      
        'where convert(smalldatetime,WOPR.USERDATE,111) between '#39'2014/03/' +
        '11'#39' and '#39'2014/03/12'#39' '
      'and WOPR.GSBH ='#39'VA12'#39' and WOPR.GXLB in ('#39'A'#39','#39'AR'#39','#39'C'#39','#39'C+S'#39') '
      'group by BDepartment.Sumline')
    UpdateObject = FFTUpd
    Left = 320
    Top = 136
    object FFTDepQrySumline: TStringField
      DisplayWidth = 13
      FieldName = 'Sumline'
      FixedChar = True
      Size = 6
    end
    object FFTDepQryDepName: TStringField
      DisplayWidth = 26
      FieldName = 'DepName'
      FixedChar = True
    end
    object FFTDepQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS: TDataSource
    DataSet = FFTDepQry
    Left = 352
    Top = 136
  end
  object FFTUpd: TUpdateSQL
    ModifySQL.Strings = (
      'Update QC_RFT_DEP set'
      '   RFT=0'
      'where'
      '  1=2')
    Left = 320
    Top = 168
  end
end
