object RYDetail: TRYDetail
  Left = 682
  Top = 249
  Width = 864
  Height = 643
  BorderIcons = [biSystemMenu]
  Caption = 'RYDetail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 856
    Height = 612
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Purchase'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 34
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pur No.'
        end
        object Label4: TLabel
          Left = 200
          Top = 10
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Material ID'
        end
        object Label1: TLabel
          Left = 200
          Top = 34
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'InvoiceNo.'
        end
        object Label2: TLabel
          Left = 8
          Top = 10
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'RK/GC NO.'
        end
        object Button1: TButton
          Left = 401
          Top = 16
          Width = 60
          Height = 31
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button1Click
        end
        object CGNOEdit: TEdit
          Left = 88
          Top = 30
          Width = 105
          Height = 24
          TabOrder = 0
          OnKeyPress = RKNOEditKeyPress
        end
        object MatNOEdit: TEdit
          Left = 282
          Top = 6
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = RKNOEditKeyPress
        end
        object chkPur: TCheckBox
          Left = 468
          Top = 15
          Width = 81
          Height = 17
          Caption = 'Purchase'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object chkExt: TCheckBox
          Left = 468
          Top = 33
          Width = 81
          Height = 17
          Caption = 'Extra'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object INVOEdit: TEdit
          Left = 282
          Top = 31
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
          OnKeyPress = RKNOEditKeyPress
        end
        object RKNOEdit: TEdit
          Left = 88
          Top = 6
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
          OnKeyPress = RKNOEditKeyPress
        end
        object RB1: TRadioButton
          Left = 556
          Top = 16
          Width = 101
          Height = 17
          Caption = 'InWH'
          Checked = True
          TabOrder = 7
          TabStop = True
        end
        object RB2: TRadioButton
          Left = 556
          Top = 34
          Width = 101
          Height = 17
          Caption = 'Not InWH'
          TabOrder = 8
        end
        object Button2: TButton
          Left = 641
          Top = 16
          Width = 60
          Height = 31
          Caption = 'Insert'
          TabOrder = 9
          OnClick = Button2Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 65
        Width = 848
        Height = 516
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
            FieldName = 'RKNO'
            Footer.FieldName = 'CGNO'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RK/GC NO.'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material ID'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 269
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Footers = <>
            Title.Caption = 'Supplier ID'
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier Name'
            Width = 126
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Width = 87
          end>
      end
    end
  end
  object qry_pur: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.ZSNO as CGNO,KCRKS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.Y' +
        'WPM,Sum(KCRKS.Qty) as Qty,KCRK.RKNO,'#39'Purchase'#39' AS Memo'
      'from KCRK'
      '   Left join KCRKS on KCRK.RKNO=KCRKS.RKNO  '
      '   left Join ZSZL on ZSZL.ZSDH =KCRK.ZSBH'
      '   Left Join CLZL on CLZL.cldh=KCRKS.CLBH '
      '   Left Join CGZL on CGZL.CGNO =KCRK.ZSNO  '
      'where KCRK.GSBH='#39'CDC'#39' '
      '     and KCRKS.CLBH like '#39'%'#39' '
      '     and KCRK.RKNO like '#39'201804%'#39' '
      
        'group by KCRK.ZSNO,KCRKS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,KC' +
        'RK.RKNO'
      'union all'
      
        'select '#39'ZZZZZZZZZZ'#39' as CGNO,JGZLS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZ' +
        'L.YWPM,Sum(JGZLS.Qty) as Qty,JGZLS.JGNO as RKNO,'#39'Extra'#39' AS Memo'
      'from JGZLS'
      #9'  left Join JGZL ON JGZLS.JGNO=JGZL.JGNO '
      '   left Join ZSZL on ZSZL.ZSDH =JGZL.ZSBH '
      '   Left Join CLZL on CLZL.cldh=JGZLS.CLBH '
      'where JGZL.GSBH='#39'CDC'#39'  and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' '
      #9#9#9'and JGZLS.JGNO like '#39'201804%'#39' '
      '     and JGZLS.CLBH like '#39'%'#39' '
      'group by JGZLS.JGNO,JGZLS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM')
    Left = 72
    Top = 176
    object qry_purCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qry_purCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 15
    end
    object qry_purZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object qry_purZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
      Size = 200
    end
    object qry_purMemo: TStringField
      FieldName = 'Memo'
    end
    object qry_purYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object qry_purRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object qry_purQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = qry_pur
    Left = 72
    Top = 208
  end
end
