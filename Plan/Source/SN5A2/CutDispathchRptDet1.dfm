object CutDispathchRptDet: TCutDispathchRptDet
  Left = 366
  Top = 260
  Width = 974
  Height = 606
  Caption = 'CutDispathchRptDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 958
    Height = 567
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
    PopupMenu = PopupMenu
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
        FieldName = 'DLNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CutNum'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'okCutNum'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 277
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 100
      end>
  end
  object CutDisMasQry: TQuery
    DatabaseName = 'DB'
    DataSource = CutDispatchRpt.DS1
    SQL.Strings = (
      
        'select CutDisPatchS.DLNO,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,Cut' +
        'DisPatchS.SIZE,CutDisPatchS.CLBH,CutDisPatchS.Qty,CutDisPatchS.X' +
        'XCC,CutDisPatchS.CutNum,CutDisPatchS.okCutNum'
      
        '       ,CLZL.ywpm,CLZL.zwpm,bwzl.ywsm,bwzl.zwsm,CutDisPatchS.USE' +
        'RDATE'
      ' from CutDisPatchS'
      'left join CLZL on CLZL.cldh=CutDisPatchS.CLBH'
      'left join bwzl on bwzl.bwdh=CutDisPatchS.BWBH'
      'where CutDisPatchS.ZLBH=:ZLBH'
      'order by CutDisPatchS.BWBH')
    Left = 296
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object CutDisMasQryDLNO: TStringField
      DisplayWidth = 12
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object CutDisMasQryZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutDisMasQryBWBH: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object CutDisMasQrySIZE: TStringField
      DisplayWidth = 6
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CutDisMasQryCLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object CutDisMasQryQty: TIntegerField
      DisplayWidth = 6
      FieldName = 'Qty'
    end
    object CutDisMasQryXXCC: TStringField
      DisplayWidth = 6
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object CutDisMasQryCutNum: TIntegerField
      DisplayWidth = 6
      FieldName = 'CutNum'
    end
    object CutDisMasQryokCutNum: TIntegerField
      DisplayWidth = 10
      FieldName = 'okCutNum'
    end
    object CutDisMasQryywpm: TStringField
      DisplayWidth = 69
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object CutDisMasQryzwpm: TStringField
      DisplayWidth = 62
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object CutDisMasQryywsm: TStringField
      DisplayWidth = 26
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object CutDisMasQryzwsm: TStringField
      DisplayWidth = 8
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object CutDisMasQryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = CutDisMasQry
    Left = 296
    Top = 200
  end
  object PopupMenu: TPopupMenu
    Left = 264
    Top = 200
    object Detail1: TMenuItem
      Caption = 'Excel'
      OnClick = Detail1Click
    end
  end
end
