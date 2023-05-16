program Project_Agenda;

uses
  Forms,
  Unt_Principal in '..\FORM\Unt_Principal.pas' {FrmAgenda},
  Unt_Conexao in '..\FORM\Unt_Conexao.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmAgenda, FrmAgenda);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
