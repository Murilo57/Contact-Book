object DM: TDM
  OldCreateOrder = False
  Height = 269
  Width = 311
  object Conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Documents and Settings\Aldo\Meus documentos\Projetos' +
        ' Delphi\Agenda de Contatos\EXE\DADOS\AGENDADECONTATOS.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 20
    Top = 15
  end
  object sqlAgenda: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM CONTATOS ORDER BY ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 40
    Top = 70
    object sqlAgendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlAgendaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlAgendaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 16
    end
    object sqlAgendaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object sqlAgendaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object sqlAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
  object dspAgenda: TDataSetProvider
    DataSet = sqlAgenda
    Left = 41
    Top = 120
  end
  object cdsAgenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgenda'
    Left = 40
    Top = 175
    object cdsAgendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgendaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAgendaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 16
    end
    object cdsAgendaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object cdsAgendaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
  object dtsAgenda: TDataSource
    DataSet = cdsAgenda
    Left = 100
    Top = 215
  end
end
