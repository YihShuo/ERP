object ProduceUseStock: TProduceUseStock
  Left = 188
  Top = 129
  Width = 1079
  Height = 558
  Caption = 'ProduceUseStock'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1071
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 0
      Top = 7
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 400
      Top = 37
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo'
    end
    object Label11: TLabel
      Left = 0
      Top = 36
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat ID'
    end
    object Label9: TLabel
      Left = 424
      Top = 8
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label10: TLabel
      Left = 576
      Top = 37
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
    end
    object Label1: TLabel
      Left = 236
      Top = 8
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ProDate'
    end
    object ExRateLB: TLabel
      Left = 791
      Top = 43
      Width = 126
      Height = 16
      AutoSize = False
    end
    object Label2: TLabel
      Left = 236
      Top = 38
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDZL Type'
    end
    object Button4: TButton
      Left = 736
      Top = 34
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 736
      Top = 1
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button5Click
    end
    object EditRY1: TEdit
      Left = 84
      Top = 4
      Width = 149
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 317
      Top = 4
      Width = 100
      Height = 24
      Date = 42430.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 42430.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 441
      Top = 4
      Width = 88
      Height = 24
      Date = 42460.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 42460.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 4
    end
    object BuyNoEdit: TEdit
      Left = 461
      Top = 34
      Width = 116
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 5
    end
    object Edit_MatNo: TEdit
      Left = 83
      Top = 34
      Width = 150
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 6
    end
    object EditArticle: TEdit
      Left = 637
      Top = 33
      Width = 88
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 7
    end
    object STLCombo: TComboBox
      Left = 317
      Top = 34
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 8
      Text = 'No STL'
      Items.Strings = (
        ''
        'No STL'
        'STL')
    end
    object Chk_Det: TCheckBox
      Left = 611
      Top = 8
      Width = 122
      Height = 17
      Caption = 'show RY Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Chk_DetClick
    end
    object JGCK: TCheckBox
      Left = 531
      Top = 8
      Width = 78
      Height = 17
      Caption = '+JG'
      TabOrder = 10
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 1071
    Height = 454
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 765
      Top = 1
      Width = 8
      Height = 452
      Align = alRight
      Color = clSkyBlue
      ParentColor = False
      Visible = False
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 764
      Height = 452
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
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 2
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <
            item
              FieldName = 'CLBH'
              ValueType = fvtCount
            end>
          Title.Caption = #26448#26009#32232#34399'|MatNo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Footers = <>
          Title.Caption = #26448#26009#20013#25991'|ZWPM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 245
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Caption = #26448#26009#21517#31281'|YWPM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 280
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Title.Caption = #21934#20301'|Unit'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'CQDH'
          Footers = <>
          Title.Caption = #25505#21312'|Loc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 36
        end
        item
          Color = 12582911
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = #21033#24235#25976#37327'|Qty'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <>
          Title.Caption = #32654#37329#21934#20729'|USPrice'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'VNPrice'
          Footers = <>
          Title.Caption = #36234#30462#21934#20729'|VNPrice'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'USTotal'
          Footer.FieldName = 'USTotal'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #32654#37329#32317#38989'|USTotal'
        end
        item
          EditButtons = <>
          FieldName = 'LBBH'
          Footers = <>
          Title.Caption = #20998#39006'|Class'
          Width = 34
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 773
      Top = 1
      Width = 297
      Height = 452
      Align = alRight
      DataSource = DS2
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
      FrozenCols = 2
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Visible = False
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SCBH'
          Footers = <>
          Title.Caption = #35330#21934'|SCBH'
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #38936#26009#25976#37327'|Qty'
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'UseQty'
          Footer.FieldName = 'UseQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #20351#29992#24235#23384'|UseQty'
        end
        item
          EditButtons = <>
          FieldName = 'Type'
          Footers = <>
          Title.Caption = #39006#22411'|Type'
          Width = 37
        end>
    end
  end
  object RemQuery: TQuery
    OnCalcFields = RemQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,Sum(Ca' +
        'se when Qty<=UseQty then Qty else UseQty end) as Qty,Max(USPrice' +
        ') as USPrice,Max(VNPrice) as VNPrice,Max(IsNull(LastKC.LBBH,CLLB' +
        'FLS.LBBH)) as LBBH from ('
      
        'select KCLLS.SCBH,KCLLS.CLBH,KCLLS.Qty,CGKCUSE.QTY as UseQty,CGB' +
        'J.USPrice,CGBJ.VNPrice from ('
      ''
      'select GSBH,SCBH,CLBH,Sum(Qty) as Qty from ('
      
        'select KCLL.LLNO,KCLL.GSBH,KCLL.SCBH,KCLLS.CLBH,KCLLS.Qty,1 as Y' +
        'N from KCLL'
      'inner join KCLLS  on KCLL.LLNO=KCLLS.LLNO '
      
        'where KCLL.GSBH='#39'VA12'#39' and KCLL.CFMDATE Between Convert(datetime' +
        ','#39'2016/04/01'#39') and Convert(datetime,'#39'2016/04/30'#39')'
      
        'and KCLLS.Qty>0 and KCLL.SCBH<>'#39'ZZZZZZZZZZ'#39' and KCLL.SCBH<>'#39'XXXX' +
        'XXXXXX'#39' and KCLL.SCBH<>'#39'WWWWWWWWWW'#39' and KCLL.SCBH<>'#39'DDDDDDDDDD'#39' '
      'and KCLLS.CLBH like '#39'%'#39' and KCLLS.SCBH like '#39'%'#39' '
      ''
      ' ) KCLLS Group by  GSBH,SCBH,CLBH'
      ') KCLLS'
      ''
      ''
      
        'left join CGKCUSE on CGKCUSE.GSBH=KCLLS.GSBH and CGKCUSE.ZLBH=KC' +
        'LLS.SCBH and KCLLS.CLBH=CGKCUSE.CLBH'
      'left join (select CGBJ.CLBH,CGBJ.USPrice,CGBJ.VNPrice from ('
      
        'select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ROW_NUMBER() over' +
        ' (PARTITION BY CGBJS.CLBH ORDER BY CGBJS.BJNO DESC) as  rn from ' +
        'CGBJS,CGBJ where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  and ' +
        'CGBJS.CLBH not like '#39'V%'#39' '
      ') CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=KCLLS.CLBH'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH '
      'where CGKCUSE.Qty>0 '
      '         and IsNull(DDZL.RYType,'#39#39')<>'#39'SLT'#39' '
      ') KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as' +
        ' LastRem '
      
        '           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR' +
        '='#39'2016'#39
      '           and KCMONTH='#39'04'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      
        'left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='#39'VA' +
        '12'#39' '
      ' Group by KCLLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH'
      '')
    Left = 376
    Top = 216
    object RemQueryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object RemQueryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object RemQueryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object RemQueryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object RemQueryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object RemQueryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object RemQueryUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object RemQueryVNPrice: TFloatField
      FieldName = 'VNPrice'
    end
    object RemQueryUSTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'USTotal'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object RemQueryLBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
  end
  object DetailQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select KCLLS.SCBH,KCLLS.CLBH,KCLLS.Qty,CGKCUSE.QTY as UseQty,Cas' +
        'e when  KCLLS.YN=1 then '#39'RK'#39' else '#39'JG'#39' end as [Type] from ('
      ''
      'select GSBH,SCBH,CLBH,Sum(Qty) as Qty,YN from ('
      
        'select KCLL.LLNO,KCLL.GSBH,KCLL.SCBH,KCLLS.CLBH,KCLLS.Qty,1 as Y' +
        'N from KCLL'
      'inner join KCLLS  on KCLL.LLNO=KCLLS.LLNO '
      
        'where KCLL.GSBH='#39'VA12'#39' and KCLL.CFMDATE Between Convert(datetime' +
        ','#39'2016/04/01'#39') and Convert(datetime,'#39'2016/04/30'#39')'
      
        'and KCLLS.Qty>0 and KCLL.SCBH<>'#39'ZZZZZZZZZZ'#39' and KCLL.SCBH<>'#39'XXXX' +
        'XXXXXX'#39' and KCLL.SCBH<>'#39'WWWWWWWWWW'#39' and KCLL.SCBH<>'#39'DDDDDDDDDD'#39' '
      'and KCLLS.CLBH='#39'A020000725'#39' and KCLLS.SCBH like '#39'%'#39' '
      ''
      'Union all'
      ''
      'select * from ('
      
        'select JGChi.JGNO,JGChi.GSBH,JGChi.ZLBH,JGChi.ZMLB,(JGChi.Qty* C' +
        'ase when JGMon.Qty<=JGMon.AllQty then JGMon.Qty else JGMon.allQt' +
        'y end) as Qty,2 as YN from ('
      
        'select JGZLS.JGNO,JGZL.GSBH,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,JGZL' +
        'SS.ZLBH from JGZLSS,JGZLS,JGZL '
      
        'where  JGZL.JGNO=JGZLS.JGNO and JGZLSS.JGNO=JGZLS.JGNO and JGZLS' +
        'S.CLBH=JGZLS.CLBH  and JGZLSS.ZLBH is not null and ZMLB<>'#39'ZZZZZZ' +
        'ZZZZ'#39' and ZMLB='#39'A020000725'#39'  and  JGZLSS.ZLBH like '#39'%'#39
      
        '       and JGZL.GSBH='#39'VA12'#39' and JGZL.CFMDATE1 Between Convert(da' +
        'tetime,'#39'2016/04/01'#39') and Convert(datetime,'#39'2016/04/30'#39') and JGZL' +
        '.CFMID1<>'#39'NO'#39
      ') JGChi'
      'inner join ('
      
        ' select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty as AllQty,JGZ' +
        'LSS.Qty,JGZLSS.ZLBH from JGZLSS,JGZLS,JGZL  '
      
        ' where  JGZL.JGNO=JGZLS.JGNO and JGZLSS.JGNO=JGZLS.JGNO and JGZL' +
        'SS.CLBH=JGZLS.CLBH  and JGZLSS.ZLBH is not null  and ZMLB='#39'ZZZZZ' +
        'ZZZZZ'#39'   and     JGZLSS.ZLBH like '#39'%'#39
      
        '      and JGZL.GSBH='#39'VA12'#39' and JGZL.CFMDATE1 Between Convert(dat' +
        'etime,'#39'2016/04/01'#39') and Convert(datetime,'#39'2016/04/30'#39') and JGZLS' +
        '.Qty>0 and JGZL.CFMID1<>'#39'NO'#39
      
        ') JGMon on JGChi.JGNO=JGMon.JGNO and JGChi.CLBH=JGMon.CLBH and J' +
        'GChi.ZLBH=JGMon.ZLBH ) JGZL '
      'where ZMLB='#39'A020000725'#39' and ZLBH like '#39'%'#39
      ' ) KCLLS Group by  GSBH,SCBH,CLBH,YN'
      ') KCLLS'
      ''
      ''
      
        'left join CGKCUSE on CGKCUSE.GSBH=KCLLS.GSBH and CGKCUSE.ZLBH=KC' +
        'LLS.SCBH and KCLLS.CLBH=CGKCUSE.CLBH'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH '
      'where CGKCUSE.Qty>0 '
      '         and IsNull(DDZL.RYType,'#39#39')<>'#39'SLT'#39' '
      'order by KCLLS.CLBH'
      ' ')
    Left = 408
    Top = 216
    object DetailQrySCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DetailQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DetailQryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object DetailQryUseQty: TCurrencyField
      FieldName = 'UseQty'
      DisplayFormat = '0.00'
    end
    object DetailQryType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 2
    end
  end
  object DS2: TDataSource
    DataSet = DetailQry
    Left = 408
    Top = 248
  end
  object DS1: TDataSource
    DataSet = RemQuery
    Left = 376
    Top = 248
  end
  object qrUsestock: TQuery
    DatabaseName = 'DB'
    Left = 376
    Top = 283
  end
  object PopupMenu1: TPopupMenu
    Left = 944
    Top = 241
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
