object MaCartons: TMaCartons
  Left = 436
  Top = 192
  Width = 1305
  Height = 675
  Caption = 'Ma Cartons'
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
      Left = 809
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
    object Button2: TButton
      Left = 901
      Top = 14
      Width = 120
      Height = 37
      Caption = 'MA_Carton'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 27
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 320
      Top = 8
      Width = 265
      Height = 41
      TabOrder = 6
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
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'Total'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CartonOK'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Carton'
        Footers = <>
        Width = 1532
      end>
  end
  object DataSource1: TDataSource
    DataSet = Carton
    Left = 304
    Top = 296
  end
  object Carton: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select cs.SCDate,cs.DDBH ,Total,CartonOK,CarOK,CAST(substring ((' +
        ' select '#39','#39' + WOPR_Carton.Carton'
      
        '                                    from WOPR_Carton where WOPR_' +
        'Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton='#39'1'#39' and WOPR_Car' +
        'ton.SCDate=cs.SCDate order by CAST(WOPR_Carton.Carton AS Integer' +
        ')'
      
        '                                    for XML Path ('#39#39')),2,1000) a' +
        's varchar(1000)  ) as Carton'
      'from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH '
      
        'left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton ' +
        'AS Integer)) as Total from WOPR_Carton group by WOPR_Carton.DDBH' +
        ') T1 on T1.DDBH=cs.DDBH'
      
        'left join (select WOPR_Carton.SCDate,WOPR_Carton.DDBH,count (WOP' +
        'R_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=' +
        '1 group by WOPR_Carton.DDBH,WOPR_Carton.SCDate) T2 on T2.DDBH=cs' +
        '.DDBH and T2.SCDate= cs.SCDate'
      
        'left join (select WOPR_Carton.DDBH,count (WOPR_Carton.Carton )as' +
        ' CarOK from WOPR_Carton where CheckCarton=1 group by WOPR_Carton' +
        '.DDBH) T3 on T3.DDBH=cs.DDBH '
      'where cs.DDBH ='#39'Y2308-0013'#39' and cs.CheckCarton='#39'1'#39
      'group by cs.SCDate,cs.DDBH,Total,CartonOK,CarOK'
      '')
    Left = 304
    Top = 264
    object CartonSCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object CartonDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object CartonTotal: TIntegerField
      FieldName = 'Total'
    end
    object CartonCartonOK: TIntegerField
      FieldName = 'CartonOK'
    end
    object CartonCarOK: TIntegerField
      FieldName = 'CarOK'
    end
    object CartonCarton: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 255
    end
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 264
  end
end
