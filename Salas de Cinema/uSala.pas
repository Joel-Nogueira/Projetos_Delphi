unit uSala;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TuPrincipal = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1Vaga: TStringField;
    FDMemTable1Ocupada: TBooleanField;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uPrincipal: TuPrincipal;
  Indice: Integer;

implementation

{$R *.dfm}

procedure TuPrincipal.DBCtrlGrid1Click(Sender: TObject);
begin
  ShowMessage('UHUUUU');
end;

procedure TuPrincipal.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if Indice = Index then
    Panel1.Color := clWhite;
end;

procedure TuPrincipal.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  FDMemTable1.CreateDataSet;
  FDMemTable1.Open;
  for I := 1 to 15 do
  begin
    FDMemTable1.Append;
    FDMemTable1Vaga.AsString := '';
    FDMemTable1Ocupada.AsBoolean := false;
    FDMemTable1.Post;
  end;
end;

end.
