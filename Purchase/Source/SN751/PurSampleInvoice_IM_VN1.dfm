object PurSampleInvoice_IM_VN: TPurSampleInvoice_IM_VN
  Left = 585
  Top = 209
  Width = 920
  Height = 602
  BorderIcons = [biSystemMenu]
  Caption = 'PurSampleInvoice_IM_VN'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 87
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 60
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 233
      Top = 60
      Width = 59
      Height = 16
      Caption = 'MatName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 46
      Height = 16
      Caption = 'Pur NO:'
    end
    object ZS: TLabel
      Left = 9
      Top = 6
      Width = 53
      Height = 16
      Caption = 'Supplier:'
    end
    object Label4: TLabel
      Left = 237
      Top = 32
      Width = 55
      Height = 16
      Caption = 'Pur Date '
    end
    object Label5: TLabel
      Left = 385
      Top = 32
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Lab_Key: TLabel
      Left = 848
      Top = 8
      Width = 41
      Height = 16
      Caption = 'Label1'
      Visible = False
    end
    object Label6: TLabel
      Left = 232
      Top = 8
      Width = 41
      Height = 16
      Caption = 'RKNO:'
    end
    object Label7: TLabel
      Left = 384
      Top = 8
      Width = 22
      Height = 16
      Caption = 'RY:'
    end
    object Label8: TLabel
      Left = 520
      Top = 8
      Width = 52
      Height = 16
      Caption = 'DOCNO:'
    end
    object Button1: TButton
      Left = 571
      Top = 54
      Width = 73
      Height = 28
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 294
      Top = 56
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 63
      Top = 56
      Width = 152
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 382
      Top = 56
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 462
      Top = 56
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
    object Button3: TButton
      Left = 657
      Top = 53
      Width = 75
      Height = 28
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Edit7: TEdit
      Left = 63
      Top = 28
      Width = 151
      Height = 24
      TabOrder = 6
    end
    object Edit8: TEdit
      Left = 63
      Top = 2
      Width = 39
      Height = 24
      CharCase = ecUpperCase
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      OnKeyPress = Edit5KeyPress
    end
    object Edit9: TEdit
      Left = 104
      Top = 2
      Width = 112
      Height = 24
      CharCase = ecUpperCase
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      OnKeyPress = Edit5KeyPress
    end
    object chk1: TCheckBox
      Left = 570
      Top = 28
      Width = 147
      Height = 17
      Caption = 'Only show unfinished'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object DTP1: TDateTimePicker
      Left = 294
      Top = 28
      Width = 88
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 10
    end
    object DTP2: TDateTimePicker
      Left = 398
      Top = 28
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 11
    end
    object Edit5: TEdit
      Left = 279
      Top = 4
      Width = 100
      Height = 24
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 415
      Top = 4
      Width = 100
      Height = 24
      TabOrder = 13
    end
    object Edit10: TEdit
      Left = 575
      Top = 4
      Width = 100
      Height = 24
      TabOrder = 14
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 87
    Width = 904
    Height = 477
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <
          item
            FieldName = 'CGNO'
            ValueType = fvtCount
          end>
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 80
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
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'PurQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'BalanceQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <
          item
            ValueType = fvtSum
          end>
        Title.Caption = 'KCRK.QTY'
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select'#9'cgzlss.CGNO, cgzlss.CLBH, CLZL.YWPM, CLZL.DWBH, cgzlss.ZL' +
        'BH'
      #9#9',KC.RKNO ,KC.DOCNO'
      #9#9',isnull(CGZLInvoiceSS.okQty,0) as okQty'
      #9#9',isnull(CGZLSS.Qty,0) as PurQty'
      
        #9#9',(isnull(CGZLSS.Qty,0)-isnull(CGZLInvoiceSS.okQty,0)) as Balan' +
        'ceQty'
      '                               ,KC.QTY'
      'from cgzlss'
      'left join cgzl on cgzl.cgno=cgzlss.cgno'
      'left join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select kcrk.rkno, kcrk.zsno, kcrks.CLBH, kcrks.CGBH,k' +
        'crk.DOCNO , kcrks.qty'
      '                                                from kcrks'
      #9#9#9'left join kcrk on kcrk.rkno=kcrks.rkno) KC'
      
        #9#9'on KC.ZSNO=CGZLSS.CGNO and KC.CLBH=CGZLSS.CLBH and KC.CGBH=CGZ' +
        'LSS.ZLBH'
      'left join (select sum(CGZLInvoiceSS.InvQty) as okQty'
      #9#9#9',CGZLInvoiceSS.CLBH,CGZLInvoiceSS.CGNO ,CGZLInvoiceSS.ZLBH'
      #9#9#9'from CGZLInvoiceSS '
      
        #9#9#9'group by CGZLInvoiceSS.CGNO,CGZLInvoiceSS.CLBH,CGZLInvoiceSS.' +
        'ZLBH ) CGZLInvoiceSS '
      
        #9#9'on CGZLInvoiceSS.CLBH=CGZLSS.CLBH AND CGZLInvoiceSS.CGNO=CGZLS' +
        'S.CGNO AND CGZLInvoiceSS.ZLBH=cgzlss.ZLBH'
      'where 1=1 '
      '   and CGZL.GSBH='#39'LYV'#39
      
        'and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  bet' +
        'ween '
      #39'2012/09/27'#39' and  '#39'2012/10/27'#39
      '      and CGZL.ZSBH='#39'VS04'#39
      'order by CGZLSS.CGNO')
    Left = 424
    Top = 160
    object Query1CGNO: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      DisplayLabel = 'Mat ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      DisplayLabel = 'Mat Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      currency = False
    end
    object Query1PurQty: TCurrencyField
      DisplayLabel = 'Pur Qty'
      FieldName = 'PurQty'
      currency = False
    end
    object Query1BalanceQty: TCurrencyField
      DisplayLabel = 'Balance Qty'
      FieldName = 'BalanceQty'
      currency = False
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object Query1QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '#0.00'
    end
  end
end
