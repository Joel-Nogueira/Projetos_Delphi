unit uPais;

interface

type Pais = class
   private
    codigo: Integer;
    descricao: String[100]; //PARA N�O HAVER PROBLEMA DE PERSIT�NCIA NO DB
   public
    constructor Create;
    destructor Destruct;

    procedure SetCodigo(pCodigo: Integer);
    procedure SetDescricao(pDescricao: String);

    function GetCodigo: Integer;
    function GetDescricao: String;
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

procedure Pais.SetCodigo(pCodigo: Integer);
begin
  codigo := pCodigo;
end;

procedure Pais.SetDescricao(pDescricao: String);
begin
  descricao := pDescricao;
end;

function Pais.GetCodigo: Integer;
begin
    Result := codigo;
end;

function Pais.GetDescricao: String;
begin
    Result := descricao;
end;

end.
