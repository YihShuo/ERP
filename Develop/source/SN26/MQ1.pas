unit MQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, ComCtrls,comobj,
  Menus,fununit;

type
  TMQ = class(TForm)
    MQT: TQuery;
    DataSource1: TDataSource;
    MQTarticle: TStringField;
    MQTzwsm: TStringField;
    MQTkfdh: TStringField;
    MQTcreatedate: TDateTimeField;
    MQTcldh: TStringField;
    MQTzwpm: TStringField;
    MQTywpm: TStringField;
    MQTysbh: TStringField;
    MQTxxbh: TStringField;
    MQTkfqm: TStringField;
    MQTkfjc: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dates: TDateTimePicker;
    datee: TDateTimePicker;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Button3: TButton;
    D_MaterialQuy: TDataSource;
    DBGridEh2: TDBGridEh;
    MaterialQry: TQuery;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Button4: TButton;
    MaterialQryjijie: TStringField;
    MaterialQryKFJD: TStringField;
    MaterialQryCLBH: TStringField;
    MaterialQryywpm: TStringField;
    MaterialQryzwpm: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    Edit6: TEdit;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    MaterialQryquantity: TFloatField;
    MaterialQryfd: TStringField;
    Edit7: TEdit;
    Label10: TLabel;
    DevTpye: TComboBox;
    DevTpyecp: TLabel;
    MaterialQrydevtype: TStringField;
    MaterialQrydevcode: TStringField;
    MaterialQryPrinting_Status: TStringField;
    MaterialQryPrintingUserid: TStringField;
    MaterialQryPrintingUserdate: TDateTimeField;
    MaterialQryPrinting_Memo: TStringField;
    Panel4: TPanel;
    Label18: TLabel;
    Button5: TButton;
    Button6: TButton;
    Memo2: TMemo;
    Label11: TLabel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    Edit8: TMenuItem;
    Query1: TQuery;
    MaterialQryywsm: TStringField;
    Label20: TLabel;
    ComboBox14: TComboBox;
    ComboBox2: TComboBox;
    Label12: TLabel;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Button7: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Button8: TButton;
    Edit13: TEdit;
    Edit14: TEdit;
    DBGridEh3: TDBGridEh;
    QueryLast: TQuery;
    DataSource2: TDataSource;
    QueryLastJiJie: TStringField;
    QueryLastKFJD: TStringField;
    QueryLastDEVCODE: TStringField;
    QueryLastARTICLE: TStringField;
    QueryLastXTMH: TStringField;
    Edit9: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MQ: TMQ;

implementation

uses main1;

{$R *.dfm}

procedure TMQ.Button1Click(Sender: TObject);
begin
  if (ComboBox2.Text = '') and (main.Edit2.Text = 'SKX') then
  begin
     showmessage('You need to Keyin the Brand.');
     abort;
  end;
  with MQT do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select ypzl.article,bwzl.zwsm,CLZL.kfdh,CLZL_DEV.Createdate,clzl.cldh,zwpm,ywpm,ysbh,xxbh,kfzl.kfqm,kfzl.kfjc from CLZL ');
    SQL.Add('left join kfzl on kfzl.kfdh = CLZL.kfdh ');
    SQL.Add('left join ypzls on ypzls.CLBH=clzl.cldh');
    SQL.Add('left join bwzl on bwzl.bwdh = ypzls.BWBH');
    SQL.Add('left join CLZL_DEV on CLZL_DEV.cldh = clzl.cldh');
    SQL.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('WHERE convert(smalldatetime,convert(varchar,CLZL_DEV.Createdate,111)) between ');
    sql.add('   '''+formatdatetime('yyyy/MM/dd',DATES.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DATEe.Date) +'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+ComboBox2.Text+'%''');
    end;
    if edit1.text<>'' then
       SQL.Add('and CLZL.cldh like  ''%'+edit1.Text+'%'' ');
    if Checkbox1.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''A''');
    if Checkbox2.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''B''');
    if Checkbox3.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''C''');
    if Checkbox4.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''D''');
    if Checkbox5.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''E''');
    if Checkbox6.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''F''');
    if Checkbox7.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''G''');
    if Checkbox8.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''H''');
    if Checkbox9.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''I''');
    if Checkbox10.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''J''');
    if Checkbox11.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''K''');
    if Checkbox12.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''L''');
    if Checkbox13.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''M''');
    if Checkbox14.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''N''');
    if Checkbox15.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''O''');
    if Checkbox16.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''P''');
    if Checkbox17.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''Q''');
    if Checkbox18.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''R''');
    if Checkbox19.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''S''');
    if Checkbox20.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''T''');
    if Checkbox21.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''U''');
    if Checkbox22.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''V''');
    if Checkbox23.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''W''');
    if Checkbox24.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''X''');
    if Checkbox25.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''Y''');
    if Checkbox26.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''Z''');
    if Checkbox27.Checked = true then
       SQL.Add('and (CLZL.kfdh=''036'' OR CLZL.kfdh=''0036'')');
    if Checkbox28.Checked = true then
       SQL.Add('and (CLZL.kfdh=''049'' OR CLZL.kfdh=''0049'')');
    if Checkbox29.Checked = true then
       SQL.Add('and (CLZL.kfdh<>''049'' and CLZL.kfdh<>''0049'' and CLZL.kfdh<>''036'' and CLZL.kfdh=''0036''  )');
    sql.add('group by bwzl.zwsm,CLZL.kfdh,CLZL_DEV.Createdate,clzl.cldh,zwpm,ywpm,ysbh,xxbh,kfzl.kfqm,kfzl.kfjc,ypzl.article');
    sql.add('ORDER BY CLZL_DEV.Createdate');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;



procedure TMQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TMQ.FormCreate(Sender: TObject);
begin
  if main.Edit2.Text = 'SKX' then
  begin
    Label20.Visible := true;
    ComboBox14.Visible := true;
    Label12.Visible := true;
    ComboBox2.Visible := true;
  end;
  PageControl1.ActivePageIndex:=0; 
  dates.date:=now-60;
  datee.date:=now;
end;

procedure TMQ.FormDestroy(Sender: TObject);
begin
  MQ:=nil;
end;

procedure TMQ.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  MQT.active  then
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
        for   i:=0   to   MQT.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=MQT.fields[i].FieldName;
          end;

        MQT.First;
        j:=2;
        while   not   MQT.Eof   do
          begin
            for   i:=0   to  MQT.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MQT.Fields[i].Value;
            end;
          MQT.Next;
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


procedure TMQ.Button3Click(Sender: TObject);
begin
  if (edit4.text='') and (Edit7.Text = '') then
  begin
     showmessage('plz type the Season or SR');
     abort;
  end;
  if (ComboBox14.Text = '') and (main.Edit2.Text = 'SKX') then
  begin
     showmessage('You need to Keyin the Brand.');
     abort;
  end;
  with MaterialQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select kfxxzl.devtype,kfxxzl.fd,ypzl.quantity,kfxxzl.devcode,kfxxzl.jijie,ypzl.KFJD,ypzls.CLBH,clzl.ywpm,clzl.zwpm,clzl_printing.Printing_Status,clzl_printing.PrintingUserid,clzl_printing.PrintingUserdate,clzl_printing.Printing_Memo,bwzl.ywsm from YPZL');
    SQL.Add('left join ypzls on ypzls.ypdh=ypzl.YPDH ');
    SQL.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.Add('left join clzl on clzl.cldh=ypzls.CLBH ');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('left join clzl_printing on clzl_printing.CLDH=ypzls.CLBH and clzl_printing.SR = kfxxzl.devcode');
    SQL.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('where 1=1');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.add('and kfzl_GS.GSBH= ''SKX'' ');
      SQL.Add('and ypzl.YPDH like '''+ComboBox14.Text+'%''');
    end else
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    if edit2.text<>'' then
       SQL.Add('and CLZL.ywpm like  ''%'+edit2.Text+'%'' ');
    if edit6.text<>'' then
       SQL.Add('and CLZL.cldh like  ''%'+edit6.Text+'%'' ');
    if edit7.text<>'' then
       SQL.Add('and kfxxzl.devcode like  ''%'+edit7.Text+'%'' ');
    if edit3.text<>'' then
       SQL.Add('and CLZL.zwpm like  ''%'+edit3.Text+'%'' ');
    if edit4.text<>'' then
       SQL.Add('and kfxxzl.JiJie like  ''%'+edit4.Text+'%'' ');
    if DevTpye.text<>'' then
       SQL.Add('and kfxxzl.devtype like  ''%'+DevTpye.Text+'%'' ');
    if edit5.text<>'' then
       SQL.Add('and ypzl.KFJD like  ''%'+edit5.Text+'%'' ');
    SQL.Add('group by kfxxzl.devtype,kfxxzl.fd,ypzl.quantity,kfxxzl.devcode,kfxxzl.jijie,ypzl.KFJD,ypzls.CLBH,clzl.ywpm,clzl.zwpm,clzl_printing.Printing_Status,clzl_printing.PrintingUserid,clzl_printing.PrintingUserdate,clzl_printing.Printing_Memo,bwzl.ywsm');
    SQL.Add('order by kfxxzl.jijie,ypzl.KFJD,ypzls.CLBH');
    Active:=true;
  end;
end;

procedure TMQ.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  MaterialQry.active  then
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
{        for   i:=0   to   MaterialQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=MaterialQry.fields[i].FieldName;
          end;
}
        eclApp.Cells(1,1):='Season';
        eclApp.Cells(1,2):='Stage';
        eclApp.Cells(1,3):='Devtype';
        eclApp.Cells(1,4):='SR#';
        eclApp.Cells(1,5):='FD';
        eclApp.Cells(1,6):='Pairs';
        eclApp.Cells(1,7):='Material';
        eclApp.Cells(1,8):='Parts';
        eclApp.Cells(1,9):='English';
        eclApp.Cells(1,10):='Chinese';
        eclApp.Cells(1,11):='Printing_Status';
        eclApp.Cells(1,12):='PrintingUserid';
        eclApp.Cells(1,13):='PrintingUserdate';
        eclApp.Cells(1,14):='Printing_Memo';

        MaterialQry.First;
        j:=2;
        while   not   MaterialQry.Eof   do
          begin
            for   i:=0   to  MaterialQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MaterialQry.Fields[i].Value;
            end;
          MaterialQry.Next;
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


procedure TMQ.Edit8Click(Sender: TObject);
begin
  Panel4.Visible := not Panel4.Visible;
  ComboBox1.ItemIndex := -1;
  Memo2.Text := '';
end;

procedure TMQ.Button6Click(Sender: TObject);
begin
  Panel4.Visible := not Panel4.Visible;
end;

procedure TMQ.Button5Click(Sender: TObject);
var devcode,CLBH: String;
    NDate:TDate;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  devcode := MaterialQry.fieldbyname('devcode').AsString;
  CLBH := MaterialQry.fieldbyname('CLBH').AsString;

  Query1.Active := false;
  Query1.SQL.Text := 'Select * from clzl_printing where CLDH = '''+MaterialQry.fieldbyname('CLBH').AsString+''' and SR = '''+MaterialQry.fieldbyname('devcode').AsString+'''';
  Query1.Open;
  if Query1.RecordCount = 0 then begin
    Query1.Active := false;
    Query1.SQL.Clear;
    Query1.SQL.Add('Insert into clzl_printing (CLDH,Stage,SR,Printing_Status,PrintingUserid,PrintingUserdate,Printing_Memo) ');
    Query1.SQL.Add('Values ('''+MaterialQry.fieldbyname('CLBH').AsString+''','''+MaterialQry.fieldbyname('KFJD').AsString+''','''+MaterialQry.fieldbyname('devcode').AsString+''','''+ComboBox1.Text+''','''+main.Edit1.Text+''','''+formatdatetime('yyyy/MM/dd',Ndate)+''','''+memo2.Text+''')');
    Query1.ExecSQL;
  end
  else begin
    Query1.Active := false;
    Query1.SQL.Clear;
    Query1.SQL.Add('Update clzl_printing Set Printing_Status = '''+ComboBox1.Text+''',PrintingUserid = '''+main.Edit1.Text+''',PrintingUserdate = '''+formatdatetime('yyyy/MM/dd',Ndate)+''',Printing_Memo = '''+memo2.Text+''' ');
    Query1.SQL.Add(' where CLDH = '''+MaterialQry.fieldbyname('CLBH').AsString+''' and SR = '''+MaterialQry.fieldbyname('devcode').AsString+'''');
    Query1.ExecSQL;
  end;
  Button3.Click;
  MaterialQry.Locate('devcode;CLBH',VarArrayOf([devcode,CLBH]),[loCaseInsensitive]);
  Panel4.Visible := false;
end;

procedure TMQ.Button7Click(Sender: TObject);
begin
  with QueryLast do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select kfxxzl.JiJie,ypzl.KFJD,kfxxzl.DEVCODE,kfxxzl.ARTICLE,kfxxzl.XTMH');
    sql.Add('from kfxxzl');
    sql.Add('left join ypzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao');
    sql.Add('where KFCQ=''JNG''');
    if Edit11.text<>'' then
       SQL.Add('    and kfxxzl.JiJie like  '''+Edit11.Text+'%'' ');
    if Edit12.text<>'' then
       SQL.Add('    and ypzl.KFJD = '''+Edit12.Text+''' ');
    if Edit9.text<>'' then
       SQL.Add('    and kfxxzl.DEVCODE like  '''+Edit9.Text+'%'' ');
    if Edit14.text<>'' then
       SQL.Add('    and kfxxzl.JiJie like  '''+Edit14.Text+''' ');
    if Edit13.text<>'' then
       SQL.Add('    and kfxxzl.XTMH like  '''+Edit13.Text+''' ');
    active:=true;
  end;

end;

procedure TMQ.Button8Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  QueryLast.active  then
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
        for   i:=0   to   QueryLast.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=QueryLast.fields[i].FieldName;
        end;

        QueryLast.First;
        j:=2;
        while   not   QueryLast.Eof   do
        begin
          for   i:=0   to  QueryLast.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=QueryLast.Fields[i].Value;
          end;
        QueryLast.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
