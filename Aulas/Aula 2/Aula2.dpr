program Aula2;

uses
  Vcl.Forms,
  uGerente in '..\Aula 1\uGerente.pas' {Form1},
  uPais in '..\Aula 1\uPais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
