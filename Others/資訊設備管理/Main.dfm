object MainForm: TMainForm
  Left = 194
  Top = 111
  Caption = #36039#35338#35373#20633#31649#29702#31995#32113
  ClientHeight = 600
  ClientWidth = 800
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  WindowMenu = Window1
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 581
    Width = 800
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 496
    object File1: TMenuItem
      Caption = #22522#26412#36039#26009#35373#23450
      Hint = 'File related commands'
      object FileNewItem: TMenuItem
        Caption = #36001#29986#39006#21029#32173#35703
        ImageIndex = 6
        OnClick = FileNewItemClick
      end
      object FileOpenItem: TMenuItem
        Caption = #36001#29986#20358#28304#32173#35703
        ImageIndex = 7
        OnClick = FileOpenItemClick
      end
      object FileCloseItem: TMenuItem
        Caption = #36001#29986#31649#21046#26041#24335#32173#35703
        OnClick = FileCloseItemClick
      end
      object FileSaveItem: TMenuItem
        Caption = #20445#31649#20154#32173#35703
        ImageIndex = 8
      end
    end
    object Edit1: TMenuItem
      Caption = #36001#29986#24314#31435
      OnClick = Edit1Click
    end
    object Window1: TMenuItem
      Caption = #36001#29986#30064#21205
    end
    object Help1: TMenuItem
      Caption = '&Help'
      Hint = 'Help topics'
      object HelpAboutItem: TMenuItem
        Caption = '&About...'
        Hint = 
          'About|Displays program information, version number, and copyrigh' +
          't'
        OnClick = HelpAbout1Execute
      end
    end
  end
end
