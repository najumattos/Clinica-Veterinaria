unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmPrincipal = class(TForm)
    menu: TMainMenu;
    Cadastros1: TMenuItem;
    Cliente1: TMenuItem;
    Pet1: TMenuItem;
    Vacina1: TMenuItem;
    Vacinao1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
      if Application.MessageBox('Deseja Sair?','Atenção!',
          MB_YESNO +MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
          Application.Terminate;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Date);
  StatusBar1.Panels[1].Text := FormatDateTime('hh:mm',Time);
end;

end.
