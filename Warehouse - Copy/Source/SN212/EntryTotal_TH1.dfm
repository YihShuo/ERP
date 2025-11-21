object EntryTotal_TH: TEntryTotal_TH
  Left = 311
  Top = 286
  Width = 1273
  Height = 563
  Caption = 'EntryTotal_TH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1257
    Height = 524
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Phieu xuat'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1249
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 0
          Top = 14
          Width = 97
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Delivey No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 221
          Top = 13
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Order No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 432
          Top = 13
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button2: TButton
          Left = 645
          Top = 3
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button2Click
        end
        object SCBHEdit: TEdit
          Left = 307
          Top = 10
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object LLNOEdit: TEdit
          Left = 102
          Top = 10
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CLBHEdit: TEdit
          Left = 505
          Top = 10
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 41
        Width = 1249
        Height = 452
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 1
        object DBGrid2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1247
          Height = 450
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind]
          ParentFont = False
          ReadOnly = True
          RowHeight = 4
          RowLines = 1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid2DblClick
          OnKeyPress = DBGrid2KeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'LLNO'
              Footers = <>
              Title.Caption = 'Delivery.NO'
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'SCBH'
              Footers = <>
              Title.Caption = 'OrderNo'
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat No'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'DFL'
              Footers = <>
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = 'MatName'
              Width = 312
            end
            item
              EditButtons = <>
              FieldName = 'TempQty'
              Footers = <>
              Title.Caption = 'Qty'
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'KCBH'
              Footers = <>
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'HGLB'
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'CNO'
              Footers = <>
              Title.Caption = 'HaiQuan'
              Width = 90
            end>
        end
      end
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 128
    Top = 136
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,CLZL.DWBH,CLZL.YWPM,KCLL' +
        'S.TempQty,KCLLS.Qty,isnull(KCRKS.okQty,0) as RKQty,KCZLS.KCBH,KC' +
        'LL.GSBH,KCLLS.DFL,KCLLS.HGLB,KCLLS.CNO'
      'from KCLLS left join KCLL on KCLLS.LLNO=KCLL.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join (select KCZLS.* from KCZLS '
      
        '           where KCZLS.CKBH='#39'VA12'#39')  KCZLS on KCZLS.CLBH=CLZL.CL' +
        'DH'
      'left join ('
      'select kcrk.memo,kcrks.clbh,kcrks.cgbh,sum(KCRKS.Qty) as okQty '
      'from kcrk '
      'inner join kcrks on kcrk.rkno=kcrks.rkno '
      'where 1=1 '
      ' and kcrks.CGBH like '#39'Y2010-0001%'#39
      
        'group by  kcrk.memo,kcrks.clbh,kcrks.cgbh) kcrks on kcrks.clbh=k' +
        'clls.clbh and kcrks.CGBH=kclls.SCBH'
      'where 1=1  '
      ' and kclls.scbh like '#39'Y2010-0001%'#39
      ' and kclls.hglb='#39'HD'#39)
    Left = 128
    Top = 168
    object Query2LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query2SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2TempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query2RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query2GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query2DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query2CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
  end
end
