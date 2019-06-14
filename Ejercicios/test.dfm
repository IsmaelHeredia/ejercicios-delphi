object FormHome: TFormHome
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ejercicios'
  ClientHeight = 380
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcOptions: TPageControl
    Left = 8
    Top = 8
    Width = 457
    Height = 353
    ActivePage = tsNotas
    TabOrder = 0
    object tsReverse: TTabSheet
      Caption = 'Reverse'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object lblTexto: TLabel
        Left = 16
        Top = 24
        Width = 38
        Height = 13
        Caption = 'Texto : '
      end
      object lblSalida: TLabel
        Left = 16
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Salida : '
      end
      object txtEntrada: TEdit
        Left = 60
        Top = 21
        Width = 357
        Height = 21
        TabOrder = 0
      end
      object txtSalida: TEdit
        Left = 60
        Top = 61
        Width = 357
        Height = 21
        TabOrder = 1
      end
      object btnReverseString: TButton
        Left = 120
        Top = 112
        Width = 185
        Height = 25
        Caption = 'Reverse String'
        TabOrder = 2
        OnClick = btnReverseStringClick
      end
    end
    object tsNotas: TTabSheet
      Caption = 'Notas'
      ImageIndex = 1
      object lblMatematica: TLabel
        Left = 24
        Top = 24
        Width = 65
        Height = 13
        Caption = 'Matematica : '
      end
      object lblFisica: TLabel
        Left = 24
        Top = 56
        Width = 36
        Height = 13
        Caption = 'Fisica : '
      end
      object lblLengua: TLabel
        Left = 24
        Top = 120
        Width = 45
        Height = 13
        Caption = 'Lengua : '
      end
      object lblGeografia: TLabel
        Left = 24
        Top = 152
        Width = 57
        Height = 13
        Caption = 'Geografia : '
      end
      object lblQuimica: TLabel
        Left = 24
        Top = 88
        Width = 47
        Height = 13
        Caption = 'Quimica : '
      end
      object txtNotaMatematica: TEdit
        Left = 95
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object txtNotaFisica: TEdit
        Left = 66
        Top = 51
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object txtNotaQuimica: TEdit
        Left = 77
        Top = 85
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object txtNotaLengua: TEdit
        Left = 75
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object txtNotaGeografia: TEdit
        Left = 87
        Top = 149
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object btnAgregarNotaMatematica: TButton
        Left = 222
        Top = 19
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 5
        OnClick = btnAgregarNotaMatematicaClick
      end
      object btnAgregarNotaFisica: TButton
        Left = 193
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 6
        OnClick = btnAgregarNotaFisicaClick
      end
      object btnAgregarNotaQuimica: TButton
        Left = 204
        Top = 81
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 7
        OnClick = btnAgregarNotaQuimicaClick
      end
      object btnAgregarNotaLengua: TButton
        Left = 204
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 8
        OnClick = btnAgregarNotaLenguaClick
      end
      object btnAgregarNotaGeografia: TButton
        Left = 214
        Top = 143
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 9
        OnClick = btnAgregarNotaGeografiaClick
      end
      object btnPromedioMatematica: TButton
        Left = 303
        Top = 19
        Width = 75
        Height = 25
        Caption = 'Promedio'
        TabOrder = 10
        OnClick = btnPromedioMatematicaClick
      end
      object btnPromedioFisica: TButton
        Left = 274
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Promedio'
        TabOrder = 11
        OnClick = btnPromedioFisicaClick
      end
      object btnPromedioQuimica: TButton
        Left = 285
        Top = 81
        Width = 75
        Height = 25
        Caption = 'Promedio'
        TabOrder = 12
        OnClick = btnPromedioQuimicaClick
      end
      object btnPromedioLengua: TButton
        Left = 285
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Promedio'
        TabOrder = 13
        OnClick = btnPromedioLenguaClick
      end
      object btnPromedioGeografia: TButton
        Left = 295
        Top = 143
        Width = 75
        Height = 25
        Caption = 'Promedio'
        TabOrder = 14
        OnClick = btnPromedioGeografiaClick
      end
      object btnLimpiarMatematica: TButton
        Left = 384
        Top = 19
        Width = 59
        Height = 25
        Caption = 'Limpiar'
        TabOrder = 15
        OnClick = btnLimpiarMatematicaClick
      end
      object btnLimpiarFisica: TButton
        Left = 355
        Top = 50
        Width = 59
        Height = 25
        Caption = 'Limpiar'
        TabOrder = 16
        OnClick = btnLimpiarFisicaClick
      end
      object btnLimpiarQuimica: TButton
        Left = 366
        Top = 81
        Width = 59
        Height = 25
        Caption = 'Limpiar'
        TabOrder = 17
        OnClick = btnLimpiarQuimicaClick
      end
      object btnLimpiarLengua: TButton
        Left = 366
        Top = 112
        Width = 59
        Height = 25
        Caption = 'Limpiar'
        TabOrder = 18
        OnClick = btnLimpiarLenguaClick
      end
      object btnLimpiarGeografia: TButton
        Left = 376
        Top = 143
        Width = 59
        Height = 25
        Caption = 'Limpiar'
        TabOrder = 19
        OnClick = btnLimpiarGeografiaClick
      end
      object mmOutput: TMemo
        Left = 23
        Top = 184
        Width = 412
        Height = 121
        Lines.Strings = (
          'mmOutput')
        TabOrder = 20
      end
    end
    object tsEnteros: TTabSheet
      Caption = 'Enteros'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
    object tsFactorial: TTabSheet
      Caption = 'Factorial'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
  end
end
