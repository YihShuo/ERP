object Ontime_Check: TOntime_Check
  Left = 355
  Top = 226
  Width = 663
  Height = 438
  BorderIcons = [biSystemMenu]
  Caption = 'Ontime_Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 97
      Height = 16
      AutoSize = False
      Caption = 'SCDate('#26085#26399'):'
    end
    object Label2: TLabel
      Left = 360
      Top = 16
      Width = 113
      Height = 16
      AutoSize = False
      Caption = 'DepName('#37096#38272'):'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 137
      Height = 16
      AutoSize = False
      Caption = 'OrderNo('#35330#21934#34399#30908'):'
    end
    object Label4: TLabel
      Left = 288
      Top = 56
      Width = 89
      Height = 16
      AutoSize = False
      Caption = 'GXLB('#24037#27573'):'
    end
    object Label5: TLabel
      Left = 224
      Top = 16
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object DTP1: TDateTimePicker
      Left = 112
      Top = 8
      Width = 105
      Height = 24
      Date = 39877.350342881950000000
      Format = 'yyyy/MM/dd'
      Time = 39877.350342881950000000
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 480
      Top = 8
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 144
      Top = 48
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CBX1: TComboBox
      Left = 376
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
      Text = 'CBX1'
      Items.Strings = (
        'ALL')
    end
    object Button1: TButton
      Left = 520
      Top = 40
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 4
      OnClick = Button1Click
    end
    object DTP2: TDateTimePicker
      Left = 248
      Top = 8
      Width = 105
      Height = 24
      Date = 39877.350342881950000000
      Format = 'yyyy/MM/dd'
      Time = 39877.350342881950000000
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 655
    Height = 323
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ProNo'
        Footers = <>
        Title.Caption = #27969#27700#34399'|ProNo'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Title.Caption = #26085#26399'|SCDate'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272'|DepName'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'Time'
        Footers = <>
        Title.Caption = #26178#38291'|Time'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934#34399'|SCBH'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.Caption = #24037#27573'|GXLB'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = #34399#30908'|XXCC'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'ProQty'
        Footers = <>
        Title.Caption = #25976#37327'|ProQty'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #24037#21345#34399'|USERID'
        Width = 52
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate,SCBB.ProNo,BDe' +
        'partment.DepName,'
      
        '      (SCSJ.FTime+'#39'-'#39'+SCSJ.TTime) as Time,SCBBSS.SCBH,SCBBSS.GXL' +
        'B,SCBBSS.XXCC,'
      '      isnull(SCBBSS.Qty,0) as ProQty,SCBB.USERID'
      'from SCBBSS'
      'left join SCBB on SCBB.ProNO=SCBBSS.ProNO '
      'left join SCSJ on SCSJ.XH=SCBB.SJXH'
      'left join BDepartment on BDepartment.ID=SCBB.DepNO '
      'where convert(varchar,SCBB.SCDate,111) between '
      '      '#39'2009/02/05'#39' and '#39'2009/03/05'#39
      '      and SCBBSS.SCBH like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      'order by SCBBSS.SCBH,SCBB.SCDate,SCBBSS.XXCC ')
    Left = 272
    Top = 176
    object Query1SCDate: TStringField
      FieldName = 'SCDate'
      FixedChar = True
      Size = 30
    end
    object Query1ProNo: TStringField
      FieldName = 'ProNo'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1Time: TStringField
      FieldName = 'Time'
      FixedChar = True
      Size = 11
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 5
    end
    object Query1ProQty: TFloatField
      FieldName = 'ProQty'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 176
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 352
    Top = 176
  end
end
