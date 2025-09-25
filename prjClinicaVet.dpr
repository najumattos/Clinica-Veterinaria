program prjClinicaVet;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {FrmPrincipal},
  untPadrao in 'untPadrao.pas' {frmPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
