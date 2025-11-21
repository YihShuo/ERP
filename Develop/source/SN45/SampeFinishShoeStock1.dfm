object SampeFinishShoeStock: TSampeFinishShoeStock
  Left = 398
  Top = 311
  Width = 1043
  Height = 524
  Caption = 'SampeFinishShoeStock'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1027
    Height = 485
    ActivePage = TS2
    Align = alClient
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Monthly'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label6: TLabel
          Left = 128
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label1: TLabel
          Left = 231
          Top = 16
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label5: TLabel
          Left = 447
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestNo:'
        end
        object Button2: TButton
          Left = 744
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 648
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button3Click
        end
        object CBX2: TComboBox
          Left = 56
          Top = 13
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 16
          TabOrder = 2
          Text = '2022'
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
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029')
        end
        object CBX3: TComboBox
          Left = 176
          Top = 12
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ItemHeight = 16
          TabOrder = 3
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
        object Edit3: TEdit
          Left = 304
          Top = 12
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button5: TButton
          Left = 840
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = Button5Click
        end
        object Edit4: TEdit
          Left = 520
          Top = 14
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1019
        Height = 405
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24180'|KCYEAR'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26376'|KCMONTH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footer.FieldName = 'YPDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #27171#21697#21934#34399'|Sample NO'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38617#25976'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #36890#22577#34399'|TestNo'
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20633#35387'|Memo'
            Width = 209
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Stock'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 175
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label14: TLabel
          Left = 10
          Top = 16
          Width = 67
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 399
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestNo:'
        end
        object Edit2: TEdit
          Left = 248
          Top = 14
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 768
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP: TDateTimePicker
          Left = 80
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button4: TButton
          Left = 872
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button4Click
        end
        object CheckBox1: TCheckBox
          Left = 632
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Edit1: TEdit
          Left = 472
          Top = 14
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object CheckBox2: TCheckBox
          Left = 696
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 6
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1019
        Height = 405
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
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
            FieldName = 'YPDH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #27171#21697#21934#32232#34399'|Sample No'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'GSDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Quantity'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#25976#37327'|XHQty'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = #36890#22577#34399'|TestNo'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 153
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 144
          end>
      end
    end
  end
  object EXEQry: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 192
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ShoeTestMonth.*,ShoeTest.Article,ShoeTestMonth_Memo.Memo,' +
        'ShoeTest.YPDH '
      'from ShoeTestMonth'
      
        'left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=ShoeTe' +
        'stMonth.TestNo '
      'left join ShoeTest on ShoeTest.TestNo=ShoeTestMonth.TestNo '
      'where ShoeTestMonth.KCYEAR='#39'2022'#39'  '
      #9#9'   and ShoeTestMonth.KCMONTH='#39'10'#39)
    UpdateObject = UPDet1
    Left = 456
    Top = 192
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 15
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.YWCPMONTH.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.YWCPMONTH.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.YWCPMONTH.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.YWCPMemo.Memo'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCPMONTH.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCPMONTH.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCPMONTH.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UPDet1: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoeTestMonth'
      'set'
      '  Qty = :Qty,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  TestNo= :OLD_TestNo')
    Left = 457
    Top = 227
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 458
    Top = 266
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 498
    Top = 266
    object Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object UPDet2: TUpdateSQL
    ModifySQL.Strings = (
      'Update YWCPMemo'
      'set'
      '  Memo =:Memo,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DDBH =:OLD_DDBH')
    InsertSQL.Strings = (
      'Insert into YWCPMemo'
      '   (DDBH, Memo, UserID, UserDate, YN)'
      'Values'
      '   (:DDBH, :Memo, :UserID, :UserDate, :YN) ')
    Left = 497
    Top = 227
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Shoetest.TestNo,ShoeTestMonth.Qty as LastRem, ShoeTestIn.' +
        'Qty as RKQty, ShoeTestship.Qty as XHQty, ShoetestAll.Qty,ShoeTes' +
        't.YPDH,ShoeTest.Article,YPZL.GSDH,YPZL.Quantity,YPZL.JHRQ,Case w' +
        'hen ShoeTest.TBCancel=1 then '#39'C'#39' else '#39'Y'#39' end as DDZT,ShoeTestMo' +
        'nth_Memo.Memo   from ('
      '  Select  TestNo , Sum(Qty) as Qty'
      '  from ('
      #9'Select TestNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      #9'   and ShoeTestMonth.CKBH<>'#39'CBY'#39
      #9'union all'
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'2'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.complete, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39' '
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      #9'Group by shoetest.TestNo'
      #9'union all '
      #9'Select  shoetest.TestNo,-1*Sum(shoetest2.qty) as Qty,'#39'3'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.ShipDate, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39'   and shoetest.Complete is not null'
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  Shoet' +
        'estAll'
      'Left join ('
      #9'Select TestNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      
        #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' ) ShoeTestMonth on ShoeTestMo' +
        'nth.TestNo=ShoetestAll.TestNo'
      'Left join ('
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'2'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.complete, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39' '
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=Shoe' +
        'testAll.TestNo'
      'Left join ('
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'3'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.ShipDate, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39'  and shoetest.Complete is not null'
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=' +
        'ShoetestAll.TestNo'
      'left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo'
      'Left join YPZL on YPZL.YPDH=ShoeTest.YPDH'
      
        'left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=Shoete' +
        'stAll.TestNo'
      'where 1=1 '
      'order by ShoetestAll.TestNo')
    UpdateObject = UPDet2
    Left = 496
    Top = 192
    object Query2YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query2GSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object Query2Quantity: TFloatField
      FieldName = 'Quantity'
    end
    object Query2LastRem: TFloatField
      FieldName = 'LastRem'
    end
    object Query2RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query2XHQty: TFloatField
      FieldName = 'XHQty'
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2JHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query2TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 496
    Top = 160
  end
end
