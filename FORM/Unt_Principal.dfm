object FrmAgenda: TFrmAgenda
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 671
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblAgenda: TLabel
    Left = 30
    Top = 25
    Width = 339
    Height = 40
    Caption = 'Agenda De Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome: TLabel
    Left = 42
    Top = 160
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCelular: TLabel
    Left = 42
    Top = 225
    Width = 44
    Height = 16
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblBloqueado: TLabel
    Left = 42
    Top = 300
    Width = 67
    Height = 16
    Caption = 'Bloqueado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblObservacao: TLabel
    Left = 42
    Top = 375
    Width = 77
    Height = 16
    Caption = 'Observa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblData: TLabel
    Left = 46
    Top = 545
    Width = 159
    Height = 16
    Caption = 'Data e hora de cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 280
    Top = 225
    Width = 14
    Height = 16
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cdBloqueado: TDBCheckBox
    Left = 42
    Top = 322
    Width = 121
    Height = 17
    Caption = 'cdBloqueado'
    DataField = 'BLOQUEADO'
    DataSource = DM.dtsAgenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object dbmObersvacao: TDBMemo
    Left = 42
    Top = 405
    Width = 366
    Height = 116
    Cursor = crCross
    DataField = 'OBSERVACAO'
    DataSource = DM.dtsAgenda
    TabOrder = 1
  end
  object DBNavigator: TDBNavigator
    Left = 42
    Top = 90
    Width = 288
    Height = 50
    DataSource = DM.dtsAgenda
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object DBEdtNome: TDBEdit
    Left = 42
    Top = 182
    Width = 297
    Height = 21
    DataField = 'NOME'
    DataSource = DM.dtsAgenda
    TabOrder = 3
  end
  object DBEdtCelular: TDBEdit
    Left = 42
    Top = 247
    Width = 159
    Height = 21
    DataField = 'CELULAR'
    DataSource = DM.dtsAgenda
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 445
    Top = 90
    Width = 345
    Height = 502
    DataSource = DM.dtsAgenda
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 275
    Top = 247
    Width = 36
    Height = 21
    DataField = 'ID'
    DataSource = DM.dtsAgenda
    TabOrder = 6
  end
  object BtnNovo: TBitBtn
    Left = 46
    Top = 615
    Width = 92
    Height = 35
    Caption = '&Novo'
    TabOrder = 7
    OnClick = BtnNovoClick
  end
  object BtnEditar: TBitBtn
    Left = 164
    Top = 615
    Width = 92
    Height = 35
    Caption = '&Editar'
    TabOrder = 8
    OnClick = BtnEditarClick
  end
  object BtnDeletar: TBitBtn
    Left = 290
    Top = 615
    Width = 92
    Height = 35
    Caption = '&Deletar'
    TabOrder = 9
    OnClick = BtnDeletarClick
  end
  object BtnGravar: TBitBtn
    Left = 415
    Top = 615
    Width = 92
    Height = 35
    Caption = '&Gravar'
    TabOrder = 10
    OnClick = BtnGravarClick
  end
  object BtnAtualizar: TBitBtn
    Left = 540
    Top = 615
    Width = 92
    Height = 35
    Caption = '&Atualizar'
    TabOrder = 11
    OnClick = BtnAtualizarClick
  end
  object BtnCancelar: TBitBtn
    Left = 673
    Top = 615
    Width = 92
    Height = 35
    Caption = '&Cancelar'
    TabOrder = 12
    OnClick = BtnCancelarClick
  end
  object DBEdtData: TDBEdit
    Left = 42
    Top = 571
    Width = 163
    Height = 21
    DataField = 'DATA'
    DataSource = DM.dtsAgenda
    MaxLength = 10
    TabOrder = 13
  end
  object BtnSair: TBitBtn
    Left = 673
    Top = 25
    Width = 92
    Height = 35
    Caption = '&Sair'
    TabOrder = 14
    OnClick = BtnSairClick
  end
end
