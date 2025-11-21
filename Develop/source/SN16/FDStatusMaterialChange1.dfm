object FDStatusMaterialChange: TFDStatusMaterialChange
  Left = 277
  Top = 170
  Width = 1023
  Height = 610
  Caption = 'FDStatusMaterialChange'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
    Width = 1007
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 156
      Top = 7
      Width = 14
      Height = 13
      Caption = 'FD'
    end
    object Label2: TLabel
      Left = 10
      Top = 7
      Width = 36
      Height = 13
      Caption = 'Season'
    end
    object Label3: TLabel
      Left = 268
      Top = 28
      Width = 31
      Height = 13
      Caption = 'Stage:'
    end
    object lbl1: TLabel
      Left = 147
      Top = 30
      Width = 23
      Height = 13
      Caption = 'ypdh'
    end
    object Label5: TLabel
      Left = 12
      Top = 25
      Width = 36
      Height = 13
      Caption = 'Dev Tp'
    end
    object Label7: TLabel
      Left = 256
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Subtype'
    end
    object lbl8: TLabel
      Left = 559
      Top = 9
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Edit1: TEdit
      Left = 171
      Top = 3
      Width = 54
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 50
      Top = 3
      Width = 94
      Height = 21
      TabOrder = 3
      OnChange = Edit2Change
      OnExit = Edit2Exit
    end
    object Button1: TButton
      Left = 462
      Top = 26
      Width = 57
      Height = 21
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object edt1: TEdit
      Left = 171
      Top = 27
      Width = 70
      Height = 21
      TabOrder = 5
    end
    object cbb2: TComboBox
      Left = 50
      Top = 22
      Width = 96
      Height = 21
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnChange = cbb2Change
      Items.Strings = (
        ''
        'Inline'
        'Great@Good'
        'QuickResponse'
        'Incubate'
        'SMU'
        'CTM')
    end
    object cbb1: TComboBox
      Left = 301
      Top = 5
      Width = 86
      Height = 21
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        ''
        'Inline'
        'QuickStrike'
        'Offline'
        'Smu'
        'Segment ')
    end
    object BBTT2: TBitBtn
      Left = 226
      Top = 3
      Width = 15
      Height = 21
      Caption = '...'
      TabOrder = 6
      OnClick = BBTT2Click
    end
    object edit5: TComboBox
      Left = 301
      Top = 26
      Width = 85
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
    end
    object Check_purdate: TCheckBox
      Left = 397
      Top = 7
      Width = 63
      Height = 17
      Caption = 'Pur.Date'
      TabOrder = 8
    end
    object DTP1: TDateTimePicker
      Left = 462
      Top = 4
      Width = 98
      Height = 20
      Date = 43070.431051550920000000
      Format = 'yyyy/MM/dd'
      Time = 43070.431051550920000000
      TabOrder = 9
    end
    object DTP2: TDateTimePicker
      Left = 569
      Top = 4
      Width = 97
      Height = 20
      Date = 43070.431356041660000000
      Format = 'yyyy/MM/dd'
      Time = 43070.431356041660000000
      TabOrder = 10
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 50
    Width = 1007
    Height = 521
    ActivePage = TS_ChangeList
    Align = alClient
    TabOrder = 1
    object TS_ChangeList: TTabSheet
      Caption = 'Material Change List'
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 0
        Top = 491
        Width = 999
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 999
        Height = 491
        Align = alClient
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 839
          Top = 1
          Width = 4
          Height = 489
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object dbgrdh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 838
          Height = 489
          Align = alClient
          DataSource = ds5
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 4
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          Columns = <
            item
              EditButtons = <>
              FieldName = 'fdteam'
              Footers = <>
              Title.Caption = 'Team'
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'stage'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'ypdh'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 329
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'PurQty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pur.  Qty'
              Title.TitleButton = True
              Width = 48
            end
            item
              DisplayFormat = '$0.######'
              EditButtons = <>
              FieldName = 'USD'
              Footers = <>
              Title.Caption = 'Price|USD'
            end
            item
              DisplayFormat = '0.#####d'
              EditButtons = <>
              FieldName = 'VND'
              Footers = <>
              Title.Caption = 'Price|VND'
            end
            item
              DisplayFormat = '$0.######'
              EditButtons = <>
              FieldName = 'TotalUSD'
              Footers = <>
              Title.Caption = 'Total|USD'
            end
            item
              DisplayFormat = '0.#####d'
              EditButtons = <>
              FieldName = 'TotalVND'
              Footers = <>
              Title.Caption = 'Total|VND'
            end
            item
              EditButtons = <>
              FieldName = 'dwbh'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 38
            end
            item
              Checkboxes = False
              Color = clYellow
              EditButtons = <>
              FieldName = 'Responsibility'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              PickList.Strings = (
                ''
                'Customer Request'
                'DEV Mistake'
                'BOM Mistake'
                'MTRL Info Update'
                'Trail Suggestion'
                'Processing Change'
                'Gender alignment'
                'Back Up Plan'
                'Substitute Material'
                'No cost impact')
              ReadOnly = True
              Title.Color = clYellow
              Title.TitleButton = True
              Width = 74
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ChargeQty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Charge Qty'
              Title.Color = clMoneyGreen
              Title.TitleButton = True
              Visible = False
              Width = 39
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'reason'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Memo'
              Title.Color = clMoneyGreen
              Title.TitleButton = True
              Visible = False
              Width = 169
            end
            item
              EditButtons = <>
              FieldName = 'cgdate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'rkdate'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'Manual'
              Footers = <>
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Title.TitleButton = True
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'Dropped'
              Footers = <>
              Title.TitleButton = True
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'transfer'
              Footers = <>
              Title.TitleButton = True
              Width = 57
            end>
        end
        object Panel8: TPanel
          Left = 843
          Top = 1
          Width = 155
          Height = 489
          Align = alRight
          TabOrder = 1
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 153
            Height = 19
            Align = alTop
            TabOrder = 0
            object Label8: TLabel
              Left = 4
              Top = 3
              Width = 149
              Height = 13
              Caption = 'Can be share other Article'
              Color = clBackground
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 20
            Width = 153
            Height = 468
            Align = alClient
            DataSource = ds_article
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'devcode'
                Footers = <>
                Title.Caption = 'SR'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'jijie'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'kfjd'
                Footers = <>
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'xieming'
                Footers = <>
                Width = 178
              end
              item
                EditButtons = <>
                FieldName = 'DevType'
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Category'
                Footers = <>
                Width = 52
              end>
          end
        end
      end
    end
  end
  object ds5: TDataSource
    DataSet = qry5
    Left = 412
    Top = 204
  end
  object qry5: TQuery
    OnCalcFields = qry5CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select FDEng.fdteam,kfxxzl.FD,kfxxzl.jijie,kfxxzl.devcode,kfxxz' +
        'l.XieMing,cgzlss.stage,cgzlss.zlbh as ypdh,cgzlss.clbh,clzl.ywpm' +
        ',zszl.zsywjc,'
      
        ' cgzl.cgdate,cgzlss.CFMdate as yqdate,cgzls.ETA as ETA,cgzls.cgn' +
        'o,KCRK.Userdate as rkdate,cgzlss.Qty as PurQty,dwbh,MaterialChan' +
        'geMEMO.reason,MaterialChangeMEMO.ChargeQty,MaterialChangeMEMO.Pr' +
        'ice,MaterialChangeMEMO.ChargeWay,MaterialChangeMEMO.Manual'
      
        ' ,MaterialChangeMEMO.Responsibility,xxzlkf.Dropped,xxzlkf.transf' +
        'er,MaterialChangeMEMO.clbh as mainclbh ,sampleprice as USD,cgzls' +
        's.Qty*sampleprice as TotalUSD,samplepriceVN as VND,cgzlss.Qty*sa' +
        'mplepriceVN as TotalVND'
      ' from cgzlss'
      
        ' left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss' +
        '.clbh'
      ' left join clzl on clzl.cldh=cgzlss.clbh'
      ' left join cgzl on cgzl.cgno=cgzlss.cgno'
      ' left join ypzl on ypzl.ypdh=cgzlss.zlbh'
      
        ' left join xxzlkf on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao' +
        '=xxzlkf.shehao'
      
        ' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheh' +
        'ao=ypzl.shehao'
      
        ' left join (select * from busers FDEng left join FDGroups  on FD' +
        'Eng.userid=FDGroups.FDID) FDEng on FDEng.engname=kfxxzl.FD'
      ' left join zszl on zszl.zsdh=cgzl.zsbh'
      
        ' left join (select * from materialmoq where season='#39'18U'#39')materia' +
        'lmoq on cgzlss.clbh=materialmoq.clbh'
      
        ' left join MaterialChangeMEMO on MaterialChangeMEMO.ypdh=cgzlss.' +
        'zlbh and MaterialChangeMEMO.CLBH=cgzlss.clbh and MaterialChangeM' +
        'EMO.Stage=cgzlss.stage  '
      
        ' left join (SELECT kcrks.clbh,kcrk.zsno,min(KCRK.Userdate) as Us' +
        'erdate FROM kcrk,KCRKS WHERE kcrk.GSBH='#39'cdc'#39' and kcrk.RKNO=KCRKS' +
        '.RKNO group by kcrk.zsno,KCRKS.CLBH) kcrk on kcrk.zsno=cgzlss.cg' +
        'no and kcrk.clbh=cgzlss.clbh '
      ' where  cgzlss.qty>0'
      ' and isnull(kfxxzl.DevType,'#39#39') like '#39'%Inline%'#39
      ' and kfxxzl.jijie= '#39'18U'#39
      ' and cgzlss.stage= '#39'CR2'#39
      ' and not exists ('
      'select ypzls.ypdh,ypzls.clbh from ('
      'SELECT ypzls.YPDH ,ypzls.CLBH'
      'FROM ypzls ypzls'
      'WHERE YPDH =cgzlss.zlbh'
      'union all'
      'SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH '
      'FROM ypzls ypzls'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'WHERE YPDH=cgzlss.zlbh   and CLZHZL.SYL>0'
      'union all '
      'Select clzhzl2.YPDH,clzhzl.CLDH1 as CLBH'
      '   from ( '
      'SELECT ypzls.YPDH ,clzhzl.CLDH1 as CLBH'
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      
        'WHERE YPDH= cgzlss.zlbh  and CLZHZL.SYL>'#39'0'#39'   and clzl.clzmlb='#39'Y' +
        #39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      ')  YPZLS '
      'where 1=2 and'
      'ypzl.ypdh=cgzlss.zlbh'
      'and ypzls.clbh=cgzlss.clbh)')
    UpdateObject = UpSql1
    Left = 412
    Top = 236
    object qry5fdteam: TStringField
      FieldName = 'fdteam'
      FixedChar = True
      Size = 10
    end
    object qry5jijie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'jijie'
      FixedChar = True
    end
    object qry5stage: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'stage'
      FixedChar = True
      Size = 15
    end
    object qry5devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qry5ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
    end
    object qry5XieMing: TStringField
      DisplayLabel = 'Shoe Name'
      FieldName = 'XieMing'
      Size = 40
    end
    object qry5ywpm: TStringField
      DisplayLabel = 'Material Name'
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object qry5FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry5clbh: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object qry5ChargeQty: TCurrencyField
      FieldName = 'ChargeQty'
      currency = False
    end
    object qry5dwbh: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object qry5zsywjc: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qry5reason: TStringField
      DisplayLabel = 'Change Reason'
      FieldName = 'reason'
      FixedChar = True
      Size = 100
    end
    object qry5cgdate: TDateTimeField
      DisplayLabel = 'Pur. Date'
      FieldName = 'cgdate'
    end
    object qry5yqdate: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object qry5ETA: TDateTimeField
      FieldName = 'ETA'
    end
    object qry5cgno: TStringField
      DisplayLabel = 'Pur. Order'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object qry5rkdate: TDateTimeField
      DisplayLabel = 'Received Date'
      FieldName = 'rkdate'
    end
    object qry5PurQty: TCurrencyField
      DisplayLabel = 'Pur. Qty'
      FieldName = 'PurQty'
      DisplayFormat = '#,0.##'
      currency = False
    end
    object qry5VND: TCurrencyField
      FieldName = 'VND'
    end
    object qry5USD: TCurrencyField
      FieldName = 'USD'
    end
    object qry5Manual: TStringField
      FieldName = 'Manual'
      Size = 10
    end
    object qry5Responsibility: TStringField
      FieldName = 'Responsibility'
      OnValidate = qry5ResponsibilityValidate
      FixedChar = True
      Size = 30
    end
    object qry5Dropped: TBooleanField
      FieldName = 'Dropped'
    end
    object qry5transfer: TBooleanField
      FieldName = 'transfer'
    end
    object qry5mainclbh: TStringField
      FieldName = 'mainclbh'
      FixedChar = True
      Size = 10
    end
    object qry5TotalUSD: TCurrencyField
      FieldName = 'TotalUSD'
    end
    object qry5TotalVND: TCurrencyField
      FieldName = 'TotalVND'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 412
    Top = 312
    object S1: TMenuItem
      Caption = 'Modify'
      OnClick = S1Click
    end
    object S2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = S2Click
    end
    object S3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = S3Click
    end
    object S4: TMenuItem
      Caption = 'Add Charge Material'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object UpSql1: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialChangeMEMO'
      'set'
      '   responsibility=:responsibility'
      ''
      '  where'
      '   ypdh= :OLD_ypdh and'
      '   clbh = :OLD_clbh'
      ''
      '')
    Left = 412
    Top = 272
  end
  object qry_article: TQuery
    DatabaseName = 'dB'
    DataSource = ds5
    SQL.Strings = (
      
        'select kfxxzl.jijie,ypzl.kfjd,xieming,kfxxzl.devcode,kfxxzl.FD,D' +
        'evType,KFXXZL.Category from ypzls'
      '   left join ypzl on ypzl.ypdh=ypzls.ypdh   '
      '   left join zszl on zszl.zsdh=ypzls.csbh'
      
        '   left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sh' +
        'ehao=ypzl.shehao'
      
        '   left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.' +
        'shehao=xxzlkf.shehao'
      ' where 1=2')
    Left = 457
    Top = 236
    object qry_articlejijie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'jijie'
      FixedChar = True
    end
    object qry_articlekfjd: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object qry_articlexieming: TStringField
      DisplayLabel = 'Shoe Name'
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object qry_articleFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry_articleDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object qry_articleCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object qry_articledevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object start: TQuery
    DatabaseName = 'dB'
    Left = 100
    Top = 200
  end
  object tempqry: TQuery
    DatabaseName = 'dB'
    Left = 548
    Top = 240
  end
  object ds_article: TDataSource
    DataSet = qry_article
    Left = 457
    Top = 204
  end
  object qry4: TQuery
    DatabaseName = 'dB'
    Left = 596
    Top = 237
  end
end
