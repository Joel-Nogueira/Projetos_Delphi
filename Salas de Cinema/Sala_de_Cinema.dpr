program Sala_de_Cinema;

uses
  Vcl.Forms,
  uSala in 'uSala.pas' {uPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuPrincipal, uPrincipal);
  Application.Run;
end.
