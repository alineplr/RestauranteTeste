program prjRestauranteTeste;

uses
  Vcl.Forms,
  untReceita in 'untReceita.pas' {frmReceita},
  untdmPrincipal in 'untdmPrincipal.pas' {dmPrincipal: TDataModule},
  untConsReceita in 'untConsReceita.pas' {frmConsReceita},
  untConsInsumo in 'untConsInsumo.pas' {frmConsInsumo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Restaurante Teste';
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmReceita, frmReceita);
  Application.Run;
end.
