unit PackShip1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons,
  ExtCtrls,dateutils,DBGridEhImpExp,comobj, ComCtrls;

type
  TPackShip = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    YWDD: TQuery;
    YWDDDDBH: TStringField;
    YWDDXieMing: TStringField;
    YWDDKHPO: TStringField;
    YWDDCountry: TStringField;
    YWDDArticle: TStringField;
    YWDDGSBH: TStringField;
    YWBZPO: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    CheckNWGW1: TMenuItem;
    YWDDKFJC: TStringField;
    SaveDialog1: TSaveDialog;
    Qtemp: TQuery;
    YWDDCTS: TIntegerField;
    YWDDNW: TCurrencyField;
    YWDDGW: TCurrencyField;
    YWDDCBM: TCurrencyField;
    YWDDYSSM: TStringField;
    DetailExcel1: TMenuItem;
    UpdateSQL2: TUpdateSQL;
    YWDDTPrint: TIntegerField;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    CB1: TCheckBox;
    Edit4: TEdit;
    Edit5: TEdit;
    N2: TMenuItem;
    YWDDQty: TIntegerField;
    Splitter1: TSplitter;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure YWDDAfterScroll(DataSet: TDataSet);
    procedure YWBZPOAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure CheckNWGW1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DetailExcel1Click(Sender: TObject);
    procedure YWDDNewRecord(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
    Close_YWBZPO:boolean;
    procedure ShowYWBZPO();
  public
    { Public declarations }
  end;

var
  PackShip: TPackShip;    
  sdate,edate,NDate:Tdate;
  i,j:integer;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TPackShip.FormDestroy(Sender: TObject);
begin
  PackShip:=nil;
end;

procedure TPackShip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPackShip.Button1Click(Sender: TObject);
begin
  Close_YWBZPO:=true;
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with YWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDD.YSBH as DDBH, XXZL.XieMing,DDZL.Pairs as Qty,XXZL.XieXing,DDZL.KHBH,DDZL.ShipDate,KFZL.KFJC,0 TPrint, ');
    sql.add('       DDZL.KHPO,LBZLS.YWSM as Country,DDZL.YN,XXZL.Article,Max(YWDD.CGNO) as CGNO,DDZL.GSBH,XXZL.YSSM ');
    sql.add('       ,sum(YWBZPO.CTS) as CTS,sum(YWBZPO.CTS*YWBZPO.NW) as NW,sum(YWBZPo.CTS*YWBZPO.GW) as GW,sum(round(YWBZPO.CBM,4)*YWBZPO.CTS) as CBM ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join YWBZPO on YWBZPO.DDBH=YWDD.DDBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit2.text+'%'+'''');
    if  edit4.Text<>'' then
    sql.add('      and DDZL.article like '+''''+'%'+edit4.text+'%'+'''');
    if  edit5.Text<>'' then
    sql.add('      and DDZL.buyno like '+''''+'%'+edit5.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    //sql.add('      and YWDD.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and exists(select DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.DDBH)');
    if not CB1.checked then
    begin
        sql.add('       and exists(select DDBH from YWBZPO where YWBZPO.DDBH=YWDD.DDBH)');
    end;
    sql.add('group by YWDD.YSBH, XXZL.XieMing,DDZL.Pairs,XXZL.XieXing,DDZL.KHBH,DDZL.ShipDate,KFZL.KFJC, ');
    sql.add('          DDZL.KHPO,LBZLS.YWSM,DDZL.YN,XXZL.Article,DDZL.GSBH,XXZL.YSSM ');
    sql.add('order by YWDD.DDBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  Close_YWBZPO:=false;
  ShowYWBZPO();
end;

procedure TPackShip.ShowYWBZPO();
begin
  if YWDD.recordcount>0 then
  begin
    with Qtemp do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select distinct DDCC ');
      sql.add('from YWDDS');
      sql.add('where DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''') ');
      sql.add('and Qty<>0');
      sql.add('order by DDCC');
      Active:=true;
      j:=recordcount;
    end;
    with YWBZPO do
    begin
      active:=false;
      sql.Clear;
      sql.add('select POS.DDBH as OrderNo,POS.XH as No,POS.MEMO,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ');
      while not Qtemp.Eof do
      begin
        sql.add(',max(case when POS.DDCC='+''''+Qtemp.fieldbyname('DDCC').asstring+'''');
        sql.add(' then POS.Qty end ) as '+''''+Qtemp.fieldbyname('DDCC').asstring+'''');
        Qtemp.Next;
      end;
      sql.add(',YWBZPO.L,YWBZPO.W,YWBZPO.H,Round(YWBZPO.NW,2) as NW,Round(YWBZPO.GW,2) as GW,Round(YWBZPO.CBM,4) as CBM,');
      sql.add('round(YWBZPO.NW,2)*POS.CTS as TNW,round(YWBZPO.GW,2)*POS.CTS as TGW,(Round(YWBZPO.CBM,4)*POS.CTS) as TCBM,YWDD.KHDDBH1 ');
      sql.add('from ( ');
      SQL.Add('      select null as DDBH,null as XH,null as MEMO,YWDDS.DDCC,Sum(YWDDS.Qty) as Qty,Max(DDPACKS.CTS) as CTS,Max(DDPACKS.USERDATE) as UserDate ');
      SQL.Add('      from YWDDS ');
      SQL.Add('      left join YWDD on YWDDS.DDBH=YWDD.DDBH');
      SQL.Add('      left join (');
      SQL.Add('      select YSBH,Sum(CTS) as CTS,max(YWBZPOS.USERDATE) as USERDATE from  (');
      SQL.Add('      select  YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS,Max(YWBZPOS.USERDATE) as USERDATE');
      SQL.Add('      from YWBZPOS');
      SQL.Add('      left join YWDD on YWDD.DDBH=YWBZPOS.DDBH');
      SQL.Add('      where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
      SQL.Add('      and YWBZPOS.Qty<>0 Group by YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS) YWBZPOS Group by YSBH ) DDPACKS  on DDPACKS.YSBH=YWDD.YSBH  ');
      SQL.Add('      where YWDDS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
      SQL.Add('      group by YWDDS.DDCC');
      sql.add('      union    ');
      sql.add('      select DDBH,XH,MEMO,DDCC,Qty,CTS,USERDATE ');
      sql.add('      from YWBZPOS where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
      sql.add('     ) POS   ');
      sql.add('left join YWBZPO on YWBZPO.DDBH=POS.DDBH and YWBZPO.XH=POS.XH ') ;
      sql.add('left join YWDD on YWDD.DDBH=POS.DDBH ');
      sql.add('group by  POS.DDBH,POS.XH,POS.MEMO,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ,YWBZPO.NW,');
      sql.add('          YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.CBM,YWBZPO.CLBH,YWDD.KHDDBH1 ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    DBGrideh2.Columns[0].Width:=70;
    DBGrideh2.Columns[1].Width:=30;
    DBGrideh2.Columns[2].Width:=50;
    DBGrideh2.Columns[3].Width:=30;
    DBGrideh2.Columns[4].Width:=30;
    DBGrideh2.Columns[5].Width:=30;
    DBGrideh2.Columns[J+6].Width:=35;
    DBGrideh2.Columns[J+7].Width:=35;
    DBGrideh2.Columns[J+8].Width:=35;
    DBGrideh2.Columns[J+9].Width:=40;
    DBGrideh2.Columns[J+10].Width:=35;
    DBGrideh2.Columns[J+11].Width:=50;
    DBGrideh2.Columns[J+12].Width:=50;
    DBGrideh2.Columns[J+13].Width:=50;
    DBGrideh2.Columns[J+14].Width:=50;
    DBGrideh2.Columns[J+15].Width:=60;
    if YWBZPO.fieldcount>13 then
    begin
      for i:=6 to j+5 do
      begin
        DBGrideh2.Columns[i].Width:=35;
        if i mod 2 =0 then
        begin
          DBGrideh2.Columns[i].color:=$00F6F6F6;
          DBGrideh2.Columns[i].Title.Color:=$00F6F6F6;
          DBGrideh2.Columns[i].Footer.Color:=$00E8E8E8;
        end;
      end ;
      DBGrideh2.Columns[j+6].footer.ValueType:=fvtavg;
      DBGrideh2.Columns[j+6].Footer.fieldname:=YWBZPO.Fields[j+6].FieldName;
      DBGrideh2.Columns[j+6].color:=$00F6F6F6;
      DBGrideh2.Columns[j+7].footer.ValueType:=fvtavg;
      DBGrideh2.Columns[j+7].Footer.fieldname:=YWBZPO.Fields[j+7].FieldName;
      DBGrideh2.Columns[j+7].color:=$00F6F6F6;
      DBGrideh2.Columns[j+8].footer.ValueType:=fvtavg;
      DBGrideh2.Columns[j+8].Footer.fieldname:=YWBZPO.Fields[j+8].FieldName;
      DBGrideh2.Columns[j+8].color:=$00F6F6F6;
      DBGrideh2.Columns[j+9].footer.ValueType:=fvtavg;
      DBGrideh2.Columns[j+9].Footer.fieldname:=YWBZPO.Fields[j+9].FieldName;
      DBGrideh2.Columns[j+9].color:=$00F6F6F6;
      //DBGrideh2.Columns[j+8].ReadOnly:=true;
      DBGrideh2.Columns[j+10].footer.ValueType:=fvtavg;
      DBGrideh2.Columns[j+10].Footer.fieldname:=YWBZPO.Fields[j+10].FieldName;
      DBGrideh2.Columns[j+10].color:=$00F6F6F6;
      //DBGrideh2.Columns[j+10].ReadOnly:=true;
      //DBGrideh2.Columns[j+11].ReadOnly:=true;
      DBGrideh2.Columns[j+11].footer.ValueType:=fvtavg;
      DBGrideh2.Columns[j+11].Footer.fieldname:=YWBZPO.Fields[j+11].FieldName;
      DBGrideh2.Columns[j+11].color:=$00F6F6F6;
      DBGrideh2.Columns[j+12].footer.ValueType:=fvtSum;
      DBGrideh2.Columns[j+12].Footer.fieldname:=YWBZPO.Fields[j+12].FieldName;
      DBGrideh2.Columns[j+12].color:=$00F6F6F6;
      DBGrideh2.Columns[j+13].footer.ValueType:=fvtSum;
      DBGrideh2.Columns[j+13].Footer.fieldname:=YWBZPO.Fields[j+13].FieldName;
      DBGrideh2.Columns[j+13].color:=$00F6F6F6;
      DBGrideh2.Columns[j+14].footer.ValueType:=fvtSum;
      DBGrideh2.Columns[j+14].Footer.fieldname:=YWBZPO.Fields[j+14].FieldName;
      DBGrideh2.Columns[j+14].color:=$00F6F6F6;
      TFloatField(YWBZPO.fieldbyname('NW')).Displayformat:='##,#0.00';
      TFloatField(YWBZPO.fieldbyname('GW')).Displayformat:='##,#0.00';
      TFloatField(YWBZPO.fieldbyname('CBM')).Displayformat:='##,#0.0000';
      TFloatField(YWBZPO.fieldbyname('TCBM')).Displayformat:='##,#0.0000';
      TFloatField(YWBZPO.fieldbyname('TNW')).Displayformat:='##,#0.00';
      TFloatField(YWBZPO.fieldbyname('TGW')).Displayformat:='##,#0.00';
    end;
  end;
end;


procedure TPackShip.YWDDAfterScroll(DataSet: TDataSet);
begin
  if Close_YWBZPO=false then
  begin
    ShowYWBZPO();
  end;
end;

procedure TPackShip.YWBZPOAfterScroll(DataSet: TDataSet);
begin

  if not YWBZPO.fieldbyname('CBM').isnull then
    edit3.text:=floattostr(trunc(YWBZPO.fieldbyname('CBM').value*35.315*100)/100)
  else
    edit3.text:='';
end;

procedure TPackShip.N1Click(Sender: TObject);
  var   ExpClass:TDBGridEhExportClass;
          Ext:String;
  begin
          SaveDialog1.FileName   :=   '';
          if   SaveDialog1.Execute   then
          begin
              case   SaveDialog1.FilterIndex   of
                  1:   begin   ExpClass   :=   TDBGridEhExportAsText;   Ext   :=   'txt';   end;
                  2:   begin   ExpClass   :=   TDBGridEhExportAsCSV;   Ext   :=   'csv';   end;
                  3:   begin   ExpClass   :=   TDBGridEhExportAsHTML;   Ext   :=   'htm';   end;
                  4:   begin   ExpClass   :=   TDBGridEhExportAsRTF;   Ext   :=   'rtf';   end;
                  5:   begin   ExpClass   :=   TDBGridEhExportAsXLS;   Ext   :=   'xls';   end;
              else
                  ExpClass   :=   nil;   Ext   :=   '';
              end;
              if   ExpClass   <>   nil   then
              begin
                  if   UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3))   <>
                        UpperCase(Ext)   then
                      SaveDialog1.FileName   :=   SaveDialog1.FileName   +   '.'   +   Ext;
                  SaveDBGridEhToExportFile(ExpClass,dbgrideh2,
                            SaveDialog1.FileName,true);
              end;
          end;

end;

procedure TPackShip.CheckNWGW1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,n:integer;
 begin
  Close_YWBZPO:=true;
  YWBZPO.Active:=false;
  if  YWDD.active  then
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
        for   i:=0   to   YWDD.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YWDD.fields[i].displayLabel;
          end;

        YWDD.First;
        j:=2;
        while   not   YWDD.Eof   do
          begin
            if YWDD.FieldByName('TPrint').value=1 then
              begin
                for   i:=0   to  YWDD.fieldcount-1  do
                  begin
                    eclApp.Cells(j,i+1):=YWDD.Fields[i].Value;
                  end;
                inc(j);
              end;
            YWDD.Next;
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
 YWBZPO.active:=true;
 Close_YWBZPO:=false;
end;

procedure TPackShip.FormCreate(Sender: TObject);
begin
  DTP1.date:=startofthemonth(incmonth(Date(),1));
  DTP2.date:=startofthemonth(incmonth(Date(),2));
end;

procedure TPackShip.DetailExcel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,n:integer;
 begin

    if  YWDD.active  then
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
        YWDD.First;
        j:=2;
        while   not   YWDD.Eof   do
          begin
            if YWDD.FieldByName('TPrint').value=1 then
              begin
                YWBZPO.active:=true;
                for   i:=0   to   YWDD.fieldcount-1   do
                  begin
                    eclApp.Cells(J,2*(i+1)-1):=YWDD.fields[i].displayLabel;
                    eclApp.Cells.item[J,2*(i+1)-1].font.size:=10; 
                    eclApp.Cells.item[J,2*(i+1)-1].font.color:=clred;
                    eclApp.Cells(J+1,2*(i+1)-1):=YWDD.fields[i].value;
                    eclApp.Cells.item[J+1,2*(i+1)-1].font.size:=7;
                    eclApp.Cells.item[J+1,2*(i+1)-1].font.color:=clred;
                  end;
                J:=J+2;
                for   i:=0   to   YWBZPO.fieldcount-1   do
                begin
                    eclApp.Cells(J,i+1):=YWBZPO.fields[i].displayLabel;
                    eclApp.Cells.item[j,i+1].font.size:=10;
                    eclApp.Cells.item[j,i+1].font.color:=clred;
                end;
                J:=J+1;
                if YWBZPO.recordcount>0 then
                  begin
                    while not YWBZPO.Eof do
                      begin
                        for   i:=0   to  YWBZPO.fieldcount-1  do
                          begin
                            eclApp.Cells(j,i+1):=YWBZPO.Fields[i].Value;
                            eclApp.Cells.item[j,i+1].font.size:=10;
                          end;
                        YWBZPO.next;
                        J:=J+1;
                      end;
                  end;
                J:=J+2;
              end;
            YWDD.Next;
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
    YWBZPO.active:=true;


end;

procedure TPackShip.YWDDNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TPackShip.N3Click(Sender: TObject);
var  i,j,n:integer;
begin
  Close_YWBZPO:=true;
  YWDD.First;
  while not YWDD.Eof do
  begin
    for   i:=0   to  YWDD.RecordCount-1  do
    begin
       YWDD.Edit;
       YWDD.FieldByName('TPrint').value:=1;
       DBGrideh1.Columns[1].Checkboxes:=true;
    end;
    YWDD.next;
  end;
  Close_YWBZPO:=false;
end;


procedure TPackShip.N4Click(Sender: TObject);
begin
  Close_YWBZPO:=true;
  YWDD.First;
  while not YWDD.Eof do
  begin
    for   i:=0   to  YWDD.RecordCount-1  do
    begin
       YWDD.Edit;
       YWDD.FieldByName('TPrint').value:=0;
    end;
    YWDD.next;
  end;
  Close_YWBZPO:=false;
end;



end.
