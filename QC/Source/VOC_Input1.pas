unit VOC_Input1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh;

type
  TVOC_Input = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Edit5: TEdit;
    DBGridEh1: TDBGridEh;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Query1DepNo: TStringField;
    Query1ProdDate: TDateTimeField;
    Query1Pairs: TFloatField;
    Query1HoanBao_C: TFloatField;
    Query1TalonThan_C: TFloatField;
    Query1LatexTrang_C: TFloatField;
    Query1LatexTrong_C: TFloatField;
    Query1A311FT6_C: TFloatField;
    Query1PU45_C: TFloatField;
    Query1A6127T_C: TFloatField;
    Query1WPL01_C: TFloatField;
    Query1PU45311NT1: TFloatField;
    Query1WPL01: TFloatField;
    Query1WH03: TFloatField;
    Query1T6127T: TFloatField;
    Query1Primer297: TFloatField;
    Query1P311FT_6primer: TFloatField;
    Query1Hotmelt1438A: TFloatField;
    Query1Hotmelt3173H: TFloatField;
    Query1NCwhitetransparent: TFloatField;
    Query1MWaterbase: TFloatField;
    Query1Latex: TFloatField;
    Query1A102: TFloatField;
    Query1ABwhitetransparent: TFloatField;
    Query1RB13F: TFloatField;
    Query1C237F: TFloatField;
    Query1AD752S: TFloatField;
    Query1A5: TFloatField;
    Query1A3: TFloatField;
    Query1AD5500: TFloatField;
    Query1A05W1A: TFloatField;
    Query1HM401hotmelt: TFloatField;
    Query1A722: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1DepName: TStringField;
    Query1KeoXang_C: TFloatField;
    Query1A8602: TFloatField;
    Query1A202: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VOC_Input: TVOC_Input;

implementation

uses main1, VOC_Input_Dep1;

{$R *.dfm}

procedure TVOC_Input.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TVOC_Input.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TVOC_Input.FormCreate(Sender: TObject);
begin
  query1.Active:=false;
  DateTimePicker1.DateTime := now;
end;

procedure TVOC_Input.BB2Click(Sender: TObject);
begin
  if Edit1.Text='' then
     showmessage('Please select Depno...')
  else
    begin
      with query1 do
        begin
          cachedupdates:=true;
          requestlive:=true;
          Insert;
          query1.FieldByName('Depno').Value:=edit1.text;
          query1.FieldByName('ProdDate').Value:=formatdatetime('yyyy/MM/dd',DateTimePicker1.date);
          //DBGridEh1.Fields[1]:='aaaa';
        end;
      bb5.enabled:=true;
      bb6.enabled:=true;
    end;

end;

procedure TVOC_Input.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TVOC_Input.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              //if query1.fieldbyname('DepNo').isnull then
              //  begin
              //    query1.delete;
              //  end
              //else
              //  begin
                  query1.edit;
                  //query1.FieldByName('YYBH').Value:=Uppercase(query1.FieldByName('YYBH').Value);
                  //query1.FieldByName('YWSM').Value:=Uppercase(query1.FieldByName('YWSM').Value);
                  //query1.FieldByName('GSBH').Value :=main.Edit2.text;
                  if (query1.FieldByName('ProdDate').IsNull) then
                    begin
                      showmessage('"ProdDate" ==> can not empty.!!');
                      abort;
                    end;

                  if (query1.FieldByName('Pairs').IsNull) or (query1.FieldByName('Pairs').value=0) then
                    begin
                      showmessage('"Pairs" ==> can not empty or 0.!!');
                      abort;
                    end
                  else
                    begin
                      query1.FieldByName('DepNo').Value:=Edit1.Text;
                      //query1.FieldByName('ProdDate').Value:=DateTimePicker1.DateTime;
                      //query1.FieldByName('ProdDate').Value:=formatdatetime('yyyy/MM/dd',DateTimePicker1.Date);
                      query1.FieldByName('USERDATE').Value:=date;
                      query1.FieldByName('USERID').Value:=main.edit1.text;
                      Query1.FieldByName('YN').Value:='2';
                      upsql1.apply(ukinsert);
                    end;  
              //  end;
            end;

          usmodified:
             begin
               if query1.fieldbyname('YN').value='0' then
                 begin
                   //if  query1.fieldbyname('USERDATE').value>=(date-3) then
                   //  begin
                       upsql1.Apply(ukdelete);
                   //  end
                   //else
                   //  begin
                   //    showmessage(query1.FieldByName('YWSM').Value+' >3 days,can not delete.');
                   //  end;
                 end
               else
                 begin
                   //if query1.fieldbyname('USERDATE').value>=(date-10) then
                   //  begin
                       query1.edit;
                   //    query1.FieldByName('YWSM').Value:=Uppercase(query1.FieldByName('YWSM').Value);
                   // query1.FieldByName('ZWSM').Value:=Uppercase(query1.FieldByName('ZWSM').Value);
                   if (query1.FieldByName('ProdDate').IsNull) then
                    begin
                      showmessage('"ProdDate" ==> can not empty.!!');
                      abort;
                    end;

                   if (query1.FieldByName('Pairs').IsNull) or (query1.FieldByName('Pairs').value=0) then
                      begin
                        showmessage('"Pairs" ==> can not empty or 0.!!');
                        abort;
                      end
                   else
                      begin
                        query1.FieldByName('USERDATE').Value:=date;
                        query1.FieldByName('USERID').Value:=main.edit1.text;
                        upsql1.apply(ukmodify);
                      end;  
                   //  end
                   //else
                   //  begin
                   //    showmessage(query1.FieldByName('YWSM').Value+' >10 days,can not modify.');
                   //  end;
                 end;
             end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TVOC_Input.Button1Click(Sender: TObject);
begin
with Query1 do
  begin    

    active:=false;
    sql.clear;
    sql.add('SELECT   QIPVOC.DepNo');
    sql.add('       , QIPVOC.ProdDate');
    sql.add('       , QIPVOC.Pairs');
    sql.add('       , QIPVOC.HoanBao_C');
    sql.add('       , QIPVOC.TalonThan_C');
    sql.add('       , QIPVOC.LatexTrang_C');
    sql.add('       , QIPVOC.LatexTrong_C');
    sql.add('       , QIPVOC.A311FT6_C');
    sql.add('       , QIPVOC.PU45_C');
    sql.add('       , QIPVOC.A6127T_C');
    sql.add('       , QIPVOC.WPL01_C');
    sql.add('       , QIPVOC.KeoXang_C');
    sql.add('       , QIPVOC.PU45311NT1');
    sql.add('       , QIPVOC.WPL01');
    sql.add('       , QIPVOC.WH03');
    sql.add('       , QIPVOC.T6127T');
    sql.add('       , QIPVOC.Primer297');
    sql.add('       , QIPVOC.P311FT_6primer');
    sql.add('       , QIPVOC.Hotmelt1438A');
    sql.add('       , QIPVOC.Hotmelt3173H');
    sql.add('       , QIPVOC.NCwhitetransparent');
    sql.add('       , QIPVOC.MWaterbase');
    sql.add('       , QIPVOC.Latex');
    sql.add('       , QIPVOC.A102');
    sql.add('       , QIPVOC.ABwhitetransparent');
    sql.add('       , QIPVOC.RB13F');
    sql.add('       , QIPVOC.C237F');
    sql.add('       , QIPVOC.AD752S');
    sql.add('       , QIPVOC.A5');
    sql.add('       , QIPVOC.A3');
    sql.add('       , QIPVOC.AD5500');
    sql.add('       , QIPVOC.A05W1A');
    sql.add('       , QIPVOC.HM401hotmelt');
    sql.add('       , QIPVOC.A722');
    sql.add('       , QIPVOC.A8602');
    sql.add('       , QIPVOC.A202');
    sql.add('       , QIPVOC.USERID');
    sql.add('       , QIPVOC.USERDATE');
    sql.add('       , QIPVOC.YN');
    sql.add('       , Bdepartment.DepName');
    sql.add('FROM  QIPVOC');
    sql.add('left join bdepartment on Bdepartment.id=QIPVOC.depno');
    sql.add('where  1=1');
    if CheckBox2.Checked=TRUE then
      begin
        sql.add('      and   QIPVOC.DepNo = '+''''+edit1.Text+''+'''');
      end;

    if CheckBox1.Checked=TRUE then
      begin
        sql.add('      and QIPVOC.ProdDate = '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
      end;


    //sql.add('and YWSM like ');
    //sql.add(''''+'%'+edit2.Text+'%'+'''');
    //sql.add('order by YYBH');
    //memo1.text:=sql.text;
    active:=true;

  end;
//panel3.visible:=false;
if  (main.edit1.text='21083')  then
  begin
    bb2.enabled:=true;
    bb3.enabled:=true;
    bb4.enabled:=true;
  end;  
bb5.enabled:=false;
bb6.enabled:=false;

bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TVOC_Input.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TVOC_Input.BB7Click(Sender: TObject);
begin
close;
end;

procedure TVOC_Input.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TVOC_Input.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TVOC_Input.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TVOC_Input.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TVOC_Input.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TVOC_Input.FormDestroy(Sender: TObject);
begin
  VOC_Input:=nil;
end;

procedure TVOC_Input.BB3Click(Sender: TObject);
begin
  //if messagedlg('Delete ??',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  //begin
    if Query1.recordcount>0 then
      begin
        with Query1 do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
        BB5.Enabled:=true;
        BB6.Enabled:=true;  
      end;
  //end;

end;

procedure TVOC_Input.BitBtn2Click(Sender: TObject);
begin
  VOC_Input_Dep:=TVOC_Input_Dep.create(self);
  VOC_Input_Dep.Label3.Caption := 'SN601';
  VOC_Input_Dep.show;
end;

end.
