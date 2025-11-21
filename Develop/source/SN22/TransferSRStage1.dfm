object TransferSRStage: TTransferSRStage
  Left = 433
  Top = 258
  Width = 257
  Height = 332
  Caption = 'TransferSRStage'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 225
    Height = 81
    Caption = 'Pairs'
    TabOrder = 0
    object PairsEdit: TSpinEdit
      Left = 128
      Top = 44
      Width = 81
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 10
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Orginal'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Apply value'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 0
    Width = 221
    Height = 57
    Caption = 'Stage'
    TabOrder = 1
    object StagCombo: TComboBox
      Left = 37
      Top = 24
      Width = 145
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 0
      Text = 'SM2'
      Items.Strings = (
        'PRO'
        'SM2'
        'SM3'
        'SMS')
    end
  end
  object Button1: TButton
    Left = 128
    Top = 259
    Width = 105
    Height = 25
    Caption = 'Transfer'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 260
    Width = 105
    Height = 25
    Caption = 'Canecl'
    TabOrder = 3
    OnClick = Button2Click
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 144
    Width = 225
    Height = 81
    Caption = 'UserID'
    TabOrder = 4
    object RadioButton3: TRadioButton
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Orginal'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton4: TRadioButton
      Left = 16
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Apply value'
      TabOrder = 1
    end
    object UserID: TEdit
      Left = 126
      Top = 46
      Width = 81
      Height = 24
      TabOrder = 2
      Text = 'SYSTEM'
    end
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 232
    Width = 225
    Height = 17
    TabOrder = 5
  end
  object CKQuery: TQuery
    DatabaseName = 'DB'
    Left = 176
    Top = 152
  end
end
