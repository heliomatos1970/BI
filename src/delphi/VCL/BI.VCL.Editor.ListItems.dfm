object FormListItems: TFormListItems
  Left = 0
  Top = 0
  Caption = 'Items'
  ClientHeight = 291
  ClientWidth = 331
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LBItems: TCheckListBox
    Left = 0
    Top = 33
    Width = 331
    Height = 258
    OnClickCheck = LBItemsClickCheck
    Align = alClient
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 0
    OnClick = LBItemsClick
    OnDragDrop = LBItemsDragDrop
    OnDragOver = LBItemsDragOver
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 331
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SBUp: TSpeedButton
      Left = 5
      Top = 4
      Width = 23
      Height = 22
      Caption = '^'
      Enabled = False
      Flat = True
      OnClick = SBUpClick
    end
    object SBDown: TSpeedButton
      Left = 34
      Top = 4
      Width = 23
      Height = 22
      Caption = 'v'
      Enabled = False
      Flat = True
      OnClick = SBDownClick
    end
    object BAll: TButton
      Left = 71
      Top = 2
      Width = 50
      Height = 25
      Caption = '&All'
      Enabled = False
      TabOrder = 0
      OnClick = BAllClick
    end
    object BNone: TButton
      Left = 133
      Top = 2
      Width = 57
      Height = 25
      Caption = '&None'
      Enabled = False
      TabOrder = 1
      OnClick = BNoneClick
    end
  end
end
