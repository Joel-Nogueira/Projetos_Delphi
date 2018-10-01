unit uCadastroPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCadastroPais = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtCodigoPais: TEdit;
    edtDescricaoPais: TEdit;
    btnSalvar: TButton;
    btnVoltar: TButton;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPais: TfrmCadastroPais;

implementation

{$R *.dfm}

procedure TfrmCadastroPais.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
