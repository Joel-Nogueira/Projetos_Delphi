program Aplicacao;

uses
  Vcl.Forms,
  uGerente in 'uGerente.pas' {Form1},
  uPais in 'uPais.pas',
  uEstado in 'uEstado.pas',
  uCidade in 'uCidade.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
