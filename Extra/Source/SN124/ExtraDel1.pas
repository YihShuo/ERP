unit ExtraDel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh,comobj ,IniFiles;

type
  TExtraDel = class(TForm)
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
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    Qtemp: TQuery;
    DelDetPerson: TFloatField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    BDelRec: TQuery;
    DelMasPMark: TIntegerField;
    Panel2: TPanel;
    Label4: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    DelDetYYBH: TStringField;
    DelDetMEMO: TStringField;
    DelDetBLSB: TStringField;
    DelDetZWPM: TStringField;
    Panel5: TPanel;
    DBGrid4: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DelTot: TQuery;
    DelTotCLBH: TStringField;
    DelTotQty: TCurrencyField;
    DS1: TDataSource;
    Edit2: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DelMasJGNO: TStringField;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    Label6: TLabel;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    Pro_CostID:string;
  end;

var
  ExtraDel: TExtraDel;
  NDate:TDate;

implementation

uses main1, ExtraDel_Print1, DelOther_C_Dep1, ExtraDel_Child1;


{$R *.dfm}

procedure TExtraDel.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TExtraDel.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName  ');
    sql.add('from KCLL');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KCLL.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
      sql.add('and BDepartment.DepName like ');
      sql.add(''''+CBX1.Text+'%'+'''');
    end;
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KCLL.SCBH='+''''+'JJJJJJJJJJ'+'''');
    sql.add('and KCLL.GSBH='+''''+main.Edit2.Text+'''');  
    if Check.Checked then
    begin
      sql.Add('and KCLL.USERID='+''''+main.Edit1.Text+'''');
    end;
    if Edit2.Text<>'' then
       sql.Add('and JGNO like'''+'%'+Edit2.Text+'%'+'''');
    sql.add('order by LLNO DESC');
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  check.Checked:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  DelDet.Active:=true;
end;

procedure TExtraDel.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  Pro_CostID:='6211';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      Pro_CostID:= MyIni.ReadString('ERP','Pro_CostID','');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TExtraDel.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from BDepartment');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by ID');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX1.Items.Add(fieldbyname('DepName').asstring);
      next;
    end;
    CBX1.itemindex:=0; 
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK order by CKBH');
    active:=true;
    //DBX2.Items.Clear;
    for i:=1 to recordcount do
    begin
      DBGrid3.Columns[4].picklist.Add(fieldbyname('CKBH').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TExtraDel.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TExtraDel.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TExtraDel.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TExtraDel.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraDel.BB3Click(Sender: TObject);
begin
  if (DelDet.recordcount=0)  and (delmas.FieldByName('pmark').Value=Null) then
  begin
    with DelMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end
  else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraDel.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraDel.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;  
   // check column is null
    with DelMas do
      begin
        first;
        while not DelMas.Eof   do
          begin
            if DelMas.FieldByName('JGNO').AsString='' then
            begin
              showmessage('Pls input JGNO!');
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
    //
   try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
    begin
      case DelMas.updatestatus of
          usinserted:
          begin
            if DelMas.fieldbyname('DepID').isnull then
            begin
              DelMas.delete;
            end
            else
            begin
               with Qtemp do    //計算領料單流水號
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('select LLNO from KCLL where LLNO like '+''''+y+m+'%'+'''');
                 sql.add('order by LLNO');
                 active:=true;
                 if recordcount >0 then
                 begin
                     last;
                     a:=fieldbyname('LLNO').AsString;
                     a:=copy(a,7,5);
                     a:=inttostr(strtoint(a)+1);
                     while length(a)<5 do
                     begin
                         a:='0'+a;
                     end;
                 end
                 else
                 begin
                   a:='00001';
                 end;
                 a :=y+m+a;
                 active:=false;
               end;
               DelMas.edit;
               DelMas.fieldbyname('LLNO').Value:=a;
               DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
               DelMas.fieldbyname('SCBH').Value:='JJJJJJJJJJ' ;
               DelMas.FieldByName('userID').Value:=main.edit1.text;
               DelMas.FieldByName('userdate').Value:=Ndate;
               DelMas.FieldByName('CFMID').Value:='NO';
               DelMas.FieldByName('YN').Value:='1';
               upMas.apply(ukinsert);
             end;
          end;
          usmodified:
          begin
             if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
             begin
                 showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
             end
             else
             begin
               if DelMas.fieldbyname('YN').value='0'then
               begin
                 with BDelRec do
                 begin
                   active:=false;
                   sql.Clear;
                   {sql.add('insert into BDelRec ');
                   sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                   sql.add('values ('+''''+'KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                   sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                   sql.add(''''+main.Edit1.Text+''''+',getdate())');}
                   SQL.Add('Update KCLL Set flowflag=''X'' where LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
                   execsql;
                   active:=false;
                 end;
                 //upMas.apply(ukdelete);
               end
               else
               begin
                 if (DelMas.FieldByName('CFMID').value='NO')   then
                 begin
                   if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                   begin
                     DelMas.edit;
                     DelMas.FieldByName('userID').Value:=main.edit1.text;
                     DelMas.FieldByName('userdate').Value:=Ndate;
                     upMas.apply(ukmodify);
                   end
                   else
                   begin
                     showmessage('Date>3, can not modify.');
                   end;
                 end
                 else
                 begin
                   showmessage('Already confirmed, can not modify.');
                 end;
               end;
             end;
           end;
        end;
       DelMas.next;
      end;
  DelMas.active:=false;
  DelMas.cachedupdates:=false;
  DelMas.requestlive:=false;
  DelMas.active:=true;
  DelDet.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TExtraDel.BD2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraDel.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraDel.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraDel.BD5Click(Sender: TObject);
var i:integer;
    N:single;
begin
  N:=0;
  with DelDet do
  begin
    first;
    while not DelDet.Eof do
    begin
      if DelDet.FieldByName('TempQty').IsNull then
      begin
        showmessage('The Qty can not be empty.');
        abort;
      end;
      if DelDet.FieldByName('DFL').IsNull then
      begin
        showmessage('The DFL can not be empty.');
        abort;
      end;
      if DelDet.FieldByName('SCBH').IsNull then
      begin
        showmessage('The SCBH can not be empty.');
        abort;
      end;
      next;
    end;
    N:=DelDet.fieldbyname('TempQty').Value+N;
    if DelMas.fieldbyname('CKBH').Value='CBY' then
      Label17.Caption:=floattostr(roundto(N,-4))
    else
      Label17.Caption:=floattostr(roundto(N,-2));
  end;
  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
    begin
      case DelDet.updatestatus of
          usinserted:
          begin
            if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if DelDet.fieldbyname('CLBH').isnull then
              begin
                DelDet.delete;
              end
              else
              begin
                DelDet.edit;
                if DelDet.fieldbyname('SCBH').isnull then
                begin
                  DelDet.fieldbyname('SCBH').Value:=DelMas.fieldbyname('SCBH').Value;
                end;
                if DelMas.fieldbyname('CKBH').Value='CBY' then
                  DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.####',Deldet.fieldbyname('TempQty').Value)
                else
                  DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位
                DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                DelDet.FieldByName('userID').Value:=main.edit1.text;
                ///DelDet.FieldByName('SCBH').Value:='ZZZZZZZZZZ';
                DelDet.FieldByName('userdate').Value:=Ndate;
                DelDet.FieldByName('CostID').Value:=Pro_CostID;
                DelDet.FieldByName('YN').Value:='1';
                upDet.apply(ukinsert);
              end;
            end;
          end;
          usmodified:
          begin
               if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               end
               else
               begin
                 if DelDet.fieldbyname('YN').value='0'then
                 begin
                    with BDelRec do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('insert into BDelRec ');
                       sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                       sql.add('values ('+''''+'KCLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                       sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                       sql.add(''''+main.Edit1.Text+''''+',getdate())');
                       execsql;
                       active:=false;
                    end;
                    UpDet.apply(ukdelete);
                 end
                 else
                 begin
                    DelDet.edit;
                    if DelMas.fieldbyname('CKBH').Value='CBY' then
                      DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.####',Deldet.fieldbyname('TempQty').Value)
                    else
                      DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位
                    DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                    DelDet.FieldByName('userID').Value:=main.edit1.text;
                    DelDet.FieldByName('userdate').Value:=Ndate;
                    DelDet.FieldByName('CostID').Value:=Pro_CostID;
                    upDet.apply(ukmodify);
                 end;
               end;
           end;
        end;
        DelDet.next;
      end;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  bb6.enabled:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[4].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TExtraDel.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[4].ButtonStyle:=cbsNone;
end;

procedure TExtraDel.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[2].ButtonStyle:=cbsnone;
end;

procedure TExtraDel.BBT1Click(Sender: TObject);
begin
DelMas.First;
end;

procedure TExtraDel.BBT2Click(Sender: TObject);
begin
  DelMas.prior;
end;

procedure TExtraDel.BBT3Click(Sender: TObject);
begin
  DelMas.next;
end;

procedure TExtraDel.BBT4Click(Sender: TObject);
begin
  DelMas.last;
end;

procedure TExtraDel.BDT1Click(Sender: TObject);
begin
  DelDet.First;
end;

procedure TExtraDel.BDT2Click(Sender: TObject);
begin
  DelDet.prior;
end;

procedure TExtraDel.BDT3Click(Sender: TObject);
begin
  DelDet.next;
end;

procedure TExtraDel.BDT4Click(Sender: TObject);
begin
  DelDet.last;
end;

procedure TExtraDel.DelDetAfterOpen(DataSet: TDataSet);
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
  //BDT6.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>2  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if not DelMas.FieldByName('PMARK').isnull  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  DelTot.Active:=false;
  DelTot.active:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TExtraDel.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
  else
    begin
      panel6.visible:=false;
      panel1.visible:=true;
    end;
end;

procedure TExtraDel.DBGrid3DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TExtraDel.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TExtraDel.BDT5Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
  else
    begin
      ExtraDel_Print:=TExtraDel_Print.Create(nil);
      ExtraDel_Print.quickrep1.prepare;
      ExtraDel_Print.Qpage1.caption:=inttostr(ExtraDel_Print.quickrep1.QRPrinter.pagecount);
      ExtraDel_Print.quickrep1.preview;
      DelDet.active:=false;
      DelDet.active:=true;
      ExtraDel_Print.Free;
    end;
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end
    else
      begin
        fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
      end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
end;


procedure TExtraDel.DelDetCalcFields(DataSet: TDataSet);
begin
  if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('Person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end;
end;

procedure TExtraDel.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TExtraDel.BBTT1Click(Sender: TObject);
begin
  DelOther_C_Dep:=TDelOther_C_Dep.Create(self);
  DelOther_C_Dep.Show;
end;

procedure TExtraDel.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TExtraDel.FormDestroy(Sender: TObject);
begin
  ExtraDel:=nil;
end;

procedure TExtraDel.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;
end;

procedure TExtraDel.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
  end;

  if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
  end;
end;

procedure TExtraDel.bbt6Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
 begin
  if  DelMas.active  then
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
        DelMas.First;
        j:=2;
        while   not   DelMas.Eof   do
        begin
          for i:=0 to DBGrid3.Columns.Count-1 do
            eclApp.Cells(j,i+1):=DBGrid3.Fields[i].Value;
          DelMas.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TExtraDel.BDT6Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
 begin
  if  DelDet.active  then
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
        for i:=0 to DBGrid4.Columns.Count-1 do
          eclApp.Cells(1,i+1):=DBGrid4.Columns[i].Title.Caption;
        DelDet.First;
        j:=2;
        while   not   DelDet.Eof   do
        begin
          for i:=0 to DBGrid4.Columns.Count-1 do
            eclApp.Cells(j,i+1):=DBGrid4.Fields[i].Value;
          DelDet.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;


procedure TExtraDel.BBTT2Click(Sender: TObject);
begin
  ExtraDel_Child :=TExtraDel_Child.Create(self);
  ExtraDel_Child.Show;
end;

end.
