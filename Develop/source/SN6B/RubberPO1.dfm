object RubberPO: TRubberPO
  Left = 410
  Top = 300
  Width = 1305
  Height = 684
  Caption = 'RubberPO'
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
    Height = 645
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1287
      Height = 88
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 55
        Height = 20
        Caption = 'Season'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 160
        Top = 16
        Width = 43
        Height = 20
        Caption = 'Stage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 321
        Top = 16
        Width = 23
        Height = 20
        Caption = 'SR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 497
        Top = 16
        Width = 94
        Height = 20
        Caption = 'SampleOrder'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 138
        Top = 55
        Width = 9
        Height = 16
        Caption = '~'
      end
      object Label6: TLabel
        Left = 378
        Top = 55
        Width = 9
        Height = 16
        Caption = '~'
      end
      object Edit1: TEdit
        Left = 87
        Top = 13
        Width = 49
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 208
        Top = 13
        Width = 89
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 350
        Top = 13
        Width = 121
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Button1: TButton
        Left = 800
        Top = 12
        Width = 75
        Height = 28
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 880
        Top = 12
        Width = 75
        Height = 28
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button2Click
      end
      object Edit4: TEdit
        Left = 598
        Top = 13
        Width = 121
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object CheckBox1: TCheckBox
        Left = 736
        Top = 16
        Width = 65
        Height = 17
        Caption = 'ALL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object CheckBox2: TCheckBox
        Left = 8
        Top = 54
        Width = 49
        Height = 17
        Caption = 'R2'
        TabOrder = 7
      end
      object DTP1: TDateTimePicker
        Left = 45
        Top = 49
        Width = 92
        Height = 24
        Date = 44995.567473182870000000
        Time = 44995.567473182870000000
        TabOrder = 8
      end
      object DTP2: TDateTimePicker
        Left = 149
        Top = 49
        Width = 92
        Height = 24
        Date = 44995.567473182870000000
        Time = 44995.567473182870000000
        TabOrder = 9
      end
      object CheckBox3: TCheckBox
        Left = 248
        Top = 54
        Width = 49
        Height = 17
        Caption = 'R3'
        TabOrder = 10
      end
      object DTP3: TDateTimePicker
        Left = 285
        Top = 49
        Width = 92
        Height = 24
        Date = 44995.567473182870000000
        Time = 44995.567473182870000000
        TabOrder = 11
      end
      object DTP4: TDateTimePicker
        Left = 389
        Top = 49
        Width = 92
        Height = 24
        Date = 44995.567473182870000000
        Time = 44995.567473182870000000
        TabOrder = 12
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 89
      Width = 1287
      Height = 555
      Align = alClient
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1285
        Height = 553
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ShoeName'
            Footers = <>
            Width = 178
          end
          item
            EditButtons = <>
            FieldName = 'SampleOrder'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Quantity'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'R2'
            Footers = <>
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'R2Date'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'R3'
            Footers = <>
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'R3Date'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Developer'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ypcc'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Cut'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'UpperMat'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LiningMat'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InsoleMat'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OutsoleMat'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UpperMatDetail'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LiningMatDetail'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InsoleMatDetail'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OutsoleMatDetail'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      ''
      ''
      
        'select kfxxzl.jijie Season,kfxxzl.devcode SR,kfxxzl.article SKU,' +
        'kfxxzl.xieming ShoeName,ypzl.ypdh SampleOrder,JNGR2.cgno R2,JNGR' +
        '3.cgno R3,ypzl.fd Developer,ypzl.kfjd Stage,ypzl.ypcc,xxzlkf.Cut' +
        ','
      
        'xxzlkf.UpperMat,xxzlkf.LiningMat,xxzlkf.InsoleMat,xxzlkf.Outsole' +
        'Mat,'
      
        'xxzlkf.UpperMatDetail,xxzlkf.LiningMatDetail,xxzlkf.InsoleMatDet' +
        'ail,xxzlkf.OutsoleMatDetail,JNGR2.cgdate as R2Date,JNGR3.cgdate ' +
        'as R3Date,YPZL.Quantity'
      ' from kfxxzl'
      
        'left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.she' +
        'hao=kfxxzl.shehao'
      
        'left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=' +
        'ypzl.shehao'
      
        'left join  (select cgzlss.cgno,cgzlss.zlbh,cgzl.zsbh,cgzl.cgdate' +
        ' from cgzlss'
      '           left join cgzl on cgzlss.cgno=cgzl.cgno'
      
        '           where zsbh='#39'JNGR2'#39' and season='#39'20S'#39' and cgzl.gsbh='#39'cd' +
        'c'#39')JNGR2 on JNGR2.zlbh=ypzl.ypdh'
      
        'left join  (select cgzlss.cgno,cgzlss.zlbh,cgzl.zsbh,cgzl.cgdate' +
        ' from cgzlss'
      '           left join cgzl on cgzlss.cgno=cgzl.cgno'
      
        '           where zsbh='#39'JNGR3'#39' and season='#39'20S'#39' and cgzl.gsbh='#39'cd' +
        'c'#39')JNGR3 on JNGR3.zlbh=ypzl.ypdh           '
      'where kfxxzl.jijie='#39'20S'#39'  and ypzl.kfjd='#39'SMS'#39
      
        'group by kfxxzl.jijie,kfxxzl.devcode,kfxxzl.article,kfxxzl.xiemi' +
        'ng,ypzl.ypdh,JNGR2.cgno ,JNGR3.cgno ,ypzl.fd,ypzl.kfjd,ypzl.ypcc' +
        ',xxzlkf.cut,'
      
        'xxzlkf.UpperMat,xxzlkf.LiningMat,xxzlkf.InsoleMat,xxzlkf.Outsole' +
        'Mat,'
      
        'xxzlkf.UpperMatDetail,xxzlkf.LiningMatDetail,xxzlkf.InsoleMatDet' +
        'ail,xxzlkf.OutsoleMatDetail,JNGR2.cgdate ,JNGR3.cgdate,YPZL.Quan' +
        'tity'
      ' '
      ' ')
    Left = 25
    Top = 146
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query1ShoeName: TStringField
      FieldName = 'ShoeName'
      FixedChar = True
      Size = 50
    end
    object Query1SampleOrder: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
      Size = 15
    end
    object Query1R2: TStringField
      FieldName = 'R2'
      FixedChar = True
      Size = 11
    end
    object Query1R3: TStringField
      FieldName = 'R3'
      FixedChar = True
      Size = 11
    end
    object Query1Developer: TStringField
      FieldName = 'Developer'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query1ypcc: TStringField
      FieldName = 'ypcc'
      FixedChar = True
      Size = 6
    end
    object Query1Cut: TStringField
      FieldName = 'Cut'
      FixedChar = True
      Size = 8
    end
    object Query1UpperMat: TStringField
      FieldName = 'UpperMat'
      FixedChar = True
      Size = 255
    end
    object Query1LiningMat: TStringField
      FieldName = 'LiningMat'
      FixedChar = True
      Size = 255
    end
    object Query1InsoleMat: TStringField
      FieldName = 'InsoleMat'
      FixedChar = True
      Size = 255
    end
    object Query1OutsoleMat: TStringField
      FieldName = 'OutsoleMat'
      FixedChar = True
      Size = 255
    end
    object Query1UpperMatDetail: TStringField
      FieldName = 'UpperMatDetail'
      FixedChar = True
      Size = 255
    end
    object Query1LiningMatDetail: TStringField
      FieldName = 'LiningMatDetail'
      FixedChar = True
      Size = 255
    end
    object Query1InsoleMatDetail: TStringField
      FieldName = 'InsoleMatDetail'
      FixedChar = True
      Size = 255
    end
    object Query1OutsoleMatDetail: TStringField
      FieldName = 'OutsoleMatDetail'
      FixedChar = True
      Size = 255
    end
    object Query1R2Date: TDateTimeField
      FieldName = 'R2Date'
    end
    object Query1R3Date: TDateTimeField
      FieldName = 'R3Date'
    end
    object Query1Quantity: TFloatField
      FieldName = 'Quantity'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 25
    Top = 114
  end
end
