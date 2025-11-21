object Single_inspection_report: TSingle_inspection_report
  Left = 389
  Top = 462
  Width = 1305
  Height = 675
  Caption = 'Single inspection report'
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
    Width = 1289
    Height = 61
    Align = alTop
    Caption = 'MA Defect'
    Color = clBlack
    TabOrder = 0
    object Label2: TLabel
      Left = 616
      Top = 20
      Width = 25
      Height = 25
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 29
      Top = 21
      Width = 51
      Height = 25
      Caption = 'DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 195
      Top = 17
      Width = 9
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 796
      Top = 13
      Width = 82
      Height = 38
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object edtRY: TEdit
      Left = 649
      Top = 15
      Width = 135
      Height = 33
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 85
      Top = 15
      Width = 108
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 206
      Top = 15
      Width = 106
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 27
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 320
      Top = 8
      Width = 265
      Height = 41
      TabOrder = 5
      object RB1: TRadioButton
        Left = 12
        Top = 16
        Width = 125
        Height = 14
        Caption = 'Hour Inspect'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 140
        Top = 17
        Width = 121
        Height = 14
        Caption = 'Daily Inspect'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Button4: TButton
      Left = 892
      Top = 14
      Width = 189
      Height = 37
      Caption = 'Single inspection report'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object DBGrdh1: TDBGridEh
    Left = 0
    Top = 61
    Width = 1289
    Height = 575
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Title.Caption = 'Inspection Day'
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'Auditor'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = 'Lean'
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Country'
        Width = 216
      end
      item
        EditButtons = <>
        FieldName = 'CartonOK'
        Footers = <>
        Title.Caption = 'Inspected No'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Carton'
        Footers = <>
        Title.Caption = 'Inspected Qty'
        Width = 477
      end>
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select cs.SCDate,cs.USERID,LBZLS.YWSM,CartonOK,Total,'
      'CAST(substring (( select '#39'/'#39' + BDepartment.DepName  '
      
        '                                      from WOPR_MA left join BDe' +
        'partment on WOPR_MA.DepNo=BDepartment.ID  '
      
        '  '#9#9#9#9#9#9#9#9#9'where WOPR_MA.SCBH=cs.DDBH   and WOPR_MA.GXLB='#39'HI'#39'  g' +
        'roup by BDepartment.DepName order by CAST(BDepartment.DepName AS' +
        ' varchar)  '
      
        '                                      for XML Path ('#39#39')),2,1000)' +
        ' as varchar(1000)  ) as DepName '
      ',CAST(substring (( select '#39'/'#39' + WOPR_Carton.Carton  '
      
        '                                      from WOPR_Carton where WOP' +
        'R_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton='#39'1'#39'  and WOPR_' +
        'Carton.GXLB='#39'HI'#39
      
        '  '#9#9#9#9#9#9#9#9#9'and WOPR_Carton.USERID=cs.USERID and WOPR_Carton.SCDa' +
        'te=cs.SCDate  '
      '  '#9#9#9#9#9#9#9#9#9'order by CAST(WOPR_Carton.Carton AS Integer)  '
      
        '                                      for XML Path ('#39#39')),2,1000)' +
        ' as varchar(1000)  ) as Carton  '
      'from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH   '
      
        'left join (select WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.SCDate,WOPR' +
        '_MA.GXLB,sum(WOPR_MA.InsQty) as InsQty,WOPR_MA.UserID from WOPR_' +
        'MA group by WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.SCDate,WOPR_MA.GX' +
        'LB,WOPR_MA.UserID) T1  '
      
        '              on T1.SCBH=cs.DDBH and T1.GXLB=cs.GXLB and T1.User' +
        'ID=cs.USERID  '
      
        'left join (select WOPR_Carton.DDBH,WOPR_Carton.SCDate,count (WOP' +
        'R_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=' +
        '1 group by WOPR_Carton.DDBH,WOPR_Carton.SCDate) T2 on T2.DDBH=cs' +
        '.DDBH and T2.SCDate=cs.SCDate  '
      
        'left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton ' +
        'AS Integer)) as Total from WOPR_Carton group by WOPR_Carton.DDBH' +
        ') T4 on T4.DDBH=cs.DDBH  '
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB  '
      'where 1=1 and cs.CheckCarton='#39'1'#39' and cs.GXLB='#39'HI'#39' '
      
        'group by cs.SCDate,cs.USERID,LBZLS.YWSM,CartonOK,cs.DDBH,cs.SCDa' +
        'te,Total')
    Left = 304
    Top = 264
    object Query2SCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query2CartonOK: TIntegerField
      FieldName = 'CartonOK'
    end
    object Query2Total: TIntegerField
      FieldName = 'Total'
    end
    object Query2DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 255
    end
    object Query2Carton: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 304
    Top = 296
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 472
    Top = 272
  end
end
