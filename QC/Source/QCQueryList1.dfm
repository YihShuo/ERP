object QCQueryList: TQCQueryList
  Left = 243
  Top = 142
  Width = 907
  Height = 557
  Caption = 'QCQueryList'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 325
      Top = 15
      Width = 59
      Height = 20
      Caption = 'QcDate:'
      Visible = False
    end
    object Button1: TButton
      Left = 507
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 633
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 390
      Top = 11
      Width = 105
      Height = 28
      Date = 40140.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 40140.000000000000000000
      TabOrder = 2
      Visible = False
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 49
    Width = 899
    Height = 470
    Align = alClient
    Color = clWhite
    ColumnDefValues.Title.Color = clInactiveBorder
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'depno'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'Depname'
        Footers = <>
        Title.Caption = 'Department'
        Width = 108
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = 'QC.NO'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'ISSUE'
        Width = 286
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'yyy'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'mmm'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'ddd'
        Footers = <>
        Visible = False
      end
      item
        Color = 16762052
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'QTY'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 't7'
        Footers = <>
        Title.Caption = '7:30'
        Width = 40
      end
      item
        Color = 13565902
        EditButtons = <>
        FieldName = 't8'
        Footers = <>
        Title.Caption = '8:00'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 't9'
        Footers = <>
        Title.Caption = '9:00'
        Width = 40
      end
      item
        Color = 13565902
        EditButtons = <>
        FieldName = 't10'
        Footers = <>
        Title.Caption = '10:00'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 't11'
        Footers = <>
        Title.Caption = '11:00'
        Width = 40
      end
      item
        Color = 13565902
        EditButtons = <>
        FieldName = 't12'
        Footers = <>
        Title.Caption = '12:00'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 't13'
        Footers = <>
        Title.Caption = '13:00'
        Width = 40
      end
      item
        Color = 13565902
        EditButtons = <>
        FieldName = 't14'
        Footers = <>
        Title.Caption = '14:00'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 't15'
        Footers = <>
        Title.Caption = '15:00'
        Width = 40
      end
      item
        Color = 13565902
        EditButtons = <>
        FieldName = 't16'
        Footers = <>
        Title.Caption = '16:00'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 't17'
        Footers = <>
        Title.Caption = '17:00'
        Width = 40
      end
      item
        Color = 13565902
        EditButtons = <>
        FieldName = 't18'
        Footers = <>
        Title.Caption = '18:00'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 't19'
        Footers = <>
        Title.Caption = '19:00'
        Width = 40
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 658
    Top = 237
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select depno'
      ',Depname'
      ',YYBH'
      ',YWSM'
      ',zwsm'
      ',yyy'
      ',mmm'
      ',ddd'
      ',sum(qty) as qty'
      ',sum(t7) as t7'
      ',sum(t8) as t8'
      ',sum(t9) as t9'
      ',sum(t10) as t10'
      ',sum(t11) as t11'
      ',sum(t12) as t12'
      ',sum(t13) as t13'
      ',sum(t14) as t14'
      ',sum(t15) as t15'
      ',sum(t16) as t16'
      ',sum(t17) as t17'
      ',sum(t18) as t18'
      ',sum(t19) as t19'
      ''
      'from ('
      'select qcr.Depno,'
      '       BDepartment.Depname,'
      '       qcrd.YYBH,'
      '       qcblyy.ywsm,'
      '       qcblyy.zwsm,'
      '       qcrd.qty,'
      '       datepart(year,qcr.userdate) as yyy,'
      'datepart(month,qcr.userdate) as mmm,'
      'datepart(day,qcr.userdate) as ddd'
      ''
      '       ,datepart(hh,qcr.userdate) as hour'
      
        '       ,(case datepart(hh,qcr.userdate) when 7 then isnull(qcrd.' +
        'qty,0) else 0 end)  as '#39't7'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 8 then isnull(qcrd.' +
        'qty,0) else 0 end)  as '#39't8'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 9 then isnull(qcrd.' +
        'qty,0) else 0 end)  as '#39't9'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 10 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't10'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 11 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't11'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 12 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't12'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 13 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't13'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 14 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't14'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 15 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't15'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 16 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't16'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 17 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't17'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 18 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't18'#39
      
        '       ,(case datepart(hh,qcr.userdate) when 19 then isnull(qcrd' +
        '.qty,0) else 0 end)  as '#39't19'#39
      'from qcrd'
      'left join qcblyy on qcblyy.yybh=qcrd.yybh'
      'left join qcr on qcr.prono= qcrd.prono'
      'left join bdepartment on bdepartment.id=qcr.depno'
      'where datepart(year,qcr.userdate)=2011 and'
      'datepart(month,qcr.userdate)=9  and  '
      'datepart(day,qcr.userdate)=23 ) aaa'
      'group by depno,Depname,YYBH,YWSM,zwsm,yyy,mmm,ddd')
    Left = 655
    Top = 191
    object Query1depno: TStringField
      FieldName = 'depno'
      FixedChar = True
      Size = 15
    end
    object Query1Depname: TStringField
      FieldName = 'Depname'
      FixedChar = True
      Size = 50
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 100
    end
    object Query1zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 100
    end
    object Query1yyy: TIntegerField
      FieldName = 'yyy'
    end
    object Query1mmm: TIntegerField
      FieldName = 'mmm'
    end
    object Query1ddd: TIntegerField
      FieldName = 'ddd'
    end
    object Query1qty: TIntegerField
      FieldName = 'qty'
    end
    object Query1t7: TIntegerField
      FieldName = 't7'
    end
    object Query1t8: TIntegerField
      FieldName = 't8'
    end
    object Query1t9: TIntegerField
      FieldName = 't9'
    end
    object Query1t10: TIntegerField
      FieldName = 't10'
    end
    object Query1t11: TIntegerField
      FieldName = 't11'
    end
    object Query1t12: TIntegerField
      FieldName = 't12'
    end
    object Query1t13: TIntegerField
      FieldName = 't13'
    end
    object Query1t14: TIntegerField
      FieldName = 't14'
    end
    object Query1t15: TIntegerField
      FieldName = 't15'
    end
    object Query1t16: TIntegerField
      FieldName = 't16'
    end
    object Query1t17: TIntegerField
      FieldName = 't17'
    end
    object Query1t18: TIntegerField
      FieldName = 't18'
    end
    object Query1t19: TIntegerField
      FieldName = 't19'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 707
    Top = 197
  end
end
