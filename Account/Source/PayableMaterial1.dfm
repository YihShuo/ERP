object PayableMaterial: TPayableMaterial
  Left = 279
  Top = 229
  Width = 800
  Height = 500
  Caption = 'PayableMaterial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
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
    Width = 792
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 142
      Height = 24
      Caption = 'SupplierPayable:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 288
      Top = 56
      Width = 58
      Height = 16
      Caption = 'ZSYWJC:'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 160
      Top = 56
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Button1: TButton
      Left = 496
      Top = 40
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 576
      Top = 40
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 656
      Top = 40
      Width = 73
      Height = 33
      Caption = 'PRINT'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 352
      Top = 48
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 48
      Width = 97
      Height = 28
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 184
      Top = 48
      Width = 97
      Height = 28
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object CBX1: TCheckBox
      Left = 288
      Top = 24
      Width = 153
      Height = 17
      Caption = 'Pending Payable'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 89
    Width = 792
    Height = 380
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16760767
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <
          item
            Alignment = taRightJustify
            Value = 'Total:'
            ValueType = fvtStaticText
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <
          item
            FieldName = 'ZSYWJC'
            ValueType = fvtCount
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 136
      end
      item
        Color = 10944511
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            DisplayFormat = '##,#0.00'
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'USQty'
        Footers = <
          item
            DisplayFormat = '##,#0.00'
            FieldName = 'USQty'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 89
      end
      item
        Color = 10944511
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'VNQty'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'VNQty'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 115
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CWYF.ZSBH,ZSZL.ZSYWJC ,sum(CWYF.USQty) as USQty,sum(CWYF.' +
        'VNQty) as VNQty, '
      'sum(CWYF.USACC) as USACC,sum(CWYF.VNACC) as VNACC '
      'from CWYF '
      'left join CWFK on CWFK.FKBH=CWYF.FKBH '
      'left join ZSZL on ZSZL.ZSDH=CWYF.ZSBH '
      'where ZSZL.ZSYWJC like '#39'%'#39
      ' and convert(smalldatetime,convert(varchar,DJDate,111)) between '
      #39'2008/06/01'#39
      ' and '#39'2008/06/30'#39
      ' and CWFK.ZHBH is null '
      'group by  CWYF.ZSBH,ZSZL.ZSYWJC '
      'order by CWYF.ZSBH')
    Left = 496
    Top = 160
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1USQty: TCurrencyField
      FieldName = 'USQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNQty: TCurrencyField
      FieldName = 'VNQty'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object EXCEL1: TMenuItem
      Caption = 'Excel'
      OnClick = EXCEL1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end
