object CustomsShoes: TCustomsShoes
  Left = 347
  Top = 152
  Width = 1386
  Height = 498
  Caption = 'CustomsShoes'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 459
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1368
      Height = 88
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 8
        Top = 31
        Width = 50
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Year:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 137
        Top = 31
        Width = 50
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Month:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 256
        Top = 16
        Width = 57
        Height = 49
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object CBX1: TComboBox
        Left = 67
        Top = 28
        Width = 65
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 1
        Text = '2007'
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
      object CBX2: TComboBox
        Left = 192
        Top = 28
        Width = 49
        Height = 28
        CharCase = ecUpperCase
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 2
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
      object Button2: TButton
        Left = 312
        Top = 16
        Width = 73
        Height = 49
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object CheckBox1: TCheckBox
        Left = 400
        Top = 16
        Width = 241
        Height = 25
        Caption = 'LLNO date Between 1 year ago and now '
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object Panel4: TPanel
        Left = 648
        Top = 8
        Width = 169
        Height = 73
        Color = clLime
        TabOrder = 5
        object CheckBox2: TCheckBox
          Left = 24
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Base on BOM'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox2Click
        end
        object CheckBox3: TCheckBox
          Left = 24
          Top = 32
          Width = 121
          Height = 17
          Caption = 'Base on Warehouse'
          TabOrder = 1
          OnClick = CheckBox3Click
        end
      end
      object CheckBox4: TCheckBox
        Left = 400
        Top = 42
        Width = 241
        Height = 25
        Caption = 'Material filtering'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 89
      Width = 1368
      Height = 369
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1366
        Height = 367
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
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
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SR'
            Footer.FieldName = 'SR'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = #38542#27573'|Stage'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|MatNO'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = #21934#20301#29992#37327'|Usage'
            Width = 90
          end
          item
            DisplayFormat = '0.##'
            EditButtons = <>
            FieldName = 'tbqty'
            Footers = <>
            Title.Caption = #32317#20986#36008'|TB_Qty'
            Width = 62
          end
          item
            DisplayFormat = '0.##'
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #26376#20986#36008'|Month_Qty'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'qtyin'
            Footers = <>
            Title.Caption = #20489#24235'|WarehouseQty'
            Width = 128
          end
          item
            EditButtons = <>
            FieldName = 'TBCQTY'
            Footers = <>
            Title.Caption = #36890#22577#25033#38936#25976#37327'|Usage*TBQty|'#21407#22987'Orginal'
          end
          item
            EditButtons = <>
            FieldName = 'TBCQTY1'
            Footers = <>
            Title.Caption = #36890#22577#25033#38936#25976#37327'|Usage*TBQty|'#35336#31639#24460'round'
            Width = 99
          end
          item
            DisplayFormat = '0.#####'
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Title.Caption = #23526#38936#25976#37327'|LLNO Qty'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'TBOverQty'
            Footers = <>
            Title.Caption = #36890#22577#36229#38936'|TBOverQty'
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Title.Caption = #27171#21697#21934#34399'|SampleNO'
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'HGBH'
            Footers = <>
            Title.Caption = #28023#38364#20195#30908'Hai Quan|'#26368#26032'New'
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364#20195#30908'Hai Quan|'#20986#26448#26009#21934'LLNO'
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = #38936#26009#30906#35469#26085'|CFMDate'
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = #38936#26009#21407#22240#33521'|ReasonEng'
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            Title.Caption = #38936#26009#21407#22240#20013'|ReasonChinese'
            Width = 130
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devcode as SR,ypzl.kfjd as  KFJD,main.clbh as CLBH' +
        ','
      
        'usage.clsl as CLSL,main.qty as QTY,usage.clsl*main.qty as CQTY,r' +
        'ound(usage.clsl*main.qty,2) as CQTY1, QTY,usage.clsl*tbqty as TB' +
        'CQTY,round(usage.clsl*tbqty,2) as TBCQTY1,'
      
        'main.rkqty as RKQTY,main.rkqty-round(usage.clsl*main.qty,2) as O' +
        'verQty,rkqty-round(usage.clsl*tbqty,2) as TBOverQty,main.ypdh as' +
        ' YPDH,'
      
        'main.llno as LLNO ,hglb as HGLB,hgbh as HGBH ,cno as CNO,main.cf' +
        'mdate,main.ywsm,main.zwsm,tbqty,(qtyin-qtyout) as qtyin  from ('
      
        'select kcll.llno,kcll.clbh,kcll.rkqty,shoetestshipping.ypdh,shoe' +
        'testshipping.qty,hglb,hgbh,cno,kcll.CFMDate,kcll.ywsm,kcll.zwsm,' +
        'shoetest2.tbqty,shoein.qtyin,shoeout.qtyout  from'
      '('
      
        'select shoetest.testno,shoetest.ypdh,sum(shoetestshipping.qty) q' +
        'ty from shoetestshipping'
      'left join shoetest on shoetest.testno=shoetestshipping.testno'
      
        'where Year(shipdate_final)='#39'2018'#39' and month(shipdate_final)='#39'06'#39 +
        ' and shoetest.TestNo is not null'
      'group by shoetest.testno,shoetest.ypdh'
      ')shoetestshipping'
      
        'left join (select testno,sum(QTY) TBQty from shoetest2 group by ' +
        'testno)shoetest2 on shoetest2.testno=shoetestshipping.testno'
      
        'left join (select testno,isnull(sum(qty),0) qtyin  from shoetest' +
        'in group by testno)shoein on shoein.testno=shoetestshipping.test' +
        'no'
      
        'left join (select testno,isnull(sum(qty),0) qtyout  from shoetes' +
        'tout group by testno)shoeout on shoeout.testno=shoetestshipping.' +
        'testno'
      'left join ('
      
        'select KCLLS.cno,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,isnu' +
        'll(KCLLS.Qty,0) as RKQty,isnull(KCLLS.VNPrice_HG,0) as VNPrice'
      ' ,KCLLS.VNACC_HG as VNACC'
      
        ',isnull(KCLLS.HGLB,'#39'ZZZZ'#39')as HGLB,KCLLS.CostID,KCLLS.MEMO,KCLLS.' +
        'BLSB'
      
        ',CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,SCBLYY.ZWSM' +
        ',KCZLS.CWBH,CLHG.HGBH,CLHG.UnitC,CLHG.RateC,kcll.CFMDate'
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS'
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH'
      
        'left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>' +
        '=2017'
      'where'
      'Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between'
      '      '#39'2017/06/01'#39' and '#39'2018/06/30'#39' and'
      '       KCLL.YN='#39'5'#39
      '      and KCCK.GSBH='#39'CDC'#39
      ')kcll on kcll.scbh=shoetestshipping.ypdh'
      ')main '
      'left join ('
      
        'select kfxxzl.devcode,ypzl.kfjd,ypzls.ypdh,ypzls.clbh,sum(ypzls.' +
        'clsl) as clsl from ('
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,' +
        'ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzl' +
        's.Currency ,ypzls.Rate,clzl.CQDH'
      
        ',ypzls.Remark ,bwzl.ywsm+'#39'-'#39'+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl' +
        '.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.z' +
        'sjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc'
      'FROM ypzls ypzls'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh'
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh'
      'WHERE YPDH in ('
      'select shoetest.ypdh from shoetestshipping'
      'left join shoetest on shoetest.testno=shoetestshipping.testno'
      
        'where Year(shipdate_final)='#39'2018'#39' and month(shipdate_final)='#39'06'#39 +
        ')'
      'union all'
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+'#39'-Child'#39' as R' +
        'elation,clzhzl.CLDH1 as CLBH'
      ' ,ypzls.BWLB ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH'
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm AS ' +
        'CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc'
      'FROM ypzls ypzls'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE YPDH in ('
      'select shoetest.ypdh from shoetestshipping'
      'left join shoetest on shoetest.testno=shoetestshipping.testno'
      
        'where Year(shipdate_final)='#39'2018'#39' and month(shipdate_final)='#39'06'#39 +
        ') and CLZHZL.SYL>0'
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+'#39'1'#39' ' +
        'as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,c' +
        'lzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH'
      
        ',clzhzl2.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm A' +
        'S CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc'
      ' from ('
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+'#39'-Child'#39' as R' +
        'elation,clzhzl.CLDH1 as CLBH'
      ' ,ypzls.BWLB ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ',ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Cu' +
        'rrency ,ypzls.Rate,clzl.CQDH'
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm AS ' +
        'CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc'
      'FROM ypzls ypzls'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE YPDH in'
      '(select shoetest.ypdh from shoetestshipping'
      'left join shoetest on shoetest.testno=shoetestshipping.testno'
      
        'where Year(shipdate_final)='#39'2018'#39' and month(shipdate_final)='#39'06'#39 +
        ')'
      ' and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      ')  YPZLS'
      'left join ypzl on ypzls.ypdh=ypzl.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        '   where left(ypzls.clbh,3) not in('#39'A31'#39','#39'C03'#39','#39'E01'#39','#39'H10'#39','#39'H13'#39 +
        ','#39'H14'#39','#39'I01'#39','#39'J01'#39','#39'J03'#39','#39'J04'#39','#39'L09'#39','#39'N03'#39','#39'P06'#39','#39'P71'#39') and ypzl' +
        's.clbh<>'#39'V90A003598'#39' and left(ypzls.clbh,1)<>'#39'W'#39' and kfxxzl.DEVC' +
        'ODE is not null'
      'group by  kfxxzl.devcode,ypzl.kfjd,ypzls.ypdh,ypzls.clbh'
      ')usage on usage.ypdh=main.ypdh and usage.clbh=main.clbh'
      'left join ypzl on main.ypdh=ypzl.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao')
    Left = 169
    Top = 225
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1KFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1tbqty: TFloatField
      FieldName = 'tbqty'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1qtyin: TFloatField
      FieldName = 'qtyin'
    end
    object Query1TBCQTY: TFloatField
      FieldName = 'TBCQTY'
    end
    object Query1TBCQTY1: TFloatField
      FieldName = 'TBCQTY1'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
    end
    object Query1TBOverQty: TFloatField
      FieldName = 'TBOverQty'
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query1HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 169
    Top = 185
  end
end
