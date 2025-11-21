unit ScanTBreceive;

interface

uses                                               

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp,
  ShellAPI, StrUtils, IniFiles;

type
  TScanTBReceive1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1testno: TStringField;
    Query1Article: TStringField;
    Query1TBReceive: TBooleanField;
    Query1TBReceiveDate: TDateTimeField;
    Label1: TLabel;
    Query2: TQuery;
    Query1lamination: TBooleanField;
    Query1Sublimation: TBooleanField;
    Query1E_embroidery: TBooleanField;
    Query1Printing: TBooleanField;
    Query1lamination_CRMTO: TBooleanField;
    Query1kietphong: TBooleanField;
    Query1Amico: TBooleanField;
    Query1Limao: TBooleanField;
    DBGridEh2: TDBGridEh;
    DataSource3: TDataSource;
    Query1Laser: TBooleanField;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Query4: TQuery;
    DataSource2: TDataSource;
    Query4testno: TStringField;
    Query4Article: TStringField;
    Query4TBReceive: TBooleanField;
    Query4TBReceiveDate: TDateTimeField;
    Query4lamination: TBooleanField;
    Query4Sublimation: TBooleanField;
    Query4E_embroidery: TBooleanField;
    Query4Printing: TBooleanField;
    Query4lamination_CRMTO: TBooleanField;
    Query4kietphong: TBooleanField;
    Query4Amico: TBooleanField;
    Query4Limao: TBooleanField;
    Query4Laser: TBooleanField;
    DBGridEh3: TDBGridEh;
    Query4Stage: TStringField;
    Query1Stage: TStringField;
    Button1: TButton;
    Query3: TQuery;
    Query3Testno: TStringField;
    Query3clzmlb: TStringField;
    Query3ypdh: TStringField;
    Query3zsywjc: TStringField;
    Query3CLBH: TStringField;
    Query3giacong: TStringField;
    Query3CLBH_1: TStringField;
    Query3days: TStringField;
    Query3CLYWMC: TStringField;
    Query3ywsm: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    Query4GCuserid: TStringField;
    Query4GCuserdate: TDateTimeField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Query1ETC: TDateTimeField;
    Query4ETC: TDateTimeField;
    Query3ETC: TDateTimeField;
    DBEdit3: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit4: TEdit;
    DBCheckBox10: TDBCheckBox;
    Query1DAJU: TBooleanField;
    Query4DAJU: TBooleanField;
    CheckBox10: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure Button1Click(Sender: TObject);
    procedure query3do();
    procedure checkboxcolor();
    procedure Query4AfterScroll(DataSet: TDataSet);
    procedure query4begin();
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DateTimePicker1Change(Sender: TObject);

  private
      procedure SacnTBReceive();

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanTBReceive1: TScanTBReceive1;

implementation

uses main1;

{$R *.dfm}

procedure TScanTBReceive1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TScanTBReceive1.FormDestroy(Sender: TObject);
begin
  ScanTBreceive1:=nil;
end;

procedure TScanTBReceive1.checkboxcolor();
begin
   if dbcheckbox1.Checked then
      dbcheckbox1.color:=cllime;
   if dbcheckbox2.Checked then
      dbcheckbox2.color:=cllime;
   if dbcheckbox3.Checked then
      dbcheckbox3.color:=cllime;
   if dbcheckbox4.Checked then
      dbcheckbox4.color:=cllime;
   if dbcheckbox5.Checked then
      dbcheckbox5.color:=cllime;
   if dbcheckbox6.Checked then
      dbcheckbox6.color:=cllime;
   if dbcheckbox7.Checked then
      dbcheckbox7.color:=cllime;
   if dbcheckbox8.Checked then
      dbcheckbox8.color:=cllime;
   if dbcheckbox9.Checked then
      dbcheckbox9.color:=cllime;
   if dbcheckbox10.Checked then
      dbcheckbox10.color:=cllime;

   if not dbcheckbox1.Checked then
      dbcheckbox1.color:=clMenu;
   if not dbcheckbox2.Checked then
      dbcheckbox2.color:=clMenu;
   if not dbcheckbox3.Checked then
      dbcheckbox3.color:=clMenu;
   if not dbcheckbox4.Checked then
      dbcheckbox4.color:=clMenu;
   if not dbcheckbox5.Checked then
      dbcheckbox5.color:=clMenu;
   if not dbcheckbox6.Checked then
      dbcheckbox6.color:=clMenu;
   if not dbcheckbox7.Checked then
      dbcheckbox7.color:=clMenu;
   if not dbcheckbox8.Checked then
      dbcheckbox8.color:=clMenu;
   if not dbcheckbox9.Checked then
      dbcheckbox9.color:=clMenu;
   if not dbcheckbox10.Checked then
      dbcheckbox10.color:=clMenu;


end;

procedure TScanTBReceive1.Edit1KeyPress(Sender: TObject; var Key: Char);
var chk1,chk2,chk3,chk4,chk5,chk6,chk7,chk8,chk9,chk10: String;
begin
    chk1 := '0';
    chk2 := '0';
    chk3 := '0';
    chk4 := '0';
    chk5 := '0';
    chk6 := '0';
    chk7 := '0';
    chk8 := '0';
    chk9 := '0';
    chk10:= '0';
    if CheckBox1.Checked then
      chk1 := '1';
    if CheckBox2.Checked then
      chk2 := '1';
    if CheckBox3.Checked then
      chk3 := '1';
    if CheckBox4.Checked then
      chk4 := '1';
    if CheckBox5.Checked then
      chk5 := '1';
    if CheckBox6.Checked then
      chk6 := '1';
    if CheckBox7.Checked then
      chk7 := '1';
    if CheckBox8.Checked then
      chk8 := '1';
    if CheckBox9.Checked then
      chk9 := '1';
    if CheckBox10.Checked then
      chk10 := '1';
  if (Key = #13)  then
  begin

   with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select stage,shoetest.testno,ETC,Article,TBReceive,TBReceiveDate,lamination,Sublimation,E_embroidery,Printing,lamination_CRMTO,kietphong,Amico,Limao,Laser,DAJU,GCuserid,GCuserdate from shoetest');
      SQL.Add('where Testno='''+edit1.text+'''  ');
      Active:=true;
    end;


  if query1.FieldByName('TBReceive').value<>'1' then
  begin
     SacnTBReceive();
     query4.Close;
     query4begin();
     abort;
  end;
  if query1.FieldByName('TBReceive').value='1' then
  begin
     with query1 do
     begin
       Active:=false;
       SQL.Clear;
       if messagedlg('There have data in database, Do you want to replace?',mtinformation,[mbYes,mbNo],0)=mrYes then
       begin
         SQL.Add('update shoetest set lamination='+chk1+',Sublimation='+chk2+',E_embroidery='+chk3+',Printing='+chk4+',lamination_CRMTO='+chk5+',kietphong='+chk6+',Amico='+chk7+',Limao='+chk8+',Laser='+chk9+',gcuserid='''+main.edit1.text+''',gcuserdate=getdate(),DAJU='+chk10+'');
         if edit4.text<>'' then
            SQL.Add(',ETC='''+edit4.text+'''');
         SQL.Add('where Testno='''+edit1.text+'''');
       end;
     //  showmessage(sql.Text);
       SQL.Add('select stage,testno,Article,ETC,TBReceive,TBReceiveDate,lamination,Sublimation,E_embroidery,Printing,lamination_CRMTO,kietphong,Amico,Limao,Laser,DAJU from shoetest where Testno='''+edit1.text+'''');
       Active:=true;
     end;
//     showmessage('Already');
     Edit1.Clear;
     CheckBox1.Checked := false;
     CheckBox2.Checked := false;
     CheckBox3.Checked := false;
     CheckBox4.Checked := false;
     CheckBox5.Checked := false;
     CheckBox6.Checked := false;
     CheckBox7.Checked := false;
     CheckBox8.Checked := false;
     CheckBox9.Checked := false;
     edit4.text:='';
     query4.Close;
     query4begin();
     abort;

  end;
 end;

end;

procedure TScanTBReceive1.SacnTBReceive();
var chk1,chk2,chk3,chk4,chk5,chk6,chk7,chk8,chk9,chk10: String;
begin
    chk1 := '0';
    chk2 := '0';
    chk3 := '0';
    chk4 := '0';
    chk5 := '0';
    chk6 := '0';
    chk7 := '0';
    chk8 := '0';
    chk9 := '0';
    chk10 := '0';
    if CheckBox1.Checked then
      chk1 := '1';
    if CheckBox2.Checked then
      chk2 := '1';
    if CheckBox3.Checked then
      chk3 := '1';
    if CheckBox4.Checked then
      chk4 := '1';
    if CheckBox5.Checked then
      chk5 := '1';
    if CheckBox6.Checked then
      chk6 := '1';
    if CheckBox7.Checked then
      chk7 := '1';
    if CheckBox8.Checked then
      chk8 := '1';
    if CheckBox9.Checked then
      chk9 := '1';
    if CheckBox10.Checked then
      chk10 := '1';
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set TBReceive =''1'',TBReceiveDate=getdate(),lamination='+chk1+',Sublimation='+chk2+',E_embroidery='+chk3+',Printing='+chk4+',lamination_CRMTO='+chk5+',kietphong='+chk6+',Amico='+chk7+',Limao='+chk8+',Laser='+chk9+',DAJU='+chk10+'');
      if edit4.text<>'' then
         SQL.Add(',ETC='''+edit4.text+'''');
      SQL.Add('where Testno='''+edit1.text+'''');
      SQL.Add('select stage,testno,Article,ETC,TBReceive,TBReceiveDate,lamination,Sublimation,E_embroidery,Printing,lamination_CRMTO,kietphong,Amico,Limao,Laser,DAJU from shoetest where Testno='''+edit1.text+'''');
      Active:=true;
    end;
    Edit1.Clear;
    CheckBox1.Checked := false;
    CheckBox2.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox5.Checked := false;
    CheckBox6.Checked := false;
    CheckBox7.Checked := false;
    CheckBox8.Checked := false;
    CheckBox9.Checked := false;    
 // end;
end;

procedure TScanTBReceive1.FormCreate(Sender: TObject);
begin
   datetimepicker1.datetime:=now;

   query4begin();
end;

procedure TScanTBReceive1.query4begin();
begin

    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select stage,shoetest.testno,Article,shoetest.ETC,TBReceive,TBReceiveDate,lamination,Sublimation,E_embroidery,Printing,lamination_CRMTO,kietphong,Amico,Limao,Laser,GCuserid,GCuserdate,DAJU from shoetest ');
      SQL.Add('where CONVERT(varchar(100), TBReceiveDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
end;



procedure TScanTBReceive1.DBGridEh3CellClick(Column: TColumnEh);
begin
  edit1.text:=query4.fieldbyname('testno').value;
  checkboxcolor();
//  button1.click;
end;
procedure TScanTBReceive1.query3do();
begin
    with query3 do
    begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select Testno,ETC,ywsm,clzmlb,ypdh,zsywjc,CLBH,isnull(giacong,'''') giacong,CLBH,');
    SQL.Add('case when zsywjc=''CRMTO'' then ''3''');
    SQL.Add('     when zsywjc=''JNG'' and giacong=''Lamination-JNG'' then ''1''');
    SQL.Add('     when zsywjc=''JNG'' and giacong=''Print-JNG'' then ''1''');
    SQL.Add('     when zsywjc=''JNG'' and giacong=''Print3D-JNG'' then ''3''');
    SQL.Add('     when zsywjc=''Amico''  then ''6''');
    SQL.Add('     when zsywjc=''LiMao''  then ''6''');
    SQL.Add('     when zsywjc=''BAO HE''  then ''6''');
    SQL.Add('     when zsywjc=''Kiet Phong''  then ''6''');
    SQL.Add('     when zsywjc=''DA JU''  then ''7''');
    SQL.Add('     when giacong=''Embroidery'' then ''3''');
    SQL.Add('end days');
    SQL.Add(',CLYWMC from (');
    SQL.Add('select Testno,ETC,clzmlb,ywsm,ypdh,zsywjc,CLBH');
    SQL.Add(',case when CLYWMC like ''%print%'' and CLYWMC not like ''%3D%'' and zsywjc=''JNG'' then ''Print-JNG''');
    SQL.Add('	  when CLYWMC like ''%3D%print%''  and zsywjc=''JNG'' then ''Print3D-JNG''');
    SQL.Add('	  when CLYWMC like ''%Embroidery%'' then ''Embroidery''');
    SQL.Add('	  when CLYWMC not like ''%Print%'' and zsywjc=''JNG'' then ''Lamination-JNG''');
    SQL.Add('	  end giacong');
    SQL.Add(',CLYWMC from (');
    SQL.Add('SELECT  shoetest.testno,shoetest.ETC,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzls on ypzls.YPDH=shoetest.ypdh');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE shoetest.testno='''+edit1.text+'''');
    SQL.Add('union all');
    SQL.Add('SELECT shoetest.testno,shoetest.ETC,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    SQL.Add(' ,ypzls.BWLB ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,bwzl.zwsm,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzls on ypzls.YPDH=shoetest.ypdh');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    SQL.Add('WHERE CLZHZL.SYL>0    and shoetest.testno='''+edit1.text+''' ');
    SQL.Add('union all');
    SQL.Add('Select testno,ETC,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
    SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    SQL.Add(' from (');
    SQL.Add('SELECT shoetest.testno,shoetest.ETC,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    SQL.Add(' ,ypzls.BWLB ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,bwzl.zwsm,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzls on ypzls.YPDH=shoetest.ypdh');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    SQL.Add('WHERE  CLZHZL.SYL>0   and clzl.clzmlb=''Y''  and  shoetest.testno='''+edit1.text+''' ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    SQL.Add(')  YPZLS where zsywjc in (''BAO HE'',''LiMao'',''kiet phong'',''Amico'',''CRMTO'',''JNG'',''TIENHUNG'',''DA JU'')');
    SQL.Add('group by testno,ETC,clzmlb,ypdh,zsywjc,CLYWMC,ywsm,CLBH)main');
    SQL.Add('order by zsywjc,giacong');
    Active:=true;
   // showmessage(sql.text);
  end;
  CheckBox1.Checked := false;
  CheckBox2.Checked := false;
  CheckBox3.Checked := false;
  CheckBox4.Checked := false;
  CheckBox5.Checked := false;
  CheckBox6.Checked := false;
  CheckBox7.Checked := false;
  CheckBox8.Checked := false;
  CheckBox9.Checked := false;
  CheckBox10.Checked := false;
  with  query3 do
  begin
  first;
      while not query3.eof do
      begin
        if (query3.fieldbyname('zsywjc').value='JNG')  and (query3.fieldbyname('giacong').value='Lamination-JNG') then
           checkbox1.Checked := true;
        if (query3.fieldbyname('zsywjc').value='BAO HE') then
           checkbox2.Checked := true;
        if (query3.fieldbyname('giacong').value='Embroidery') then
           checkbox3.Checked := true;
        if (query3.fieldbyname('zsywjc').value='JNG')  and ((query3.fieldbyname('giacong').value='Print3D-JNG') or (query3.fieldbyname('giacong').value='Print-JNG')) then
           checkbox4.Checked := true;
        if (query3.fieldbyname('zsywjc').value='CRMTO') then
           checkbox5.Checked := true;
        if (query3.fieldbyname('zsywjc').value='KIET PHONG') then
           checkbox6.Checked := true;
        if (query3.fieldbyname('zsywjc').value='Amico') then
           checkbox7.Checked := true;
        if (query3.fieldbyname('zsywjc').value='LiMao') then
           checkbox8.Checked := true;
        //if (query9.fieldbyname('zsywjc').value='LiMao') then
        //   checkbox8.Checked;
        if (query3.fieldbyname('zsywjc').value='DA JU') then
           checkbox10.Checked := true;
      next;
      end;

   end;
end;
procedure TScanTBReceive1.Button1Click(Sender: TObject);
begin
  query3do();
end;

procedure TScanTBReceive1.Query4AfterScroll(DataSet: TDataSet);
begin
  checkboxcolor();
end;



procedure TScanTBReceive1.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query4.FieldByName('GCuserid').AsString<>'' then
  begin
     DBGridEh3.canvas.Brush.Color:=claqua;
     DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TScanTBReceive1.DateTimePicker1Change(Sender: TObject);
begin

    Edit4.text:=FormatDateTime('yyyy/MM/dd',DateTimePicker1.datetime);
end;

end.
