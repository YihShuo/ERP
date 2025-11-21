object StitchingAssemblyTracking: TStitchingAssemblyTracking
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'StitchingAssemblyTracking'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 134
      Top = 22
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 333
      Top = 14
      Width = 45
      Height = 16
      Caption = 'OrdNO:'
    end
    object Label5: TLabel
      Left = 6
      Top = 21
      Width = 45
      Height = 16
      Caption = 'Factory'
    end
    object Label8: TLabel
      Left = 16
      Top = 5
      Width = 24
      Height = 16
      Caption = #26847#21029
    end
    object Label10: TLabel
      Left = 135
      Top = 8
      Width = 58
      Height = 16
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 544
      Top = 5
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ZLBHEdit: TEdit
      Left = 382
      Top = 10
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button2: TButton
      Left = 632
      Top = 5
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object XuongCB1: TComboBox
      Left = 54
      Top = 9
      Width = 75
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnChange = XuongCB1Change
    end
    object DepNMEdit1: TComboBox
      Left = 203
      Top = 9
      Width = 129
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 49
    Width = 1289
    Height = 587
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PageControl2Change
    object TabSheet1: TTabSheet
      Caption = 'Stitching'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 321
        Width = 1281
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1281
        Height = 321
        Align = alTop
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ImeName = 'Chinese (Traditional) - New Phonetic'
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
            Title.Caption = 'No|Seq'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = 'RY#|DDBH'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU|Article'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'BuyNo'
            Footers = <>
            Title.Caption = 'BUY NO|BuyNo'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ZLQty'
            Footers = <>
            Title.Caption = 'Total QTY|ZLQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ScanQty'
            Footers = <>
            Title.Caption = 'Finished QTY|ScanQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Progress'
            Footers = <>
            Title.Caption = 'Progress Percentage|Progress'
            Width = 80
          end>
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 324
        Width = 1281
        Height = 232
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
    object TabSheet2: TTabSheet
      Caption = 'Assembly'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 321
        Width = 1281
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1281
        Height = 321
        Align = alTop
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ImeName = 'Chinese (Traditional) - New Phonetic'
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
            Title.Caption = 'No|Seq'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = 'RY#|DDBH'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU|Article'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'BuyNo'
            Footers = <>
            Title.Caption = 'BUY NO|BuyNo'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ZLQty'
            Footers = <>
            Title.Caption = 'Total QTY|ZLQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ScanQty'
            Footers = <>
            Title.Caption = 'Finished QTY|ScanQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Progress'
            Footers = <>
            Title.Caption = 'Progress Percentage|Progress'
            Width = 80
          end>
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 324
        Width = 1281
        Height = 232
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
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 168
  end
  object PopupMenu2: TPopupMenu
    Left = 288
    Top = 496
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object Track: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select MRCardS.ListNo, MRCard.DemandDate, MRCard.DemandTime, Mat' +
        'erialID, CLZL.YWPM, CLZL.ZWPM, CLZL.DWBH, '
      
        '       RY_Begin, LotNO, Usage, CAST(dbo.fSignsToNoSigns(MRCard.R' +
        'emark) AS VARCHAR(50)) Remark, IssuanceUsage, MRCardS.Remark Rem' +
        'arkS, MRCardS.UserID, MRCardS.UserDate'
      'from MRCardS'
      'left join MRCard on MRCard.ListNo=MRCardS.ListNo'
      'inner join CLZL on CLZL.CLDH=MRCardS.MaterialID'
      'where MRCardS.RY_Begin=:DDBH '
      '           AND MRCard.Section=:GXLB')
    Left = 284
    Top = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GXLB'
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
  object PS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CutDispatchZL.ZLBH,XXZL.DAOMH,CutDispatchZL_NO.ZLBH as ZL' +
        'BH_NO '
      'from CutDispatchZL'
      
        'left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okCut' +
        'Num) as okCutNum from CutDispatchS Group by ZLBH,BWBH,SIZE) '
      
        '          CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH a' +
        'nd CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=C' +
        'utDispatchS.SIZE'
      'left join DDZL on DDZL.DDBH=CutDispatchZL.ZLBH  '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao '
      'left join '
      ' ( select  CutDispatchZL.ZLBH from CutDispatchZL '
      
        '  left join (select ZLBH,BWBH,SIZE,SUM(CutNum) as CutNum,SUM(okC' +
        'utNum) as okCutNum from CutDispatchS Group by ZLBH,BWBH,SIZE) '
      
        '        CutDispatchS on CutDispatchZL.ZLBH=CutDispatchS.ZLBH and' +
        ' CutDispatchZL.BWBH=CutDispatchS.BWBH and CutDispatchZL.SIZE=Cut' +
        'DispatchS.SIZE'
      
        '  where  IsNull(CutDispatchS.okCutNum,0)<CutDispatchZL.CutNum an' +
        'd CutDispatchZL.ZLBH like '#39'%'#39'  '
      
        '  Group by CutDispatchZL.ZLBH  ) CutDispatchZL_NO on CutDispatch' +
        'ZL_NO.ZLBH=CutDispatchZL.ZLBH'
      'where CutDispatchZL.ZLBH like '#39'%'#39' '
      'Group by CutDispatchZL.ZLBH,XXZL.DAOMH,CutDispatchZL_NO.ZLBH')
    Left = 288
    Top = 168
    object PSSeq: TIntegerField
      FieldName = 'Seq'
    end
    object PSDDBH: TStringField
      FieldName = 'DDBH'
    end
    object PSArticle: TStringField
      FieldName = 'Article'
    end
    object PSBuyNo: TStringField
      FieldName = 'BuyNo'
    end
    object PSZLQty: TIntegerField
      FieldName = 'ZLQty'
    end
    object PSScanQty: TIntegerField
      FieldName = 'ScanQty'
    end
    object PSProgress: TFloatField
      FieldName = 'Progress'
    end
    object PSGXLB: TStringField
      FieldName = 'GXLB'
    end
  end
  object DS1: TDataSource
    DataSet = PS
    Left = 288
    Top = 200
  end
end
