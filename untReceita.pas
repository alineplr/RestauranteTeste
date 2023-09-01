unit untReceita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Vcl.StdCtrls, Data.DB,
  Data.SqlExpr, Vcl.ExtCtrls, Data.FMTBcd, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient, Datasnap.Provider, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.ImageList, Vcl.ImgList;

type
  TfrmReceita = class(TForm)
    Panel1: TPanel;
    pnBotaoReceita: TPanel;
    pnCadReceita: TPanel;
    Panel4: TPanel;
    dtReceita: TSQLDataSet;
    dtReceitaCDRECEITA: TStringField;
    dtReceitaDSRECEITA: TStringField;
    prReceita: TDataSetProvider;
    clReceita: TClientDataSet;
    clReceitaCDRECEITA: TStringField;
    clReceitaDSRECEITA: TStringField;
    dsReceita: TDataSource;
    edCodigoReceita: TDBEdit;
    edDescricaoReceita: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dtReceitaReceita: TSQLDataSet;
    prReceitaReceita: TDataSetProvider;
    clReceitaReceita: TClientDataSet;
    dsReceitaReceita: TDataSource;
    dtReceitaReceitaCDRECEITA: TStringField;
    dtReceitaReceitaCDRECEITACOMP: TStringField;
    dtReceitaReceitaNRCOEFICIENTE: TFMTBCDField;
    clReceitaReceitaCDRECEITA: TStringField;
    clReceitaReceitaCDRECEITACOMP: TStringField;
    clReceitaReceitaNRCOEFICIENTE: TFMTBCDField;
    Panel5: TPanel;
    Label3: TLabel;
    qryReceitaComp: TSQLQuery;
    qryReceitaCompCDRECEITA: TStringField;
    dsReceitaComp: TDataSource;
    edNrCoeficienteReceita: TDBEdit;
    grReceitaReceita: TDBGrid;
    edDsReceitaComp: TDBEdit;
    edCodigoReceitaComp: TDBEdit;
    dtReceitaReceitaDSRECEITA: TStringField;
    clReceitaReceitaDSRECEITA: TStringField;
    pnBotaoRecRec: TPanel;
    brInserirRecRec: TBitBtn;
    btSalvarRecRec: TBitBtn;
    btAlterarRecRec: TBitBtn;
    qryReceitaCompDSRECEITA: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    btApagarRecRec: TBitBtn;
    btCancelar: TBitBtn;
    btInserirReceita: TBitBtn;
    btAlterarReceita: TBitBtn;
    btSalvarReceita: TBitBtn;
    btApagarReceita: TBitBtn;
    btCancelarReceita: TBitBtn;
    Panel7: TPanel;
    Panel8: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edNrCoeficienteInsumo: TDBEdit;
    edInsumo: TDBEdit;
    edCdReceitaInsumo: TDBEdit;
    grInsumo: TDBGrid;
    pnBotaoInsumo: TPanel;
    btInserirRecIns: TBitBtn;
    btSalvarRecIns: TBitBtn;
    btAlterarRecIns: TBitBtn;
    btApagarRecIns: TBitBtn;
    btCancelarRecIns: TBitBtn;
    btProximo: TBitBtn;
    btAnterior: TBitBtn;
    dtReceitaInsumo: TSQLDataSet;
    prReceitaInsumo: TDataSetProvider;
    clReceitaInsumo: TClientDataSet;
    dsReceitaInsumo: TDataSource;
    dtReceitaInsumoCDRECEITA: TStringField;
    dtReceitaInsumoCDINSUMO: TStringField;
    dtReceitaInsumoNRCOEFICIENTE: TFMTBCDField;
    dtReceitaInsumoDSINSUMO: TStringField;
    clReceitaInsumoCDRECEITA: TStringField;
    clReceitaInsumoCDINSUMO: TStringField;
    clReceitaInsumoNRCOEFICIENTE: TFMTBCDField;
    clReceitaInsumoDSINSUMO: TStringField;
    dtInsumo: TDataSource;
    qryInsumo: TSQLQuery;
    qryInsumoCDINSUMO: TStringField;
    qryInsumoDSINSUMO: TStringField;
    btUltimo: TBitBtn;
    btPrimeiro: TBitBtn;
    Panel2: TPanel;
    Label9: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure clReceitaAfterScroll(DataSet: TDataSet);
    procedure btAlterarRecInsClick(Sender: TObject);
    procedure brInserirRecRecClick(Sender: TObject);
    procedure btSalvarRecRecClick(Sender: TObject);
    procedure edCodigoReceitaCompDblClick(Sender: TObject);
    procedure edCodigoReceitaCompExit(Sender: TObject);
    procedure clReceitaReceitaBeforeEdit(DataSet: TDataSet);
    procedure clReceitaReceitaBeforeInsert(DataSet: TDataSet);
    procedure clReceitaReceitaAfterCancel(DataSet: TDataSet);
    procedure clReceitaReceitaAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grReceitaReceitaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grReceitaReceitaDblClick(Sender: TObject);
    procedure btInserirReceitaClick(Sender: TObject);
    procedure btAlterarRecRecClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure clReceitaBeforeInsert(DataSet: TDataSet);
    procedure clReceitaBeforeEdit(DataSet: TDataSet);
    procedure clReceitaAfterCancel(DataSet: TDataSet);
    procedure clReceitaAfterPost(DataSet: TDataSet);
    procedure btCancelarReceitaClick(Sender: TObject);
    procedure btApagarRecRecClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure clReceitaReceitaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btInserirRecInsClick(Sender: TObject);
    procedure btSalvarRecInsClick(Sender: TObject);
    procedure btApagarRecInsClick(Sender: TObject);
    procedure btCancelarRecInsClick(Sender: TObject);
    procedure grInsumoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grInsumoDblClick(Sender: TObject);
    procedure edCdReceitaInsumoExit(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAlterarReceitaClick(Sender: TObject);
    procedure btApagarReceitaClick(Sender: TObject);
    procedure clReceitaInsumoAfterCancel(DataSet: TDataSet);
    procedure clReceitaInsumoAfterPost(DataSet: TDataSet);
    procedure clReceitaInsumoBeforeEdit(DataSet: TDataSet);
    procedure clReceitaInsumoBeforeInsert(DataSet: TDataSet);
    procedure clReceitaInsumoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure edCdReceitaInsumoDblClick(Sender: TObject);
    procedure clReceitaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btSalvarReceitaClick(Sender: TObject);
  private
    { Private declarations }
    procedure ModoInserirEditar;
    procedure ModoSalvarCancelar;
    procedure ModoInserirEditarReceita;
    procedure ModoSalvarCancelarReceita;
    procedure ModoInserirEditarInsumo;
    procedure ModoSalvarCancelarInsumo;
    procedure ConexaoBancoDados;
    function ValidarCamposReceita : Boolean;
    function ValidarCamposReceitaReceita : Boolean;
    function ValidarCamposReceitaInsumo : Boolean;
  public
    { Public declarations }
  end;

var
  frmReceita: TfrmReceita;

implementation

{$R *.dfm}

uses untdmPrincipal, untConsReceita, untConsInsumo;

procedure TfrmReceita.btInserirRecInsClick(Sender: TObject);
begin
try
clReceitaInsumo.Append;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btSalvarReceitaClick(Sender: TObject);
begin
try
  if ValidarCamposReceita then
    begin
    clReceita.Post;
    clReceita.ApplyUpdates(0);
    clReceita.Refresh;
    end;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btSalvarRecInsClick(Sender: TObject);
begin
try
  if ValidarCamposReceitaInsumo then
    begin
    if clReceitaInsumo.FieldByName('CDRECEITA').AsString = '' then
      clReceitaInsumo.FieldByName('CDRECEITA').AsString := clReceita.FieldByName('CDRECEITA').AsString;
    clReceitaInsumo.Post;
    clReceitaInsumo.ApplyUpdates(0);
    clReceitaInsumo.Refresh;
    end;
except
  On E: Exception do
    ShowMessage(E.Message);

end;
end;

procedure TfrmReceita.btAlterarReceitaClick(Sender: TObject);
begin
try
clReceita.Edit;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btAlterarRecInsClick(Sender: TObject);
begin
try
clReceitaInsumo.Edit;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btApagarReceitaClick(Sender: TObject);
begin
if messagedlg('Deseja apagar a receita ' + clReceita.FieldByName('DSRECEITA').AsString + '?' ,mtconfirmation,[mbyes,mbno],0)= mryes then
begin
  try
  if ((clReceitaReceita.IsEmpty) and (clReceitaInsumo.IsEmpty)) then
    begin
    clReceita.Delete;
    if clReceita.ApplyUpdates(0) = 0 then
      clReceita.Refresh
    end
  else
    begin
      ShowMessage('Receita principal não pode ser excluída, pois existe itens pertencentes a esta receita.');
    end;
  except
  On E: Exception do
    ShowMessage(E.Message);
  end;
end;
end;

procedure TfrmReceita.btApagarRecInsClick(Sender: TObject);
begin
if messagedlg('Deseja apagar o insumo ' + clReceitaInsumo.FieldByName('DSINSUMO').AsString + '?' ,mtconfirmation,[mbyes,mbno],0)= mryes then
begin
  try
  clReceitaInsumo.Delete;
  if clReceitaInsumo.ApplyUpdates(0) = 0 then
    clReceitaInsumo.Refresh
  except
  On E: Exception do
    ShowMessage(E.Message);
  end;
end;
end;

procedure TfrmReceita.btCancelarRecInsClick(Sender: TObject);
begin
try
clReceitaInsumo.Cancel;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.brInserirRecRecClick(Sender: TObject);
begin
try
clReceitaReceita.Append;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btSalvarRecRecClick(Sender: TObject);
begin
try
  if ValidarCamposReceitaReceita then
    begin
    if clReceitaReceita.FieldByName('CDRECEITA').AsString = '' then
      clReceitaReceita.FieldByName('CDRECEITA').AsString := clReceita.FieldByName('CDRECEITA').AsString;

    clReceitaReceita.Post;
    clReceitaReceita.ApplyUpdates(0);
    clReceitaReceita.Refresh;
    end;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btUltimoClick(Sender: TObject);
begin
if clReceita.Eof then
  begin
  ShowMessage('Último registro.');
  end
else
  begin
  clReceita.Last;
  end;
end;

procedure TfrmReceita.btAlterarRecRecClick(Sender: TObject);
begin
try
clReceitaReceita.Edit;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btAnteriorClick(Sender: TObject);
begin
if clReceita.Bof then
  begin
  ShowMessage('Primeiro registro.');
  end
else
  begin
  clReceita.Prior;
  end;
end;

procedure TfrmReceita.btApagarRecRecClick(Sender: TObject);
begin
if messagedlg('Deseja apagar a receita ' + clReceitaReceita.FieldByName('DSRECEITA').AsString + '?' ,mtconfirmation,[mbyes,mbno],0)= mryes then
begin
  try
  clReceitaReceita.Delete;
  if clReceitaReceita.ApplyUpdates(0) = 0 then
    clReceitaReceita.Refresh
  except
  On E: Exception do
    ShowMessage(E.Message);
  end;
end;
end;

procedure TfrmReceita.btCancelarClick(Sender: TObject);
begin
try
clReceitaReceita.Cancel;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btCancelarReceitaClick(Sender: TObject);
begin
try
clReceita.Cancel;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btInserirReceitaClick(Sender: TObject);
begin
try
clReceita.Append;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.btPrimeiroClick(Sender: TObject);
begin
if clReceita.Bof then
  begin
  ShowMessage('Primeiro registro.');
  end
else
  begin
  clReceita.First;
  end;
end;

procedure TfrmReceita.btProximoClick(Sender: TObject);
begin
if clReceita.Eof then
  begin
  ShowMessage('Último registro.');
  end
else
  begin
  clReceita.Next;
  end;
end;

procedure TfrmReceita.clReceitaAfterCancel(DataSet: TDataSet);
begin
ModoSalvarCancelarReceita;
end;

procedure TfrmReceita.clReceitaAfterPost(DataSet: TDataSet);
begin
ModoSalvarCancelarReceita;
end;

procedure TfrmReceita.clReceitaAfterScroll(DataSet: TDataSet);
begin
try
dtReceitaReceita.Close;
dtReceitaReceita.ParamByName('vCDRECEITA').AsString := clReceita.FieldByName('CDRECEITA').AsString;
dtReceitaReceita.Open;

clReceitaReceita.Close;
clReceitaReceita.Open;

dtReceitaInsumo.Close;
dtReceitaInsumo.ParamByName('vCDRECEITA').AsString := clReceita.FieldByName('CDRECEITA').AsString;
dtReceitaInsumo.Open;

clReceitaInsumo.Close;
clReceitaInsumo.Open;
except
  On E: Exception do
    ShowMessage(E.Message);
end;
end;

procedure TfrmReceita.clReceitaBeforeEdit(DataSet: TDataSet);
begin
ModoInserirEditarReceita;
end;

procedure TfrmReceita.clReceitaBeforeInsert(DataSet: TDataSet);
begin
ModoInserirEditarReceita;
end;

procedure TfrmReceita.clReceitaInsumoAfterCancel(DataSet: TDataSet);
begin
ModoSalvarCancelarInsumo;
end;

procedure TfrmReceita.clReceitaInsumoAfterPost(DataSet: TDataSet);
begin
ModoSalvarCancelarInsumo;
end;

procedure TfrmReceita.clReceitaInsumoBeforeEdit(DataSet: TDataSet);
begin
ModoInserirEditarInsumo;
end;

procedure TfrmReceita.clReceitaInsumoBeforeInsert(DataSet: TDataSet);
begin
ModoInserirEditarInsumo;
end;

procedure TfrmReceita.clReceitaInsumoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
clReceitaInsumo.RevertRecord;
clReceitaInsumo.Refresh;
ShowMessage(E.Message);
end;

procedure TfrmReceita.clReceitaReceitaAfterCancel(DataSet: TDataSet);
begin
ModoSalvarCancelar;
end;

procedure TfrmReceita.clReceitaReceitaAfterPost(DataSet: TDataSet);
begin
ModoSalvarCancelar;
end;

procedure TfrmReceita.clReceitaReceitaBeforeEdit(DataSet: TDataSet);
begin
ModoInserirEditar;
end;

procedure TfrmReceita.clReceitaReceitaBeforeInsert(DataSet: TDataSet);
begin
ModoInserirEditar;
end;

procedure TfrmReceita.clReceitaReceitaReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
clReceitaReceita.RevertRecord;
clReceitaReceita.Refresh;
ShowMessage(E.Message);
end;

procedure TfrmReceita.clReceitaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
clReceita.RevertRecord;
ShowMessage(E.Message);
end;

procedure TfrmReceita.ConexaoBancoDados;
begin
dmPrincipal.cnRestauranteTeste.Params.Values['SQLDialect'] := '3';
dmPrincipal.cnRestauranteTeste.Params.Values['DataBase'] := ExtractFileDir(GetCurrentDir) + '\RESTAURANTETESTE.FDB';
dmPrincipal.cnRestauranteTeste.Params.Values['User_Name'] := 'SYSDBA';
dmPrincipal.cnRestauranteTeste.Params.Values['Password'] := 'masterkey';
dmPrincipal.cnRestauranteTeste.LoginPrompt := False;
dmPrincipal.cnRestauranteTeste.Open;
end;

procedure TfrmReceita.grInsumoDblClick(Sender: TObject);
begin
if btApagarRecIns.Enabled then
  btApagarRecInsClick(btApagarRecIns);
end;

procedure TfrmReceita.grInsumoDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(clReceitaInsumo.RecNo) then
    if not (gdSelected in State) then
      begin
      grInsumo.Canvas.Brush.Color := clMoneyGreen;
      grInsumo.Canvas.FillRect(Rect);
      grInsumo.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TfrmReceita.edCdReceitaInsumoDblClick(Sender: TObject);
begin
  if frmConsInsumo = nil then
  begin
    Application.CreateForm(TfrmConsInsumo,frmConsInsumo);
    frmConsInsumo.ShowModal;
    FreeAndNil(frmConsInsumo);
  end;
end;

procedure TfrmReceita.edCdReceitaInsumoExit(Sender: TObject);
begin
if clReceitaInsumo.FieldByName('CDINSUMO').AsString <> '' then
  begin
    try
    qryInsumo.Close;
    qryInsumo.ParamByName('VCDINSUMO').AsString := clReceitaInsumo.FieldByName('CDINSUMO').AsString;
    qryInsumo.Open;

    if (not qryInsumo.IsEmpty) then
      begin
        clReceitaInsumo.FieldByName('DSINSUMO').AsString := qryInsumo.FieldByName('DSINSUMO').AsString
      end;
    except
      On E: Exception do
      ShowMessage(E.Message);
    end;

  end;
end;

procedure TfrmReceita.edCodigoReceitaCompDblClick(Sender: TObject);
begin
  if frmConsReceita = nil then
  begin
    Application.CreateForm(TfrmConsReceita,frmConsReceita);
    frmConsReceita.ShowModal;
    FreeAndNil(frmConsReceita);
  end;
end;

procedure TfrmReceita.edCodigoReceitaCompExit(Sender: TObject);
begin
if clReceitaReceita.FieldByName('CDRECEITACOMP').AsString <> '' then
  begin
    try
    qryReceitaComp.Close;
    qryReceitaComp.ParamByName('vCDRECEITA').AsString := clReceitaReceita.FieldByName('CDRECEITACOMP').AsString;
    qryReceitaComp.Open;

    if (not qryReceitaComp.IsEmpty) then
      begin
        clReceitaReceita.FieldByName('DSRECEITA').AsString := qryReceitaComp.FieldByName('DSRECEITA').AsString
      end;
    except
      On E: Exception do
      ShowMessage(E.Message);
    end;

  end;
end;

procedure TfrmReceita.FormCreate(Sender: TObject);
begin
try
ConexaoBancoDados;

dtReceita.Close;
dtReceita.Open;

clReceita.Close;
clReceita.Open;


except
  On E: Exception do
    ShowMessage(E.Message + #13 + 'O arquivo RESTAURANTETESTE.FDB deve estar no mesmo diretório do exe');
end;



end;

procedure TfrmReceita.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  SelectNext(ActiveControl as TWinControl,True,True);
  key:=#0;
end;
end;

procedure TfrmReceita.grReceitaReceitaDblClick(Sender: TObject);
begin
if btAlterarRecRec.Enabled then
  btAlterarRecRecClick(btAlterarRecRec);
end;

procedure TfrmReceita.grReceitaReceitaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(clReceitaReceita.RecNo) then
    if not (gdSelected in State) then
      begin
      grReceitaReceita.Canvas.Brush.Color := clMoneyGreen;
      grReceitaReceita.Canvas.FillRect(Rect);
      grReceitaReceita.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TfrmReceita.ModoInserirEditar;
begin
  grReceitaReceita.SendToBack;
  brInserirRecRec.Enabled := False;
  btAlterarRecRec.Enabled := False;
  btSalvarRecRec.Enabled := True;
  btApagarRecRec.Enabled := False;
  btCancelar.Enabled := True;
  pnBotaoReceita.Enabled := False;
  pnBotaoInsumo.Enabled := False;
  pnCadReceita.Enabled := False;
  edCodigoReceitaComp.SetFocus;
end;

procedure TfrmReceita.ModoInserirEditarInsumo;
begin
  grInsumo.SendToBack;
  btInserirRecIns.Enabled := False;
  btAlterarRecIns.Enabled := False;
  btSalvarRecIns.Enabled := True;
  btApagarRecIns.Enabled := False;
  btCancelarRecIns.Enabled := True;
  pnBotaoRecRec.Enabled := False;
  pnBotaoReceita.Enabled := False;
  pnCadReceita.Enabled := False;
  edCdReceitaInsumo.SetFocus;
end;

procedure TfrmReceita.ModoInserirEditarReceita;
begin
  btInserirReceita.Enabled := False;
  btAlterarReceita.Enabled := False;
  btSalvarReceita.Enabled := True;
  btApagarReceita.Enabled := False;
  btCancelarReceita.Enabled := True;
  pnBotaoRecRec.Enabled := False;
  pnBotaoInsumo.Enabled := False;
  pnCadReceita.Enabled := True;
  edCodigoReceita.SetFocus;
end;

procedure TfrmReceita.ModoSalvarCancelar;
begin
  grReceitaReceita.BringToFront;
  brInserirRecRec.Enabled := True;
  btAlterarRecRec.Enabled := True;
  btSalvarRecRec.Enabled := False;
  btApagarRecRec.Enabled := True;
  btCancelar.Enabled := False;
  pnBotaoReceita.Enabled := True;
  pnBotaoInsumo.Enabled := True;
  pnCadReceita.Enabled := True;
end;

procedure TfrmReceita.ModoSalvarCancelarInsumo;
begin
  grInsumo.BringToFront;
  btInserirRecIns.Enabled := True;
  btAlterarRecIns.Enabled := True;
  btSalvarRecIns.Enabled := False;
  btApagarRecIns.Enabled := True;
  btCancelarRecIns.Enabled := False;
  pnBotaoRecRec.Enabled := True;
  pnBotaoReceita.Enabled := True;
  pnCadReceita.Enabled := False;
end;

procedure TfrmReceita.ModoSalvarCancelarReceita;
begin
  btInserirReceita.Enabled := True;
  btAlterarReceita.Enabled := True;
  btSalvarReceita.Enabled := False;
  btApagarReceita.Enabled := True;
  btCancelarReceita.Enabled := False;
  pnBotaoRecRec.Enabled := True;
  pnBotaoInsumo.Enabled := True;
  pnCadReceita.Enabled := False;
end;

function TfrmReceita.ValidarCamposReceita: Boolean;
begin
  Result := True;
  if clReceita.FieldByName('CDRECEITA').AsString = '' then
    begin
      ShowMessage('Código da Receita é um campo obrigatório.');
      Result := False;
      Exit;
    end;

  if clReceita.FieldByName('DSRECEITA').AsString = '' then
    begin
      ShowMessage('Nome da Receita é um campo obrigatório.');
      Result := False;
      Exit;
    end;

end;

function TfrmReceita.ValidarCamposReceitaInsumo: Boolean;
begin
  Result := True;
  if clReceitaInsumo.FieldByName('CDINSUMO').AsString = '' then
    begin
      ShowMessage('Código do Insumo é um campo obrigatório.');
      Result := False;
      Exit;
    end;

  if clReceitaInsumo.FieldByName('NRCOEFICIENTE').AsString = '' then
    begin
      ShowMessage('Número do coeficiente é um campo obrigatório.');
      Result := False;
      Exit;
    end;
end;

function TfrmReceita.ValidarCamposReceitaReceita: Boolean;
begin
  Result := True;
  if clReceitaReceita.FieldByName('CDRECEITACOMP').AsString = '' then
    begin
      ShowMessage('Código da Receita é um campo obrigatório.');
      Result := False;
      Exit;
    end;

  if clReceitaReceita.FieldByName('NRCOEFICIENTE').AsString = '' then
    begin
      ShowMessage('Número do coeficiente é um campo obrigatório.');
      Result := False;
      Exit;
    end;
end;

end.
