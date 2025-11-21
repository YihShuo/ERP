object SOPPrcessFlow_Part: TSOPPrcessFlow_Part
  Left = 666
  Top = 307
  Width = 554
  Height = 384
  Caption = 'SOPPrcessFlow_Part'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label22: TLabel
      Left = 125
      Top = 19
      Width = 45
      Height = 16
      Caption = 'YWSM:'
    end
    object Label5: TLabel
      Left = 289
      Top = 18
      Width = 44
      Height = 16
      Caption = 'ZWSM:'
    end
    object Label1: TLabel
      Left = 11
      Top = 19
      Width = 45
      Height = 16
      Caption = 'BWDH:'
    end
    object ZWSMEdit: TEdit
      Left = 337
      Top = 14
      Width = 89
      Height = 24
      TabOrder = 0
    end
    object Button3: TButton
      Left = 434
      Top = 11
      Width = 74
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button3Click
    end
    object YWSMEdit: TEdit
      Left = 175
      Top = 15
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object BWBHEdit: TEdit
      Left = 61
      Top = 15
      Width = 62
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 538
    Height = 296
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Caption = #32232#34399'|BWBH'
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Caption = #33521#25991#25551#36848'|ywsm'
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Title.Caption = #20013#25991#25551#36848'|zwsm'
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'Qty1Day'
        Footers = <>
        Title.Caption = #26085#29986#33021'|Qty1Day'
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = #24288#21830'ID|zsdh'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Footers = <>
        Title.Caption = #24288#21830'|zsjc'
        Width = 114
      end>
  end
  object GCBWQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      
        'select GCBW.gcbwdh as BWBH,GCBW.ywsm,GCBW.zwsm,GCBW.Qty1Day,GCBW' +
        '.zsdh,zszl.zsjc '
      'from KT_SOPCutS_GCBW GCBW'
      'left join zszl on zszl.zsdh=GCBW.zsdh'
      'Union all'
      'Select BWBH,ywsm,zwsm,null,null,null from KT_SOPCut '
      'left join bwzl on BWZL.bwdh=KT_SOPCut.BWBH'
      'where XieXing='#39'CON18U41L'#39' and SheHao='#39'01'#39
      ' ) BWZL'
      'order by BWBH')
    Left = 244
    Top = 161
    object GCBWQryBWBH: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object GCBWQryywsm: TStringField
      DisplayWidth = 21
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object GCBWQryzwsm: TStringField
      DisplayWidth = 21
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object GCBWQryQty1Day: TFloatField
      FieldName = 'Qty1Day'
    end
    object GCBWQryzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object GCBWQryzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = GCBWQry
    Left = 244
    Top = 191
  end
end
