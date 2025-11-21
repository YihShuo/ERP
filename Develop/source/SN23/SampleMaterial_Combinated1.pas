unit SampleMaterial_Combinated1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TSampleMaterial_Combinated = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    CLZHZLVNGrid: TDBGridEh;
    CLZHZLVN: TQuery;
    DS1: TDataSource;
    CLZHZLVNcldh: TStringField;
    CLZHZLVNcldh1: TStringField;
    CLZHZLVNccq: TStringField;
    CLZHZLVNccq1: TStringField;
    CLZHZLVNsyl: TFloatField;
    CLZHZLVNzsdh: TStringField;
    CLZHZLVNUSERID: TStringField;
    CLZHZLVNUSERDATE: TDateTimeField;
    CLZHZLVNYN: TStringField;
    CLZHZLVNZWPM: TStringField;
    CLZHZLVNYWPM: TStringField;
    CLZHZLVNDWBH: TStringField;
    UpSQL1: TUpdateSQL;
    tmpQuery: TQuery;
    CLZHZLVNzsjc: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure CLZHZLVNGridEditButtonClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure CLZHZLVNGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure CLZHZLVNcldh1SetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleMaterial_Combinated: TSampleMaterial_Combinated;

implementation
  uses main1, SampleMaterial1,SampleMaterial_Mat1, SampleMaterial_Supplier1, FunUnit;
{$R *.dfm}

procedure TSampleMaterial_Combinated.FormDestroy(Sender: TObject);
begin
  SampleMaterial_Combinated:=nil;
end;

procedure TSampleMaterial_Combinated.BB2Click(Sender: TObject);
begin
  //
  with CLZHZLVN do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  CLZHZLVNGrid.columns[0].ButtonStyle:=cbsEllipsis;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSampleMaterial_Combinated.BB3Click(Sender: TObject);
begin

  with CLZHZLVN do
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
end;

procedure TSampleMaterial_Combinated.BB4Click(Sender: TObject);
begin
  with CLZHZLVN do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //CLZHZLVNGrid.columns[0].ButtonStyle:=cbsEllipsis;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMaterial_Combinated.CLZHZLVNGridEditButtonClick(
  Sender: TObject);
begin
  with CLZHZLVNGrid do
  begin
    if Selectedfield.fieldname='cldh1' then
    begin
     if SampleMaterial_Mat=nil then
     begin
       SampleMaterial_Mat:=TSampleMaterial_Mat.Create(self);
       SampleMaterial_Mat.Show;
     end else
     begin
       SampleMaterial_Mat.Show;
     end;
    end;
    if Selectedfield.fieldname='zsdh' then
    begin
     if SampleMaterial_Supplier=nil then
     begin
       SampleMaterial_Supplier:=TSampleMaterial_Supplier.Create(self);
       SampleMaterial_Supplier.SetParentQry(CLZHZLVN);
       SampleMaterial_Supplier.ShowModal();
     end else
     begin
       SampleMaterial_Supplier.SetParentQry(CLZHZLVN);
       SampleMaterial_Supplier.ShowModal();
     end;
    end;
  end;
end;

procedure TSampleMaterial_Combinated.BB6Click(Sender: TObject);
begin
  with CLZHZLVN do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  CLZHZLVNGrid.columns[0].ButtonStyle:=cbsNone;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsNone;
end;

procedure TSampleMaterial_Combinated.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    with CLZHZLVN do
    begin
      CLZHZLVN.first;
      for i:=1 to CLZHZLVN.RecordCount do
      begin
        case updatestatus of
        usinserted:
        begin
           with tmpQuery do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('Select cldh1 from CLZHZL where cldh1='''+CLZHZLVN.FieldByName('cldh1').AsString+''' and cldh='''+SampleMaterial.MatQuery.FieldByName('cldh').AsString+''' ');
             Active:=true;
             if RecordCount>0 then
             begin
               showmessage('Material is exists.');
             end else
             begin
               CLZHZLVN.edit;
               CLZHZLVN.FieldByName('cldh').Value:=SampleMaterial.MatQuery.FieldByName('cldh').AsString;
               CLZHZLVN.FieldByName('ccq').Value:='';
               CLZHZLVN.FieldByName('ccq1').Value:='';
               CLZHZLVN.FieldByName('userID').Value:=main.edit1.text;
               CLZHZLVN.FieldByName('userdate').Value:=date;
               CLZHZLVN.FieldByName('YN').Value:='2';
               UpSQL1.apply(ukinsert);
             end;
             Active:=false;
           end;


        end;
        usmodified:
        begin
           if FieldByName('YN').value='0' then
           begin
             if FieldByName('USERID').value=main.Edit1.Text  then
             begin
               UpSQL1.Apply(ukdelete);
             end else
             begin
                showmessage('it is not yours.can not delete');
             end;
           end else
           begin
             if FieldByName('USERID').value=main.Edit1.Text  then
             begin
               edit;
               FieldByName('userID').Value:=main.edit1.text;
               FieldByName('userdate').Value:=date;
               UpSQL1.apply(ukmodify);
             end else
             begin
                showmessage('it is not yours.can not delete');
             end;
           end;
        end;
        end;
         CLZHZLVN.Next;
      end;//for
  end;//with
  //
  CLZHZLVN.active:=false;
  CLZHZLVN.cachedupdates:=false;
  CLZHZLVN.requestlive:=false;
  CLZHZLVN.active:=true;
  //更新子母料判斷欄位
  with tmpQuery do
  begin
     Active:=false;
     SQL.Clear;
     if CLZHZLVN.RecordCount>0 then
        SQL.Add('Update CLZL Set CLZMLB=''Y'' where  cldh='''+SampleMaterial.MatQuery.FieldByName('cldh').AsString+''' ')
     else
        SQL.Add('Update CLZL Set CLZMLB=''N'' where  cldh='''+SampleMaterial.MatQuery.FieldByName('cldh').AsString+''' ');
     tmpQuery.ExecSQL;
  end;

  //
  bb5.enabled:=false;
  bb6.enabled:=false;
  CLZHZLVNGrid.columns[0].ButtonStyle:=cbsNone;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TSampleMaterial_Combinated.CLZHZLVNGridGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if CLZHZLVN.FieldByName('YN').value='0' then
  begin
    CLZHZLVNGrid.canvas.font.color:=clred;
  end;
end;

procedure TSampleMaterial_Combinated.CLZHZLVNcldh1SetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with tmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLZL.CLDH,CLZL.zwpm,CLZL.ywpm,CLZL.dwbh,ZSZL.ZSDH,ZSZL.ZSQM from CLZL left join zszl on zszl.zsdh=clzl.zsdh where CLDH='''+Sender.AsString+''' and ((Substring(CLDH,1,3)=''V90'') or CLZL.YN=1 ) ');
    Active:=true;
    if RecordCount>0 then
    begin
      CLZHZLVN.Edit;
      CLZHZLVN.FieldByName('CLDH1').AsString:=tmpQuery.FieldByName('CLDH').AsString;
      CLZHZLVN.FieldByName('zwpm').AsString:=tmpQuery.FieldByName('zwpm').AsString;
      CLZHZLVN.FieldByName('ywpm').AsString:=tmpQuery.FieldByName('ywpm').AsString;
      CLZHZLVN.FieldByName('DWBH').AsString:=tmpQuery.FieldByName('DWBH').AsString;
      CLZHZLVN.FieldByName('syl').AsString:='1';
      //20101017 直接替換成預設材料參考廠商
      if tmpQuery.FieldByName('zsdh').AsString<>'' then
      begin
        CLZHZLVN.FieldByName('zsdh').Value:=tmpQuery.FieldByName('zsdh').Value;
        CLZHZLVN.FieldByName('zsjc').Value:=tmpQuery.FieldByName('ZSQM').Value;
      end;
      CLZHZLVN.Post;
    end;
    Active:=false;
  end;
end;

end.
