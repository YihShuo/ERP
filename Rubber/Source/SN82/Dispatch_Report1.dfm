object Dispatch_Report: TDispatch_Report
  Left = 427
  Top = 523
  Width = 1305
  Height = 675
  Caption = 'Dispatch_Report'
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
    Width = 1289
    Height = 91
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 198
      Top = 12
      Width = 74
      Height = 19
      Caption = 'MOLD_NO:'
    end
    object Label10: TLabel
      Left = 604
      Top = 15
      Width = 8
      Height = 19
      Caption = '~'
    end
    object Label11: TLabel
      Left = 12
      Top = 11
      Width = 66
      Height = 19
      Caption = 'RDW_NO:'
    end
    object Label1: TLabel
      Left = 12
      Top = 44
      Width = 67
      Height = 19
      Caption = 'Color_NO:'
    end
    object Label2: TLabel
      Left = 238
      Top = 45
      Width = 31
      Height = 19
      Caption = 'SIZE:'
    end
    object Button4: TButton
      Left = 745
      Top = 4
      Width = 80
      Height = 37
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button4Click
    end
    object Edit6: TEdit
      Left = 275
      Top = 8
      Width = 125
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button5: TButton
      Left = 745
      Top = 49
      Width = 80
      Height = 38
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button5Click
    end
    object DTP5: TDateTimePicker
      Left = 498
      Top = 8
      Width = 105
      Height = 27
      Date = 44944.374869895830000000
      Format = 'yyyy/MM/dd'
      Time = 44944.374869895830000000
      TabOrder = 3
    end
    object DTP6: TDateTimePicker
      Left = 616
      Top = 7
      Width = 105
      Height = 27
      Date = 44944.374869895830000000
      Format = 'yyyy/MM/dd'
      Time = 44944.374869895830000000
      TabOrder = 4
    end
    object Edit7: TEdit
      Left = 79
      Top = 8
      Width = 111
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 408
      Top = 14
      Width = 81
      Height = 17
      Caption = 'DWDate'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 79
      Top = 41
      Width = 111
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 275
      Top = 41
      Width = 125
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 91
    Width = 1289
    Height = 545
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'RDWNO'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DWDATE'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Unit_Type_Code'
        Footers = <>
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'Shift'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Bottom_Part_Code'
        Footers = <>
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = 'DefectCode'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'Model_Name'
        Footers = <>
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'MOLD_NO'
        Footers = <>
        Width = 184
      end
      item
        EditButtons = <>
        FieldName = 'MCS_CODE'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'Miltiple_MCS'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Component_Color_Code'
        Footers = <>
        Width = 162
      end
      item
        EditButtons = <>
        FieldName = 'Number_of_Pairs'
        Footers = <>
        Width = 134
      end>
  end
  object DataSource1: TDataSource
    DataSet = RDispatch
    Left = 376
    Top = 232
  end
  object RDispatch: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      'select RD.*'
      'from '
      
        '(select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDisp' +
        'atch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispa' +
        'tch.RDWNO'
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then '#39'301'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS  '
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs'
      ''
      'from RDispatch where D301>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      ''
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D301,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D301>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO'
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then '#39'302'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D302>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      ''
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D302,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D302>0'
      'group by RDispatch.DWDATE'
      ''
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then '#39'303'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D303>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO'
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D303,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D303>0'
      'group by RDispatch.DWDATE '
      'UNION ALL '
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then '#39'304'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D304>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D304,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D304>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then '#39'305'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D305>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO'
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D305,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D305>0'
      'group by RDispatch.DWDATE '
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then '#39'306'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D306>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D306,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D306>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then '#39'307'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D307>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO'
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D307,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D307>0'
      'group by RDispatch.DWDATE '
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then '#39'308'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D308>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO'
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D308,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D308>0'
      'group by RDispatch.DWDATE '
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then '#39'309'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D309>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D309,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D309>0'
      'group by RDispatch.DWDATE '
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then '#39'310'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D310>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D310,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D310>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then '#39'311'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D311>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D311,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D311>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then '#39'312'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D312>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D312,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D312>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then '#39'313'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D313>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO '
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D313,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D313>0'
      'group by RDispatch.DWDATE'
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then '#39'314'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D314>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO'
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D314,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D314>0'
      'group by RDispatch.DWDATE '
      'UNION ALL'
      
        'select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispa' +
        'tch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispat' +
        'ch.RDWNO '
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then '#39'362'#39' end as' +
        ' DefectCode'
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then RDispatch.Mo' +
        'del_Name end as Model_Name '
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then RDispatch.MO' +
        'LD_NO end as MOLD_NO '
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then RDispatch.MC' +
        'S_CODE end as MCS_CODE,RDispatch.Miltiple_MCS '
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then RDispatch.Co' +
        'mponent_Color_Code end as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then RDispatch.Pa' +
        'geNO end as Number_of_Pairs '
      'from RDispatch where D362>0'
      
        'group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDis' +
        'patch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Col' +
        'or_Code'
      ',RDispatch.Miltiple_MCS,RDispatch.RDWNO'
      'UNION ALL'
      
        'select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bott' +
        'om_Part_Code,'#39'ZZZ'#39' as RDWNO'
      ','#39'Total'#39' as DefectCode'
      ','#39'ZZZ'#39' as  Model_Name '
      ','#39'ZZZ'#39' as MOLD_NO '
      ',0 as MCS_CODE,'#39'ZZZ'#39' as Miltiple_MCS  '
      ',0 as Component_Color_Code '
      
        ',case when max (isnull (RDispatch.D362,'#39#39'))<>0 then sum (RDispat' +
        'ch.Total) end as Number_of_Pairs'
      'from RDispatch where D362>0'
      'group by RDispatch.DWDATE ) RD '
      'left join RDispatch  on RD.RDWNO=RDispatch.RDWNO'
      ''
      'where 1=1'
      '--and RD.MOLD_NO='#39#39
      '--and RD.RDWNO='#39#39
      '--and RDispatch.Color_NO='#39'Black 2 162050C'#39
      '--and RDispatch.SIZE')
    Left = 336
    Top = 232
    object RDispatchDWDATE: TDateTimeField
      FieldName = 'DWDATE'
    end
    object RDispatchUnit_Type_Code: TIntegerField
      FieldName = 'Unit_Type_Code'
    end
    object RDispatchShift: TIntegerField
      FieldName = 'Shift'
    end
    object RDispatchBottom_Part_Code: TIntegerField
      FieldName = 'Bottom_Part_Code'
    end
    object RDispatchRDWNO: TStringField
      FieldName = 'RDWNO'
      FixedChar = True
      Size = 12
    end
    object RDispatchDefectCode: TStringField
      FieldName = 'DefectCode'
      FixedChar = True
      Size = 5
    end
    object RDispatchModel_Name: TStringField
      FieldName = 'Model_Name'
      FixedChar = True
      Size = 100
    end
    object RDispatchMOLD_NO: TStringField
      FieldName = 'MOLD_NO'
      FixedChar = True
      Size = 30
    end
    object RDispatchMCS_CODE: TIntegerField
      FieldName = 'MCS_CODE'
    end
    object RDispatchMiltiple_MCS: TStringField
      FieldName = 'Miltiple_MCS'
      FixedChar = True
      Size = 10
    end
    object RDispatchComponent_Color_Code: TIntegerField
      FieldName = 'Component_Color_Code'
    end
    object RDispatchNumber_of_Pairs: TIntegerField
      FieldName = 'Number_of_Pairs'
    end
  end
end
