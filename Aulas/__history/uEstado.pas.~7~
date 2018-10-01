unit uEstado;

interface

type Estado = class
  private
    codigo: Integer;
    descricao: String;
    uf: String;

  public
    constructor Create;
    destructor Destruct;

    function GetCodigo: Integer;
    function GetDescricao: String;
    function GetUf: String;

    procedure SetCodigo(pCodigo: Integer);
    procedure SetDescricao(pDescricao: String);
    procedure SetUf(pUf: String);
end;

implementation

{ Estado }

constructor Estado.Create;
begin
  codigo := 0;
  descricao := '';
  uf := '';
end;

destructor Estado.Destruct;
begin

end;

function Estado.GetCodigo: Integer;
begin
  Result := codigo;
end;

function Estado.GetDescricao: String;
begin
  Result := descricao;
end;

function Estado.GetUf: String;
begin
  Result := uf;
end;

procedure Estado.SetCodigo(pCodigo: Integer);
begin
  codigo := pCodigo;
end;

procedure Estado.SetDescricao(pDescricao: String);
begin
  descricao := pDescricao;
end;

procedure Estado.SetUf(pUf: String);
begin
  uf := pUf;
end;

end.
