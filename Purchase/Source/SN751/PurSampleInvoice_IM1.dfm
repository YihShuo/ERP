object PurSampleInvoice_IM: TPurSampleInvoice_IM
  Left = 791
  Top = 128
  Width = 920
  Height = 602
  BorderIcons = [biSystemMenu]
  Caption = 'PurSampleInvoice_IM'
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
    Width = 912
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
      Left = 240
      Top = 8
      Width = 41
      Height = 16
      Caption = 'Label1'
      Visible = False
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 87
    Width = 912
    Height = 481
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
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
        FieldName = 'CGNO'
        Footers = <
          item
            FieldName = 'CGNO'
            ValueType = fvtCount
          end>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 494
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'PurQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'BalanceQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
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
      
        '    select  CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,isnull(CGZ' +
        'LInvoiceS.okQty,0) as okQty,'
      '              isnull(CGZLS.Qty,0) as PurQty,  '
      
        '             (isnull(CGZLS.Qty,0)-isnull(CGZLInvoiceS.okQty,0)) ' +
        'as BalanceQty  '
      '    from CGZLS'
      '    left join CGZL on CGZL.CGNO=CGZLS.CGNO '
      '    left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      '    left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH'
      
        '    left join (select sum(CGZLInvoiceS.Qty) as okQty,CGZLInvoice' +
        'S.CLBH,CGZLInvoiceS.CGNO '
      '               from CGZLInvoiceS '
      
        '               group by CGZLInvoiceS.CGNO,CGZLInvoiceS.CLBH ) CG' +
        'ZLInvoiceS on CGZLInvoiceS.CLBH=CGZLS.CLBH AND CGZLInvoiceS.CGNO' +
        '=CGZLS.CGNO '
      '    where 1=2'
      '')
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
  end
end
