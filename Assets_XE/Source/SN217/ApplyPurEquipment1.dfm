object ApplyPurEquipment: TApplyPurEquipment
  Left = 0
  Top = 0
  Caption = 'ApplyPurEquipment'
  ClientHeight = 521
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 39
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 31
      Top = 12
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
    end
    object Label2: TLabel
      Left = 159
      Top = 12
      Width = 29
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 307
      Top = 12
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SGNO:'
    end
    object DTP1: TDateTimePicker
      Left = 68
      Top = 9
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 185
      Top = 9
      Width = 89
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 1
    end
    object SGNOEdit: TEdit
      Left = 363
      Top = 9
      Width = 105
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckDate: TCheckBox
      Left = 11
      Top = 12
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 39
    Width = 1370
    Height = 482
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Apply Equipment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 451
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 1049
          Top = 33
          Height = 417
          ExplicitHeight = 419
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1360
          Height = 32
          Align = alTop
          Color = clMoneyGreen
          ParentBackground = False
          TabOrder = 0
          object Label13: TLabel
            Left = 122
            Top = 9
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Supplier:'
          end
          object Label11: TLabel
            Left = 299
            Top = 9
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SBBH:'
          end
          object Label12: TLabel
            Left = 462
            Top = 9
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'YWPM:'
          end
          object ZSDHEdit: TEdit
            Left = 183
            Top = 5
            Width = 112
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 0
          end
          object Button1: TButton
            Left = 797
            Top = 5
            Width = 73
            Height = 24
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = Button1Click
          end
          object SBBHEdit: TEdit
            Left = 370
            Top = 5
            Width = 91
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 1
          end
          object YWPMEdit1: TEdit
            Left = 541
            Top = 5
            Width = 109
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 2
          end
          object YWPMEdit2: TEdit
            Left = 650
            Top = 5
            Width = 119
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 3
          end
          object Chk_NoPur1: TCheckBox
            Left = 15
            Top = 9
            Width = 99
            Height = 17
            Caption = 'Show No Pur'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 1052
          Top = 33
          Width = 309
          Height = 417
          Align = alClient
          DataSource = DS2
          DynProps = <>
          FooterParams.Color = clWindow
          PopupMenu = TSCD_SGDHS_ToPO
          TabOrder = 1
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SGNO'
              Footers = <>
              Title.Caption = #30003#36092#21934#34399'|SGNO'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SBBH'
              Footers = <>
              Title.Caption = #30446#37636#32232#34399'|SBBH'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = #25976#37327'|Qty'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'okQty'
              Footers = <>
              Title.Caption = #25505#36092#25976'|okQty'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Diff'
              Footers = <>
              Title.Caption = #24046#30064'|Diff'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DepName'
              Footers = <>
              Title.Caption = #37096#38272#21517#31281'|DepName'
              Width = 100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 33
          Width = 1048
          Height = 417
          Align = alLeft
          DataSource = DS1
          DynProps = <>
          FooterParams.Color = clWindow
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          PopupMenu = TSCD_SGDH_ToPO
          TabOrder = 2
          TitleParams.MultiTitle = True
          OnGetCellParams = DBGridEh1GetCellParams
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SBBH'
              Footers = <>
              Title.Caption = #30446#37636#32232#34399'|SBBH'
              Width = 91
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LSBH'
              Footers = <>
              Title.Caption = #22411#34399'|LSBH'
              Width = 90
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = #33521#25991#21517#31281'|YWPM'
              Width = 98
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Title.Caption = #20013#25991#21517#31281'|ZWPM'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VWPM'
              Footers = <>
              Title.Caption = #36234#25991#21517#31281'|VWPM'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'QUCBH'
              Footers = <>
              Title.Caption = #35215#26684'|QUCBH'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = #21934#20301'|DWBH'
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = #25976#37327'|Qty'
              Width = 66
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'okQty'
              Footers = <>
              Title.Caption = #25505#36092#25976'|okQty'
              Width = 58
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Diff'
              Footers = <>
              Title.Caption = #24046#30064'|Diff'
              Width = 42
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZSDH'
              Footers = <>
              Title.Caption = #32232#34399'|ZSDH'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZSJC_YW'
              Footers = <>
              Title.Caption = #35069#36896#24288#21830'|ZSYWJC'
              Width = 94
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'GSBH'
              Footers = <>
              Title.Caption = #24288#21029'|GSBH'
              Width = 75
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object TSCD_SGDH: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD_SGDHS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,TS' +
        'CD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH,sum(TSCD_SGDHS.Qty) as Qty' +
        ',sum(isnull(TSCD_CGZLSS.okQty,0)) as okQty,sum(isnull(TSCD_SGDHS' +
        '.Qty,0)-isnull(TSCD_CGZLSS.okQty,0)) as Diff,TSCD_ZSZL.ZSDH,TSCD' +
        '_ZSZL.ZSJC_YW,TSCD_SGDH.GSBH,TSCD_SB.QVNPrice,TSCD_SB.QUSprice'
      'from TSCD_SGDHS'
      'left join TSCD_SGDH on TSCD_SGDH.SGNO=TSCD_SGDHS.SGNO'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_SGDHS.SBBH'
      'left join TSCD_ZSZL on TSCD_ZSZL.ZSDH = TSCD_SB.ZSDH'
      
        'left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_SG' +
        'DH.DepID'
      'left join (select SGNO,SBBH,Sum(Qty) as okQty'
      '  '#9#9'   from TSCD_CGZLSS'
      '  '#9#9'   where 1=1'
      
        '  '#9#9'   Group by SGNO,SBBH)TSCD_CGZLSS on TSCD_CGZLSS.SGNO=TSCD_S' +
        'GDHS.SGNO and TSCD_CGZLSS.SBBH=TSCD_SGDHS.SBBH'
      'where 1=1'
      
        'and convert(smalldatetime,convert(varchar,TSCD_SGDH.USERDATE,111' +
        ')) between '#39'2022/09/10'#39' and '#39'2022/09/10'#39
      'and isnull(TSCD_CGZLSS.okQty,0)<isnull(TSCD_SGDHS.Qty,0)'
      'and TSCD_SGDH.GSBH='#39'VTX'#39
      
        'group by TSCD_SGDHS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,' +
        'TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH,TSCD_ZSZL.ZSDH,TSCD_ZSZL' +
        '.ZSJC_YW,TSCD_SGDH.GSBH,TSCD_SB.QVNPrice,TSCD_SB.QUSprice'
      'order by TSCD_SGDHS.SBBH,TSCD_ZSZL.ZSDH')
    Left = 276
    Top = 257
    object TSCD_SGDHSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCD_SGDHYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SGDHZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SGDHVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
    object TSCD_SGDHLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SGDHQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SGDHDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 10
    end
    object TSCD_SGDHQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object TSCD_SGDHokQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object TSCD_SGDHDiff: TFloatField
      FieldName = 'Diff'
      DisplayFormat = '#,##0.0'
    end
    object TSCD_SGDHZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object TSCD_SGDHZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
      Size = 50
    end
    object TSCD_SGDHGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object TSCD_SGDHQVNPrice: TCurrencyField
      FieldName = 'QVNPrice'
    end
    object TSCD_SGDHQUSprice: TFloatField
      FieldName = 'QUSprice'
    end
  end
  object TSCD_SGDHS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select TSCD_SGDHS.SGNO,TSCD_SGDHS.SBBH,TSCD_SGDHS.Qty,IsNull(TSC' +
        'D_CGZLSS.okQty,0) as okQty,isnull(TSCD_SGDHS.Qty,0)-isnull(TSCD_' +
        'CGZLSS.okQty,0) as Diff,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SGDH.DepI' +
        'D,BDepartment.DepName,TSCD_ZSZL.ZSDH,TSCD_ZSZL.ZSJC_YW'
      'from TSCD_SGDHS '
      'left join TSCD_SGDH on TSCD_SGDH.SGNO=TSCD_SGDHS.SGNO  '
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_SGDHS.SBBH'
      'left join TSCD_ZSZL on TSCD_ZSZL.ZSDH = TSCD_SB.ZSDH '
      
        'left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_SG' +
        'DH.DepID  '
      'left join (select SGNO,SBBH,Sum(Qty) as okQty   '
      '  '#9#9'   from TSCD_CGZLSS '
      '  '#9#9'   where 1=1 '
      
        '  '#9#9'   Group by SGNO,SBBH)TSCD_CGZLSS on TSCD_CGZLSS.SGNO=TSCD_S' +
        'GDHS.SGNO and TSCD_CGZLSS.SBBH=TSCD_SGDHS.SBBH  '#9#9'    '
      'where 1=1 '
      'and TSCD_SGDHS.SBBH='#39'A000100040'#39)
    Left = 804
    Top = 258
    object TSCD_SGDHSSGNO: TStringField
      FieldName = 'SGNO'
      FixedChar = True
      Size = 11
    end
    object TSCD_SGDHSSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCD_SGDHSQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object TSCD_SGDHSokQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object TSCD_SGDHSDiff: TFloatField
      FieldName = 'Diff'
      DisplayFormat = '#,##0.0'
    end
    object TSCD_SGDHSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SGDHSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SGDHSDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object TSCD_SGDHSZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object TSCD_SGDHSZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
      Size = 50
    end
    object TSCD_SGDHSDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 276
    Top = 303
  end
  object UpdateSQL2: TUpdateSQL
    Left = 804
    Top = 306
  end
  object DS1: TDataSource
    DataSet = TSCD_SGDH
    Left = 230
    Top = 257
  end
  object DS2: TDataSource
    DataSet = TSCD_SGDHS
    Left = 756
    Top = 258
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 332
    Top = 257
  end
  object TSCD_SGDH_ToPO: TPopupMenu
    AutoHotkeys = maManual
    Left = 276
    Top = 346
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object TransferPO1: TMenuItem
      Caption = 'Transfer to PO'
      Enabled = False
      OnClick = TransferPO1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object TSCD_SGDHS_ToPO: TPopupMenu
    AutoHotkeys = maManual
    Left = 807
    Top = 352
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
