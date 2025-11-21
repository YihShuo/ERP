unit Cons_AD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, Comobj,
  Gauges;

type
  TCons_AD = class(TForm)
    Panel6: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGrid: TDBGridEh;
    Button1: TButton;
    ADQry: TQuery;
    ADDS: TDataSource;
    ADQrySKU: TStringField;
    ADQrySR: TStringField;
    ADQryXieXing: TStringField;
    ADQrySheHao: TStringField;
    ADQryADCode: TStringField;
    ADQryCLBH: TStringField;
    ADQryCCQQ: TStringField;
    ADQryCCQZ: TStringField;
    ADQryUSERID: TStringField;
    ADQryUSERDATE: TDateTimeField;
    ADQryYWPM: TStringField;
    UpdAD: TUpdateSQL;
    TempQry: TQuery;
    ADQryYN: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Edit_SR: TEdit;
    Edit_SKU: TEdit;
    BDT7: TBitBtn;
    ADQryCFMID: TStringField;
    ADQryCFMDATE: TDateTimeField;
    ADQryCFMID1: TStringField;
    ADQryCFMDATE1: TDateTimeField;
    ADCFMCK: TCheckBox;
    SizeCFMCK: TCheckBox;
    OpenDialog: TOpenDialog;
    ADQryBWBH: TStringField;
    ADQryCLDH: TStringField;
    NoADCk: TCheckBox;
    ADQryQty: TBooleanField;
    Label1: TLabel;
    Edit_AD: TEdit;
    Panel1: TPanel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ADQryAfterOpen(DataSet: TDataSet);
    procedure BDT7Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure DBGridEditButtonClick(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cons_AD: TCons_AD;

implementation
  uses main1,AD_Article1,FunUnit;
{$R *.dfm}

procedure TCons_AD.Button1Click(Sender: TObject);
begin
   //
   with ADQry do
   begin
    Active:=false;
    SQL.Clear;
    //量產階段
    SQL.Add('select XXZL.ARTICLE as SKU,KFXXZL.DEVCODE  as SR,AD.*,XXZLS.CLBH,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.YWPM,CLZL.CLDH from Cons_Avery AD');
    SQL.Add('Left join XXZL on XXZL.XieXing=AD.XieXing and XXZL.SheHao=AD.SheHao');
    SQL.Add('Left join KFXXZL on KFXXZL.XieXing=AD.XieXing and KFXXZL.SheHao=AD.SheHao');
    SQL.Add('Left join XXZLS on XXZLS.XieXing=AD.XieXing and XXZLS.SheHao=AD.SheHao and XXZLS.BWBH=AD.BWBH '); //Avery  廠商
    SQL.Add('Left join CLZL on CLZL.cldh=XXZLS.CLBH');
    SQL.Add('where XXZL.ARTICLE is not null ');
    if NoADCk.Checked=true then
      SQL.Add(' and AD.ADCode is null ');
    if Edit_SKU.Text<>'' then
      SQL.Add(' and XXZL.ARTICLE like ''%'+Edit_SKU.Text+'%'' ');
    if Edit_SR.Text<>'' then
      SQL.Add(' and KFXXZL.DEVCODE like ''%'+Edit_SR.Text+'%'' ');
    if Edit_AD.Text<>'' then
      SQL.Add(' and AD.ADCode like ''%'+Edit_AD.Text+'%'' ');
    SQL.Add('');
    SQL.Add('Union all ');
    SQL.Add('select XXZL.ARTICLE as SKU,KFXXZL.DEVCODE as SR,AD.*,YPZLS.CLBH,Null as CCQQ,Null as CCQZ,CLZL.YWPM,CLZL.CLDH from Cons_Avery AD');
    SQL.Add('Left join KFXXZL on KFXXZL.XieXing=AD.XieXing and KFXXZL.SheHao=AD.SheHao');
    SQL.Add('Left join ( select * from (select YPDH,XieXing,SheHao,ARTICLE,ROW_NUMBER() over (PARTITION BY XieXing,SheHao,ARTICLE  ORDER BY  YPDH DESC) as  rn from ');
    SQL.Add('(select YPZL.YPDH,KFXXZL.XieXing,KFXXZL.SheHao,kfxxzl.ARTICLE from YPZL,KFXXZL where KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao and  YPZL.GSDH='''+main.Edit2.Text+''' Group by YPZL.YPDH,KFXXZL.XieXing,KFXXZL.SheHao,kfxxzl.ARTICLE) A ) A');
    SQL.Add('where A.rn=1 ) YPZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=kfxxzl.SheHao');
    SQL.Add('Left join YPZLS on YPZLS.YPDH=YPZL.YPDH and  YPZLS.BWBH=AD.BWBH ');
    SQL.Add('Left join CLZL on CLZL.cldh=YPZLS.CLBH');
    SQL.Add('Left join XXZL on XXZL.XieXing=AD.XieXing and XXZL.SheHao=AD.SheHao');
    SQL.Add('where XXZL.ARTICLE is null');
    if NoADCk.Checked=true then
      SQL.Add(' and AD.ADCode is null ');    
    if Edit_SKU.Text<>'' then
      SQL.Add(' and XXZL.ARTICLE like ''%'+Edit_SKU.Text+'%'' ');
    if Edit_SR.Text<>'' then
      SQL.Add(' and KFXXZL.DEVCODE like ''%'+Edit_SR.Text+'%'' ');
    if Edit_AD.Text<>'' then
      SQL.Add(' and AD.ADCode like ''%'+Edit_AD.Text+'%'' ');      
    SQL.Add('Order by XXZL.ARTICLE ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
   end;
   //
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TCons_AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
  
end;

procedure TCons_AD.FormDestroy(Sender: TObject);
begin
    Cons_AD:=nil;
end;

procedure TCons_AD.BB2Click(Sender: TObject);
begin
  with ADQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  DBGrid.Columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid.Columns[0].ReadOnly:=false;
  DBGrid.Columns[3].ReadOnly:=false;
  DBGrid.Columns[0].Color:=clyellow;
  DBGrid.Columns[3].Color:=clyellow;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

end;

procedure TCons_AD.BB6Click(Sender: TObject);
begin

  with ADQry do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrid.Columns[0].Color:=clwhite;
  DBGrid.Columns[3].Color:=clwhite;
end;

procedure TCons_AD.BB4Click(Sender: TObject);
begin

  with ADQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  DBGrid.Columns[3].ReadOnly:=true;
  DBGrid.Columns[3].Color:=clyellow;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

end;

procedure TCons_AD.BB3Click(Sender: TObject);
begin
    with ADQry do
    begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
    end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
end;

procedure TCons_AD.BB5Click(Sender: TObject);
var i:integer;
    NDate:TDateTime;
    XieXing,SheHao:string;
begin
   with TempQry do          //取服務器的年月值
   begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('Ndate').Value;
      active:=false;
   end;
   try
      ADQry.first;
      for i:=1 to ADQry.RecordCount do
        begin
          case ADQry.updatestatus of
            usinserted:
              begin
                XieXing:='';
                SheHao:='';
                if ADQry.FieldByName('SKU').AsString<>'' then
                begin
                  with TempQry do
                  begin
                    Active:=false;
                    SQL.Clear;
                    SQL.Add('select XieXing,SheHao from XXZL where Article='''+ADQry.FieldByName('SKU').AsString+''' ');
                    Active:=true;
                    if RecordCount>0 then
                    begin
                      XieXing:=FieldByName('XieXing').AsString;
                      SheHao:=FieldByName('SheHao').AsString;
                    end;
                    Active:=false;
                  end;
                end;
                if ADQry.FieldByName('SR').AsString<>'' then
                begin
                  with TempQry do
                  begin
                    Active:=false;
                    SQL.Clear;
                    SQL.Add('select XieXing,SheHao from KFXXZL where DEVCODE='''+ADQry.FieldByName('SR').AsString+''' ');
                    Active:=true;
                    if RecordCount>0 then
                    begin
                      XieXing:=FieldByName('XieXing').AsString;
                      SheHao:=FieldByName('SheHao').AsString;
                    end;
                    Active:=false;
                  end;
                end;
                //
                if ((XieXing<>'') and (SheHao<>'')) then
                begin
                  ADQry.edit;
                  ADQry.FieldByName('XieXing').Value:=XieXing;
                  ADQry.FieldByName('SheHao').Value:=SheHao;
                  if ADQry.FieldByName('CFMDATE').Value<>ADQry.FieldByName('CFMDATE').OldValue  then
                      ADQry.FieldByName('CFMID').Value:=main.edit1.text;
                  if ADQry.FieldByName('CFMDATE1').Value<>ADQry.FieldByName('CFMDATE1').OldValue  then
                      ADQry.FieldByName('CFMID1').Value:=main.edit1.text;
                  ADQry.FieldByName('userID').Value:=main.edit1.text;
                  ADQry.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                  UpdAD.apply(ukinsert);
                end;
              end;
            usmodified:
               begin
                if ADQry.fieldbyname('YN').value='0'then
                begin
                  with TempQry do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'Cons_Avery'+''''+','+''''+ADQry.fieldbyname('XieXing').AsString+'_'+ADQry.fieldbyname('XieXing').AsString+'_'+ADQry.fieldbyname('BWBH').AsString+'''');
                    sql.add(','+''''+ADQry.fieldbyname('ADCode').AsString+''''+','+''''+ADQry.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpdAD.apply(ukdelete);
                end else
                begin
                  ADQry.edit;
                  if ADQry.FieldByName('CFMDATE').Value<>ADQry.FieldByName('CFMDATE').OldValue  then
                      ADQry.FieldByName('CFMID').Value:=main.edit1.text;
                  if ADQry.FieldByName('CFMDATE1').Value<>ADQry.FieldByName('CFMDATE1').OldValue  then
                      ADQry.FieldByName('CFMID1').Value:=main.edit1.text;                  
                  ADQry.FieldByName('userID').Value:=main.edit1.text;
                  ADQry.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                  UpdAD.apply(ukModify);
                end;
               end;
          end;
         ADQry.next;
        end;
  ADQry.active:=false;
  ADQry.cachedupdates:=false;
  ADQry.requestlive:=false;
  ADQry.active:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrid.Columns[0].Color:=clwhite;
  DBGrid.Columns[3].Color:=clwhite;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TCons_AD.DBGridGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (ADQry.FieldByName('YN').Value='0')  then
  begin
    DBGrid.canvas.font.color:=clred;
  end;
end;

procedure TCons_AD.ADQryAfterOpen(DataSet: TDataSet);
begin
  if ADQry.RecordCount>0 then
    BDT7.Enabled:=true
  else
    BDT7.Enabled:=false;
end;

procedure TCons_AD.BDT7Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
    if  ADQry.active=true  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ADQry.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=ADQry.fields[i].FieldName;
          end;
        ADQry.First;
        j:=2;
        while   not   ADQry.Eof   do
        begin
          for   i:=0  to  ADQry.FieldCount-1   do
          begin
              eclApp.Cells(j,i+1):=ADQry.Fields[i].Value;
          end;
          ADQry.Next;
          inc(j);
        end;
      ADQry.active:=true;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TCons_AD.BB8Click(Sender: TObject);
begin

end;

//===============================================
procedure TCons_AD.DBGridEditButtonClick(Sender: TObject);
begin
  //
  if DBGrid.Selectedfield.fieldname='SKU' then
  begin
    AD_Article:=TAD_Article.create(self);
    AD_Article.show;
  end;
  //
end;

procedure TCons_AD.BB7Click(Sender: TObject);
begin
CLOSE;
end;

end.
