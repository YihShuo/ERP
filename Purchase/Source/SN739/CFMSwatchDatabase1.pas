unit CFMSwatchDatabase1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh, ComCtrls,comobj,
  DBCtrls,IniFiles,ShellApi,dateutils;

type
  TCFMSwatchDatabase = class(TForm)
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    Panel4: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit6: TEdit;

    Edit7: TEdit;
    cb8: TComboBox;
    DTP2: TDateTimePicker;
    DTP1: TDateTimePicker;
    datecheckbox: TCheckBox;
    ComboBox14: TComboBox;
    DataSource1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    Button2: TButton;
    Query3: TQuery;
    Query1zsywjc: TStringField;
    Query1ColorID: TStringField;
    Query1ywpm: TStringField;
    Query1color2clbh: TStringField;
    Query1Material: TStringField;
    Query1CLBH: TStringField;
    Query1CLDH: TStringField;
    Query1JHDH: TStringField;
    Query1Readable: TStringField;
    Query1jijie: TStringField;
    Query1devcode: TStringField;
    Query1article: TStringField;
    Query1TrackingA4Comfirm: TStringField;
    Query1ColorWindow: TStringField;
    Query1DateColorWindow: TDateTimeField;
    Query1DCName: TStringField;
    Query1Signer: TStringField;
    Query1ShippedDate: TDateTimeField;
    Query1SignedDate: TDateTimeField;
    Query1PRO: TStringField;
    Query1Senter: TStringField;
    Query1SharedDC: TStringField;
    Query1ExpireDate: TDateTimeField;
    Query1Updater: TStringField;
    Query1color2Remark: TStringField;
    Query1AWB: TStringField;
    Query1VendorID: TStringField;
    Query1A4Comfirm: TStringField;
    Label5: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Query1ReceivedDate: TDateTimeField;
    CheckBox6: TCheckBox;
    Button16: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1SignedDateChange(Sender: TField);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CFMSwatchDatabase: TCFMSwatchDatabase;

implementation

uses main1, AutoSaveA4CFM1;

{$R *.dfm}

procedure TCFMSwatchDatabase.Button1Click(Sender: TObject);
begin 
    DBGridEh1.columns[12].picklist.Clear;
    DBGridEh1.columns[14].picklist.Clear;
  With Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  select  ZSZL_FLEX.zsdhflex as VendorID,ZSZL.zsywjc, '''' as ColorID,CLZL.ywpm,cgzl_color2.clbh as color2clbh,CLZL_FLEX.cldhflex as Material,CLZL.CLDH as CLBH,FormalCLBH.CLDH,TempCLBH.JHDH,cgzl_color2.Readable,kfxxzl.jijie,kfxxzl.devcode,kfxxzl.article  ');
    SQL.Add('  ,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.DCName,cgzl_color2.Signer,cgzl_color2.ShippedDate,cgzl_color2.SignedDate  ');
    SQL.Add('  ,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.SharedDC,cgzl_color2.ExpireDate,cgzl_color2.Updater,cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.ReceivedDate  ');
    SQL.Add('  FROM CLZL  ');
    SQL.Add('    left join ypzls on ypzls.clbh=CLZL.cldh   ');
    SQL.Add('    left join ypzl on ypzls.ypdh=ypzl.ypdh    ');
    SQL.Add('    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao     ');
    SQL.Add('    left join ZSZL  on CLZL.ZSDH=ZSZL.ZSDH or ypzls.CSBH=ZSZL.ZSDH    ');
    SQL.Add('    left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH    ');
    SQL.Add('    left join cgzl_color2 on cgzl_color2.clbh=CLZL.cldh    ');
    SQL.Add('    left join CLZL_LS FormalCLBH on FormalCLBH.CLDH=CLZL.CLDH     ');
    SQL.Add('    left join CLZL_LS TempCLBH on TempCLBH.JHDH=CLZL.CLDH     ');
    SQL.Add('    left join CLZL_FLEX on CLZL_FLEX.cldh = CLZL.CLDH   ');
    sql.add('    left join ZSZL_FLEX on ZSZL_FLEX.zsdh = ypzls.CSBH');
    SQL.Add('  where 1=1  ');
    if datecheckbox.Checked then
    begin
      sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color2.SignedDate,111))  between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if ComboBox14.Text <> '' then
       sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
    if edit7.text<>'' then
       sql.add('and kfxxzl.devcode like '''+'%'+edit7.text+'%'+''' ');
    if Edit3.text<>'' then
       sql.Add('and zszl.zsywjc like '''+'%'+Edit3.Text+'%'+'''');
    if Edit2.text<>'' then
       sql.Add('and ypzl.kfjd like '''+'%'+Edit2.Text+'%'+'''');
    if Edit6.text<>'' then
       sql.Add('and clzl.cldh like '''+'%'+Edit6.Text+'%'+'''');
    if Edit1.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+Edit1.Text+'%'+'''');
    if cb8.text<>'' then
       sql.add('and kfxxzl.devtype like '''+cb8.text+''' ');
    if Edit9.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit9.text+'%'+'''');
    if Edit10.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit10.text+'%'+'''');
    if Edit11.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit11.text+'%'+'''');
    SQL.Add('  group by  ZSZL_FLEX.zsdhflex,ZSZL.zsywjc,CLZL.ywpm,CLZL_FLEX.cldhflex,CLZL.CLDH,FormalCLBH.CLDH,TempCLBH.JHDH,cgzl_color2.Readable,kfxxzl.jijie,kfxxzl.devcode,kfxxzl.article,cgzl_color2.A4Comfirm  ');
    SQL.Add('  ,cgzl_color2.TrackingA4Comfirm,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.DCName,cgzl_color2.Signer,cgzl_color2.ShippedDate,cgzl_color2.SignedDate ');
    SQL.Add('  ,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.SharedDC,cgzl_color2.ExpireDate,cgzl_color2.Updater,cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.clbh,cgzl_color2.ReceivedDate  ');
    SQL.Add('  order by CLZL.CLDH');
    active:=true;
    //ExecSQL;
  end;
  BB4.Enabled:=true;
  BB4.Click;
end;

procedure TCFMSwatchDatabase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCFMSwatchDatabase.FormDestroy(Sender: TObject);
begin
  CFMSwatchDatabase:=nil;
end;

procedure TCFMSwatchDatabase.BB5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
       with Query2 do
       begin
          active:=false;
          sql.Clear;
          sql.Add('select clbh from cgzl_color2');
          sql.Add('where clbh= '''+query1.fieldbyname('CLBH').AsString+'''');
          active:=true;
       end;
      case query1.updatestatus of
      usmodified:
        if  Query2.RecordCount=0 then
        begin
          with Query3 do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' insert cgzl_color2 (CLBH) values(');
            sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
            sql.Add(')');
            execsql;
          end;
           query1.edit;
           UpdateSQL1.apply(ukmodify);
        end else
        begin
           query1.edit;
           UpdateSQL1.apply(ukmodify);
        end;
    end;
    //20240716 自動存相同材料名稱 第5個字後相同
          if CheckBox6.checked then
          begin
          AutoSaveA4CFM:=TAutoSaveA4CFM.Create(self);
          AutoSaveA4CFM.Edit1.text:=query1.fieldbyname('CLBH').OldValue;
          AutoSaveA4CFM.bb1.Click;
          AutoSaveA4CFM.bb2.Click;
          AutoSaveA4CFM.bb1.Click;
          //AutoSaveA4CFM.bb3.Click;
          AutoSaveA4CFM.ShowModal();
          //AutoSaveA4CFM.Release();
          end;
    query1.next;
  end;

  with query1 do
  begin
     active:=false;
     requestlive:=false;
     cachedupdates:=false;
     active:=true;
  end;
  Button1.Enabled:=true;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TCFMSwatchDatabase.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-60;
  DTP2.date:=date;
  if main.Edit2.Text = 'SKX' then
  begin
    Label18.Visible := true;
    ComboBox14.Visible := true;
  end;
end;

procedure TCFMSwatchDatabase.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TCFMSwatchDatabase.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TCFMSwatchDatabase.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
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

procedure TCFMSwatchDatabase.Query1SignedDateChange(Sender: TField);
begin
  Query1.fieldbyname('ExpireDate').Value:=Query1.fieldbyname('SignedDate').Value+730;
end;

procedure TCFMSwatchDatabase.DBGridEh1CellClick(Column: TColumnEh);  
var i,j:integer;
    SRList,PicklistSR,PicklistSKU:TStringlist;
    CLBH,SR,SKU:String;
begin

if DBGridEh1.columns[12].picklist.count=0 then
if ((DBGridEh1.SelectedField.FieldName = 'A4Comfirm')  OR  (DBGridEh1.SelectedField.FieldName = 'ColorWindow'))  then
 // and (Edit6.text<>'') then
  begin
    SRList := TStringList.Create;
    PicklistSR := TStringList.Create;
    PicklistSKU := TStringList.Create;
    BB4.Click;
    DBGridEh1.columns[12].picklist.Clear;
    DBGridEh1.columns[14].picklist.Clear;
    CLBH:=query1.FieldByName('CLBH').AsString;
    //SRList.add(Copy(query1.FieldByName('devcode').AsString,1,6));
    //PicklistSR.add(query1.FieldByName('devcode').AsString);
    //PicklistSKU.add(query1.FieldByName('Article').AsString);
    for i:=1 to  query1.RecordCount do
      begin
        if query1.Eof then
          query1.First;
        if CLBH=query1.FieldByName('CLBH').AsString  then
          begin
            j:=SRList.IndexOf(copy(query1.FieldByName('devcode').AsString,1,6));
            //showmessage(inttostr(j));
            if (j>=0) and (SRList.IndexOf(query1.FieldByName('devcode').AsString)<0) and (Pos(copy(query1.FieldByName('devcode').AsString,18,2),Copy(PicklistSR[j],18,MaxInt))=0) then  //有相同SR開頭   不同配色
              begin   
                SRList.add(Copy(query1.FieldByName('devcode').AsString,1,6));
                PicklistSR.add(query1.FieldByName('devcode').AsString);
                PicklistSKU.add(query1.FieldByName('Article').AsString);
                DBGridEh1.columns[12].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);
                DBGridEh1.columns[14].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);

                SR:=PicklistSR[j];
                SKU:=PicklistSKU[j];
                PicklistSR[j]:= SR+'&'+ copy(query1.FieldByName('devcode').AsString,18,2);
                PicklistSKU[j]:=SKU+'&'+ query1.FieldByName('Article').AsString;
                DBGridEh1.columns[12].picklist.add(PicklistSR[j]+'/'+PicklistSKU[j]);
                DBGridEh1.columns[14].picklist.add(PicklistSR[j]+'/'+PicklistSKU[j]);
              end
            else if j<0 then                                                        //新SR
              begin
                SRList.add(Copy(query1.FieldByName('devcode').AsString,1,6));
                PicklistSR.add(query1.FieldByName('devcode').AsString);
                PicklistSKU.add(query1.FieldByName('Article').AsString);
                //showmessage(inttostr(PicklistSR.count));

                DBGridEh1.columns[12].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);
                DBGridEh1.columns[14].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);
              end;

            //DBGridEh1.columns[24].picklist.add(query1.FieldByName('devcode').AsString+'/'+query1.FieldByName('Article').AsString);
            //DBGridEh1.columns[27].picklist.add(query1.FieldByName('devcode').AsString+'/'+query1.FieldByName('Article').AsString);
          end;
          query1.Next;
      end;
  end;
end;

procedure TCFMSwatchDatabase.Button16Click(Sender: TObject);
begin
        if query1.Active=false then
        begin
          showmessage('Do query first');
          exit;
        end;
      if query1.RecordCount=0 then
        begin
          showmessage('At least query one item');
          exit;
        end;
       if  query1.FieldByName('A4Comfirm').isnull then
        begin
          showmessage('A4Comfirm can not be null');
          exit;
        end;    
        with Query1 do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
        end;
          AutoSaveA4CFM:=TAutoSaveA4CFM.Create(self);
          AutoSaveA4CFM.Edit1.text:=query1.fieldbyname('CLBH').OldValue;
          AutoSaveA4CFM.bb1.Click;
          AutoSaveA4CFM.bb2.Click;
          AutoSaveA4CFM.bb1.Click;
          //AutoSaveA4CFM.bb3.Click;
          AutoSaveA4CFM.ShowModal();
end;

end.
