object DCMessage: TDCMessage
  Left = 704
  Top = 346
  BorderStyle = bsNone
  BorderWidth = 3
  Caption = 'DCMessage'
  ClientHeight = 280
  ClientWidth = 528
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 280
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 0
    object Panel4: TPanel
      Left = 511
      Top = 0
      Width = 17
      Height = 280
      Align = alRight
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 17
      Height = 280
      Align = alLeft
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 1
    end
    object Panel5: TPanel
      Left = 17
      Top = 0
      Width = 494
      Height = 280
      Align = alClient
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 2
      object LB_CONTENT: TLabel
        Left = 0
        Top = 33
        Width = 494
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Content'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 494
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = clBlack
        TabOrder = 0
      end
      object TP_OK: TTouchPanel
        Left = 72
        Top = 186
        Width = 140
        Height = 60
        BevelOuter = bvNone
        Caption = 'OK'
        Color = 3289904
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnMouseDown = TP_OKMouseDown
        OnMouseUp = TP_OKMouseUp
        OnTouch = TP_OKTouch
      end
      object TP_CANCEL: TTouchPanel
        Left = 282
        Top = 186
        Width = 140
        Height = 60
        BevelOuter = bvNone
        Caption = 'CANCEL'
        Color = 3289904
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnMouseDown = TP_CANCELMouseDown
        OnMouseUp = TP_CANCELMouseUp
        OnTouch = TP_CANCELTouch
      end
    end
  end
end
