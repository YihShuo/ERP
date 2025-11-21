object VOC_Input: TVOC_Input
  Left = 137
  Top = 138
  Width = 1118
  Height = 766
  Caption = 'VOC Production Input'
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
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1102
    Height = 663
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1100
      Height = 45
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      object Label6: TLabel
        Left = 498
        Top = 9
        Width = 85
        Height = 20
        Caption = 'DepName:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 347
        Top = 6
        Width = 121
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Button1: TButton
        Left = 786
        Top = 5
        Width = 89
        Height = 33
        Caption = 'QUERY'
        TabOrder = 1
        OnClick = Button1Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 98
        Top = 5
        Width = 118
        Height = 28
        Date = 40005.000000000000000000
        Time = 40005.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 465
        Top = 4
        Width = 22
        Height = 32
        Caption = '...'
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object Edit5: TEdit
        Left = 588
        Top = 5
        Width = 157
        Height = 32
        TabStop = False
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object CheckBox1: TCheckBox
        Left = 24
        Top = 12
        Width = 70
        Height = 17
        Caption = 'Date:'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 5
      end
      object CheckBox2: TCheckBox
        Left = 263
        Top = 11
        Width = 85
        Height = 17
        Caption = 'DepNo:'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 6
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 46
      Width = 1100
      Height = 616
      Align = alClient
      DataSource = DS1
      EvenRowColor = clWindow
      FixedColor = clActiveCaption
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16760767
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 3
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -14
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'DepNo'
          Footers = <>
          ReadOnly = True
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 71
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 74
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'ProdDate'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 70
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <
            item
              ValueType = fvtSum
            end>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
        end
        item
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'HoanBao_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| Hoan Bao'
          Title.Color = clNavy
          Visible = False
          Width = 89
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'TalonThan_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)|Talon Than'
          Title.Color = clNavy
          Width = 74
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'LatexTrang_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| Latex Trang'
          Title.Color = clNavy
          Width = 89
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'LatexTrong_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| Latex Trong'
          Title.Color = clNavy
          Width = 81
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A311FT6_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| 311FT6'
          Title.Color = clNavy
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'PU45_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| PU45'
          Title.Color = clNavy
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A6127T_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| 6127T'
          Title.Color = clNavy
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'WPL01_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)| WPL01'
          Title.Color = clNavy
          Width = 69
        end
        item
          Color = 13828095
          EditButtons = <>
          FieldName = 'KeoXang_C'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Compound-Keo pha(kg)|Keo Xang'
          Title.Color = clNavy
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'PU45311NT1'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|PU-45 (311NT1)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 72
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'WPL01'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|WPL-01'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 65
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'WH03'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|WH-03'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 57
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'T6127T'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|6127T'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 53
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'Latex'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|Latex'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 54
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'C237F'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|C-237F'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'HM401hotmelt'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|HM-401 (hotmelt)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 77
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A8602'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|8602'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A722'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|722'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 51
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'Primer297'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|Primer297'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 71
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'P311FT_6primer'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|311FT_6 (primer)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 69
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'Hotmelt1438A'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|Hot melt (1438A)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'Hotmelt3173H'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|Hot melt (3173H)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 63
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'NCwhitetransparent'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|NC (white/transparent)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 119
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A102'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|102'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 49
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'MWaterbase'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|M (Waterbase)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 105
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'ABwhitetransparent'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|AB (white/transparent)'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 122
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'RB13F'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|RB - 13F'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 66
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'AD752S'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|AD 752 S'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 72
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A5'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|A5'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 59
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A3'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|A3'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'AD5500'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|AD 5500'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A05W1A'
          Footers = <
            item
              DisplayFormat = '#####0.#0'
              ValueType = fvtSum
            end>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|05-W1A'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          DisplayFormat = '###0.##0'
          EditButtons = <>
          FieldName = 'A202'
          Footers = <>
          Title.Caption = 'TEN HOA CHAT|Single-Keo Khong pha(kg)|202'
          Title.Color = clNavy
          Title.TitleButton = True
          Width = 59
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end
        item
          AutoFitColWidth = False
          Color = 13828095
          EditButtons = <>
          FieldName = 'YN'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -14
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1102
    Height = 65
    Align = alTop
    TabOrder = 1
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB7: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BB7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT1: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BBT1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT2: TBitBtn
      Left = 416
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BBT2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT3: TBitBtn
      Left = 464
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BBT3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT4: TBitBtn
      Left = 512
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BBT4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt5: TBitBtn
      Left = 584
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 183
    Top = 241
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  QIPVOC.*'
      '       , Bdepartment.DepName'
      'from QIPVOC'
      'left join bdepartment on Bdepartment.id=QIPVOC.depno')
    UpdateObject = UpSQL1
    Left = 139
    Top = 241
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      Origin = 'LIY_ERP.QIPVOC.DepNo'
      FixedChar = True
      Size = 14
    end
    object Query1ProdDate: TDateTimeField
      FieldName = 'ProdDate'
      Origin = 'LIY_ERP.QIPVOC.ProdDate'
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
      Origin = 'LIY_ERP.QIPVOC.Pairs'
    end
    object Query1HoanBao_C: TFloatField
      FieldName = 'HoanBao_C'
      Origin = 'LIY_ERP.QIPVOC.HoanBao'
    end
    object Query1TalonThan_C: TFloatField
      FieldName = 'TalonThan_C'
      Origin = 'LIY_ERP.QIPVOC.PU45311NT1'
    end
    object Query1LatexTrang_C: TFloatField
      FieldName = 'LatexTrang_C'
      Origin = 'LIY_ERP.QIPVOC.WPL01'
    end
    object Query1LatexTrong_C: TFloatField
      FieldName = 'LatexTrong_C'
      Origin = 'LIY_ERP.QIPVOC.WH03'
    end
    object Query1A311FT6_C: TFloatField
      FieldName = 'A311FT6_C'
      Origin = 'LIY_ERP.QIPVOC.T6127T'
    end
    object Query1PU45_C: TFloatField
      FieldName = 'PU45_C'
      Origin = 'LIY_ERP.QIPVOC.Primer297'
    end
    object Query1A6127T_C: TFloatField
      FieldName = 'A6127T_C'
      Origin = 'LIY_ERP.QIPVOC.P311FT_6primer'
    end
    object Query1WPL01_C: TFloatField
      FieldName = 'WPL01_C'
      Origin = 'LIY_ERP.QIPVOC.Hotmelt1438A'
    end
    object Query1KeoXang_C: TFloatField
      FieldName = 'KeoXang_C'
      Origin = 'LIY_ERP.QIPVOC.PU45311NT1'
    end
    object Query1PU45311NT1: TFloatField
      FieldName = 'PU45311NT1'
      Origin = 'LIY_ERP.QIPVOC.Hotmelt3173H'
    end
    object Query1WPL01: TFloatField
      FieldName = 'WPL01'
      Origin = 'LIY_ERP.QIPVOC.NCwhitetransparent'
    end
    object Query1WH03: TFloatField
      FieldName = 'WH03'
      Origin = 'LIY_ERP.QIPVOC.MWaterbase'
    end
    object Query1T6127T: TFloatField
      FieldName = 'T6127T'
      Origin = 'LIY_ERP.QIPVOC.Latex'
    end
    object Query1Primer297: TFloatField
      FieldName = 'Primer297'
      Origin = 'LIY_ERP.QIPVOC.A102'
    end
    object Query1P311FT_6primer: TFloatField
      FieldName = 'P311FT_6primer'
      Origin = 'LIY_ERP.QIPVOC.ABwhitetransparent'
    end
    object Query1Hotmelt1438A: TFloatField
      FieldName = 'Hotmelt1438A'
      Origin = 'LIY_ERP.QIPVOC.RB13F'
    end
    object Query1Hotmelt3173H: TFloatField
      FieldName = 'Hotmelt3173H'
      Origin = 'LIY_ERP.QIPVOC.C237F'
    end
    object Query1NCwhitetransparent: TFloatField
      FieldName = 'NCwhitetransparent'
      Origin = 'LIY_ERP.QIPVOC.AD752S'
    end
    object Query1MWaterbase: TFloatField
      FieldName = 'MWaterbase'
      Origin = 'LIY_ERP.QIPVOC.A5'
    end
    object Query1Latex: TFloatField
      FieldName = 'Latex'
      Origin = 'LIY_ERP.QIPVOC.A3'
    end
    object Query1A102: TFloatField
      FieldName = 'A102'
      Origin = 'LIY_ERP.QIPVOC.AD5500'
    end
    object Query1ABwhitetransparent: TFloatField
      FieldName = 'ABwhitetransparent'
      Origin = 'LIY_ERP.QIPVOC.A05W1A'
    end
    object Query1RB13F: TFloatField
      FieldName = 'RB13F'
      Origin = 'LIY_ERP.QIPVOC.HM401hotmelt'
    end
    object Query1C237F: TFloatField
      FieldName = 'C237F'
      Origin = 'LIY_ERP.QIPVOC.A722'
    end
    object Query1AD752S: TFloatField
      FieldName = 'AD752S'
      Origin = 'LIY_ERP.QIPVOC.USERID'
    end
    object Query1A5: TFloatField
      FieldName = 'A5'
      Origin = 'LIY_ERP.QIPVOC.USERDATE'
    end
    object Query1A3: TFloatField
      FieldName = 'A3'
      Origin = 'LIY_ERP.QIPVOC.YN'
    end
    object Query1AD5500: TFloatField
      FieldName = 'AD5500'
      Origin = 'LIY_ERP.QIPVOC.YN'
    end
    object Query1A05W1A: TFloatField
      FieldName = 'A05W1A'
      Origin = 'LIY_ERP.QIPVOC.YN'
    end
    object Query1HM401hotmelt: TFloatField
      FieldName = 'HM401hotmelt'
      Origin = 'LIY_ERP.QIPVOC.YN'
    end
    object Query1A722: TFloatField
      FieldName = 'A722'
      Origin = 'LIY_ERP.QIPVOC.YN'
    end
    object Query1A202: TFloatField
      FieldName = 'A202'
      Origin = 'LIY_ERP.QIPVOC.A202'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'LIY_ERP.QIPVOC.YN'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'LIY_ERP.QIPVOC.YN'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'LIY_ERP.QIPVOC.YN'
      FixedChar = True
      Size = 1
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'LIY_ERP.bdepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1A8602: TFloatField
      FieldName = 'A8602'
      Origin = 'LIY_ERP.QIPVOC.A8602'
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update QIPVOC'
      'set'
      '  DepNo = :DepNo,'
      '  ProdDate = :ProdDate,'
      '  Pairs = :Pairs,'
      '  HoanBao_C = :HoanBao_C,'
      '  TalonThan_C = :TalonThan_C,'
      '  LatexTrang_C = :LatexTrang_C,'
      '  LatexTrong_C = :LatexTrong_C,'
      '  A311FT6_C = :A311FT6_C,'
      '  PU45_C = :PU45_C,'
      '  A6127T_C = :A6127T_C,'
      '  WPL01_C = :WPL01_C,'
      '  KeoXang_C = :KeoXang_C,'
      '  PU45311NT1 = :PU45311NT1,'
      '  WPL01 = :WPL01,'
      '  WH03 = :WH03,'
      '  T6127T = :T6127T,'
      '  Primer297 = :Primer297,'
      '  P311FT_6primer = :P311FT_6primer,'
      '  Hotmelt1438A = :Hotmelt1438A,'
      '  Hotmelt3173H = :Hotmelt3173H,'
      '  NCwhitetransparent = :NCwhitetransparent,'
      '  MWaterbase = :MWaterbase,'
      '  Latex = :Latex,'
      '  A102 = :A102,'
      '  ABwhitetransparent = :ABwhitetransparent,'
      '  RB13F = :RB13F,'
      '  C237F = :C237F,'
      '  AD752S = :AD752S,'
      '  A5 = :A5,'
      '  A3 = :A3,'
      '  AD5500 = :AD5500,'
      '  A05W1A = :A05W1A,'
      '  HM401hotmelt = :HM401hotmelt,'
      '  A722 = :A722,'
      '  A8602 = :A8602,'
      '  A202 = :A202,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  DepNo = :OLD_DepNo and'
      '  ProdDate = :OLD_ProdDate and'
      '  Pairs = :OLD_Pairs and'
      '  HoanBao_C = :OLD_HoanBao_C and'
      '  TalonThan_C = :OLD_TalonThan_C and'
      '  LatexTrang_C = :OLD_LatexTrang_C and'
      '  LatexTrong_C = :OLD_LatexTrong_C and'
      '  A311FT6_C = :OLD_A311FT6_C and'
      '  PU45_C = :OLD_PU45_C and'
      '  A6127T_C = :OLD_A6127T_C and'
      '  WPL01_C = :OLD_WPL01_C and'
      '  PU45311NT1 = :OLD_PU45311NT1 and'
      '  WPL01 = :OLD_WPL01 and'
      '  WH03 = :OLD_WH03 and'
      '  T6127T = :OLD_T6127T and'
      '  Primer297 = :OLD_Primer297 and'
      '  P311FT_6primer = :OLD_P311FT_6primer and'
      '  Hotmelt1438A = :OLD_Hotmelt1438A and'
      '  Hotmelt3173H = :OLD_Hotmelt3173H and'
      '  NCwhitetransparent = :OLD_NCwhitetransparent and'
      '  MWaterbase = :OLD_MWaterbase and'
      '  Latex = :OLD_Latex and'
      '  A102 = :OLD_A102 and'
      '  ABwhitetransparent = :OLD_ABwhitetransparent and'
      '  RB13F = :OLD_RB13F and'
      '  C237F = :OLD_C237F and'
      '  AD752S = :OLD_AD752S and'
      '  A5 = :OLD_A5 and'
      '  A3 = :OLD_A3 and'
      '  AD5500 = :OLD_AD5500 and'
      '  A05W1A = :OLD_A05W1A and'
      '  HM401hotmelt = :OLD_HM401hotmelt and'
      '  A722 = :OLD_A722 and'
      '  A8602 = :OLD_A8602 and'
      '  A202 = :OLD_A202 and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN')
    InsertSQL.Strings = (
      'insert into QIPVOC'
      
        '  (DepNo, ProdDate, Pairs, HoanBao_C, TalonThan_C, LatexTrang_C,' +
        ' LatexTrong_C, '
      '   A311FT6_C, PU45_C, A6127T_C, WPL01_C,KeoXang_C,'
      '    PU45311NT1, WPL01, WH03, T6127T,'
      
        '   Primer297, P311FT_6primer, Hotmelt1438A, Hotmelt3173H, NCwhit' +
        'etransparent, '
      
        '   MWaterbase, Latex, A102, ABwhitetransparent, RB13F, C237F, AD' +
        '752S, A5, '
      
        '   A3, AD5500, A05W1A, HM401hotmelt, A722, A8602, A202, USERID, ' +
        'USERDATE, YN)'
      'values'
      
        '  (:DepNo, :ProdDate, :Pairs, :HoanBao_C, :TalonThan_C, :LatexTr' +
        'ang_C,'
      
        '   :LatexTrong_C, :A311FT6_C, :PU45_C, :A6127T_C, :WPL01_C, :Keo' +
        'Xang_C,'
      '   :PU45311NT1,'
      
        '   :WPL01, :WH03, :T6127T, :Primer297, :P311FT_6primer, :Hotmelt' +
        '1438A,'
      
        '   :Hotmelt3173H, :NCwhitetransparent, :MWaterbase, :Latex, :A10' +
        '2, :ABwhitetransparent,'
      
        '   :RB13F, :C237F, :AD752S, :A5, :A3, :AD5500, :A05W1A, :HM401ho' +
        'tmelt,'
      '   :A722, :A8602, :A202,:USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from QIPVOC'
      'where'
      '  DepNo = :OLD_DepNo and'
      '  ProdDate = :OLD_ProdDate and'
      '  Pairs = :OLD_Pairs and'
      '  HoanBao_C = :OLD_HoanBao_C and'
      '  TalonThan_C = :OLD_TalonThan_C and'
      '  LatexTrang_C = :OLD_LatexTrang_C and'
      '  LatexTrong_C = :OLD_LatexTrong_C and'
      '  A311FT6_C = :OLD_A311FT6_C and'
      '  PU45_C = :OLD_PU45_C and'
      '  A6127T_C = :OLD_A6127T_C and'
      '  WPL01_C = :OLD_WPL01_C and'
      '  KeoXang_C = :OLD_KeoXang_C  and'
      '  PU45311NT1 = :OLD_PU45311NT1 and'
      '  WPL01 = :OLD_WPL01 and'
      '  WH03 = :OLD_WH03 and'
      '  T6127T = :OLD_T6127T and'
      '  Primer297 = :OLD_Primer297 and'
      '  P311FT_6primer = :OLD_P311FT_6primer and'
      '  Hotmelt1438A = :OLD_Hotmelt1438A and'
      '  Hotmelt3173H = :OLD_Hotmelt3173H and'
      '  NCwhitetransparent = :OLD_NCwhitetransparent and'
      '  MWaterbase = :OLD_MWaterbase and'
      '  Latex = :OLD_Latex and'
      '  A102 = :OLD_A102 and'
      '  ABwhitetransparent = :OLD_ABwhitetransparent and'
      '  RB13F = :OLD_RB13F and'
      '  C237F = :OLD_C237F and'
      '  AD752S = :OLD_AD752S and'
      '  A5 = :OLD_A5 and'
      '  A3 = :OLD_A3 and'
      '  AD5500 = :OLD_AD5500 and'
      '  A05W1A = :OLD_A05W1A and'
      '  HM401hotmelt = :OLD_HM401hotmelt and'
      '  A722 = :OLD_A722 and'
      '  A8602 = :OLD_A8602 and'
      '  A202 = :OLD_A202 and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN')
    Left = 145
    Top = 287
  end
end
