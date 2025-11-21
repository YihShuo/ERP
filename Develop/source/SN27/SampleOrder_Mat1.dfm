object SampleOrder_Mat: TSampleOrder_Mat
  Left = 329
  Top = 210
  Width = 989
  Height = 500
  Caption = 'SampleOrder_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 55
      Height = 20
      Caption = 'Mat No:'
    end
    object Label3: TLabel
      Left = 176
      Top = 12
      Width = 56
      Height = 20
      Caption = 'English:'
    end
    object CLDHEdit: TEdit
      Left = 64
      Top = 8
      Width = 105
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = YWPMEditKeyDown
    end
    object Button1: TButton
      Left = 776
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object YWPMEdit: TEdit
      Left = 240
      Top = 8
      Width = 513
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = YWPMEditKeyDown
    end
    object StopCK: TCheckBox
      Left = 872
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Stop no show'
      Checked = True
      State = cbChecked
      TabOrder = 3
      WordWrap = True
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 973
    Height = 357
    Align = alClient
    DataSource = DS1
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <
          item
            FieldName = 'cldh'
            ValueType = fvtCount
          end>
        Title.Caption = #26448#26009#32232#34399'|Mat No'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #20013#25991#21697#21517'|Chinese'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #33521#25991#21697#21517'|English'
        Width = 490
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = #21934#20301'|Unit'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #24288#21312'|Location'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Title.Caption = #20572#29992'|Stop'
        Width = 42
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 398
    Width = 973
    Height = 64
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object YWPMDBEdit: TDBEdit
      Left = 8
      Top = 34
      Width = 857
      Height = 24
      DataField = 'ywpm'
      DataSource = DS1
      TabOrder = 0
    end
    object ZWPMDBEdit: TDBEdit
      Left = 8
      Top = 4
      Width = 857
      Height = 24
      DataField = 'zwpm'
      DataSource = DS1
      TabOrder = 1
    end
  end
  object DS1: TDataSource
    DataSet = MatQry
    Left = 424
    Top = 128
  end
  object MatQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 100 cldh,zwpm,ywpm,dwbh,CQDH,TYJH from CLZL   order b' +
        'y CLDH')
    Left = 424
    Top = 160
    object MatQrycldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object MatQryzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object MatQryywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MatQrydwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object MatQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object MatQryTYJH: TStringField
      FieldName = 'TYJH'
      FixedChar = True
      Size = 1
    end
  end
end
