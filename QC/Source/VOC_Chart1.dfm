object VOC_Chart: TVOC_Chart
  Left = 241
  Top = 117
  Width = 1099
  Height = 608
  Caption = 'VOC_Tracking_Chart'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 1083
    Height = 570
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 8404992
    Gradient.Visible = True
    Title.AdjustFrame = False
    Title.Brush.Color = clWhite
    Title.Brush.Style = bsClear
    Title.Color = 4194368
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWhite
    Title.Font.Height = -19
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      '[    VOC  Tracking  Chart    ]')
    BottomAxis.DateTimeFormat = 'hh:mm'
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clBlack
    BottomAxis.LabelsFont.Height = -13
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = [fsBold]
    BottomAxis.Title.Caption = 'Date'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clBlack
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsBold]
    LeftAxis.Title.Caption = 'VOC '
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -16
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Alignment = laTop
    Legend.Color = 8454143
    Legend.ColorWidth = 30
    Legend.Font.Charset = ANSI_CHARSET
    Legend.Font.Color = clNavy
    Legend.Font.Height = -16
    Legend.Font.Name = 'Constantia'
    Legend.Font.Style = [fsBold]
    Legend.Frame.Style = psDashDotDot
    Legend.Frame.SmallDots = True
    Legend.ShadowColor = clGray
    Legend.ShadowSize = 6
    Legend.TextStyle = ltsPlain
    Legend.TopPos = 0
    View3D = False
    Align = alClient
    Color = clSilver
    TabOrder = 0
    object Button1: TButton
      Left = 3
      Top = 3
      Width = 67
      Height = 22
      Caption = 'Re-Display'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = Query1
      SeriesColor = clLime
      Title = 'LYV VOC daily'
      XLabelsSource = 'proddate'
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VOC'
    end
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = Query1
      SeriesColor = clRed
      Title = 'adidas VOC TARGET'
      XLabelsSource = 'proddate'
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VOCTarget'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 36
    Top = 80
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select proddate'
      '       ,round(('
      '       +1000*(sum(PU45311NT1) * 95 * 0.01 )/sum(pairs) '
      '       +1000*(sum(WPL01) * 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(wh03)  * 15 * 0.01)/sum(pairs) '
      '       +1000*(sum(T6127T)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(Primer297)* 99 * 0.01)/sum(pairs) '
      '       +1000*(sum(P311FT_6primer)* 70 * 0.01)/sum(pairs) '
      '       +1000*(sum(Hotmelt1438A)* 0 * 0.01 )/sum(pairs) '
      '       +1000*(sum(Hotmelt3173H)* 0 * 0.01 )/sum(pairs) '
      '       +1000*(sum(NCwhitetransparent)* 90 * 0.01 )/sum(pairs) '
      '       +1000*(sum(MWaterbase)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(Latex)* 0 * 0.01 )/sum(pairs) '
      '       +1000*(sum(A102)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(ABwhitetransparent)* 10 * 0.01)/sum(pairs) '
      '       +1000*(sum(RB13F)* 86 * 0.01)/sum(pairs) '
      '       +1000*(sum(C237F)* 86 * 0.01)/sum(pairs) '
      '       +1000*(sum(AD752S)* 60 * 0.01)/sum(pairs) '
      '       +1000*(sum(A5)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(A3)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(AD5500)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(A05W1A)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(HM401hotmelt)* 0 * 0.01)/sum(pairs) '
      '       +1000*(sum(A722)* 0 * 0.01 )/sum(pairs) '
      '       ),2) as VOC'
      '       ,24 as VOCTarget'
      'from  ('
      'select QIPVOC.*'
      'from QIPVOC'
      'left join bdepartment on bdepartment.id=QIPVOC.depno'
      'where left(bdepartment.depname,4)='#39'LY_G'#39
      
        '      and   convert(smalldatetime,convert(varchar,QIPVOC.ProdDat' +
        'e,111)) between '
      '      '#39'2012/03/01'#39' and '#39'2012/03/31'#39
      '    and 1=2'
      ')'
      'QIPVOC'
      'where 1=2'
      'group by proddate')
    Left = 36
    Top = 116
    object Query1proddate: TDateTimeField
      FieldName = 'proddate'
    end
    object Query1VOC: TFloatField
      FieldName = 'VOC'
    end
    object Query1VOCTarget: TIntegerField
      FieldName = 'VOCTarget'
    end
  end
end
