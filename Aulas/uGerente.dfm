object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 273
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGravar: TButton
    Left = 112
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object btnRecuperar: TButton
    Left = 296
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Recuperar'
    TabOrder = 1
    OnClick = btnRecuperarClick
  end
  object editCodigo: TEdit
    Left = 90
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'C'#243'digo'
  end
  object editDescricao: TEdit
    Left = 90
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Descri'#231#227'o'
  end
  object editCodigo2: TEdit
    Left = 272
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'C'#243'digo 2'
  end
  object editDescricao2: TEdit
    Left = 272
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Descri'#231#227'o 2'
  end
end
