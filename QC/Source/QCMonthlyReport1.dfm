object QCMonthlyReport: TQCMonthlyReport
  Left = 241
  Top = 222
  Width = 1029
  Height = 657
  Caption = 'QC Monthly Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Label8: TLabel
    Left = 808
    Top = 32
    Width = 56
    Height = 16
    Caption = 'No Finish'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 51
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 402
      Top = 16
      Width = 39
      Height = 16
      Caption = 'Query:'
    end
    object Label12: TLabel
      Left = 290
      Top = 16
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label14: TLabel
      Left = 8
      Top = 12
      Width = 32
      Height = 16
      Caption = 'Date:'
    end
    object Label15: TLabel
      Left = 151
      Top = 12
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label1: TLabel
      Left = 872
      Top = 8
      Width = 4
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 904
      Top = 8
      Width = 41
      Height = 16
      Caption = 'Label2'
      Visible = False
    end
    object Button1: TButton
      Left = 520
      Top = 8
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CBX3: TComboBox
      Left = 442
      Top = 8
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 0
      Text = 'STITCHING'
      OnChange = CBX3Change
      Items.Strings = (
        'STITCHING'
        'PRINTING'
        'ASSEMBLY')
    end
    object Button2: TButton
      Left = 595
      Top = 8
      Width = 62
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 2
      OnClick = Button2Click
    end
    object CBX4: TComboBox
      Left = 330
      Top = 8
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      OnChange = CBX4Change
    end
    object Edit9: TEdit
      Left = 728
      Top = 8
      Width = 41
      Height = 24
      Enabled = False
      TabOrder = 4
      Visible = False
    end
    object DTP1: TDateTimePicker
      Left = 42
      Top = 8
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 5
      OnChange = DTP1Change
    end
    object DTP2: TDateTimePicker
      Left = 172
      Top = 8
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 6
      OnChange = DTP2Change
    end
    object Button3: TButton
      Left = 664
      Top = 8
      Width = 57
      Height = 33
      Caption = 'Print'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 784
      Top = 8
      Width = 97
      Height = 24
      TabOrder = 8
      Text = 'Edit1'
      Visible = False
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 51
    Width = 1021
    Height = 572
    Align = alClient
    Color = 16121845
    DataSource = DataSource1
    EvenRowColor = 16515069
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnGetCellParams = DBGrid1GetCellParams
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 496
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
      OnClick = NN1Click
    end
    object NN2: TMenuItem
      Caption = 'Export'
      OnClick = NN2Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Filter = 'xls|xls|csv|csv|htm|htm|rtf|rtf|txt|txt'
    Left = 352
    Top = 128
  end
  object PopupMenu2: TPopupMenu
    Left = 8
    Top = 80
    object N1: TMenuItem
      Caption = 'ETD Date'
    end
    object N2: TMenuItem
      Caption = 'Plan Month'
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #26376#20221#35330#21934#23436#25104#29376#27841#34920)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 464
    Top = 160
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B544E616D655D0D0A5C706172207D0D0A00}
  end
end
