object dm: Tdm
  OldCreateOrder = False
  Height = 457
  Width = 677
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=OraOLEDB.Oracle.1;Password=it;Persist Security Info=Tru' +
      'e;User ID=it;Data Source=127.0.0.1'
    Provider = 'OraOLEDB.Oracle.1'
    Left = 40
    Top = 24
  end
  object inv_calss: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 160
    Top = 24
  end
  object inv_come: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 240
    Top = 24
  end
  object inv_mode: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 312
    Top = 24
  end
  object inv_master: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 384
    Top = 24
  end
  object inv_se: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 456
    Top = 24
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 536
    Top = 24
  end
  object ADOQuery7: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 600
    Top = 24
  end
  object adsclass: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select  *  from INV_CLASS'
    FieldDefs = <
      item
        Name = 'CLASS_NO'
        Attributes = [faFixed]
        DataType = ftFixedWideChar
        Size = 3
      end
      item
        Name = 'CLASS_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CLASS_MODE'
        Attributes = [faFixed]
        DataType = ftFloat
      end>
    Parameters = <>
    StoreDefs = True
    Left = 160
    Top = 104
  end
  object adscome: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select *  from INV_COME'
    Parameters = <>
    Left = 232
    Top = 104
  end
  object adsmode: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from INV_MODE'
    Parameters = <>
    Left = 304
    Top = 104
  end
  object adsmaster: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from INV_MASTER'
    Parameters = <>
    Left = 376
    Top = 104
  end
  object adsse: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select *  from INV_SE'
    Parameters = <>
    Left = 456
    Top = 104
  end
  object ADODataSet6: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 528
    Top = 104
  end
  object ADODataSet7: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 600
    Top = 104
  end
  object dsclass: TDataSource
    DataSet = adsclass
    Left = 160
    Top = 184
  end
  object dscome: TDataSource
    DataSet = adscome
    Left = 232
    Top = 184
  end
  object dsmode: TDataSource
    DataSet = adsmode
    Left = 304
    Top = 184
  end
  object damaster: TDataSource
    DataSet = adsmaster
    Left = 376
    Top = 184
  end
  object dsse: TDataSource
    DataSet = adsse
    Left = 448
    Top = 184
  end
  object DataSource6: TDataSource
    DataSet = ADODataSet6
    Left = 520
    Top = 184
  end
  object DataSource7: TDataSource
    DataSet = ADODataSet7
    Left = 592
    Top = 184
  end
end
