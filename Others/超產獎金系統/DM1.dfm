object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 156
  Width = 97
  object ADOConn: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=ITErp@2022;Persist Security Info=Tr' +
      'ue;User ID=tyxuan;Initial Catalog=LIY_ERP;Data Source=192.168.23' +
      '.122;Use Procedure for Prepare=1;Auto Translate=True;Packet Size' +
      '=4096;Workstation ID=TXA-ITCEN-21191;Use Encryption for Data=Fal' +
      'se;Tag with column collation when possible=False'
    ConnectionTimeout = 1500
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 8
  end
  object ADOConn2: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=ITErp@2022;Persist Security Info=Tr' +
      'ue;User ID=tyxuan;Initial Catalog=LIY_ERP;Data Source=192.168.23' +
      '.122;Use Procedure for Prepare=1;Auto Translate=True;Packet Size' +
      '=4096;Workstation ID=TXA-ITCEN-21191;Use Encryption for Data=Fal' +
      'se;Tag with column collation when possible=False'
    ConnectionTimeout = 1500
    DefaultDatabase = 'LIY_TYXUAN'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 56
  end
  object ADOConn3: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=It@123;Persist Security Info=True;U' +
      'ser ID=trinhky;Initial Catalog=UOF;Data Source=192.168.23.121;Us' +
      'e Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;W' +
      'orkstation ID=TXA-ITCEN-21191;Use Encryption for Data=False;Tag ' +
      'with column collation when possible=False'
    ConnectionTimeout = 1500
    DefaultDatabase = 'UOF'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 104
  end
end
