object OrderCheck: TOrderCheck
  Left = 314
  Top = 202
  Width = 901
  Height = 500
  Caption = 'Monthly order trace report'
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
    Width = 893
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 328
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 128
      Top = 64
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 496
      Top = 64
      Width = 39
      Height = 16
      Caption = 'Query:'
    end
    object Label5: TLabel
      Left = 8
      Top = 64
      Width = 37
      Height = 16
      Caption = 'SKU#:'
    end
    object Label7: TLabel
      Left = 760
      Top = 40
      Width = 51
      Height = 16
      Caption = 'Finished'
    end
    object Label9: TLabel
      Left = 760
      Top = 8
      Width = 56
      Height = 16
      Caption = 'No Finish'
    end
    object Label10: TLabel
      Left = 760
      Top = 72
      Width = 48
      Height = 16
      Caption = 'No Start'
    end
    object Label2: TLabel
      Left = 472
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label12: TLabel
      Left = 280
      Top = 64
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label13: TLabel
      Left = 392
      Top = 64
      Width = 29
      Height = 16
      Caption = 'Dep:'
    end
    object Label16: TLabel
      Left = 16
      Top = 96
      Width = 553
      Height = 20
      AutoSize = False
      Caption = #26376#20221#35330#21934#23436#25104#37197#22871#29376#27841#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadG1: TRadioGroup
      Left = 328
      Top = 80
      Width = 377
      Height = 49
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Shipping order('#26989#21209#35330#21934')'
        'Produce order('#29983#29986#35330#21934')')
      TabOrder = 15
    end
    object Edit2: TEdit
      Left = 384
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 184
      Top = 56
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 624
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object CBX3: TComboBox
      Left = 536
      Top = 56
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'Order'
      Items.Strings = (
        'Order'
        'SKU#'
        'CutDie'
        'Customer'
        'CSD'
        'ETD')
    end
    object Edit3: TEdit
      Left = 48
      Top = 56
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 624
      Top = 8
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 728
      Top = 8
      Width = 25
      Height = 21
      Color = clRed
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 536
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 728
      Top = 40
      Width = 25
      Height = 21
      Color = clLime
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit7: TEdit
      Left = 728
      Top = 72
      Width = 25
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object CBX4: TComboBox
      Left = 320
      Top = 56
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 10
    end
    object Edit8: TEdit
      Left = 432
      Top = 56
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object Edit9: TEdit
      Left = 816
      Top = 56
      Width = 41
      Height = 24
      Enabled = False
      TabOrder = 12
      Visible = False
    end
    object Panel2: TPanel
      Left = 8
      Top = 0
      Width = 313
      Height = 49
      PopupMenu = PopupMenu2
      TabOrder = 13
      OnDblClick = Panel2DblClick
      object Label11: TLabel
        Left = 168
        Top = 16
        Width = 49
        Height = 20
        Caption = 'Month:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 38
        Height = 20
        Caption = 'Year:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CBX1: TComboBox
        Left = 240
        Top = 8
        Width = 57
        Height = 28
        Style = csDropDownList
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = '01'
        Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
      object CBX2: TComboBox
        Left = 80
        Top = 8
        Width = 73
        Height = 28
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = '2006'
        Items.Strings = (
          '2006'
          '2007'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020')
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 0
      Width = 313
      Height = 49
      PopupMenu = PopupMenu2
      TabOrder = 14
      Visible = False
      OnDblClick = Panel3DblClick
      object Label14: TLabel
        Left = 16
        Top = 24
        Width = 31
        Height = 16
        Caption = 'CSD:'
      end
      object Label15: TLabel
        Left = 168
        Top = 24
        Width = 17
        Height = 16
        Caption = 'To'
      end
      object DTP1: TDateTimePicker
        Left = 56
        Top = 16
        Width = 105
        Height = 24
        Date = 39783.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 39783.568310717590000000
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 200
        Top = 16
        Width = 106
        Height = 24
        Date = 39783.569282222220000000
        Format = 'yyyy/MM/dd'
        Time = 39783.569282222220000000
        TabOrder = 1
      end
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 129
    Width = 893
    Height = 337
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
      Caption = 'Excel'
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
    Filter = 'txt|txt|csv|csv|htm|htm|rtf|rtf|xls|xls'
    Left = 352
    Top = 128
  end
  object PopupMenu2: TPopupMenu
    Left = 24
    Top = 64
    object N1: TMenuItem
      Caption = 'ETD Date'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Plan Month'
      OnClick = N2Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.CenterText.Strings = (
      #26376#20221#35336#21123#29983#29986#23436#25104#29376#27841)
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -21
    PageFooter.Font.Name = #27161#26999#39636
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
