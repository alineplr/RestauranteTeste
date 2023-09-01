unit untConsReceita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmConsReceita = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qryReceita: TSQLQuery;
    qryReceitaCDRECEITA: TStringField;
    dsReceita: TDataSource;
    prReceita: TDataSetProvider;
    clReceita: TClientDataSet;
    clReceitaCDRECEITA: TStringField;
    qryReceitaDSRECEITA: TStringField;
    clReceitaDSRECEITA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsReceita: TfrmConsReceita;

implementation

{$R *.dfm}

uses untdmPrincipal, untReceita;

procedure TfrmConsReceita.DBGrid1DblClick(Sender: TObject);
begin
if frmReceita <> nil then
  begin
  if frmReceita.clReceitaReceita.State in [dsInsert,dsEdit] then
  begin
    frmReceita.clReceitaReceita.FieldByName('CDRECEITACOMP').AsString := clReceita.FieldByName('CDRECEITA').AsString;
    frmReceita.clReceitaReceita.FieldByName('DSRECEITA').AsVariant := null;
  end;
  Close;
  end;
end;

procedure TfrmConsReceita.FormCreate(Sender: TObject);
begin
qryReceita.Close;
qryReceita.Open;

clReceita.Close;
clReceita.Open;
end;

end.
