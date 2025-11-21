object SOPTool: TSOPTool
  Left = 328
  Top = 184
  BorderStyle = bsDialog
  Caption = 'SOPTool'
  ClientHeight = 359
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 172
    Top = 43
    Width = 18
    Height = 20
    Caption = '=>'
  end
  object Label2: TLabel
    Left = 40
    Top = 256
    Width = 64
    Height = 20
    Caption = 'Key Field'
  end
  object Label3: TLabel
    Left = 200
    Top = 256
    Width = 101
    Height = 20
    Caption = 'Column1 Field'
  end
  object Label4: TLabel
    Left = 392
    Top = 256
    Width = 101
    Height = 20
    Caption = 'Column2 Field'
  end
  object Label5: TLabel
    Left = 43
    Top = 220
    Width = 60
    Height = 20
    Caption = 'Number:'
  end
  object Label6: TLabel
    Left = 200
    Top = 304
    Width = 101
    Height = 20
    Caption = 'Column3 Field'
  end
  object Label7: TLabel
    Left = 456
    Top = 304
    Width = 101
    Height = 20
    Caption = 'Column4 Field'
  end
  object ExlBtn: TButton
    Left = 320
    Top = 40
    Width = 113
    Height = 25
    Caption = 'Clear Shapes'
    TabOrder = 0
    OnClick = ExlBtnClick
  end
  object Edit1: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 28
    TabOrder = 1
    Text = 'cutting.xls'
  end
  object Memo1: TMemo
    Left = 32
    Top = 80
    Width = 537
    Height = 105
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 28
    TabOrder = 3
    Text = 'Demo1.xls'
  end
  object Button1: TButton
    Left = 440
    Top = 40
    Width = 113
    Height = 25
    Caption = 'XML'
    TabOrder = 4
    OnClick = Button1Click
  end
  object KeyEdit: TEdit
    Left = 112
    Top = 253
    Width = 81
    Height = 28
    TabOrder = 5
    Text = 'BWBH'
  end
  object ColEdit1: TEdit
    Left = 304
    Top = 253
    Width = 81
    Height = 28
    TabOrder = 6
    Text = 'piece'
  end
  object ColEdit2: TEdit
    Left = 496
    Top = 253
    Width = 81
    Height = 28
    TabOrder = 7
    Text = 'layer'
  end
  object ColNumSpin: TSpinEdit
    Left = 112
    Top = 216
    Width = 49
    Height = 30
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 9
  end
  object ColEdit3: TEdit
    Left = 304
    Top = 301
    Width = 137
    Height = 28
    TabOrder = 9
    Text = '@KT_SOPCutCC'
  end
  object ColEdit4: TEdit
    Left = 560
    Top = 301
    Width = 137
    Height = 28
    TabOrder = 10
    Text = 'IMGName'
  end
end
