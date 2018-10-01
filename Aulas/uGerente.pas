unit uGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCidade, uEstado, uPais;

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
    editCodigoCidade: TEdit;
    editCodigoCidade2: TEdit;
    editDescricaoCidade: TEdit;
    editDescricaoCidade2: TEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnRecuperarClick(Sender: TObject);
  private
    { Private declarations }
    umaCidade: Cidade;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
var
  umEstado: Estado;
  umPais: Pais;
begin
  if umaCidade = nil then
  begin
    umaCidade := Cidade.Create;
    umaCidade.SetCodigo(StrToInt(Self.editCodigoCidade.Text));
    umaCidade.SetDescricao(Self.editDescricaoCidade.Text);

    umEstado := Estado.Create;
    umEstado.SetCodigo(StrToInt(Self.editCodigoEstado.Text));
    umEstado.SetDescricao(Self.editDescricaoEstado.Text);
    umEstado.SetUf(Self.editEstadoUf.Text);
    umaCidade.SetEstado(umEstado);

    umPais := Pais.Create;
    umPais.SetCodigo(StrToInt(Self.editCodigoPais.Text));
    umPais.SetDescricao(Self.editDescricaoPais.Text);
    umaCidade.GetEstado.SetPais(umPais);
  end;
end;

procedure TForm1.btnRecuperarClick(Sender: TObject);
var
  umEstado: Estado;
  umPais: Pais;
begin
//  ShowMessage('Codigo: ' + IntToStr(umPais.GetCodigo));
//  ShowMessage('Descricao: ' + umPais.GetDescricao);

  if umaCidade <> nil then
  begin
    umEstado := umaCidade.GetEstado;
    umPais := umEstado.GetPais;

    editCodigoCidade2.Text := IntToStr(umaCidade.GetCodigo);
    editDescricaoCidade2.Text := umaCidade.GetDescricao;

    editCodigoEstado2.Text := IntToStr(umEstado.GetCodigo);
    editDescricaoEstado2.Text := umEstado.GetDescricao;
    editUfEstado2.Text := umEstado.GetUf;

    editCodigoPais2.Text := IntToStr(umPais.GetCodigo);
    editDescricaoPais2.Text := umPais.GetDescricao;

    umaCidade.Destruct;
    umaCidade := nil;
  end;
end;

end.
