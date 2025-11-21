object RejectMat: TRejectMat
  Left = 267
  Top = 126
  Width = 928
  Height = 480
  Caption = 'RejectMat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 441
    ActivePage = ts_WH
    Align = alClient
    TabOrder = 0
    object ts_QC: TTabSheet
      Caption = 'QC'
      object Label3: TLabel
        Left = 152
        Top = 38
        Width = 59
        Height = 16
        Caption = 'MatName'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 64
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label15: TLabel
          Left = 133
          Top = 9
          Width = 7
          Height = 25
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 38
          Width = 35
          Height = 16
          Caption = 'MatID'
        end
        object Label4: TLabel
          Left = 155
          Top = 38
          Width = 59
          Height = 16
          Caption = 'MatName'
        end
        object Label5: TLabel
          Left = 243
          Top = 8
          Width = 37
          Height = 16
          Caption = 'SupID'
        end
        object Label6: TLabel
          Left = 347
          Top = 8
          Width = 61
          Height = 16
          Caption = 'SupName'
        end
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object Label7: TLabel
          Left = 348
          Top = 35
          Width = 56
          Height = 16
          Caption = 'Shipment'
        end
        object DTP1: TDateTimePicker
          Left = 47
          Top = 3
          Width = 87
          Height = 24
          Date = 39284.677295636570000000
          Format = 'yyyy/MM/dd'
          Time = 39284.677295636570000000
          TabOrder = 0
        end
        object DTP2: TDateTimePicker
          Left = 144
          Top = 3
          Width = 87
          Height = 24
          Date = 39284.677664201390000000
          Format = 'yyyy/MM/dd'
          Time = 39284.677664201390000000
          TabOrder = 1
        end
        object edtMatID: TEdit
          Left = 46
          Top = 33
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object edtSupID: TEdit
          Left = 284
          Top = 2
          Width = 51
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object edtSupN: TEdit
          Left = 413
          Top = 3
          Width = 115
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object edtMatN: TEdit
          Left = 217
          Top = 31
          Width = 117
          Height = 24
          TabOrder = 5
        end
        object btnQ: TButton
          Left = 569
          Top = 12
          Width = 73
          Height = 33
          Caption = 'Query'
          TabOrder = 6
          OnClick = btnQClick
        end
      end
      object DB_Mat: TDBGridEh
        Left = 0
        Top = 64
        Width = 904
        Height = 346
        Align = alClient
        DataSource = DSMat
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnDblClick = DB_MatDblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'MatID'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Mat Name'
            Width = 158
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'SupID'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Sup Name'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = 'Shipment'
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'DateInput'
            Footers = <>
            Title.Caption = 'W.H Date'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 44
          end>
      end
      object edtShipment: TEdit
        Left = 414
        Top = 31
        Width = 113
        Height = 24
        TabOrder = 2
      end
    end
    object ts_WH: TTabSheet
      Caption = 'W.H'
      ImageIndex = 1
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 64
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lbl1: TLabel
          Left = 133
          Top = 9
          Width = 7
          Height = 25
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 8
          Top = 38
          Width = 35
          Height = 16
          Caption = 'MatID'
        end
        object lbl3: TLabel
          Left = 155
          Top = 38
          Width = 59
          Height = 16
          Caption = 'MatName'
        end
        object lbl4: TLabel
          Left = 243
          Top = 8
          Width = 37
          Height = 16
          Caption = 'SupID'
        end
        object lbl5: TLabel
          Left = 347
          Top = 8
          Width = 61
          Height = 16
          Caption = 'SupName'
        end
        object lbl6: TLabel
          Left = 16
          Top = 8
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object lbl7: TLabel
          Left = 348
          Top = 35
          Width = 56
          Height = 16
          Caption = 'Shipment'
        end
        object dtp3: TDateTimePicker
          Left = 47
          Top = 3
          Width = 87
          Height = 24
          Date = 39284.677295636570000000
          Format = 'yyyy/MM/dd'
          Time = 39284.677295636570000000
          TabOrder = 0
        end
        object dtp4: TDateTimePicker
          Left = 144
          Top = 3
          Width = 87
          Height = 24
          Date = 39284.677664201390000000
          Format = 'yyyy/MM/dd'
          Time = 39284.677664201390000000
          TabOrder = 1
        end
        object edt1: TEdit
          Left = 46
          Top = 33
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object edt2: TEdit
          Left = 284
          Top = 2
          Width = 51
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object edt3: TEdit
          Left = 413
          Top = 3
          Width = 115
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object edt4: TEdit
          Left = 217
          Top = 31
          Width = 117
          Height = 24
          TabOrder = 5
        end
        object Edit1: TEdit
          Left = 414
          Top = 31
          Width = 113
          Height = 24
          TabOrder = 6
        end
        object btn1: TButton
          Left = 569
          Top = 12
          Width = 73
          Height = 33
          Caption = 'Query'
          TabOrder = 7
          OnClick = btn1Click
        end
      end
      object dbgrdh_WH: TDBGridEh
        Left = 0
        Top = 64
        Width = 904
        Height = 346
        Align = alClient
        DataSource = dsWH
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        PopupMenu = pm1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnDblClick = dbgrdh_WHDblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'MatID'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Mat Name'
            Width = 158
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'SupID'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Sup Name'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = 'Shipment'
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'DateInput'
            Footers = <>
            Title.Caption = 'W.H Date'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 44
          end>
      end
    end
  end
  object DSMat: TDataSource
    DataSet = QryMat
    Left = 216
    Top = 136
  end
  object QryMat: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT mc.No_ID, mc.CLBH, mc.CGNO, mc.DateInput, mc.ZSBH, mc.MRN' +
        'O, mc.Types,'
      '       mc.GSBH ,clzl.ywpm, clzl.dwbh, ZSZL.zsywjc'
      'FROM MaterialQCcheck mc'
      'left join clzl on clzl.CLDH = mc.CLBH'
      'left Join ZSZL on ZSZL.ZSDH =mc.ZSBH'
      'WHERE mc.GSBH='#39#39)
    UpdateObject = UpMat
    Left = 217
    Top = 168
    object QryMatNo_ID: TIntegerField
      FieldName = 'No_ID'
    end
    object QryMatCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QryMatCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QryMatDateInput: TDateTimeField
      FieldName = 'DateInput'
    end
    object QryMatZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QryMatGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 6
    end
    object QryMatywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object QryMatdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object QryMatzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
  end
  object UpMat: TUpdateSQL
    Left = 217
    Top = 204
  end
  object Qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 162
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 217
    Top = 242
    object btnCOPY: TMenuItem
      Caption = 'COPY'
      OnClick = btnCOPYClick
    end
  end
  object dsWH: TDataSource
    DataSet = qryWH
    Left = 260
    Top = 139
  end
  object qryWH: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT mc.RKNO No_ID, mc.CLBH, KCRK.ZSNO CGNO, KCRK.UserDate Dat' +
        'eInput, KCRK.ZSBH, '#39#39'MRNO, '#39'W.H'#39' Types,'
      '       mc.GSBH ,clzl.ywpm, clzl.dwbh, ZSZL.zsywjc'
      'FROM KCRKSSS mc'
      'left join kcrk on kcrk.RKNO= mc.RKNO'
      'left join clzl on clzl.CLDH = mc.CLBH'
      'left Join ZSZL on ZSZL.ZSDH =kcrk.ZSBH')
    UpdateObject = upWH
    Left = 260
    Top = 171
    object strngfldWHNo_ID: TStringField
      FieldName = 'No_ID'
      FixedChar = True
      Size = 15
    end
    object strngfldWHCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object strngfldWHCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
    end
    object dtmfldWHDateInput: TDateTimeField
      FieldName = 'DateInput'
    end
    object strngfldWHZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object strngfldWHGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 6
    end
    object strngfldWHywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object strngfldWHdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object strngfldWHzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
  end
  object upWH: TUpdateSQL
    Left = 260
    Top = 203
  end
  object pm1: TPopupMenu
    OnPopup = pm1Popup
    Left = 261
    Top = 242
    object pmCopy: TMenuItem
      Caption = 'COPY'
      OnClick = pmCopyClick
    end
  end
end
