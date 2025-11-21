object QC_Report: TQC_Report
  Left = 301
  Top = 243
  Width = 1305
  Height = 675
  Caption = 'Top Issues at end of Assembling'
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
      Left = 327
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
    object Label1: TLabel
      Left = 497
      Top = 20
      Width = 51
      Height = 25
      Caption = 'LEAN'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 745
      Top = 20
      Width = 95
      Height = 25
      Caption = 'BUILDING'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 937
      Top = 10
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
      Left = 1029
      Top = 11
      Width = 140
      Height = 37
      Caption = 'Assembly Report'
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
      Left = 356
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
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object edtLine: TEdit
      Left = 550
      Top = 15
      Width = 191
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditXuong: TEdit
      Left = 845
      Top = 14
      Width = 76
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
        FieldName = 'Qty'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 219
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 255
      end>
  end
  object WOPR_AE: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select QCR_AE.SCDate,QCRD_AE.Qty,QCBLYY.YWSM,QCBLYY.ZWSM'
      'from QCR_AE left join QCRD_AE on QCRD_AE.ProNo=QCR_AE.ProNo'
      
        'left join QCBLYY on QCBLYY.YYBH=QCRD_AE.YYBH and QCBLYY.GSBH='#39'VA' +
        '12'#39' and DFL='#39'AE'#39
      'order by QCRD_AE.Qty desc'
      ''
      '')
    Left = 304
    Top = 264
    object WOPR_AEQty: TSmallintField
      FieldName = 'Qty'
    end
    object WOPR_AEYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object WOPR_AEZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = WOPR_AE
    Left = 304
    Top = 296
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select QCR_AE.SCDate,QCRD_AE.Qty,QCBLYY.YWSM,QCBLYY.ZWSM'
      'from QCR_AE left join QCRD_AE on QCRD_AE.ProNo=QCR_AE.ProNo'
      
        'left join QCBLYY on QCBLYY.YYBH=QCRD_AE.YYBH and QCBLYY.GSBH='#39'VA' +
        '12'#39' and DFL='#39'AE'#39
      'order by QCRD_AE.Qty desc'
      ''
      '')
    Left = 448
    Top = 264
    object SmallintField1: TSmallintField
      FieldName = 'Qty'
    end
    object StringField1: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 200
    end
  end
end
