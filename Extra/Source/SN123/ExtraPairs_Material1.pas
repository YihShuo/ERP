unit ExtraPairs_Material1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus,math, GridsEh, DBGridEh,comobj ,IniFiles;

type
  TExtraPairs_Material = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    Query1: TQuery;
    JGMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    JGS: TQuery;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    Panel8: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    DBGrid4: TDBGridEh;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Check: TCheckBox;
    BDelRec: TQuery;
    JGMasJGNO: TStringField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    JGMasZSBH: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasJGLX: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasCFMID: TStringField;
    JGMasCFMDate: TDateTimeField;
    JGMasYN: TStringField;
    JGMasPMARK: TIntegerField;
    JGMasZSYWJC: TStringField;
    JGMasdh: TStringField;
    JGMasCZ: TStringField;
    JGDetJGNO: TStringField;
    JGDetXieXing: TStringField;
    JGDetSheHao: TStringField;
    JGDetCLBH: TStringField;
    JGDetQty: TFloatField;
    JGDetUSPrice: TCurrencyField;
    JGDetUSACC: TCurrencyField;
    JGDetMemo: TStringField;
    JGDetCostID: TStringField;
    JGDetBJNO: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetARTICLE: TStringField;
    JGSJGNO: TStringField;
    JGSXieXing: TStringField;
    JGSSheHao: TStringField;
    JGSCLBH: TStringField;
    JGSZLBH: TStringField;
    JGSQty: TFloatField;
    JGSCLSL: TFloatField;
    JGSYQDate: TDateTimeField;
    JGSCFMDate: TDateTimeField;
    JGSUSERDATE: TDateTimeField;
    JGSUSERID: TStringField;
    JGSYN: TStringField;
    JGSBuyNo: TStringField;
    JGSArticle: TStringField;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure JGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure JGDetCalcFields(DataSet: TDataSet);
    procedure BO1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
  private
    { Private declarations }
     procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  ExtraPairs_Material: TExtraPairs_Material;   
  NDate:TDate;

implementation

uses main1, ExtraPairs_Article1, ExtraPairs_Mat_Ord1, ExtraPairs_Mat_ZL1,
  ExtraPairs_Mat_Print1, ExtraPairs_Mat_ZS1, ExtraPairs_OrderImport1, FunUnit;

{$R *.dfm}

procedure TExtraPairs_Material.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TExtraPairs_Material.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select EXTRA.* ,ZSZL.ZSYWJC,zszl.dh,ZSZL.CZ');
    sql.add('from EXTRA');
    sql.add('left join ZSZL on EXTRA.ZSBH=ZSZL.ZSDH');
    sql.add('where EXTRA.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and isnull(ZSZL.ZSYWJC,'+''''+''+''''+') like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and EXTRA.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,EXTRA.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
      begin
        sql.Add('      and EXTRA.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by EXTRA.JGNO DESC');
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  Check.Checked:=true;
  JGDet.Active:=true;
  JGS.Active:=true;

end;

procedure TExtraPairs_Material.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TExtraPairs_Material.BB2Click(Sender: TObject);
begin 
  with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('CKBH').Value:=main.Edit2.Text;
    FieldByName('JGLX').Value:='1';
    FieldByName('JGDate').Value:=Date()+7;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TExtraPairs_Material.FormCreate(Sender: TObject);
var i:integer;
begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false; 
      sql.Clear;
      sql.add('select CKBH from KCCK');
      sql.add('where GSBH='+''''+main.edit2.Text+'''');
      //
      sql.add('order by CKBH ');
      Active:=true;
      for i:=1 to recordcount do
      begin
        DBGrid3.Columns[5].PickList.Add(fieldbyname('CKBH').asstring);
        Next;
      end;
      Active:=false;
      //
    end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;



procedure TExtraPairs_Material.BB3Click(Sender: TObject);
begin

  if JGDet.recordcount=0 then
  begin
    with JGMas do
    begin
        if fieldbyname('USERID').value=main.Edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours, can not delete.');
        end;
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid3.Columns[1].ButtonStyle:=cbsEllipsis;

end;

procedure TExtraPairs_Material.BB4Click(Sender: TObject);
begin
  with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin

  with JGMas do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('JGLX').IsNull then
        begin
          showmessage('Pls select JGLX first.');
          abort;
        end;
         if fieldbyname('CKBH').IsNull then
        begin
          showmessage('Pls select CKBH first.');
          abort;
        end;
        next;
      end;
  end;
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    JGMas.first;
    for i:=1 to JGMas.RecordCount do
    begin
        case JGMas.updatestatus of
          usinserted:
          begin
              if JGMas.fieldbyname('ZSBH').isnull then
                begin
                  JGMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select JGNO from EXTRA where JGNO like '+''''+y+m+'%'+'''');
                         sql.add('order by JGNO');
                         active:=true;
                         if recordcount >0 then
                         begin
                           last;
                           a:=fieldbyname('JGNO').AsString;
                           a:=copy(a,7,5);
                           a:=inttostr(strtoint(a)+1);
                           while length(a)<5 do
                           begin
                               a:='0'+a;
                           end;
                         end else
                         begin
                           a:='00001';
                         end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     JGMas.edit;
                     JGMas.fieldbyname('JGNO').Value:=a;
                     JGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     JGMas.FieldByName('userID').Value:=main.edit1.text;
                     JGMas.FieldByName('userdate').Value:=Ndate;
                     JGMas.FieldByName('CFMID').Value:='NO';
                     JGMas.FieldByName('CFMID').Value:='NO';
                     JGMas.FieldByName('JGDate').Value:=Ndate;
                     JGMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
          begin
               if JGMas.FieldByName('CFMID').value='NO' then
                 begin
                   if JGMas.fieldbyname('YN').value='0'then
                   begin
                       with BDelRec do
                       begin
                           active:=false;
                           sql.Clear;
                           sql.add('insert into BDelRec ');
                           sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                           sql.add('values ('+''''+'EXTRA'+''''+','+''''+JGMas.fieldbyname('JGNO').Value+'''');
                           sql.add(','+''''+''+''''+','+''''+JGMas.fieldbyname('USERID').Value+''''+',');
                           sql.add(''''+main.Edit1.Text+''''+',getdate())');
                           execsql;
                           active:=false;
                       end;
                       upMas.apply(ukdelete);
                   end else
                   begin
                       if (NDate-JGMas.FieldByName('USERDATE').value)<3  then
                       begin
                         JGMas.edit;
                         JGMas.FieldByName('userID').Value:=main.edit1.text;
                         JGMas.FieldByName('userdate').Value:=Ndate;
                         upMas.apply(ukmodify);
                       end else
                       begin
                         showmessage('Date>3, can not modify.');
                       end;
                   end;
                 end else
                 begin
                   showmessage('Already confirmed. can not modify.');
                 end;
          end;
        end;
       JGMas.next;
    end;
    JGMas.active:=false;
    JGMas.cachedupdates:=false;
    JGMas.requestlive:=false;
    JGMas.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    BBTT1.Visible:=false;
    dbgrid3.columns[1].ButtonStyle:=cbsnone;
  except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TExtraPairs_Material.BB6Click(Sender: TObject);
begin
  with JGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TExtraPairs_Material.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TExtraPairs_Material.BD2Click(Sender: TObject);
begin
  if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with JGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  DBGrid4.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.BD3Click(Sender: TObject);
begin
  if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;


  if JGS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end; 


  with JGDet do
  begin
    if JGMas.fieldbyname('USERID').value=main.Edit1.Text then
    begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
    end else
    begin
          showmessage('It is not yours, can not delete.');
    end;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.BD4Click(Sender: TObject);
begin
  if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with JGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
end;

procedure TExtraPairs_Material.BD5Click(Sender: TObject);
var i:integer;
begin

  JGS.Active:=false;
  with JGDet do
  begin
      first;
      while not JGDet.Eof do
      begin
        if JGDet.FieldByName('Qty').IsNull  then
        begin
          edit;
          JGDet.FieldByName('Qty').value:=0;
        end;
        next;
      end;
  end;

  try
      JGDet.first;
      for i:=1 to JGDet.RecordCount do
      begin
          case JGDet.updatestatus of
            usinserted:
            begin
                  if (JGDet.fieldbyname('CLBH').isnull) or (JGDet.fieldbyname('Article').isnull)  then
                  begin
                    JGDet.delete;
                  end else
                  begin
                       //更新EXTRAVN單價
                       if (JGDet.FieldByName('USPrice').AsString<>'') or (JGDet.FieldByName('VNPrice').AsString<>'') then
                       begin
                        with Query1 do
                        begin
                           Active:=false;
                           SQL.Clear;
                           SQL.Add('IF NOT EXISTS (Select * from EXTRAVN where XieXing='''+JGDet.FieldByName('XieXing').AsString+''' and SheHao='''+JGDet.FieldByName('SheHao').AsString+''' and BWBH='''+Copy(JGDet.FieldByName('CLBH').AsString,1,4)+''' and CLBH='''+JGDet.FieldByName('CLBH').AsString+''')  ');
                           SQL.Add('Begin ');
                           if JGDet.FieldByName('USPrice').AsString<>'' then
                           begin
                             SQL.Add('Insert into EXTRAVN (XieXing, SheHao, BWBH, CLBH, USPrice, CLSL, USERID, USERDATE, YN)  ');
                             SQL.Add('Values ('''+JGDet.FieldByName('XieXing').AsString+''','''+JGDet.FieldByName('SheHao').AsString+''','''+Copy(JGDet.FieldByName('CLBH').AsString,1,4)+''','''+JGDet.FieldByName('CLBH').AsString+''','+JGDet.FieldByName('USPrice').AsString+',1,'''+main.Edit1.Text+''',GetDate(),1) ');
                           end else  if JGDet.FieldByName('VNPrice').AsString<>'' then
                           begin
                             SQL.Add('Insert into EXTRAVN (XieXing, SheHao, BWBH, CLBH, VNPrice, CLSL, USERID, USERDATE, YN)  ');
                             SQL.Add('Values ('''+JGDet.FieldByName('XieXing').AsString+''','''+JGDet.FieldByName('SheHao').AsString+''','''+Copy(JGDet.FieldByName('CLBH').AsString,1,4)+''','''+JGDet.FieldByName('CLBH').AsString+''','+JGDet.FieldByName('VNPrice').AsString+',1,'''+main.Edit1.Text+''',GetDate(),1) ');
                           end;
                           SQl.Add('End ');
                           ExecSQL();
                        end;
                       end;
                       JGDet.edit;
                       JGDet.FieldByName('BJNO').Value:='00000000000';
                       JGDet.fieldbyname('JGNO').Value:=JGMas.fieldbyname('JGNO').Value;
                       JGDet.FieldByName('userID').Value:=main.edit1.text;
                       JGDet.FieldByName('userdate').Value:=date;
                       JGDet.FieldByName('CostID').Value:='627';
                       if  JGDet.FieldByName('YQdate').IsNull then
                          JGDet.FieldByName('YQdate').Value:=Date()+7;
                       JGDet.FieldByName('CFMdate').Value:=Date() ;
                       JGDet.FieldByName('YN').Value:='1';
                       if  JGDet.FieldByName('YQdate').IsNull then
                       begin
                          JGDet.FieldByName('YQdate').Value:=Date()+7;
                       end;
                        //20150525
                       upDet.apply(ukinsert);
                  end;
            end;
            usmodified:
            begin
                  if JGDet.fieldbyname('YN').value='0'then
                  begin
                    with BDelRec do
                    begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'EXTRAS'+''''+','+''''+JGDet.fieldbyname('JGNO').Value+'''');
                        sql.add(','+''''+JGDet.fieldbyname('CLBH').Value+''''+','+''''+JGDet.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                        active:=false;
                      end;
                      UpDet.apply(ukdelete);
                      //
                  end else
                  begin
                      //更新EXTRAVN單價
                      if (JGDet.FieldByName('USPrice').AsString<>'') or (JGDet.FieldByName('VNPrice').AsString<>'') then
                      begin
                        with Query1 do
                        begin
                           Active:=false;
                           SQL.Clear;
                           SQL.Add('IF NOT EXISTS (Select * from EXTRAVN where XieXing='''+JGDet.FieldByName('XieXing').AsString+''' and SheHao='''+JGDet.FieldByName('SheHao').AsString+''' and BWBH='''+Copy(JGDet.FieldByName('CLBH').AsString,1,4)+''' and CLBH='''+JGDet.FieldByName('CLBH').AsString+''')  ');
                           SQL.Add('Begin ');
                           if JGDet.FieldByName('USPrice').AsString<>'' then
                           begin
                             SQL.Add('Insert into EXTRAVN (XieXing, SheHao, BWBH, CLBH, USPrice, CLSL, USERID, USERDATE, YN)  ');
                             SQL.Add('Values ('''+JGDet.FieldByName('XieXing').AsString+''','''+JGDet.FieldByName('SheHao').AsString+''','''+Copy(JGDet.FieldByName('CLBH').AsString,1,4)+''','''+JGDet.FieldByName('CLBH').AsString+''','+JGDet.FieldByName('USPrice').AsString+',1,'''+main.Edit1.Text+''',GetDate(),1) ');
                           end else  if JGDet.FieldByName('VNPrice').AsString<>'' then
                           begin
                             SQL.Add('Insert into EXTRAVN (XieXing, SheHao, BWBH, CLBH, VNPrice, CLSL, USERID, USERDATE, YN)  ');
                             SQL.Add('Values ('''+JGDet.FieldByName('XieXing').AsString+''','''+JGDet.FieldByName('SheHao').AsString+''','''+Copy(JGDet.FieldByName('CLBH').AsString,1,4)+''','''+JGDet.FieldByName('CLBH').AsString+''','+JGDet.FieldByName('VNPrice').AsString+',1,'''+main.Edit1.Text+''',GetDate(),1) ');
                           end;
                           SQl.Add('End ');
                           ExecSQL();
                        end;
                      end;
                      //
                      JGDet.edit;
                      JGDet.FieldByName('CFMdate').Value:=JGDet.FieldByName('YQdate').Value ;
                      JGDet.FieldByName('UserID').Value:=main.edit1.text;
                      JGDet.FieldByName('UserDate').Value:=date;
                      upDet.apply(ukmodify);
                  end;
            end;
          end;
          JGDet.next;
      end;
    JGDet.active:=false;
    JGDet.cachedupdates:=false;
    JGDet.requestlive:=false;
    JGDet.active:=true;
    JGS.Active:=true;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    DBGrid4.columns[0].ButtonStyle:=cbsNone;
    DBGrid4.columns[1].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    JGS.Active:=true;
  end;
end;

procedure TExtraPairs_Material.BD6Click(Sender: TObject);
begin
  with JGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  DBGrid4.columns[0].ButtonStyle:=cbsNone;
  DBGrid4.columns[1].ButtonStyle:=cbsNone;  
end;

procedure TExtraPairs_Material.BBT1Click(Sender: TObject);
begin
  JGMas.First;
end;

procedure TExtraPairs_Material.BBT2Click(Sender: TObject);
begin
  JGMas.prior;
end;

procedure TExtraPairs_Material.BBT3Click(Sender: TObject);
begin
  JGMas.next;
end;

procedure TExtraPairs_Material.BBT4Click(Sender: TObject);
begin
  JGMas.last;
end;

procedure TExtraPairs_Material.BDT1Click(Sender: TObject);
begin
  JGDet.first;
end;

procedure TExtraPairs_Material.BDT2Click(Sender: TObject);
begin
  JGDet.prior;
end;

procedure TExtraPairs_Material.BDT3Click(Sender: TObject);
begin
  JGDet.next;
end;

procedure TExtraPairs_Material.BDT4Click(Sender: TObject);
begin
  JGDet.last;
end;

procedure TExtraPairs_Material.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TExtraPairs_Material.JGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  if JGDet.recordcount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
  end else
  begin
      BO1.Enabled:=false;
      BO2.Enabled:=false;
      BO5.Enabled:=false;
      BO3.Enabled:=false;
      BO4.Enabled:=false;
  end ;
  if (NDate-JGMas.FieldByName('USERDATE').value)>14  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  if JGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  if  JGMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;  
  if  JGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[4].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TExtraPairs_Material.DBGrid3DblClick(Sender: TObject);
begin
  if  JGMas.Active then
  begin
    if  (JGMas.recordcount>0) then
    begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel2.Visible:=false;
        panel6.Visible:=true;
    end;
  end;
end;

procedure TExtraPairs_Material.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TExtraPairs_Material.DBGrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if DBGrid4.Selectedfield.fieldname='ARTICLE' then
  begin
    ExtraPairs_Article:=TExtraPairs_Article.Create(self);
    ExtraPairs_Article.Show();
  end;

end;

procedure TExtraPairs_Material.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TExtraPairs_Material.BBTT1Click(Sender: TObject);
begin
  ExtraPairs_Mat_ZS:=TExtraPairs_Mat_ZS.create(self);
  ExtraPairs_Mat_ZS.show;
end;

procedure TExtraPairs_Material.BBTT2Click(Sender: TObject);
begin
  ExtraPairs_Mat_ZL:=TExtraPairs_Mat_ZL.create(self);
  ExtraPairs_Mat_ZL.show;
end;

procedure TExtraPairs_Material.JGMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  if (JGMas.FieldByName('CFMID').value<>'NO') or (NDate-JGMas.FieldByName('JGDate').value>10) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end else
  begin
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
  end;
end;

procedure TExtraPairs_Material.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    Panel2.Visible:=false;
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TExtraPairs_Material.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TExtraPairs_Material.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TExtraPairs_Material.BDT5Click(Sender: TObject);
var i:integer;
begin

  ExtraPairs_Mat_Print:=TExtraPairs_Mat_Print.Create(nil);
  ExtraPairs_Mat_Print.quickrep1.prepare;
  ExtraPairs_Mat_Print.Qpage1.caption:=inttostr(ExtraPairs_Mat_Print.quickrep1.QRPrinter.pagecount);
  ExtraPairs_Mat_Print.quickrep1.preview;
  ExtraPairs_Mat_Print.Free;
  with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end else
    begin
      fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;

end;

procedure TExtraPairs_Material.JGDetCalcFields(DataSet: TDataSet);
begin

  with JGDet do
  begin
    if FieldByName('USPrice').value<>0 then
    begin
        FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
    end;
    if FieldByName('VNPrice').value<>0 then
    begin
        FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
    end;
  end;

end;

procedure TExtraPairs_Material.BO1Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;
  with JGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.DBGrid1EditButtonClick(Sender: TObject);
begin
  if JGdet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end else
  begin
    ExtraPairs_Mat_Ord:=TExtraPairs_Mat_Ord.create(self);
    ExtraPairs_Mat_Ord.Edit3.Text:=JGDet.FieldByName('ARTICLE').AsString;
    ExtraPairs_Mat_Ord.show;
  end;
end;

procedure TExtraPairs_Material.BO2Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;

  with JGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.BO5Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;
  
  with JGs do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraPairs_Material.BO3Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
  try
    JGs.first;
    for i:=1 to JGs.RecordCount do
    begin
        case JGs.updatestatus of
          usinserted:
          begin
              if JGs.fieldbyname('ZLBH').isnull then
              begin
                  JGs.delete;
              end else
              begin
                 JGs.edit;
                 JGs.fieldbyname('JGNO').Value:=JGDet.fieldbyname('JGNO').value;
                 JGs.fieldbyname('CLBH').Value:=JGDet.fieldbyname('CLBH').value;
                 JGs.fieldbyname('XieXing').Value:=JGDet.fieldbyname('XieXing').value;
                 JGs.fieldbyname('SheHao').Value:=JGDet.fieldbyname('SheHao').value;
                 JGs.FieldByName('YQDate').Value:=JGDet.fieldbyname('YQDate').value;
                 JGs.FieldByName('CFMDate').Value:=JGDet.fieldbyname('CFMDate').value;
                 JGs.FieldByName('userID').Value:=main.edit1.text;
                 JGs.FieldByName('userdate').Value:=date;
                 JGs.FieldByName('YN').Value:='1';
                 UpOrdMat.apply(ukinsert);
              end;
          end;
          usmodified:
          begin
              if JGs.fieldbyname('YN').value='0'then
              begin
                  UpOrdMat.apply(ukdelete);
              end else
              begin
                if (NDate-JGMas.FieldByName('USERDATE').value)<10  then
                begin
                  JGs.edit;
                  JGs.FieldByName('userID').Value:=main.edit1.text;
                  JGs.FieldByName('userdate').Value:=date;
                  uPOrdMat.apply(ukmodify);
                end else
                begin
                  showmessage('Date>10, can not modify.');
                end;
              end;
          end;
        end;
        JGs.next;
    end;
    JGs.active:=false;
    JGs.cachedupdates:=false;
    JGs.requestlive:=false;
    JGs.active:=true;
    JGS.First;
    Qty:=0;
    while not JGS.eof do
    begin
      Qty:=Qty+JGS.fieldbyname('Qty').Value;
      JGS.next;
    end;

    with JGDet do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      UpDet.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    BO3.enabled:=false;
    BO4.enabled:=false;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
    BD7.Enabled:=true;
    BDT1.Enabled:=true;
    BDT2.Enabled:=true;
    BDT3.Enabled:=true;
    BDT4.Enabled:=true;
    BDT5.Enabled:=true;
    DBGrid1.columns[0].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TExtraPairs_Material.BO4Click(Sender: TObject);
begin
  with JGs do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO3.enabled:=false;
  BO4.enabled:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD7.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TExtraPairs_Material.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if JGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;
end;

procedure TExtraPairs_Material.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if JGDet.FieldByName('JGNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
  //  dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraPairs_Material.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGS.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if JGS.FieldByName('JGNO').isnull then
  begin
    dbgrid1.canvas.font.color:=clLime;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraPairs_Material.FormDestroy(Sender: TObject);
begin
  ExtraPairs_Material:=nil;
end;

procedure TExtraPairs_Material.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
    if  JGMas.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for i:=0 to DBGrid3.Columns.Count-1 do
          eclApp.Cells(1,i+1):=DBGrid3.Columns[i].Title.Caption;
        JGMas.First;
        j:=2;
        while   not   JGMas.Eof   do
        begin
          for i:=0 to DBGrid3.Columns.Count-1 do
            eclApp.Cells(j,i+1):=DBGrid3.Fields[i].Value;
          JGMas.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;
//
procedure TExtraPairs_Material.BDT6Click(Sender: TObject);
begin
  ExtraPairs_OrderImport:=TExtraPairs_OrderImport.Create(self);
  ExtraPairs_OrderImport.Show();
end;

end.
