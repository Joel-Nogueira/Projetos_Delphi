unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCGrids, System.ImageList, Vcl.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel6: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Panel7: TPanel;
    Shape4: TShape;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label5: TLabel;
    SpeedButton10: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel8: TPanel;
    Shape3: TShape;
    Shape5: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape7: TShape;
    Label8: TLabel;
    Shape8: TShape;
    Label9: TLabel;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1DESCRICAO: TStringField;
    FDMemTable1STATUS: TIntegerField;
    Label11: TLabel;
    FDMemTable1TOTAL: TBCDField;
    FDMemTable1DATAHORA: TDateTimeField;
    SpeedButton4: TSpeedButton;
    SpeedButton11: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarMesas;
    procedure FiltrarStatus(Status: Integer);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CarregarMesas;
var
  I: Integer;
begin
  FDMemTable1.DisableControls;
  FDMemTable1.Close;
  FDMemTable1.CreateDataSet;
  FDMemTable1.Open;

  for I := 1 to 8 do
  begin
    FDMemTable1.Append;
    FDMemTable1DESCRICAO.AsString := 'Mesa' + FormatFloat('00', I);
    FDMemTable1STATUS.AsInteger := Random(4);
    FDMemTable1TOTAL.AsFloat :=  1 * Random(9);
    FDMemTable1DATAHORA.AsDateTime := Now;
    FDMemTable1.Post;
  end;

  FDMemTable1.EnableControls;
end;

procedure TfrmPrincipal.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  Label6.Caption := FDMemTable1DESCRICAO.AsString;
  Label11.Caption := Format('%3.2f', [FDMemTable1TOTAL.AsFloat]);;
  Label8.Caption := 'Aberto há: ' + FormatDateTime('hh', Now - FDMemTable1DATAHORA.AsDateTime);
  case (FDMemTable1STATUS.AsInteger) of
    0:
    begin
      Shape8.Brush.Color := clGreen;
      Label9.Caption := 'Livre';
      Shape5.Brush.Color := clGreen;
    end;

    1:
    begin
      Shape8.Brush.Color := clRed;
      Label9.Caption := 'Ocupada';
      Shape5.Brush.Color := clRed;
    end;

    2:
    begin
      Shape8.Brush.Color := $000080FF;
      Label9.Caption := 'Reservada';
      Shape5.Brush.Color := $000080FF;
    end;

    3:
    begin
      Shape8.Brush.Color := clGray;
      Label9.Caption := 'Finalizada';
      Shape5.Brush.Color := clGray;
    end;

   end;
end;

procedure TfrmPrincipal.FiltrarStatus(Status: Integer);
begin
  if (Status >= 0) then
  begin
    FDMemTable1.Filtered := false;
    FDMemTable1.Filter := 'Status = ' + Status.ToString;
    FDMemTable1.Filtered := true;
  end
  else
  begin
    FDMemTable1.Filtered := false;
    FDMemTable1.Filter := '';
    FDMemTable1.Filtered := true;
  end;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  CarregarMesas;
end;

procedure TfrmPrincipal.SpeedButton11Click(Sender: TObject);
begin
  FiltrarStatus(TSpeedButton(Sender).Tag);
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  CarregarMesas;
end;

end.
