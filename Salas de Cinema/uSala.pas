unit uSala;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TuPrincipal = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    Panel1: TPanel;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1Vaga: TStringField;
    FDMemTable1Ocupada: TBooleanField;
    procedure Panel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure DBCtrlGrid1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uPrincipal: TuPrincipal;

implementation

{$R *.dfm}

procedure TuPrincipal.DBCtrlGrid1Click(Sender: TObject);
begin
  ShowMessage('UHUUUU');
end;

procedure TuPrincipal.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if FDMemTable1Ocupada.AsBoolean = false then
    Panel1.Color := clHighlight
  else
    Panel1.Color := clRed;
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

procedure TuPrincipal.Panel1Click(Sender: TObject);
begin
  if  FDMemTable1Ocupada.AsBoolean = false then
  begin
    FDMemTable1Ocupada.AsBoolean := true;
  end
  else
    FDMemTable1Ocupada.AsBoolean := false;
end;

end.
