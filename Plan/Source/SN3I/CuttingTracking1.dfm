object CuttingTracking: TCuttingTracking
  Left = 293
  Top = 257
  Width = 1305
  Height = 675
  Caption = 'CuttingTracking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cutting For Processing'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 48
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 234
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 422
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 130
          Top = 20
          Width = 9
          Height = 16
          Alignment = taRightJustify
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_P1: TDateTimePicker
          Left = 55
          Top = 12
          Width = 74
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object CB_Building_P: TComboBox
          Left = 293
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
        end
        object CB_Lean_P: TComboBox
          Left = 457
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 2
        end
        object Button1: TButton
          Left = 589
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 3
        end
        object DTP_P2: TDateTimePicker
          Left = 142
          Top = 12
          Width = 74
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 48
        Width = 1281
        Height = 557
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Automated Cutting'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'In-Line Cutting'
      ImageIndex = 2
    end
  end
end
