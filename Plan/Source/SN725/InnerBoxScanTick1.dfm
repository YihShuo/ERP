object InnerBoxScanTick: TInnerBoxScanTick
  Left = 471
  Top = 292
  Width = 1024
  Height = 768
  Caption = 'InnerBoxScanTick'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 320
    Width = 257
    Height = 57
    AutoSize = False
    Caption = #30070#26085#29986#33021
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 391
    Width = 273
    Height = 82
    Alignment = taCenter
    AutoSize = False
    Caption = 'So Luong'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    ParentFont = False
  end
  object QtyLabel: TLabel
    Left = 304
    Top = 207
    Width = 585
    Height = 355
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -267
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 81
    Align = alTop
    Color = 16768991
    TabOrder = 0
    object Label2: TLabel
      Left = 252
      Top = 24
      Width = 93
      Height = 41
      AutoSize = False
      Caption = #25475#25551'Scan: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 11
      Top = 10
      Width = 134
      Height = 20
      AutoSize = False
      Caption = #25104#22411#32218'Lean:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object InfoLabel: TLabel
      Left = 772
      Top = 24
      Width = 245
      Height = 41
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Edit1: TEdit
      Left = 355
      Top = 4
      Width = 414
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object DepNMEdit: TEdit
      Left = 8
      Top = 32
      Width = 209
      Height = 37
      CharCase = ecUpperCase
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnDblClick = DepNMEditDblClick
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 200
  end
  object DepNo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'where ProYN=1'
      'order by ID')
    Left = 184
    Top = 32
    object DepNoID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object DepNoGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BDepartment.GSBH'
      FixedChar = True
      Size = 4
    end
    object DepNoDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object DepNoDepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object DepNoGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.BDepartment.GXLB'
      FixedChar = True
      Size = 10
    end
  end
end
