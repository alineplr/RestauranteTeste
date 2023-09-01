unit untConsInsumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmConsInsumo = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qryInsumo: TSQLQuery;
    dsInsumo: TDataSource;
    prInsumo: TDataSetProvider;
    clInsumo: TClientDataSet;
    qryInsumoCDINSUMO: TStringField;
    qryInsumoDSINSUMO: TStringField;
    clInsumoCDINSUMO: TStringField;
    clInsumoDSINSUMO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsInsumo: TfrmConsInsumo;

implementation

{$R *.dfm}

uses untdmPrincipal, untReceita;

procedure TfrmConsInsumo.DBGrid1DblClick(Sender: TObject);
begin
if frmReceita <> nil then
  begin
  if frmReceita.clReceitaInsumo.State in [dsInsert,dsEdit] then
  begin
    frmReceita.clReceitaInsumo.FieldByName('CDINSUMO').AsString := clInsumo.FieldByName('CDINSUMO').AsString;
    frmReceita.clReceitaInsumo.FieldByName('DSINSUMO').AsVariant := null;
  end;
  Close;
  end;
end;

procedure TfrmConsInsumo.FormCreate(Sender: TObject);
begin
qryInsumo.Close;
qryInsumo.Open;

clInsumo.Close;
clInsumo.Open;
end;

end.
