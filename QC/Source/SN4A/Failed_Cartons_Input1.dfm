object Failed_Cartons_Input: TFailed_Cartons_Input
  Left = 233
  Top = 562
  Width = 1633
  Height = 675
  Caption = 'Failed Cartons Input'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1617
    Height = 65
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 19
      Width = 51
      Height = 25
      Caption = 'LEAN'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 255
      Top = 19
      Width = 21
      Height = 25
      Caption = 'ID'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 472
      Top = 13
      Width = 84
      Height = 42
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object edtLine: TEdit
      Left = 76
      Top = 15
      Width = 170
      Height = 33
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = edtLineClick
    end
    object ID: TEdit
      Left = 279
      Top = 16
      Width = 136
      Height = 33
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Button3: TButton
      Left = 930
      Top = 13
      Width = 108
      Height = 43
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object btnRY: TButton
      Left = 416
      Top = 17
      Width = 38
      Height = 33
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnRYClick
    end
    object Button2: TButton
      Left = 663
      Top = 13
      Width = 84
      Height = 42
      Caption = 'Modify'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 751
      Top = 13
      Width = 84
      Height = 42
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 837
      Top = 13
      Width = 84
      Height = 42
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 576
      Top = 13
      Width = 84
      Height = 42
      Caption = 'Insert'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button6Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 1617
    Height = 571
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Failed_cartons'
        Width = 1876
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'Select WOPR_MA_IN.*,BDepartment.Depname'
      'From WOPR_MA'
      'left join BDepartment on BDepartment.ID=WOPR_MA.DepNo'
      
        'left join WOPR_MA_IN on WOPR_MA.ID=WOPR_MA_IN.ID and WOPR_MA.SCB' +
        'H=WOPR_MA_IN.SCBH and WOPR_MA.DepNo=WOPR_MA_IN.DepNo'
      'where WOPR_MA.GSBH = '#39'VA12'#39' and WOPR_MA.GXLB='#39'HI'#39'  '
      '  and BDepartment.DepName like '#39'A02_LEAN01_G%'#39' '
      '  and WOPR_MA.PrdQty<>0 '
      '  and WOPR_MA.Result='#39'F'#39
      'order by WOPR_MA_IN.Failed_cartons')
    UpdateObject = UpdateSQL1
    Left = 232
    Top = 152
    object Query1ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object Query1MA_ID: TStringField
      FieldName = 'MA_ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 15
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1Failed_cartons: TStringField
      FieldName = 'Failed_cartons'
      FixedChar = True
      Size = 255
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1Depname: TStringField
      FieldName = 'Depname'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 184
    object Delete1: TMenuItem
      Caption = 'Insert'
      OnClick = Delete1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
    object excel1: TMenuItem
      Caption = 'Excel'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update WOPR_MA_IN'
      'set'
      '  ID =:ID,'
      '  MA_ID =:MA_ID,'
      '  DepNo =:DepNo,'
      '  GXLB =:GXLB,'
      '  SCBH =:SCBH,'
      '  Failed_cartons =:Failed_cartons,'
      '  UserID =:UserID,'
      '  UserDate =:UserDate,'
      '  YN =:YN'
      'where'
      '  MA_ID =:OLD_MA_ID'
      '  and ID =:OLD_ID'
      '  and DepNo =:OLD_DepNo'
      '  and GXLB =:OLD_GXLB'
      '  and SCBH =:OLD_SCBH')
    InsertSQL.Strings = (
      'insert into WOPR_MA_IN'
      '  (ID,MA_ID,DepNo,GXLB,SCBH,Failed_cartons,UserID,UserDate,YN)'
      'values'
      
        '  (:ID, :MA_ID, :DepNo, :GXLB, :SCBH, :Failed_cartons, :UserID, ' +
        ':UserDate, :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM WOPR_MA_IN'
      'WHERE'
      '  ID =:ID AND'
      '  MA_ID = :OLD_MA_ID AND'
      '  DepNo = :OLD_DepNo AND'
      '  GXLB = :OLD_GXLB AND'
      '  SCBH = :OLD_SCBH')
    Left = 408
    Top = 192
  end
  object WOPR_MA_IN: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select WOPR_MA.ID, WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.GXLB'
      'From WOPR_MA'
      'left join BDepartment on BDepartment.ID=WOPR_MA.DepNo'
      'where WOPR_MA.GSBH = '#39'VA12'#39' '
      '  and BDepartment.DepName = '#39'A02_LEAN01_G'#39' '
      '  and WOPR_MA.ID = '#39'HI00000002'#39' '
      '  and WOPR_MA.PrdQty<>0 '
      '  and WOPR_MA.Result='#39'F'#39
      'order by WOPR_MA.ID')
    Left = 408
    Top = 152
    object WOPR_MA_INID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object WOPR_MA_INSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object WOPR_MA_INDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 15
    end
    object WOPR_MA_INGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 304
    Top = 304
  end
end
