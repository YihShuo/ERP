object CutProcessRpt: TCutProcessRpt
  Left = 320
  Top = 149
  Width = 1265
  Height = 781
  Caption = 'CutProcessRpt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
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
  TextHeight = 20
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1249
    Height = 742
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Tracking List'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1241
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 188
          Top = 11
          Width = 17
          Height = 16
          Caption = 'To'
        end
        object Label4: TLabel
          Left = 361
          Top = 50
          Width = 42
          Height = 16
          Caption = 'OrdNO'
        end
        object Label5: TLabel
          Left = 10
          Top = 50
          Width = 45
          Height = 16
          Caption = 'Factory'
        end
        object Label8: TLabel
          Left = 20
          Top = 37
          Width = 26
          Height = 13
          Caption = #26847#21029
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 152
          Top = 37
          Width = 52
          Height = 13
          Caption = #37096#38272#21517#31281
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 146
          Top = 50
          Width = 63
          Height = 16
          Caption = 'DepName'
        end
        object Label3: TLabel
          Left = 551
          Top = 50
          Width = 34
          Height = 16
          Caption = 'ywsm'
        end
        object Label1: TLabel
          Left = 555
          Top = 38
          Width = 26
          Height = 13
          Caption = #21152#24037
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 356
          Top = 37
          Width = 52
          Height = 13
          Caption = #35330#21934#32232#34399
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object DTP1: TDateTimePicker
          Left = 85
          Top = 8
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 0
        end
        object Button1: TButton
          Left = 722
          Top = 34
          Width = 81
          Height = 33
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button1Click
        end
        object ZLBHEdit: TEdit
          Left = 412
          Top = 40
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object DTP2: TDateTimePicker
          Left = 214
          Top = 7
          Width = 97
          Height = 24
          Date = 39983.610104166670000000
          Format = 'yyyy/MM/dd'
          Time = 39983.610104166670000000
          TabOrder = 1
        end
        object Button2: TButton
          Left = 802
          Top = 34
          Width = 81
          Height = 33
          Caption = 'Excel'
          TabOrder = 4
          OnClick = Button2Click
        end
        object XuongCB1: TComboBox
          Left = 59
          Top = 40
          Width = 75
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 17
          ParentFont = False
          TabOrder = 5
          OnChange = XuongCB1Change
        end
        object DepNMEdit1: TComboBox
          Left = 212
          Top = 40
          Width = 129
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 17
          ParentFont = False
          TabOrder = 6
        end
        object PlanDateCK: TCheckBox
          Left = 2
          Top = 11
          Width = 81
          Height = 17
          Caption = 'PlanDate:'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object GCCheckBox: TCheckBox
          Left = 328
          Top = 11
          Width = 129
          Height = 17
          Caption = 'Only Process GC'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object ywsmEdit: TEdit
          Left = 588
          Top = 40
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 9
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 73
        Width = 1241
        Height = 638
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 1
        OnChange = PageControl2Change
        object TabSheet2: TTabSheet
          Caption = 'Parts'
          ImageIndex = 1
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 0
            Width = 1241
            Height = 365
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
            ImeName = 'Chinese (Traditional) - New Phonetic'
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh1CellClick
            OnDrawColumnCell = DBGridEh1DrawColumnCell
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'List'
          object Splitter1: TSplitter
            Left = 0
            Top = 354
            Width = 1233
            Height = 3
            Cursor = crVSplit
            Align = alBottom
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 0
            Width = 1233
            Height = 354
            Align = alClient
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
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ImeName = 'Chinese (Traditional) - New Phonetic'
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh2CellClick
            OnDrawColumnCell = DBGridEh2DrawColumnCell
            OnGetCellParams = DBGridEh2GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ZLBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #35330#21934#32232#34399'|ZLBH'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'XieXing'
                Footers = <>
                Title.Caption = #38795#22411'|XieXing'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'SheHao'
                Footers = <>
                Title.Caption = #33394#34399'|SheHao'
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Footers = <>
                Title.Caption = #38795#21517'|XieMing'
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'SKU#|ARTICLE'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'GCBWBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #21152#24037#32232#34399'|GCBWBH'
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'ywsm'
                Footers = <>
                ReadOnly = True
                Title.Caption = #21152#24037#33521#25991'|ywsm'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'zwsm'
                Footers = <>
                ReadOnly = True
                Title.Caption = #21152#24037#20013#25991'|zwsm'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                ReadOnly = True
                Title.Caption = #38617#25976'|Pairs'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'DQty'
                Footers = <>
                Title.Caption = #25976#37327'|DQty'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'DepName'
                Footers = <>
                Title.Caption = #32218#21029'|DepName'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'SPlanDate'
                Footers = <>
                Title.Caption = #25490#31243#26085'|SPlanDate'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #35336#30059#26085'|PlanDate'
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'RPlanDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #27966#24037#26085'|RDate'
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'ADate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #30332#26009#26085'|ADate'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = #26448#26009#32232#34399'|CLBH'
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'BWBH'
                Footers = <>
                Title.Caption = #37096#20301#20195#34399'|BWBH'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'BYWSM'
                Footers = <>
                Title.Caption = #37096#20301#33521#25991'|BYWSM'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'BZWSM'
                Footers = <>
                Title.Caption = #37096#20301#20013#25991'|BZWSM'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'PairPieces'
                Footers = <>
                Title.Caption = #37096#20301#32317#29255#25976'|PairPieces'
                Width = 70
              end>
          end
          object Panel2: TPanel
            Left = 0
            Top = 357
            Width = 1233
            Height = 250
            Align = alBottom
            Caption = 'Panel2'
            TabOrder = 1
            object Splitter2: TSplitter
              Left = 581
              Top = 1
              Height = 248
              Align = alRight
            end
            object AlertDBGridEh: TDBGridEh
              Left = 584
              Top = 1
              Width = 648
              Height = 248
              Align = alRight
              DataSource = DS3
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
              ImeName = 'Chinese (Traditional) - New Phonetic'
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
                  FieldName = 'ZLBH'
                  Footers = <>
                  Title.Caption = #35330#21934#32232#34399'|ZLBH'
                  Width = 79
                end
                item
                  EditButtons = <>
                  FieldName = 'GCBWBH'
                  Footers = <>
                  Title.Caption = #21152#24037#32232#34399'|GCBWBH'
                  Width = 59
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = #21152#24037#33521#25991'|ywsm'
                  Width = 122
                end
                item
                  EditButtons = <>
                  FieldName = 'ZWSM'
                  Footers = <>
                  Title.Caption = #21152#24037#20013#25991'|ZWSM'
                  Width = 159
                end
                item
                  EditButtons = <>
                  FieldName = 'SPlanDate'
                  Footers = <>
                  Title.Caption = #38283#22987#26085'|SPlanDate'
                  Width = 68
                end
                item
                  EditButtons = <>
                  FieldName = 'EPlanDate'
                  Footers = <>
                  Title.Caption = #32080#26463#26085'|EPlanDate'
                  Width = 69
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footer.FieldName = 'Qty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = #21152#24037#25976#37327'|Qty'
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty1Day'
                  Footers = <>
                  Title.Caption = #24288#21830#26085#29986#33021'|SupQty1Day'
                  Width = 71
                end>
            end
            object DBGrid2: TDBGridEh
              Left = 1
              Top = 1
              Width = 580
              Height = 248
              Align = alClient
              DataSource = DS6
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -12
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              ParentFont = False
              PopupMenu = PopupMenu2
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ListNo'
                  Footers = <>
                  Width = 90
                end
                item
                  EditButtons = <>
                  FieldName = 'DemandDate'
                  Footers = <>
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'DemandTime'
                  Footers = <>
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'MaterialID'
                  Footers = <>
                  ReadOnly = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 90
                end
                item
                  EditButtons = <>
                  FieldName = 'YWPM'
                  Footers = <>
                  ReadOnly = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 250
                end
                item
                  EditButtons = <>
                  FieldName = 'ZWPM'
                  Footers = <>
                  ReadOnly = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 250
                end
                item
                  EditButtons = <>
                  FieldName = 'DWBH'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Unit'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 50
                end
                item
                  EditButtons = <>
                  FieldName = 'RY_Begin'
                  Footers = <>
                  Title.Caption = 'RY'
                  Width = 90
                end
                item
                  EditButtons = <>
                  FieldName = 'LotNO'
                  Footers = <>
                  Width = 110
                end
                item
                  EditButtons = <>
                  FieldName = 'Usage'
                  Footers = <>
                  ReadOnly = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'Remark'
                  Footers = <>
                  Width = 200
                end
                item
                  EditButtons = <>
                  FieldName = 'IssuanceUsage'
                  Footers = <>
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'RemarkS'
                  Footers = <>
                  Width = 200
                end
                item
                  EditButtons = <>
                  FieldName = 'UserID'
                  Footers = <>
                  Width = 70
                end
                item
                  EditButtons = <>
                  FieldName = 'UserDate'
                  Footers = <>
                  Width = 100
                end>
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Tua#'
          ImageIndex = 2
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 0
            Width = 1233
            Height = 357
            Align = alClient
            DataSource = DS5
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
            ImeName = 'Chinese (Traditional) - New Phonetic'
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
          end
        end
      end
    end
  end
  object CutProcessDetQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select   CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.zws' +
        'm,CutDispatchZL.Qty,'
      
        '         DATEADD (day,-1*(IsNull(IsNull(IsNull(IsNull(GC00.PDays' +
        ',GC01.PDays),GC02.PDays),GC03.PDays),GC04.PDays)+CutDispatchZL.P' +
        'Days),convert(smalldatetime,SMDD.PlanDate)) as PlanDateCut,'
      
        '         Convert(smalldatetime,CutDispatchZL.RPlanDate) as RDate' +
        'Cut,'
      
        '         GC00.zwsm+'#39'-'#39'+GC00.GCBWBH as GC00BWBH,GC00.Qty as CG00Q' +
        'ty,DATEADD (day,-1*GC00.PDays,convert(smalldatetime,SMDD.PlanDat' +
        'e)) as PlanDateCG00,Convert(smalldatetime,GC00.RPlanDate) as RDa' +
        'teCG00,'
      
        '         GC01.zwsm+'#39'-'#39'+GC01.GCBWBH as GC01BWBH,GC01.Qty as CG01Q' +
        'ty,DATEADD (day,-1*GC01.PDays,convert(smalldatetime,SMDD.PlanDat' +
        'e)) as PlanDateCG01,Convert(smalldatetime,GC01.RPlanDate) as RDa' +
        'teCG01,'
      
        '         GC02.zwsm+'#39'-'#39'+GC02.GCBWBH as GC02BWBH,GC02.Qty as CG02Q' +
        'ty,DATEADD (day,-1*GC02.PDays,convert(smalldatetime,SMDD.PlanDat' +
        'e)) as PlanDateCG02,Convert(smalldatetime,GC02.RPlanDate) as RDa' +
        'teCG02,'
      
        '         GC03.zwsm+'#39'-'#39'+GC03.GCBWBH as GC03BWBH,GC03.Qty as CG03Q' +
        'ty,DATEADD (day,-1*GC03.PDays,convert(smalldatetime,SMDD.PlanDat' +
        'e)) as PlanDateCG03,Convert(smalldatetime,GC03.RPlanDate) as RDa' +
        'teCG03,'
      
        '         GC04.zwsm+'#39'-'#39'+GC04.GCBWBH as GC04BWBH,GC04.Qty as CG04Q' +
        'ty,DATEADD (day,-1*GC04.PDays,convert(smalldatetime,SMDD.PlanDat' +
        'e)) as PlanDateCG04,Convert(smalldatetime,GC04.RPlanDate) as RDa' +
        'teCG04,'
      '         SMDD.PlanDate'
      'from ('
      '    select ZLBH as DDBH,ADate as PlanDate from SCZLDate'
      '    where  SCZLDate.GSBH='#39'VA12'#39'  and SCZLDate.ZLBH like '#39'%'#39' '
      
        '         and  convert(smalldatetime,convert(varchar,SCZLDate.ADa' +
        'te,111)) between '#39'2019/06/26'#39' and '#39'2019/07/10'#39' '
      '     ) SMDD'
      'Left join ( '
      
        #9'select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,bwzl.zwsm,convert(' +
        'varchar,CutDispatch.DQty)+'#39'/'#39'+convert(varchar,SUM(CutDispatchZL.' +
        'Qty)) as Qty,convert(varchar,CutDispatch.RPlanDate,111) as  RPla' +
        'nDate,CutDispatchZL_All.PDays'
      #9'from CutDispatchZL'
      
        #9'left join (Select ZLBH,BWBH,Round(SUM(CutDispatchZL.CutNum)/(25' +
        '00.0)+0.49,0) as PDays from CutDispatchZL  where CutDispatchZL.Z' +
        'LBH in (Select ZLBH from SCZLDate where SCZLDate.GSBH='#39'VA12'#39' and' +
        ' SCZLDate.ZLBH like '#39'%'#39'  and  convert(smalldatetime,convert(varc' +
        'har,SCZLDate.ADate,111)) between '#39'2019/06/26'#39' and '#39'2019/07/10'#39' )' +
        ' Group by ZLBH,BWBH) CutDispatchZL_All on  CutDispatchZL_All.ZLB' +
        'H=CutDispatchZL.ZLBH  and CutDispatchZL_All.BWBH=CutDispatchZL.B' +
        'WBH'
      #9'left join bwzl on bwzl.bwdh=CutDispatchZL.BWBH'
      #9'left join ('
      
        #9'  Select CutDispatchS.ZLBH,CutDispatchS.BWBH,SUM(Qty) as DQty,M' +
        'IN(CutDispatch.PlanDate) as RPlanDate from CutDispatchS'
      #9'  Left join CutDispatch on CutDispatchS.DLNO=CutDispatch.DLNO'
      
        #9'  where CutDispatchS.ZLBH in ((Select ZLBH from SCZLDate where ' +
        'SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(sm' +
        'alldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019/0' +
        '6/26'#39' and '#39'2019/07/10'#39' ) ) and CutDispatchS.okCutNum>0'
      #9'       group  by CutDispatchS.ZLBH,CutDispatchS.BWBH'
      
        #9') CutDispatch on CutDispatchZL.ZLBH=CutDispatch.ZLBH and CutDis' +
        'patchZL.BWBH=CutDispatch.BWBH'
      
        #9'where CutDispatchZL.ZLBH in (Select ZLBH from SCZLDate where SC' +
        'ZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(smal' +
        'ldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019/06/' +
        '26'#39' and '#39'2019/07/10'#39' )'
      
        #9'Group by CutDispatchZL.ZLBH,CutDispatchZL.BWBH,bwzl.zwsm,CutDis' +
        'patch.DQty,CutDispatch.RPlanDate,CutDispatchZL_All.PDays  ) CutD' +
        'ispatchZL on SMDD.DDBH=CutDispatchZL.ZLBH'
      'Left join ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,KT_SOPCutS_GCBW.zwsm,' +
        'convert(varchar,IsNull(GC.DQty,0))+'#39'/'#39'+convert(varchar,SUM(Qty))' +
        ' as Qty,KT_SOPCutS_GCBW.Qty1Day,convert(varchar,GC.RPlanDate,111' +
        ') as  RPlanDate,ZL_GC.PDays  '
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH,SUM(case whe' +
        'n CutDispatch_GC.CFMID<>'#39'NO'#39' then Qty else 0 end) as DQty,MIN(Cu' +
        'tDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate wher' +
        'e SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(' +
        'smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019' +
        '/06/26'#39' and '#39'2019/07/10'#39' )'
      #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH'#9
      #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.BWBH=GC.BWBH'
      #9'where len(ZL_GC.levels)=5'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays ,ZL_GC.BWBH,KT_SOP' +
        'CutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.DQty,GC.RPlanDate ) GC' +
        '00 on GC00.ZLBH=CutDispatchZL.ZLBH and ( GC00.BWBH=CutDispatchZL' +
        '.BWBH)'
      'Left join ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,KT_SOPCutS_GCBW.zwsm,' +
        'convert(varchar,IsNull(GC.DQty,0))+'#39'/'#39'+convert(varchar,SUM(Qty))' +
        ' as Qty,KT_SOPCutS_GCBW.Qty1Day,convert(varchar,GC.RPlanDate,111' +
        ') as  RPlanDate,ZL_GC.PDays  '
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH,SUM(case whe' +
        'n CutDispatch_GC.CFMID<>'#39'NO'#39' then Qty else 0 end) as DQty,MIN(Cu' +
        'tDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate wher' +
        'e SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(' +
        'smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019' +
        '/06/26'#39' and '#39'2019/07/10'#39' )'
      #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH'#9
      #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.BWBH=GC.BWBH'
      #9'where len(ZL_GC.levels)=4'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays ,ZL_GC.BWBH,KT_SOP' +
        'CutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.DQty,GC.RPlanDate ) GC' +
        '01 on GC01.ZLBH=CutDispatchZL.ZLBH and (GC01.bwbh=GC00.gcbwbh or' +
        '  GC01.BWBH=CutDispatchZL.BWBH)'
      'Left join ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,KT_SOPCutS_GCBW.zwsm,' +
        'convert(varchar,IsNull(GC.DQty,0))+'#39'/'#39'+convert(varchar,SUM(Qty))' +
        ' as Qty,KT_SOPCutS_GCBW.Qty1Day,convert(varchar,GC.RPlanDate,111' +
        ') as  RPlanDate,ZL_GC.PDays  '
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH,SUM(case whe' +
        'n CutDispatch_GC.CFMID<>'#39'NO'#39' then Qty else 0 end) as DQty,MIN(Cu' +
        'tDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate wher' +
        'e SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(' +
        'smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019' +
        '/06/26'#39' and '#39'2019/07/10'#39' )'
      #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH'#9
      #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.BWBH=GC.BWBH'
      #9'where len(ZL_GC.levels)=3'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays ,ZL_GC.BWBH,KT_SOP' +
        'CutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.DQty,GC.RPlanDate ) GC' +
        '02 on GC02.ZLBH=CutDispatchZL.ZLBH and (GC02.bwbh=GC00.gcbwbh or' +
        ' GC02.bwbh=GC01.gcbwbh or  GC02.BWBH=CutDispatchZL.BWBH)'
      'Left join ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,KT_SOPCutS_GCBW.zwsm,' +
        'convert(varchar,IsNull(GC.DQty,0))+'#39'/'#39'+convert(varchar,SUM(Qty))' +
        ' as Qty,KT_SOPCutS_GCBW.Qty1Day,convert(varchar,GC.RPlanDate,111' +
        ') as  RPlanDate,ZL_GC.PDays  '
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH,SUM(case whe' +
        'n CutDispatch_GC.CFMID<>'#39'NO'#39' then Qty else 0 end) as DQty,MIN(Cu' +
        'tDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate wher' +
        'e SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(' +
        'smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019' +
        '/06/26'#39' and '#39'2019/07/10'#39' )'
      #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH'#9
      #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.BWBH=GC.BWBH'
      #9'where len(ZL_GC.levels)=2'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays ,ZL_GC.BWBH,KT_SOP' +
        'CutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.DQty,GC.RPlanDate ) GC' +
        '03 on GC03.ZLBH=CutDispatchZL.ZLBH and (GC03.bwbh=GC00.gcbwbh or' +
        ' GC03.bwbh=GC01.gcbwbh or GC03.bwbh=GC02.gcbwbh or  GC03.BWBH=Cu' +
        'tDispatchZL.BWBH)'
      'Left join ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.BWBH,KT_SOPCutS_GCBW.zwsm,' +
        'convert(varchar,IsNull(GC.DQty,0))+'#39'/'#39'+convert(varchar,SUM(Qty))' +
        ' as Qty,KT_SOPCutS_GCBW.Qty1Day,convert(varchar,GC.RPlanDate,111' +
        ') as  RPlanDate,ZL_GC.PDays  '
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH,SUM(case whe' +
        'n CutDispatch_GC.CFMID<>'#39'NO'#39' then Qty else 0 end) as DQty,MIN(Cu' +
        'tDispatch_GC.PlanDate) as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate wher' +
        'e SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(' +
        'smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019' +
        '/06/26'#39' and '#39'2019/07/10'#39' )'
      #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.BWBH'#9
      #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.BWBH=GC.BWBH'
      #9'where len(ZL_GC.levels)=1'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays ,ZL_GC.BWBH,KT_SOP' +
        'CutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.DQty,GC.RPlanDate ) GC' +
        '04 on GC04.ZLBH=CutDispatchZL.ZLBH and (GC04.bwbh=GC00.gcbwbh or' +
        ' GC04.bwbh=GC01.gcbwbh or GC04.bwbh=GC02.gcbwbh or GC04.bwbh=GC0' +
        '3.gcbwbh or  GC04.BWBH=CutDispatchZL.BWBH)'
      'where 1=1  '
      
        ' and ( GC00.GCBWBH is not null or  GC01.GCBWBH is not null or  G' +
        'C02.GCBWBH is not null or  GC03.GCBWBH is not null or  GC04.GCBW' +
        'BH is not null )'
      ' order by CutDispatchZL.ZLBH desc '
      ' ,GC04.zwsm+'#39'-'#39'+GC04.GCBWBH desc '
      ' ,GC03.zwsm+'#39'-'#39'+GC03.GCBWBH desc '
      ' ,GC02.zwsm+'#39'-'#39'+GC02.GCBWBH desc '
      ' ,GC01.zwsm+'#39'-'#39'+GC01.GCBWBH desc '
      ' ,GC00.zwsm+'#39'-'#39'+GC00.GCBWBH desc'
      '')
    Left = 360
    Top = 168
  end
  object DS1: TDataSource
    DataSet = CutProcessDetQry
    Left = 360
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 320
    Top = 168
  end
  object CutProcListQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZL_GC.ZLBH,DDZL.ARTICLE,ZL_GC.GCBWBH,ZL_GC.ywsm,ZL_GC.zws' +
        'm,ZL_GC.Qty,ZL_GC.DQty,ZL_GC.PlanDate,ZL_GC.RPlanDate,ZL_GC.Leve' +
        'ls,ZL_GC.PDays,ZL_GC.Qty1Day,ZL_GC.ADate,ISNULL(ZL_GC.BWBHChild,' +
        'ZL_GC.BWBH) as BWBH,'
      
        '       KT_SOPCut.piece*ZL_GC.Qty as PairPieces,BWZL.zwsm as BZWS' +
        'M,BWZL.ywsm  as BYWSM,DDZL.ShipDate'
      'from ('
      
        'select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.ywsm,ZL_GC.zwsm,ZL_GC.Qty,Z' +
        'L_GC.DQty,DATEADD (day,-1*PDays,convert(smalldatetime,SCZLDate.A' +
        'Date)) as PlanDate,'
      
        '       Convert(smalldatetime,ZL_GC.RPlanDate) as RPlanDate,ZL_GC' +
        '.Levels,ZL_GC.PDays,ZL_GC.Qty1Day,SCZLDate.ADate,ZL_GC.BWBH,  '
      
        '       Case when left(ZL_GC.BWBH,2)='#39'0G'#39' then right((select Max(' +
        'CutDispatchZL_GC.Levels+BWBH) as BWBH from CutDispatchZL_GC wher' +
        'e CutDispatchZL_GC.ZLBH=ZL_GC.ZLBH and left(CutDispatchZL_GC.Lev' +
        'els,LEN(ZL_GC.Levels))=ZL_GC.Levels and CutDispatchZL_GC.CLBH<>'#39 +
        'ZZZZZZZZZZ'#39' and CutDispatchZL_GC.Levels>ZL_GC.Levels ),4) end as' +
        ' BWBHChild'
      'from ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS' +
        '_GCBWD.zwsm,DDZL.Pairs as Qty,IsNull(GC.DQty,0) as DQty,KT_SOPCu' +
        'tS_GCBWD.Qty1Day,convert(varchar,GC.RPlanDate,111) as  RPlanDate' +
        ',ZL_GC.PDays ,ZL_GC.levels,ZL_GC.BWBH '
      #9'from CutDispatchZL_GC ZL_GC'
      '    left join DDZL on DDZL.DDBH=ZL_GC.ZLBH '
      
        #9'left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.GCBWDH=ZL_GC.GCB' +
        'WBH '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatc' +
        'hS_GC.BWBH,SUM(case when CutDispatch_GC.CFMID<>'#39'NO'#39' then Qty els' +
        'e 0 end) as DQty,MIN(CutDispatch_GC.PlanDate) as RPlanDate from ' +
        'CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate,BDep' +
        'artment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH' +
        '='#39'TBA'#39' and SCZLDate.ZLBH like '#39'%'#39' )'
      
        #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,Cu' +
        'tDispatchS_GC.BWBH'#9
      
        #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC' +
        '.BWBH=GC.BWBH'
      
        #9'where len(ZL_GC.levels)>0  and ZL_GC.ZLBH in (select YSBH from ' +
        'YWDD group by YSBH) '
      #9'      --and ZL_GC.ZLBH like '#39'DV1912-0699%'#39
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays,KT_SOPCutS_GCBWD.y' +
        'wsm ,KT_SOPCutS_GCBWD.zwsm,DDZL.Pairs,KT_SOPCutS_GCBWD.Qty1Day,G' +
        'C.DQty,GC.RPlanDate,ZL_GC.levels,ZL_GC.BWBH ) ZL_GC'#9
      #9'left join SCZLDate on SCZLDate.ZLBH=ZL_GC.ZLBH'
      ')'#9'ZL_GC'
      'left join DDZL on DDZL.DDBH=ZL_GC.ZLBH '
      
        'Left join (Select BWDH,ZWSM,YWSM from bwzl union all select gcbw' +
        'dh,zwsm,YWSM from KT_SOPCutS_GCBWD ) BWZL on BWZL.BWDH=ISNULL(ZL' +
        '_GC.BWBHChild,ZL_GC.BWBH) '
      
        'left join KT_SOPCut on KT_SOPCut.XieXing=DDZL.XieXing and KT_SOP' +
        'Cut.SheHao=DDZL.SheHao and KT_SOPCut.BWBH=ISNULL(ZL_GC.BWBHChild' +
        ',ZL_GC.BWBH) ')
    Left = 400
    Top = 168
    object CutProcListQryZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutProcListQryXieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object CutProcListQrySheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object CutProcListQryXieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
    object CutProcListQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object CutProcListQryGCBWBH: TStringField
      DisplayWidth = 5
      FieldName = 'GCBWBH'
      FixedChar = True
      Size = 6
    end
    object CutProcListQryzwsm: TStringField
      DisplayWidth = 17
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object CutProcListQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object CutProcListQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object CutProcListQryDQty: TIntegerField
      FieldName = 'DQty'
    end
    object CutProcListQryDepName: TStringField
      FieldName = 'DepName'
      Size = 15
    end
    object CutProcListQrySPlanDate: TDateTimeField
      FieldName = 'SPlanDate'
      DisplayFormat = 'MM/dd'
    end
    object CutProcListQryPlanDate: TDateTimeField
      DisplayWidth = 11
      FieldName = 'PlanDate'
      DisplayFormat = 'MM/DD'
    end
    object CutProcListQryRPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
      DisplayFormat = 'MM/DD'
    end
    object CutProcListQryADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'MM/DD'
    end
    object CutProcListQryLevels: TStringField
      FieldName = 'Levels'
      FixedChar = True
      Size = 10
    end
    object CutProcListQryPDays: TIntegerField
      FieldName = 'PDays'
    end
    object CutProcListQryQty1Day: TFloatField
      FieldName = 'Qty1Day'
    end
    object CutProcListQryCLBH: TStringField
      FieldName = 'CLBH'
    end
    object CutProcListQryBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 8
    end
    object CutProcListQryBZWSM: TStringField
      FieldName = 'BZWSM'
      FixedChar = True
      Size = 40
    end
    object CutProcListQryBYWSM: TStringField
      FieldName = 'BYWSM'
      FixedChar = True
      Size = 40
    end
    object CutProcListQryPairPieces: TIntegerField
      FieldName = 'PairPieces'
    end
    object CutProcListQryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
  end
  object DS2: TDataSource
    DataSet = CutProcListQry
    Left = 400
    Top = 200
  end
  object AlertCutProQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('#9
      
        'select ZL_GC.*,KT_SOPCutS_GCBW.Qty1Day,KT_SOPCutS_GCBW.ywsm,KT_S' +
        'OPCutS_GCBW.ZWSM,'
      '    ('
      '    Select Min(ZLBH) as ZLBH from ('
      
        #9'select ZL_GC.ZLBH,ZL_GC.GCBWBH,DATEADD (day,-1*ZL_GC.PDays,conv' +
        'ert(smalldatetime,SMDD.PlanDate)) as SPlanDate,DATEADD (day,-1*(' +
        'ZL_GC.PDays-ZL_GC.PDay)-1,convert(smalldatetime,SMDD.PlanDate)) ' +
        'as EPlanDate,ZL_GC.Qty'
      #9'from (    '
      #9'  select ZLBH as DDBH,ADate as PlanDate from SCZLDate'
      
        #9'  where SCZLDate.ZLBH in ('#39'Y1902-0252'#39','#39'Y1902-0084'#39','#39'Y1902-0290' +
        #39')  '#9' '
      #9'  ) SMDD'
      #9'Left join ( '
      
        #9'select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays,SUM(ZL_GC' +
        '.Qty) as Qty'
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      
        #9'where ZL_GC.ZLBH in ('#39'Y1902-0252'#39','#39'Y1902-0084'#39','#39'Y1902-0290'#39')  a' +
        'nd KT_SOPCutS_GCBW.Qty1Day is not null'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays ) ZL_GC' +
        ' on ZL_GC.ZLBH=SMDD.DDBH ) A'
      
        '    where A.ZLBH<>ZL_GC.ZLBH and A.GCBWBH=ZL_GC.GCBWBH and (  (A' +
        '.SPlanDate<=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.EPlanDate) or' +
        ' (A.SPlanDate<=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.SPlanDate)' +
        ' or (A.SPlanDate>=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.EPlanDa' +
        'te)  or (A.SPlanDate>=ZL_GC.SPlanDate and A.EPlanDate>=ZL_GC.SPl' +
        'anDate) )'#9
      #9')  as overlapZLBH'
      'from ('
      
        #9'select ZL_GC.ZLBH,ZL_GC.GCBWBH,DATEADD (day,-1*ZL_GC.PDays,conv' +
        'ert(smalldatetime,SMDD.PlanDate)) as SPlanDate,DATEADD (day,-1*(' +
        'ZL_GC.PDays-ZL_GC.PDay)-1,convert(smalldatetime,SMDD.PlanDate)) ' +
        'as EPlanDate,ZL_GC.Qty'
      #9'from (    '
      #9'  select ZLBH as DDBH,ADate as PlanDate from SCZLDate'
      
        #9'  where SCZLDate.ZLBH in ('#39'Y1902-0252'#39','#39'Y1902-0084'#39','#39'Y1902-0290' +
        #39')  '#9'  '
      #9'  ) SMDD'
      #9'Left join ( '
      
        #9'select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays,SUM(ZL_GC' +
        '.Qty) as Qty'
      #9'from CutDispatchZL_GC ZL_GC'
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      
        #9'where ZL_GC.ZLBH in ('#39'Y1902-0252'#39','#39'Y1902-0084'#39','#39'Y1902-0290'#39')  a' +
        'nd KT_SOPCutS_GCBW.Qty1Day is not null'
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDay,ZL_GC.PDays ) ZL_GC' +
        ' on ZL_GC.ZLBH=SMDD.DDBH '
      ' ) ZL_GC'
      
        'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWBH' +
        '   ) ZL_GC'
      'where overlapZLBH is not null ')
    Left = 912
    Top = 480
    object AlertCutProQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object AlertCutProQryGCBWBH: TStringField
      FieldName = 'GCBWBH'
      FixedChar = True
      Size = 6
    end
    object AlertCutProQrySPlanDate: TDateTimeField
      FieldName = 'SPlanDate'
    end
    object AlertCutProQryEPlanDate: TDateTimeField
      FieldName = 'EPlanDate'
    end
    object AlertCutProQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object AlertCutProQryQty1Day: TFloatField
      FieldName = 'Qty1Day'
    end
    object AlertCutProQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object AlertCutProQryZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object AlertCutProQryoverlapZLBH: TStringField
      FieldName = 'overlapZLBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS3: TDataSource
    DataSet = AlertCutProQry
    Left = 912
    Top = 512
  end
  object AlertCutProSumQry: TQuery
    DatabaseName = 'DB'
    Left = 880
    Top = 480
  end
  object SMDDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM'
      
        '      ,Max(case when CutDis.SIZE='#39'06.0'#39' then CutOK end) as '#39'06.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'07.0'#39' then CutOK end) as '#39'07.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'08.0'#39' then CutOK end) as '#39'08.0' +
        #39
      
        '      ,Max(case when CutDis.SIZE='#39'09.0'#39' then CutOK end) as '#39'09.0' +
        #39
      '      ,Sum(Qty) as Pairs'
      
        'from (  select CutDispatchZL.ZLBH,CutDispatchZL.BWBH,BWZL.YWSM,B' +
        'WZL.ZWSM,CutDispatchZL.SIZE,CutDispatchZL.Qty,case when IsNull(C' +
        'utDispatchS.okCutNum,0)>=CutDispatchZL.CutNum  then '#39'OK'#39' else '#39#39 +
        ' end as CutOK  '
      'from CutDispatchZL'
      
        'left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCut' +
        'Num) as okCutNum from CutDispatchS where CutDispatchS.ZLBH = '#39'Y1' +
        '806-0827'#39'  Group by ZLBH,BWBH,SIZE) '
      
        '          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH a' +
        'nd CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=C' +
        'utDispatchS.SIZE'
      'left join CLZL on CLZL.cldh=CutDispatchZL.CLBH'
      'left join BWZL on BWZL.BWDH=CutDispatchZL.BWBH'
      'where CutDispatchZL.ZLBH = '#39'Y1806-0827'#39' ) CutDis'
      'Group by CutDis.ZLBH,CutDis.BWBH,CutDis.YWSM,CutDis.ZWSM')
    Left = 433
    Top = 168
  end
  object DS5: TDataSource
    DataSet = SMDDQry
    Left = 433
    Top = 200
  end
  object Track: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select MRCardS.ListNo, MRCard.DemandDate, MRCard.DemandTime, Mat' +
        'erialID, CLZL.YWPM, CLZL.ZWPM, CLZL.DWBH, '
      
        '       RY_Begin, LotNO, Usage, CAST(dbo.fSignsToNoSigns(MRCard.R' +
        'emark) AS VARCHAR(50)) Remark, IssuanceUsage, MRCardS.Remark Rem' +
        'arkS, MRCardS.UserID, MRCardS.UserDate'
      'from MRCardS'
      'left join MRCard on MRCard.ListNo=MRCardS.ListNo'
      'inner join CLZL on CLZL.CLDH=MRCardS.MaterialID'
      'where MRCardS.RY_Begin=:ZLBH and MRCardS.MaterialID=:CLBH')
    Left = 284
    Top = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object TrackListNo: TStringField
      FieldName = 'ListNo'
    end
    object TrackDemandDate: TDateTimeField
      FieldName = 'DemandDate'
    end
    object TrackDemandTime: TStringField
      FieldName = 'DemandTime'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'MaterialID'
    end
    object TrackYWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object TrackZWPM: TStringField
      FieldName = 'ZWPM'
      Size = 200
    end
    object TrackDWBH: TStringField
      FieldName = 'DWBH'
    end
    object StringField6: TStringField
      FieldName = 'RY_Begin'
    end
    object TrackLotNO: TStringField
      FieldName = 'LotNO'
      Size = 50
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object StringField9: TStringField
      FieldName = 'Remark'
      Size = 50
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'IssuanceUsage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object TrackRemarkS: TStringField
      FieldName = 'RemarkS'
      Size = 200
    end
    object TrackUserID: TStringField
      FieldName = 'UserID'
    end
    object TrackUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
  object DS6: TDataSource
    DataSet = Track
    Left = 308
    Top = 460
  end
  object PopupMenu2: TPopupMenu
    Left = 288
    Top = 496
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
end
