unit uPais;

interface

uses uEstado;

type Pais = class
  private
    codigo: Integer;
    descricao: String;
    umEstado: Estado;
  public
    constructor Create;
    destructor Destruct;

    function GetCodigo: Integer;
    function GetDescricao: String;
    function GetEstado: Estado;

    procedure SetCodigo(pCodigo: Integer);
    procedure SetDescricao(pDescricao: String);
    procedure SetEstado(pEstado: Estado);
end;

implementation

{ Pais }

constructor Pais.Create;
begin
  codigo := 0;
  descricao := '';
  umEstado := Estado.Create;
end;

destructor Pais.Destruct;
begin

end;

function Pais.GetCodigo: Integer;
begin
  Result := codigo;
end;

function Pais.GetDescricao: String;
begin
  Result := descricao;
end;

function Pais.GetEstado: Estado;
begin
  Result := umEstado;
end;

procedure Pais.SetCodigo(pCodigo: Integer);
begin
  codigo := pCodigo;
end;

procedure Pais.SetDescricao(pDescricao: String);
begin
  descricao := pDescricao;
end;

procedure Pais.SetEstado(pEstado: Estado);
begin
  umEstado := pEstado;
end;

end.
