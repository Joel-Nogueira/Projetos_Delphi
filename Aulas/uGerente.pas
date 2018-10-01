unit uGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPais;

type
  TForm1 = class(TForm)
    btnGravar: TButton;
    btnRecuperar: TButton;
    editCodigoPais: TEdit;
    editDescricaoPais: TEdit;
    editCodigoPais2: TEdit;
    editDescricaoPais2: TEdit;
    editCodigoEstado: TEdit;
    editDescricaoEstado: TEdit;
    editCodigoEstado2: TEdit;
    editDescricaoEstado2: TEdit;
    editEstadoUf: TEdit;
    editUfEstado2: TEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnRecuperarClick(Sender: TObject);
  private
    { Private declarations }
    umPais: Pais;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  umPais := Pais.Create;
  umPais.SetCodigo(StrToInt(Self.editCodigoPais.Text));
  umPais.SetDescricao(Self.editDescricaoPais.Text);

  umPais.GetEstado.SetCodigo(StrToInt(Self.editCodigoEstado.Text));
  umPais.GetEstado.SetDescricao(Self.editDescricaoEstado.Text);
  umPais.GetEstado.SetUf(Self.editEstadoUf.Text);
end;

procedure TForm1.btnRecuperarClick(Sender: TObject);
begin
//  ShowMessage('Codigo: ' + IntToStr(umPais.GetCodigo));
//  ShowMessage('Descricao: ' + umPais.GetDescricao);

  if umPais <> nil then
  begin
    editCodigoPais2.Text := IntToStr(umPais.GetCodigo);
    editDescricaoPais2.Text := umPais.GetDescricao;

    editCodigoEstado2.Text := IntToStr(umPais.GetEstado.GetCodigo);
    editDescricaoEstado2.Text := umPais.GetEstado.GetDescricao;
    editUfEstado2.Text := umPais.GetEstado.GetUf;

    umPais.Destruct;
  end;
end;

end.
