unit Unt_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons;

type
  TFrmAgenda = class(TForm)
    LblAgenda: TLabel;
    LblNome: TLabel;
    LblCelular: TLabel;
    cdBloqueado: TDBCheckBox;
    LblBloqueado: TLabel;
    LblObservacao: TLabel;
    dbmObersvacao: TDBMemo;
    LblData: TLabel;
    DBNavigator: TDBNavigator;
    DBEdtNome: TDBEdit;
    DBEdtCelular: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnAtualizar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBEdtData: TDBEdit;
    BtnSair: TBitBtn;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure tratabotao();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

uses Unt_Conexao;

{$R *.dfm}


procedure TFrmAgenda.BtnAtualizarClick(Sender: TObject);
begin
  dm.cdsAgenda.Refresh;
end;

procedure TFrmAgenda.BtnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmAgenda.BtnCancelarClick(Sender: TObject);
begin
  dm.cdsAgenda.CancelUpdates;
end;

procedure TFrmAgenda.BtnDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja remover esse registro?','Excluir',MB_ICONINFORMATION+MB_YESNO) = MRYES then
  begin
    dm.cdsAgenda.Delete;
    dm.cdsAgenda.ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TFrmAgenda.BtnEditarClick(Sender: TObject);
begin
  //Editar registro
//  Tratabotao();
  if Application.MessageBox('Deseja editar o registro ?','Editar',MB_ICONINFORMATION+MB_YESNO) = MRYES then
  begin
    dm.cdsAgenda.Edit;
    dm.cdsAgenda.ApplyUpdates(0);
  end;
//  Tratabotao();
  Abort;
end;

procedure TFrmAgenda.BtnGravarClick(Sender: TObject);
begin
  dm.cdsAgenda.Post;
  dm.cdsAgenda.ApplyUpdates(0);
  Application.Messagebox('Registro salvo com sucesso', 'Salvo', MB_ICONINFORMATION+MB_OK);
end;

procedure TFrmAgenda.BtnNovoClick(Sender: TObject);
var proximo:Integer;
begin
  //CheckBox recebe Default
  cdBloqueado := 'F';
  //Adicionar um novo registro na tablea
  //Tratabotao();
  dm.cdsAgenda.Open;
  dm.cdsAgenda.Last;
  proximo := dm.cdsAgendaID.AsInteger + 1;
  dm.cdsAgenda.Append;
  dm.cdsAgendaID.AsInteger := proximo;

end;

procedure TFrmAgenda.tratabotao;
begin
  //Trata Botão, destrava e trava dependendo a funcionalidade
  BtnNovo.Enabled:= Not BtnNovo.Enabled;
  BtnEditar.Enabled := Not BtnEditar.Enabled;
  BtnDeletar.Enabled:= Not BtnDeletar.Enabled;
  BtnGravar.Enabled := Not BtnGravar.Enabled;
  BtnAtualizar.Enabled := Not BtnAtualizar.Enabled;
end;

end.
