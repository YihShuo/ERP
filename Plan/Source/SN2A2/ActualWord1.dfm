object ActualWord: TActualWord
  Left = 196
  Top = 138
  Width = 1071
  Height = 525
  Caption = 'Daily Actual Word'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 18
      Width = 62
      Height = 16
      Caption = 'Plan Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 160
      Top = 18
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 323
      Top = 18
      Width = 66
      Height = 16
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 549
      Top = 19
      Width = 37
      Height = 16
      Caption = 'GXLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 643
      Top = 10
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 883
      Top = 10
      Width = 65
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 723
      Top = 10
      Width = 73
      Height = 33
      Caption = 'Save'
      TabOrder = 2
      OnClick = Button3Click
    end
    object CBX2: TComboBox
      Left = 77
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
    end
    object CBX3: TComboBox
      Left = 200
      Top = 16
      Width = 49
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 8
      ParentFont = False
      TabOrder = 4
      Text = '09'
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
    object Edit1: TEdit
      Left = 392
      Top = 16
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button4: TButton
      Left = 803
      Top = 10
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = Button4Click
    end
    object CoBoTime: TComboBox
      Left = 256
      Top = 16
      Width = 57
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = '09:00'
      Items.Strings = (
        '09:00'
        '13:00')
    end
    object ComboBox1: TComboBox
      Left = 589
      Top = 15
      Width = 51
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 1
      ParentFont = False
      TabOrder = 8
      Text = 'A'
      Items.Strings = (
        'All'
        'A'
        'C'
        'S'
        'P')
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 1055
    Height = 428
    Align = alClient
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowMoving, goColMoving, goEditing]
    TabOrder = 1
    OnDrawCell = StringGrid1DrawCell
    OnKeyPress = StringGrid1KeyPress
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,DepName,ID as RecNum  '
      'from BDepartment where ProYN=1 '
      '     and DepName like '#39'%%'#39
      '     and GSBH='#39'VA12'#39
      '     and GXLB ='#39'A'#39
      'order by ID')
    UpdateObject = UpdateSQL1
    Left = 512
    Top = 104
    object QDepID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object QDepDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object QDepRecNum: TStringField
      FieldName = 'RecNum'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
  end
  object DepTot: TQuery
    DatabaseName = 'DB'
    Left = 552
    Top = 104
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 592
    Top = 104
  end
  object UpdateSQL1: TUpdateSQL
    Left = 512
    Top = 136
  end
  object DataSource1: TDataSource
    Left = 552
    Top = 256
  end
  object RSCQ: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select CONVERT(varchar(10),RSDate,111) as RSDate,DepNo,CQQty,QJQ' +
        'ty,SDGS,SJGS,ROQty,PQty,TsQty '
      
        ',TreQty,BGS,RSCQ.USERID,RSCQ.USERDate, RSCQ.YN, CQQty1, USERID1,' +
        ' USERDATE1 '
      'from RSCQ '
      'left join BDepartment on BDepartment.ID=RSCQ.DepNo '
      'where RSCQ.RSDate>='#39'2017/09/01 '#39
      '      and RSCQ.RSDate<='#39'2017/09/30 '#39
      '      and BDepartment.GSBH='#39'VA12'#39
      '      and BDepartment.DepName like '#39'%%'#39
      'order by RSCQ.DepNo,RSCQ.RSDate')
    UpdateObject = UpSQL2
    Left = 584
    Top = 256
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update RSCQ'
      'set'
      '  CQQty=:CQQty,'
      '  USERID=:USERID,'
      '  USERDATE=:USERDATE,'
      '  CQQty1=:CQQty1,'
      '  USERID1=:USERID1,'
      '  USERDATE1=:USERDATE1'
      'where'
      '  DepNo = :OLD_DepNo and'
      '  RSDate = :OLD_RSDate')
    InsertSQL.Strings = (
      'insert into RSCQ'
      
        '  (RSdate, DepNo, CQQty, QJQty, SDGS, SJGS, ROQty, PQty, TsQty, ' +
        'TreQty, BGS, USERID, USERDATE, YN, CQQty1, USERID1, USERDATE1)'
      'values'
      
        '  (:RSdate, :DepNo, :CQQty, :QJQty, :SDGS, :SJGS, :ROQty, :PQty,' +
        ' :TsQty, :TreQty, :BGS, :USERID, :USERDATE, :YN, :CQQty1, :USERI' +
        'D1, :USERDATE1)')
    DeleteSQL.Strings = (
      'delete from RSCQ'
      'where'
      '  DepNo = :OLD_DepNo and'
      '  RSDate = :OLD_RSDate')
    Left = 616
    Top = 256
  end
end
