object RTOV_Detail: TRTOV_Detail
  Left = 417
  Top = 370
  Width = 935
  Height = 563
  Caption = 'RTOV_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 919
    Height = 524
    Align = alClient
    DataSource = DS_RTOV_Detail
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
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RTOV_Detail: TQuery
    DatabaseName = 'DB'
    DataSource = RTOVData.DS_RTOV
    SQL.Strings = (
      'select convert(char(10),rtstemp.datadate,111) as '#39'Date'#39',KHPO'
      
        #9'   ,isnull(sum(case  when rtstemp.gxlb='#39'C'#39' then rtstemp.Qty  en' +
        'd),0) as '#39'C'#39
      
        #9'   ,isnull(sum(case  when rtstemp.gxlb='#39'S'#39' then rtstemp.Qty  en' +
        'd),0) as '#39'S'#39
      
        #9'   ,isnull(sum(case  when rtstemp.gxlb='#39'A'#39' then rtstemp.Qty  en' +
        'd),0) as '#39'A'#39
      
        #9'   ,isnull(sum(case  when rtstemp.gxlb='#39'I'#39' then rtstemp.Qty  en' +
        'd),0) as '#39'I'#39
      
        #9'   ,isnull(sum(case  when rtstemp.gxlb='#39'O'#39' then rtstemp.Qty  en' +
        'd),0) as '#39'O'#39
      'from rtstemp'
      'where khpo=:khpo'
      'group by  rtstemp.datadate,rtstemp.khpo'
      'order by rtstemp.datadate'
      '')
    Left = 424
    Top = 328
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'khpo'
        ParamType = ptUnknown
        Size = 21
      end>
    object RTOV_DetailDate: TStringField
      FieldName = 'Date'
      FixedChar = True
      Size = 10
    end
    object RTOV_DetailKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
    end
    object RTOV_DetailC: TIntegerField
      FieldName = 'C'
    end
    object RTOV_DetailS: TIntegerField
      FieldName = 'S'
    end
    object RTOV_DetailA: TIntegerField
      FieldName = 'A'
    end
    object RTOV_DetailI: TIntegerField
      FieldName = 'I'
    end
    object RTOV_DetailO: TIntegerField
      FieldName = 'O'
    end
  end
  object DS_RTOV_Detail: TDataSource
    DataSet = RTOV_Detail
    Left = 424
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 304
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
