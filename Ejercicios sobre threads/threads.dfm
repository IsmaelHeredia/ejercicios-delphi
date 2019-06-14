object FormHome: TFormHome
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FormHome'
  ClientHeight = 261
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object txtConsole: TMemo
    Left = 9
    Top = 17
    Width = 257
    Height = 169
    Lines.Strings = (
      'txtConsole')
    TabOrder = 0
  end
  object btnStartThread: TButton
    Left = 8
    Top = 192
    Width = 114
    Height = 25
    Caption = 'Start Thread'
    TabOrder = 1
    OnClick = btnStartThreadClick
  end
  object btnStopThread: TButton
    Left = 8
    Top = 223
    Width = 114
    Height = 25
    Caption = 'Stop Thread'
    TabOrder = 2
    OnClick = btnStopThreadClick
  end
  object btnStartThreads: TButton
    Left = 128
    Top = 192
    Width = 137
    Height = 25
    Caption = 'Start Threads'
    TabOrder = 3
    OnClick = btnStartThreadsClick
  end
  object btnStopThreads: TButton
    Left = 128
    Top = 223
    Width = 137
    Height = 25
    Caption = 'Stop Threads'
    TabOrder = 4
    OnClick = btnStopThreadsClick
  end
end
