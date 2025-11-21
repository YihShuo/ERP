object R_Factory_QCReport: TR_Factory_QCReport
  Left = 360
  Top = 303
  Width = 1305
  Height = 675
  Caption = 'R_Factory_QCReport'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1297
    Height = 644
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Pass Rate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 3
          Top = 8
          Width = 50
          Height = 16
          Caption = 'Label ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 193
          Top = 8
          Width = 51
          Height = 16
          Caption = 'QC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 475
          Top = 8
          Width = 45
          Height = 16
          Caption = 'User ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 664
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 765
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object ED_QCID: TEdit
          Left = 56
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
        object Edit4: TEdit
          Left = 528
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
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
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'class'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Inspected'
            Footers = <>
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Rejected'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'INSPECTED_QTY'
            Footers = <>
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'defect_qty'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DEFECT_RATE'
            Footers = <>
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Pass_Rate'
            Footers = <>
            Width = 123
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'MOLD BREAKDOWN'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 37
          Height = 16
          Caption = 'MJBH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 193
          Top = 8
          Width = 51
          Height = 16
          Caption = 'QC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button3: TButton
          Left = 520
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 637
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit1: TEdit
          Left = 48
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP3: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP4: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MJBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Inspected'
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'INSPECTED_QTY'
            Footers = <>
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'Defect_qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Rejected'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'DEFECT_RATE'
            Footers = <>
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Pass_Rate'
            Footers = <>
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'TOP1_ISSUE'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'TOP1_ISSUE_QTY'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'TOP2_ISSUE'
            Footers = <>
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'TOP2_ISSUE_QTY'
            Footers = <>
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'TOP3_ISSUE'
            Footers = <>
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'TOP3_ISSUE_QTY'
            Footers = <>
            Width = 137
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'COLOR BREAKDOWN'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 3
          Top = 8
          Width = 32
          Height = 16
          Caption = 'Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 201
          Top = 8
          Width = 51
          Height = 16
          Caption = 'QC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button5: TButton
          Left = 520
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 637
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit2: TEdit
          Left = 48
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP5: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP6: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Inspected'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'INSPECTED_QTY'
            Footers = <>
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'Defect_qty'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Rejected'
            Footers = <>
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'DEFECT_RATE'
            Footers = <>
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'Batch_Pass_Rate'
            Footers = <>
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'TOP1_ISSUE'
            Footers = <>
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'TOP1_ISSUE_QTY'
            Footers = <>
            Width = 134
          end
          item
            EditButtons = <>
            FieldName = 'TOP2_ISSUE'
            Footers = <>
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'TOP2_ISSUE_QTY'
            Footers = <>
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'TOP3_ISSUE'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'TOP3_ISSUE_QTY'
            Footers = <>
            Width = 120
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'DEFECT ANALYSIS BY MOLD'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 3
          Top = 8
          Width = 37
          Height = 16
          Caption = 'MJBH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 193
          Top = 8
          Width = 51
          Height = 16
          Caption = 'QC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button7: TButton
          Left = 520
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 637
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit3: TEdit
          Left = 48
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP7: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP8: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MJBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Defect_Qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LECH_KHUON'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RACH_NUT'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LEN_MAU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KHUYET_LIEU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BONG_BONG'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BI_LOM'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HOA_VAN_KHONG_RO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NHIEM_BAN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CHAY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BIEN_DAY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CHONG_DAU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BIEN_DANG'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DO_DAY_KHONG_DUNG'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TACH_LIEU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NGUYEN_NHAN_KHAC'
            Footers = <>
          end>
      end
    end
  end
  object QCR: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,ro' +
        'und((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate' +
        ' from ('
      'select ScanDate,class,sum(QTY) as QTY,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate = QC.Scan' +
        'Date and class = QC.Class) AS DECIMAL(4, 1)) as Batch_Inspected ' +
        ','
      
        'CAST((select count(*) from QC_R_Factory where ScanDate = QC.Scan' +
        'Date and STATUS = '#39'F'#39' and class = QC.Class) AS DECIMAL(4, 1)) as' +
        ' Batch_Rejected ,'
      
        'sum(INSPECTED_QTY) as INSPECTED_QTY,CAST(sum(defect_qty) AS DECI' +
        'MAL(4, 1)) as defect_qty'
      'from ('
      'select ScanDate,class,QTY,Multiple as INSPECTED_QTY,'
      
        '(LECH_KHUON+RACH_NUT+LEN_MAU+KHUYET_LIEU+BONG_BONG+BI_LOM+HOA_VA' +
        'N_KHONG_RO+NHIEM_BAN+CHAY+BIEN_DAY+CHONG_DAU+BIEN_DANG+DO_DAY_KH' +
        'ONG_DUNG+TACH_LIEU+NGUYEN_NHAN_KHAC) as defect_qty '
      'from QC_R_Factory'
      ')QC'
      'group by ScanDate,class'
      ')QC'
      'order by ScanDate,class')
    Left = 104
    Top = 328
    object QCRScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object QCRclass: TStringField
      FieldName = 'class'
      FixedChar = True
      Size = 1
    end
    object QCRQTY: TFloatField
      FieldName = 'QTY'
    end
    object QCRBatch_Inspected: TFloatField
      FieldName = 'Batch_Inspected'
    end
    object QCRBatch_Rejected: TFloatField
      FieldName = 'Batch_Rejected'
    end
    object QCRINSPECTED_QTY: TIntegerField
      FieldName = 'INSPECTED_QTY'
    end
    object QCRdefect_qty: TFloatField
      FieldName = 'defect_qty'
    end
    object QCRDEFECT_RATE: TFloatField
      FieldName = 'DEFECT_RATE'
    end
    object QCRBatch_Pass_Rate: TFloatField
      FieldName = 'Batch_Pass_Rate'
    end
  end
  object DS1: TDataSource
    DataSet = QCR
    Left = 104
    Top = 264
  end
  object DS2: TDataSource
    DataSet = QCR1
    Left = 184
    Top = 264
  end
  object QCR1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,ro' +
        'und((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate' +
        ','
      
        #39#39' as TOP1_ISSUE,0.0 as TOP1_ISSUE_QTY,'#39#39' as TOP2_ISSUE,0.0 as T' +
        'OP2_ISSUE_QTY,'#39#39' as TOP3_ISSUE,0.0 as TOP3_ISSUE_QTY'
      'from ('
      'select MJBH,SIZE,sum(QTY) as QTY,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate between '#39 +
        '2023/10/16'#39' and '#39'2023/10/23'#39' and MJBH = QC.MJBH and SIZE = QC.Si' +
        'ze) AS DECIMAL(4, 1)) as Batch_Inspected ,'
      
        'sum(INSPECTED_QTY) as INSPECTED_QTY,SUM(defect_qty) as Defect_qt' +
        'y,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate between '#39 +
        '2023/10/16'#39' and '#39'2023/10/23'#39' and STATUS = '#39'F'#39' and MJBH = QC.MJBH' +
        ' and SIZE = QC.Size ) AS DECIMAL(4, 1)) as Batch_Rejected '
      'from( '
      'select MJBH,SIZE,QTY,Multiple as INSPECTED_QTY,defect_qty '
      'from QC_R_Factory'
      'where ScanDate between '#39'2023/10/16'#39' and '#39'2023/10/23'#39
      ')QC'
      'group by MJBH,SIZE'
      ')QC')
    Left = 184
    Top = 320
    object QCR1MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object QCR1SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object QCR1QTY: TFloatField
      FieldName = 'QTY'
    end
    object QCR1Batch_Inspected: TFloatField
      FieldName = 'Batch_Inspected'
    end
    object QCR1INSPECTED_QTY: TIntegerField
      FieldName = 'INSPECTED_QTY'
    end
    object QCR1Defect_qty: TFloatField
      FieldName = 'Defect_qty'
    end
    object QCR1Batch_Rejected: TFloatField
      FieldName = 'Batch_Rejected'
    end
    object QCR1DEFECT_RATE: TFloatField
      FieldName = 'DEFECT_RATE'
    end
    object QCR1Batch_Pass_Rate: TFloatField
      FieldName = 'Batch_Pass_Rate'
    end
    object QCR1TOP1_ISSUE: TStringField
      FieldName = 'TOP1_ISSUE'
      FixedChar = True
      Size = 1
    end
    object QCR1TOP1_ISSUE_QTY: TFloatField
      FieldName = 'TOP1_ISSUE_QTY'
    end
    object QCR1TOP2_ISSUE: TStringField
      FieldName = 'TOP2_ISSUE'
      FixedChar = True
      Size = 1
    end
    object QCR1TOP2_ISSUE_QTY: TFloatField
      FieldName = 'TOP2_ISSUE_QTY'
    end
    object QCR1TOP3_ISSUE: TStringField
      FieldName = 'TOP3_ISSUE'
      FixedChar = True
      Size = 1
    end
    object QCR1TOP3_ISSUE_QTY: TFloatField
      FieldName = 'TOP3_ISSUE_QTY'
    end
  end
  object DS3: TDataSource
    DataSet = QCR2
    Left = 272
    Top = 264
  end
  object QCR2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,ro' +
        'und((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate' +
        ','
      
        #39#39' as TOP1_ISSUE,0.0 as TOP1_ISSUE_QTY,'#39#39' as TOP2_ISSUE,0.0 as T' +
        'OP2_ISSUE_QTY,'#39#39' as TOP3_ISSUE,0.0 as TOP3_ISSUE_QTY'
      'from ('
      'select Color,sum(QTY) as QTY,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate between '#39 +
        '2023/10/16'#39' and '#39'2023/10/23'#39' and EnglishName = QC.Color) AS DECI' +
        'MAL(4, 1)) as Batch_Inspected ,'
      
        'sum(INSPECTED_QTY) as INSPECTED_QTY,SUM(defect_qty) as Defect_qt' +
        'y,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate between '#39 +
        '2023/10/16'#39' and '#39'2023/10/23'#39' and STATUS = '#39'F'#39' and EnglishName = ' +
        'QC.Color) AS DECIMAL(4, 1)) as Batch_Rejected '
      'from( '
      
        'select EnglishName as Color,QTY,Multiple as INSPECTED_QTY,defect' +
        '_qty'
      'from QC_R_Factory'
      'where ScanDate between '#39'2023/10/16'#39' and '#39'2023/10/23'#39
      ')QC'
      'group by Color'
      ')QC'
      '')
    Left = 272
    Top = 320
    object QCR2Color: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 100
    end
    object QCR2QTY: TFloatField
      FieldName = 'QTY'
    end
    object QCR2Batch_Inspected: TFloatField
      FieldName = 'Batch_Inspected'
    end
    object QCR2INSPECTED_QTY: TIntegerField
      FieldName = 'INSPECTED_QTY'
    end
    object QCR2Defect_qty: TFloatField
      FieldName = 'Defect_qty'
    end
    object QCR2Batch_Rejected: TFloatField
      FieldName = 'Batch_Rejected'
    end
    object QCR2DEFECT_RATE: TFloatField
      FieldName = 'DEFECT_RATE'
    end
    object QCR2Batch_Pass_Rate: TFloatField
      FieldName = 'Batch_Pass_Rate'
    end
    object QCR2TOP1_ISSUE: TStringField
      FieldName = 'TOP1_ISSUE'
      FixedChar = True
      Size = 1
    end
    object QCR2TOP1_ISSUE_QTY: TFloatField
      FieldName = 'TOP1_ISSUE_QTY'
    end
    object QCR2TOP2_ISSUE: TStringField
      FieldName = 'TOP2_ISSUE'
      FixedChar = True
      Size = 1
    end
    object QCR2TOP2_ISSUE_QTY: TFloatField
      FieldName = 'TOP2_ISSUE_QTY'
    end
    object QCR2TOP3_ISSUE: TStringField
      FieldName = 'TOP3_ISSUE'
      FixedChar = True
      Size = 1
    end
    object QCR2TOP3_ISSUE_QTY: TFloatField
      FieldName = 'TOP3_ISSUE_QTY'
    end
  end
  object DS4: TDataSource
    DataSet = QCR3
    Left = 384
    Top = 264
  end
  object QCR3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select MJBH,SIZE,0 as Defect_Qty,0 as LECH_KHUON,0 as RACH_NUT,0' +
        ' as LEN_MAU,0 as KHUYET_LIEU,0 as BONG_BONG'
      
        ',0 as BI_LOM,0 as HOA_VAN_KHONG_RO,0 as NHIEM_BAN,0 as CHAY,0 as' +
        ' BIEN_DAY'
      
        ',0 as CHONG_DAU,0 as BIEN_DANG,0 as DO_DAY_KHONG_DUNG,0 as TACH_' +
        'LIEU,0 as NGUYEN_NHAN_KHAC'
      'from QC_R_Factory where 1 = 2')
    Left = 384
    Top = 320
    object QCR3MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object QCR3SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object QCR3Defect_Qty: TIntegerField
      FieldName = 'Defect_Qty'
    end
    object QCR3LECH_KHUON: TIntegerField
      FieldName = 'LECH_KHUON'
    end
    object QCR3RACH_NUT: TIntegerField
      FieldName = 'RACH_NUT'
    end
    object QCR3LEN_MAU: TIntegerField
      FieldName = 'LEN_MAU'
    end
    object QCR3KHUYET_LIEU: TIntegerField
      FieldName = 'KHUYET_LIEU'
    end
    object QCR3BONG_BONG: TIntegerField
      FieldName = 'BONG_BONG'
    end
    object QCR3BI_LOM: TIntegerField
      FieldName = 'BI_LOM'
    end
    object QCR3HOA_VAN_KHONG_RO: TIntegerField
      FieldName = 'HOA_VAN_KHONG_RO'
    end
    object QCR3CHAY: TIntegerField
      FieldName = 'CHAY'
    end
    object QCR3BIEN_DAY: TIntegerField
      FieldName = 'BIEN_DAY'
    end
    object QCR3CHONG_DAU: TIntegerField
      FieldName = 'CHONG_DAU'
    end
    object QCR3BIEN_DANG: TIntegerField
      FieldName = 'BIEN_DANG'
    end
    object QCR3DO_DAY_KHONG_DUNG: TIntegerField
      FieldName = 'DO_DAY_KHONG_DUNG'
    end
    object QCR3TACH_LIEU: TIntegerField
      FieldName = 'TACH_LIEU'
    end
    object QCR3NGUYEN_NHAN_KHAC: TIntegerField
      FieldName = 'NGUYEN_NHAN_KHAC'
    end
    object QCR3NHIEM_BAN: TIntegerField
      FieldName = 'NHIEM_BAN'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,ro' +
        'und((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate' +
        ' from ('
      'select ScanDate,class,sum(QTY) as QTY,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate = QC.Scan' +
        'Date and class = QC.Class) AS DECIMAL(4, 1)) as Batch_Inspected ' +
        ','
      
        'CAST((select count(*) from QC_R_Factory where ScanDate = QC.Scan' +
        'Date and STATUS = '#39'F'#39' and class = QC.Class) AS DECIMAL(4, 1)) as' +
        ' Batch_Rejected ,'
      
        'sum(INSPECTED_QTY) as INSPECTED_QTY,CAST(sum(defect_qty) AS DECI' +
        'MAL(4, 1)) as defect_qty'
      'from ('
      'select ScanDate,class,QTY,Multiple as INSPECTED_QTY,'
      
        '(LECH_KHUON+RACH_NUT+LEN_MAU+KHUYET_LIEU+BONG_BONG+BI_LOM+HOA_VA' +
        'N_KHONG_RO+NHIEM_BAN+CHAY+BIEN_DAY+CHONG_DAU+BIEN_DANG+DO_DAY_KH' +
        'ONG_DUNG+TACH_LIEU+NGUYEN_NHAN_KHAC) as defect_qty '
      'from QC_R_Factory'
      ')QC'
      'group by ScanDate,class'
      ')QC'
      'order by ScanDate,class')
    Left = 104
    Top = 416
  end
  object QTemp1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,ro' +
        'und((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate' +
        ' from ('
      'select ScanDate,class,sum(QTY) as QTY,'
      
        'CAST((select count(*) from QC_R_Factory where ScanDate = QC.Scan' +
        'Date and class = QC.Class) AS DECIMAL(4, 1)) as Batch_Inspected ' +
        ','
      
        'CAST((select count(*) from QC_R_Factory where ScanDate = QC.Scan' +
        'Date and STATUS = '#39'F'#39' and class = QC.Class) AS DECIMAL(4, 1)) as' +
        ' Batch_Rejected ,'
      
        'sum(INSPECTED_QTY) as INSPECTED_QTY,CAST(sum(defect_qty) AS DECI' +
        'MAL(4, 1)) as defect_qty'
      'from ('
      'select ScanDate,class,QTY,Multiple as INSPECTED_QTY,'
      
        '(LECH_KHUON+RACH_NUT+LEN_MAU+KHUYET_LIEU+BONG_BONG+BI_LOM+HOA_VA' +
        'N_KHONG_RO+NHIEM_BAN+CHAY+BIEN_DAY+CHONG_DAU+BIEN_DANG+DO_DAY_KH' +
        'ONG_DUNG+TACH_LIEU+NGUYEN_NHAN_KHAC) as defect_qty '
      'from QC_R_Factory'
      ')QC'
      'group by ScanDate,class'
      ')QC'
      'order by ScanDate,class')
    Left = 152
    Top = 416
  end
end
