object CutDispatchZL: TCutDispatchZL
  Left = 227
  Top = 276
  Width = 985
  Height = 425
  Caption = 'CutDispatchZL'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 969
    Height = 386
    Align = alClient
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PieceS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CutNum'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Piece'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Layer'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Joinnum'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Width = 124
      end>
  end
  object DS3: TDataSource
    DataSet = CutDispatchQry
    Left = 340
    Top = 64
  end
  object CutDispatchQry: TQuery
    DatabaseName = 'DB'
    DataSource = SpecPrint.DS1
    SQL.Strings = (
      'select CutDispatchZL.*,CLZL.ywpm,CLZL.zwpm,Bwzl.ywsm,bwzl.zwsm'
      'from CutDispatchZL '
      'left join CLZL on CLZL.cldh=CutDispatchZL.CLBH'
      'left join bwzl on bwzl.bwdh=CutDispatchZL.BWBH'
      'where ZLBH=:ZLBH')
    Left = 316
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object CutDispatchQryZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutDispatchQryBWBH: TStringField
      DisplayWidth = 7
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object CutDispatchQryywsm: TStringField
      DisplayWidth = 10
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object CutDispatchQryCLBH: TStringField
      DisplayWidth = 10
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object CutDispatchQryywpm: TStringField
      DisplayWidth = 34
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object CutDispatchQrySIZE: TStringField
      DisplayWidth = 6
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CutDispatchQryQty: TIntegerField
      DisplayWidth = 6
      FieldName = 'Qty'
    end
    object CutDispatchQryXXCC: TStringField
      DisplayWidth = 6
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object CutDispatchQryPieceS: TIntegerField
      DisplayWidth = 10
      FieldName = 'PieceS'
    end
    object CutDispatchQryCutNum: TIntegerField
      DisplayWidth = 10
      FieldName = 'CutNum'
    end
    object CutDispatchQryPiece: TSmallintField
      DisplayWidth = 10
      FieldName = 'Piece'
    end
    object CutDispatchQryLayer: TSmallintField
      DisplayWidth = 10
      FieldName = 'Layer'
    end
    object CutDispatchQryJoinnum: TSmallintField
      DisplayWidth = 10
      FieldName = 'Joinnum'
    end
    object CutDispatchQryzwpm: TStringField
      DisplayWidth = 200
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object CutDispatchQryzwsm: TStringField
      DisplayWidth = 40
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
  end
end
