object PurSample_CBY_Detail: TPurSample_CBY_Detail
  Left = 301
  Top = 281
  Width = 806
  Height = 325
  Caption = 'PurSample_CBY_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 790
    Height = 286
    Align = alClient
    DataSource = DS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CGNO'
        Title.Caption = 'PO NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Title.Caption = 'Article'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Title.Caption = 'PO Qty'
        Visible = True
      end>
  end
  object CGZLSSQry: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample_CBY.MatDS
    SQL.Strings = (
      
        'select CGZLSS.CGNO,CGZLSS.Qty as okQty,CGZLSS.CLBH,CGZLSS.ZLBH,C' +
        'LZL.YWPM,CLZL.DWBH'
      '           from CGZLSS'
      '           left join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        '           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.C' +
        'LBH=CGZLSS.CLBH'
      '           left join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      '           where CGZLSS.CLBH=:CLBH'
      '                 and CGZLSS.XXCC='#39'ZZZZZZ'#39
      '                 and CGZL.GSBH='#39'CDC'#39
      '                 and CGZLSS.ZLBH=:Article')
    Left = 280
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'Article'
        ParamType = ptUnknown
        Size = 21
      end>
    object CGZLSSQryCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGZLSSQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGZLSSQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object CGZLSSQryokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '#0.00'
    end
    object CGZLSSQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CGZLSSQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS: TDataSource
    DataSet = CGZLSSQry
    Left = 280
    Top = 88
  end
end
