object frmCadastroPais: TfrmCadastroPais
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pa'#237'ses'
  ClientHeight = 124
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 16
    Width = 70
    Height = 13
    Caption = 'C'#243'digo do Pa'#237's'
  end
  object Label2: TLabel
    Left = 159
    Top = 16
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object edtCodigoPais: TEdit
    Left = 19
    Top = 35
    Width = 113
    Height = 21
    TabOrder = 0
    TextHint = 'Digite o c'#243'digo do pa'#237's'
  end
  object edtDescricaoPais: TEdit
    Left = 159
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Digite o nome do pa'#237's'
  end
  object btnSalvar: TButton
    Left = 40
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
  object btnVoltar: TButton
    Left = 184
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = btnVoltarClick
  end
end
