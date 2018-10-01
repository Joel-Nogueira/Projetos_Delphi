program Aplicacao;

uses
  Vcl.Forms,
  uGerente in 'uGerente.pas' {Form1},
  uPais in 'uPais.pas',
  uEstado in 'uEstado.pas',
  uCidade in 'uCidade.pas',
  uCadastroCidade in 'Views\uCadastroCidade.pas' {frmCadastroCidade},
  uCadastroPais in 'Views\uCadastroPais.pas' {frmCadastroPais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCadastroCidade, frmCadastroCidade);
  Application.CreateForm(TfrmCadastroPais, frmCadastroPais);
  Application.Run;
end.
