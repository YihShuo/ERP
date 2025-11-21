object PlanOrderSRubber: TPlanOrderSRubber
  Left = 295
  Top = 175
  Width = 865
  Height = 466
  Caption = 'PlanOrderSRubber'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 849
    Height = 355
    Align = alClient
    DataSource = DS1
    EvenRowColor = clMenu
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 80
      Top = 40
      Width = 27
      Height = 20
      Caption = 'RY:'
    end
    object Label2: TLabel
      Left = 32
      Top = 7
      Width = 74
      Height = 20
      Caption = 'Plan Date:'
    end
    object Label3: TLabel
      Left = 291
      Top = 46
      Width = 9
      Height = 20
      Caption = '~'
    end
    object Label4: TLabel
      Left = 239
      Top = 8
      Width = 57
      Height = 20
      Caption = 'Factory:'
    end
    object Button1: TButton
      Left = 514
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object PlanDate: TDateTimePicker
      Left = 111
      Top = 6
      Width = 120
      Height = 28
      Date = 42402.604173831020000000
      Format = 'yyyy/MM/dd'
      Time = 42402.604173831020000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RYEdit1: TEdit
      Left = 111
      Top = 37
      Width = 178
      Height = 28
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 9
      Width = 17
      Height = 17
      TabOrder = 3
    end
    object RYEdit2: TEdit
      Left = 303
      Top = 37
      Width = 178
      Height = 28
      TabOrder = 4
    end
    object GSBHCombo: TComboBox
      Left = 305
      Top = 4
      Width = 72
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 5
      Text = 'VA12'
      Items.Strings = (
        'VA12'
        'VB1'
        'VB2'
        'VB7')
    end
    object CKPart: TCheckBox
      Left = 386
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Show Part'
      TabOrder = 6
    end
  end
  object Button2: TButton
    Left = 514
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 152
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 184
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 265
    Top = 183
  end
end
