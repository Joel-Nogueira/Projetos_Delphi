unit uGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPais;

type
  TForm1 = class(TForm)
    btnGravar: TButton;
    btnRecuperar: TButton;
    editCodigo: TEdit;
    editDescricao: TEdit;
    editCodigo2: TEdit;
    editDescricao2: TEdit;
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
  umPais.SetCodigo(StrToInt(Self.editCodigo.Text));
  umPais.SetDescricao(Self.editDescricao.Text);
end;

procedure TForm1.btnRecuperarClick(Sender: TObject);
begin
//  ShowMessage('Codigo: ' + IntToStr(umPais.GetCodigo));
//  ShowMessage('Descricao: ' + umPais.GetDescricao);

  if umPais <> nil then
  begin
    editCodigo2.Text := IntToStr(umPais.GetCodigo);
    editDescricao2.Text := umPais.GetDescricao;

    umPais.Destruct;
  end;
end;

end.
