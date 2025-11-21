object ExtraMatNo: TExtraMatNo
  Left = 323
  Top = 195
  Width = 796
  Height = 467
  Caption = 'ExtraMatNo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDblClick = DBGridEh1DbClick
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 15
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 61
      Top = 12
      Width = 102
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 181
      Top = 7
      Width = 76
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Copy: TButton
      Left = 264
      Top = 7
      Width = 75
      Height = 33
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CopyClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 780
    Height = 380
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DbClick
    OnKeyPress = KeyPress
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    Constrained = True
    RequestLive = True
    SQL.Strings = (
      'select ExtraVN.clbh,clzl.zwpm '
      
        'from ExtraVN left join DDZL on DDZL.XieXing=ExtraVN.XieXing and ' +
        'DDZL.SheHao=ExtraVN.SheHao'
      'Left join (select YSBH from SMDD where GXLB= '#39'A'#39
      'Group by YSBH ) as SMDD on SMDD.YSBH = DDZl.DDBH'
      'left join clzl on clzl.cldh = ExtraVN.clbh'
      'where DDZL.DDBH like '#39'Y1704-0007%'#39
      'and DDZL.Article like '#39'%'#39
      'Group by ExtraVN.clbh,clzl.zwpm')
    UpdateObject = udMain
    Left = 344
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 376
    Top = 176
  end
  object udMain: TUpdateSQL
    Left = 376
    Top = 216
  end
end
