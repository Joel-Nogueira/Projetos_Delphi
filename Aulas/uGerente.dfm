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
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object btnRecuperar: TButton
    Left = 296
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Recuperar'
    TabOrder = 1
    OnClick = btnRecuperarClick
  end
  object editCodigoPais: TEdit
    Left = 90
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'C'#243'digo Pa'#237's'
  end
  object editDescricaoPais: TEdit
    Left = 90
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Descri'#231#227'o Pa'#237's'
  end
  object editCodigoPais2: TEdit
    Left = 272
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'C'#243'digo Pa'#237's 2'
  end
  object editDescricaoPais2: TEdit
    Left = 272
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Descri'#231#227'o Pa'#237's 2'
  end
  object editCodigoEstado: TEdit
    Left = 90
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 6
    TextHint = 'C'#243'digo Estado'
  end
  object editDescricaoEstado: TEdit
    Left = 90
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 7
    TextHint = 'Descri'#231#227'o Estado'
  end
  object editCodigoEstado2: TEdit
    Left = 272
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 8
    TextHint = 'C'#243'digo Estado 2'
  end
  object editDescricaoEstado2: TEdit
    Left = 272
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 9
    TextHint = 'Descri'#231#227'o Estado 2'
  end
  object editEstadoUf: TEdit
    Left = 90
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 10
    TextHint = 'UF'
  end
  object editUfEstado2: TEdit
    Left = 272
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 11
    TextHint = 'UF 2'
  end
  object editCodigoCidade: TEdit
    Left = 90
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 12
    TextHint = 'C'#243'digo Cidade'
  end
  object editCodigoCidade2: TEdit
    Left = 272
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 13
    TextHint = 'C'#243'digo Cidade 2'
  end
  object editDescricaoCidade: TEdit
    Left = 90
    Top = 170
    Width = 121
    Height = 21
    TabOrder = 14
    TextHint = 'Descri'#231#227'o Cidade'
  end
  object editDescricaoCidade2: TEdit
    Left = 272
    Top = 170
    Width = 121
    Height = 21
    TabOrder = 15
    TextHint = 'Descri'#231#227'o Cidade 2'
  end
end
