unit EquipmentClassification_Clzhzl1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentClassification_Clzhzl = class(TForm)
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
    DBGridEh1: TDBGridEh;
    CLZHZLVNQry: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    tmpQuery: TQuery;
    CLZHZLVNQrySBBH: TStringField;
    CLZHZLVNQrySBBH1: TStringField;
    CLZHZLVNQryQty: TSmallintField;
    CLZHZLVNQryUSERID: TStringField;
    CLZHZLVNQryUSERDATE: TDateTimeField;
    CLZHZLVNQryYN: TStringField;
    CLZHZLVNQryYWPM: TStringField;
    CLZHZLVNQryZWPM: TStringField;
    CLZHZLVNQryDWBH: TStringField;
    CLZHZLVNQryZSDH: TStringField;
    CLZHZLVNQryzsjc_yw: TStringField;
    CLZHZLVNQryLSBH: TStringField;
    CLZHZLVNQryQUCBH: TStringField;
    CLZHZLVNQryVWPM: TStringField;
    procedure BB2Click(Sender: TObject);
    procedure CLZHZLVNQryAfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentClassification_Clzhzl: TEquipmentClassification_Clzhzl;

implementation
  uses EquipmentClassification1, EquipmentClassification_LBChild1, main1;
{$R *.dfm}

procedure TEquipmentClassification_Clzhzl.BB2Click(Sender: TObject);
begin
  with CLZHZLVNQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipmentClassification_Clzhzl.CLZHZLVNQryAfterOpen(
  DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TEquipmentClassification_Clzhzl.BB3Click(Sender: TObject);
begin
  with CLZHZLVNQry do
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

procedure TEquipmentClassification_Clzhzl.BB4Click(Sender: TObject);
begin
  with CLZHZLVNQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipmentClassification_Clzhzl.BB6Click(Sender: TObject);
begin
  with CLZHZLVNQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGridEh1.columns[0].ButtonStyle:=cbsNone;
end;

procedure TEquipmentClassification_Clzhzl.BB5Click(Sender: TObject);
var i:integer;
    GetSBBHStr,SBBH:String;
begin

  try
    CLZHZLVNQry.first;
    for i:=1 to CLZHZLVNQry.RecordCount do
      begin
        case CLZHZLVNQry.updatestatus of
          usinserted:
             begin
                 CLZHZLVNQry.edit;
                 CLZHZLVNQry.FieldByName('SBBH').Value:=Equipment_Classification.TSCD_SB.FieldByName('SBBH').Value;
                 CLZHZLVNQry.FieldByName('userID').Value:=main.edit1.text;
                 CLZHZLVNQry.FieldByName('userdate').Value:=Ndate;
                 CLZHZLVNQry.FieldByName('YN').Value:='1';
                 UpSQL1.apply(ukinsert);
             end;
          usmodified:
             begin
               if CLZHZLVNQry.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 Showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               end else
               begin
                 if (NDate-CLZHZLVNQry.FieldByName('USERDATE').value)<=720  then
                 begin
                    if CLZHZLVNQry.fieldbyname('YN').value='0'then
                    begin
                      with TmpQuery do
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'TSCD_CLZHZL'+''''+','+''''+CLZHZLVNQry.fieldbyname('SBBH').Value+'''');
                        sql.add(','''+CLZHZLVNQry.fieldbyname('ZSDH').Value+''','''+CLZHZLVNQry.fieldbyname('USERID').Value+''',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                        active:=false;
                      end;
                      UpSQL1.apply(ukdelete);
                    end else
                    begin
                      CLZHZLVNQry.edit;
                      CLZHZLVNQry.FieldByName('userID').Value:=main.edit1.text;
                      CLZHZLVNQry.FieldByName('userdate').Value:=Ndate;
                      UpSQL1.apply(ukmodify);
                    end;
                 end else
                 begin
                    Showmessage('Date>720, can not modify.');
                 end;
               end;
             end;
        end;
       CLZHZLVNQry.next;
      end;
    CLZHZLVNQry.active:=false;
    CLZHZLVNQry.cachedupdates:=false;
    CLZHZLVNQry.requestlive:=false;
    CLZHZLVNQry.active:=true;
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      if CLZHZLVNQry.RecordCount>0 then
      SQL.Add('Update TSCD_SB set clzmlb=''Y'' where SBBH='''+Equipment_Classification.TSCD_SB.FieldByName('SBBH').AsString+''' ')
      else
      SQL.Add('Update TSCD_SB set clzmlb=''N'' where SBBH='''+Equipment_Classification.TSCD_SB.FieldByName('SBBH').AsString+''' ');
      ExecSQL();
    end;
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGridEh1.columns[0].ButtonStyle:=cbsNone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TEquipmentClassification_Clzhzl.FormCreate(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  CLZHZLVNQry.Active:=true;
end;

procedure TEquipmentClassification_Clzhzl.DBGridEh1EditButtonClick(
  Sender: TObject);
begin
  if DBGridEh1.selectedfield.fieldname='SBBH1'  then
  begin
    EquipmentClassification_LBChild:=TEquipmentClassification_LBChild.Create(self);
    EquipmentClassification_LBChild.ShowModal();
  end;
end;

procedure TEquipmentClassification_Clzhzl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentClassification_Clzhzl.FormDestroy(Sender: TObject);
begin
  EquipmentClassification_Clzhzl:=nil;
end;

procedure TEquipmentClassification_Clzhzl.DBGridEh1GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if CLZHZLVNQry.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

end.
