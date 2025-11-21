object QC_Parmat_Config: TQC_Parmat_Config
  Left = 192
  Top = 125
  Width = 1359
  Height = 812
  Caption = 'QC Parmat Config'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 32
    Top = 16
    Width = 937
    Height = 105
    Caption = 'FTT Config'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 39
      Height = 16
      Caption = 'FTT  <'
    end
    object Label2: TLabel
      Left = 144
      Top = 48
      Width = 27
      Height = 16
      Caption = 'Alert'
    end
    object tbFFT: TEdit
      Left = 72
      Top = 48
      Width = 49
      Height = 24
      TabOrder = 0
    end
    object BtFFTSave: TButton
      Left = 488
      Top = 40
      Width = 75
      Height = 25
      Caption = 'SAVE'
      TabOrder = 1
      OnClick = BtFFTSaveClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 144
    Width = 537
    Height = 193
    Caption = 'Level A'
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 45
      Height = 16
      Caption = 'Subject'
    end
    object Label5: TLabel
      Left = 24
      Top = 80
      Width = 57
      Height = 16
      Caption = 'Message'
    end
    object tbSubject1: TEdit
      Left = 88
      Top = 32
      Width = 425
      Height = 24
      TabOrder = 0
    end
    object tbMsg1: TMemo
      Left = 88
      Top = 80
      Width = 425
      Height = 89
      Lines.Strings = (
        'tbMsg1')
      TabOrder = 1
    end
    object btMsg1: TButton
      Left = 16
      Top = 144
      Width = 65
      Height = 25
      Caption = 'SAVE'
      TabOrder = 2
      OnClick = btMsg1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 352
    Width = 537
    Height = 193
    Caption = 'Level B'
    TabOrder = 2
    object Label7: TLabel
      Left = 24
      Top = 40
      Width = 45
      Height = 16
      Caption = 'Subject'
    end
    object Label8: TLabel
      Left = 24
      Top = 80
      Width = 57
      Height = 16
      Caption = 'Message'
    end
    object tbSubject2: TEdit
      Left = 88
      Top = 32
      Width = 425
      Height = 24
      TabOrder = 0
    end
    object tbMsg2: TMemo
      Left = 88
      Top = 80
      Width = 425
      Height = 89
      Lines.Strings = (
        'tbMsg2')
      TabOrder = 1
    end
    object btMsg2: TButton
      Left = 16
      Top = 144
      Width = 65
      Height = 25
      Caption = 'SAVE'
      TabOrder = 2
      OnClick = btMsg2Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 592
    Top = 144
    Width = 553
    Height = 193
    Caption = 'Level A Mail list'
    TabOrder = 3
    object Label9: TLabel
      Left = 27
      Top = 32
      Width = 30
      Height = 16
      Caption = 'Lean'
    end
    object Label3: TLabel
      Left = 31
      Top = 80
      Width = 34
      Height = 16
      Caption = 'Email'
    end
    object Label10: TLabel
      Left = 33
      Top = 96
      Width = 20
      Height = 16
      Caption = 'List'
    end
    object cbLean1: TComboBox
      Left = 80
      Top = 32
      Width = 145
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      OnChange = cbLean1Change
    end
    object tbEmail1: TMemo
      Left = 80
      Top = 72
      Width = 457
      Height = 97
      Lines.Strings = (
        'tbEmail1')
      TabOrder = 1
    end
    object BtEmail1: TButton
      Left = 280
      Top = 32
      Width = 65
      Height = 25
      Caption = 'SAVE'
      TabOrder = 2
      OnClick = BtEmail1Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 592
    Top = 352
    Width = 385
    Height = 193
    Caption = 'Level B Mail list'
    TabOrder = 4
    object Label11: TLabel
      Left = 27
      Top = 32
      Width = 30
      Height = 16
      Caption = 'Lean'
    end
    object Label12: TLabel
      Left = 31
      Top = 80
      Width = 34
      Height = 16
      Caption = 'Email'
    end
    object Label13: TLabel
      Left = 33
      Top = 96
      Width = 20
      Height = 16
      Caption = 'List'
    end
    object tbEmail2: TMemo
      Left = 80
      Top = 80
      Width = 257
      Height = 81
      Lines.Strings = (
        'tbEmail2')
      TabOrder = 0
    end
    object BtEmail2: TButton
      Left = 272
      Top = 32
      Width = 65
      Height = 25
      Caption = 'SAVE'
      TabOrder = 1
      OnClick = BtEmail2Click
    end
    object cbLean2: TComboBox
      Left = 80
      Top = 32
      Width = 145
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      OnChange = cbLean2Change
    end
  end
  object GroupBox6: TGroupBox
    Left = 32
    Top = 560
    Width = 537
    Height = 193
    Caption = 'Level C'
    TabOrder = 5
    object Label6: TLabel
      Left = 24
      Top = 40
      Width = 45
      Height = 16
      Caption = 'Subject'
    end
    object Label14: TLabel
      Left = 24
      Top = 80
      Width = 57
      Height = 16
      Caption = 'Message'
    end
    object tbSubject3: TEdit
      Left = 88
      Top = 32
      Width = 425
      Height = 24
      TabOrder = 0
    end
    object tbMsg3: TMemo
      Left = 88
      Top = 80
      Width = 425
      Height = 89
      Lines.Strings = (
        'tbMsg2')
      TabOrder = 1
    end
    object btMsg3: TButton
      Left = 16
      Top = 144
      Width = 65
      Height = 25
      Caption = 'SAVE'
      TabOrder = 2
      OnClick = btMsg3Click
    end
  end
  object GroupBox7: TGroupBox
    Left = 592
    Top = 560
    Width = 385
    Height = 193
    Caption = 'Level C Mail list'
    TabOrder = 6
    object Label15: TLabel
      Left = 27
      Top = 32
      Width = 30
      Height = 16
      Caption = 'Lean'
    end
    object Label16: TLabel
      Left = 31
      Top = 80
      Width = 34
      Height = 16
      Caption = 'Email'
    end
    object Label17: TLabel
      Left = 33
      Top = 96
      Width = 20
      Height = 16
      Caption = 'List'
    end
    object cbLean3: TComboBox
      Left = 80
      Top = 32
      Width = 145
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      OnChange = cbLean3Change
    end
    object tbEmail3: TMemo
      Left = 80
      Top = 80
      Width = 265
      Height = 89
      Lines.Strings = (
        'tbEmail1')
      TabOrder = 1
    end
    object btEmail3: TButton
      Left = 280
      Top = 32
      Width = 65
      Height = 25
      Caption = 'SAVE'
      TabOrder = 2
      OnClick = btEmail3Click
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
    Left = 296
    Top = 56
  end
  object QueryUpdate: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 48
  end
end
