unit Cement1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh;

type
  TCement = class(TForm)
    Panel1: TPanel;
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
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    TS4: TTabSheet;
    Panel3: TPanel;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    DelMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    BDelRec: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DelDetG: TQuery;
    DelDetGCLBH: TStringField;
    DelDetGTempQty: TCurrencyField;
    DelDetGS: TQuery;
    DSG: TDataSource;
    DelDetGSSCBH: TStringField;
    DelDetGSTempQty: TCurrencyField;
    DelDetGSArticle: TStringField;
    DelDetGZLNO: TStringField;
    DelDetGYWPM: TStringField;
    DelDetGDWBH: TStringField;
    DelDetGLLNO: TStringField;
    DelDetCementC: TStringField;
    DelDetCementS: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DelMasCementC: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasYN: TStringField;
    DelDetYN: TStringField;
    DelDetZhPercent: TFloatField;
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
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);  
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DelDetGCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cement: TCement;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TCement.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TCement.Button1Click(Sender: TObject);
begin
with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CMZL.* ');
    sql.add('from CMZL');
    sql.add('where CMZL.CementC like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('order by CMZL.CementC ');
    active:=true;
  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true; 
//check.Checked:=true;
BBT4.Enabled:=true;

DelDet.Active:=true;


end;

procedure TCement.FormCreate(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    {
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
    DBX2.Items.Clear;
    for i:=1 to recordcount do
      begin
        DBX2.Items.Add(fieldbyname('CKBH').asstring);
        next;
      end;
    }
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
PC1.ActivePage:=TS3;
//DTP1.Date:=date-3;
//DTP2.date:=date;

end;

procedure TCement.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TCement.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCement.BD7Click(Sender: TObject);
begin
close;
end;

procedure TCement.BB2Click(Sender: TObject);
begin
with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
//BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
//dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TCement.BB3Click(Sender: TObject);
begin
if DelDet.recordcount=0 then
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
        showmessage('Please delete the Cement(element) first...')
      end;
//BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
//dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TCement.BB4Click(Sender: TObject);
begin

if DelDet.recordcount=0 then
  begin
    with DelMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end;
  end
else
  begin
    showmessage('Notice!Cement(element) has data...Cement(compound) can not be modified!!.')
  end;




//BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
//dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TCement.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
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

try
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
      begin
        case DelMas.updatestatus of
          usinserted:
            begin
              if DelMas.fieldbyname('CementC').isnull then
                begin
                  DelMas.delete;
                end
                 else
                   begin
                     DelMas.edit;
                     //DelMas.fieldbyname('LLNO').Value:=a;
                     //DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     //DelMas.fieldbyname('SCBH').Value:='WWWWWWWWWW' ;
                     DelMas.FieldByName('userID').Value:=main.edit1.text;
                     DelMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
                 if DelMas.fieldbyname('YN').value='0'then
                    upMas.apply(ukdelete)
                 else
                    begin
                       DelMas.Edit;
                       DelMas.FieldByName('userID').Value:=main.edit1.text;
                       DelMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                       upMas.apply(ukmodify);
                    end;
             end;
        end;
       DelMas.next;
      end;
DelMas.active:=false;
DelMas.cachedupdates:=false;
DelMas.requestlive:=false;
DelMas.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
//BBTT1.Visible:=false;
//dbgrid3.columns[2].ButtonStyle:=cbsnone;  
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TCement.BD2Click(Sender: TObject);
begin
if DelMas.RequestLive then
  begin
    showmessage('Please save Cement(compound) data first.');
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
//BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCement.BD3Click(Sender: TObject);
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
//BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCement.BD4Click(Sender: TObject);
begin
if DelMas.RequestLive then
  begin
    showmessage('Please save Cement(compound) data first.');
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
//BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCement.BD5Click(Sender: TObject);
var i:integer;
N:single;
begin
N:=0;
with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('ZhPercent').IsNull then
          begin
            showmessage('The Percent can not be empty..!!');
            abort;
          end;
        next;
      end;
    //N:=DelDet.fieldbyname('TempQty').Value+N;
    //Label17.Caption:=floattostr(roundto(N,-2));
  end;

{with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('Qty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        next;
      end;
  end;   }
try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
      begin
        case DelDet.updatestatus of
          usinserted:
            begin  
              //if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
              //  begin
              //    showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
              //  end
              //  else
              //    begin
                    if DelDet.fieldbyname('CementS').isnull then
                      begin
                        DelDet.delete;
                      end
                    else
                        begin
                          DelDet.edit;
                          DelDet.fieldbyname('CementC').Value:=DelMas.fieldbyname('CementC').Value;
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                          upDet.apply(ukinsert);
                        end;
              //    end;
            end;
          usmodified:
             begin
               //if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
               //  begin
               //    showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               //  end
               //  else
               //    begin
                    if DelDet.fieldbyname('YN').value='0'then
                      begin
                        UpDet.apply(ukdelete);
                      end
                    else
                        begin
                          DelDet.edit;
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                          upDet.apply(ukmodify);
                        end;
               //    end;
              end;
        end;
        DelDet.next;
      end;
DelDet.active:=false;
DelDet.cachedupdates:=false;
DelDet.requestlive:=false;
DelDet.active:=true;
bb6.enabled:=false;  
//BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
//dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TCement.BD6Click(Sender: TObject);
begin
with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
//BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
//dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TCement.BB6Click(Sender: TObject);
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
//BBTT1.Visible:=false;
//dbgrid3.columns[2].ButtonStyle:=cbsnone;
end;

procedure TCement.BBT1Click(Sender: TObject);
begin
DelMas.First;
end;

procedure TCement.BBT2Click(Sender: TObject);
begin
DelMas.prior;
end;

procedure TCement.BBT3Click(Sender: TObject);
begin
DelMas.next;
end;

procedure TCement.BBT4Click(Sender: TObject);
begin
DelMas.last;
end;

procedure TCement.BDT1Click(Sender: TObject);
begin
DelDet.First;
end;

procedure TCement.BDT2Click(Sender: TObject);
begin
DelDet.prior;
end;

procedure TCement.BDT3Click(Sender: TObject);
begin
DelDet.next;
end;

procedure TCement.BDT4Click(Sender: TObject);
begin
DelDet.last;
end;

procedure TCement.DelDetAfterOpen(DataSet: TDataSet);
begin
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;


if (NDate-DelMas.FieldByName('USERDATE').value)>2  then
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


BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TCement.PC1Change(Sender: TObject);
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

procedure TCement.DBGrid3DblClick(Sender: TObject);
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

procedure TCement.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{
if DelMas.cachedupdates then
  begin
    DBX2.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid3.SelectedField.fieldname=DBX2.datafield) then
          begin
            DBX2.left:=rect.left+dbgrid3.left;
            DBX2.top:=rect.top+dbgrid3.Top;
            DBX2.width:=rect.right-rect.left+10;
            DBX2.height:=rect.bottom-rect.top;
            DBX2.visible:=true;
          end
          else
            DBX2.Visible:=false;
      end;
  end
  else
    DBX2.Visible:=false;

    
if DelMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  }
end;

procedure TCement.DBGrid3EditButtonClick(Sender: TObject);
begin
  //BBTT1Click(nil);
end;

procedure TCement.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 {
 if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
 }
end;

procedure TCement.DBGrid4EditButtonClick(Sender: TObject);
begin
  //BBTT2click(nil);
end;

procedure TCement.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;



procedure TCement.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TCement.FormDestroy(Sender: TObject);
begin
Cement:=nil;
end;


procedure TCement.DelDetGCalcFields(DataSet: TDataSet);
begin
          DelDetGS.Active:=false;
          DelDetGS.Active:=true;
          DelDetGS.First;
          while not DelDetGS.Eof do
            begin
              DelDetG.FieldByName('ZLNO').value:=DelDetG.FieldByName('ZLNO').asstring+'/'+DelDetGS.fieldbyname('SCBH').Value+'('+floattostr(DelDetGS.fieldbyname('TempQty').Value)+')';
              DelDetGS.Next;
            end;




end;

end.
