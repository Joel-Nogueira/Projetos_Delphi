unit uPais;

interface

type Pais = class
  private
    codigo: Integer;
    descricao: String;
  public
    constructor Create;
    destructor Destruct;

    function GetCodigo: Integer;
    function GetDescricao: String;

    procedure SetCodigo(pCodigo: Integer);
    procedure SetDescricao(pDescricao: String);
end;

implementation

{ Pais }

constructor Pais.Create;
begin
  codigo := 0;
  descricao := '';
end;

destructor Pais.Destruct;
begin

end;

function Pais.GetCodigo: Integer;
begin
  result := codigo;
end;

function Pais.GetDescricao: String;
begin
    result := descricao;
end;

procedure Pais.SetCodigo(pCodigo: Integer);
begin
  codigo := pCodigo;
end;

procedure Pais.SetDescricao(pDescricao: String);
begin
  descricao := pDescricao;
end;

end.
