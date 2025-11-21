unit KT_SOPCutS_GCBWD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TKT_SOPCutS_GCBWD = class(TForm)
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
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GCBWDHEdit: TEdit;
    YWSMEdit: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    GCBWQry: TQuery;
    tmpQry: TQuery;
    DS1: TDataSource;
    GCBWUpd: TUpdateSQL;
    GCBWQrygcbwdh: TStringField;
    GCBWQryywsm: TStringField;
    GCBWQryzwsm: TStringField;
    GCBWQryUSERID: TStringField;
    GCBWQryUSERDATE: TDateTimeField;
    GCBWQryYN: TStringField;
    GCBWQryzsdh: TStringField;
    GCBWQryQty1Day: TFloatField;
    GCBWQryEarlyDay: TFloatField;
    GCBWQryMemo: TStringField;
    GCBWQryzsjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KT_SOPCutS_GCBWD: TKT_SOPCutS_GCBWD;
  NDate:TDate;
implementation

uses main1,SOPProcess_Supplier1, FunUnit;

{$R *.dfm}

procedure TKT_SOPCutS_GCBWD.Button1Click(Sender: TObject);
begin
  //
  with GCBWQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KT_SOPCutS_GCBWD.*,zszl.zsjc');
    SQL.Add('from KT_SOPCutS_GCBWD ');
    SQL.Add('left join zszl on zszl.zsdh=KT_SOPCutS_GCBWD.zsdh ');
    SQL.Add('where KT_SOPCutS_GCBWD.GCBWDH like '''+GCBWDHEdit.Text+'%'' ');
    if YWSMEdit.Text<>'' then
    SQL.Add(' and KT_SOPCutS_GCBWD.YWSM like ''%'+YWSMEdit.Text+'%'' ');
    Active:=true;
  end;
  //
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
end;

procedure TKT_SOPCutS_GCBWD.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if GCBWQry.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TKT_SOPCutS_GCBWD.BB2Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  BB5.enabled:=true;
  BB6.enabled:=true;
  DBGrid1.Columns[5].ButtonStyle := cbsEllipsis;    
end;

procedure TKT_SOPCutS_GCBWD.BB3Click(Sender: TObject);
begin
  with GCBWQry do
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
  BB5.enabled:=true;
  BB6.enabled:=true;
end;

procedure TKT_SOPCutS_GCBWD.BB4Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
  BB5.enabled:=true;
  BB6.enabled:=true;
  DBGrid1.Columns[5].ButtonStyle := cbsEllipsis;  
end;

procedure TKT_SOPCutS_GCBWD.BB5Click(Sender: TObject);
var i:integer;
    gcbwdh:string;
begin

  try
      GCBWQry.first;
      for i:=1 to GCBWQry.RecordCount do
      begin
        case GCBWQry.updatestatus of
          usinserted:
          begin
            if ((GCBWQry.fieldbyname('ywsm').isnull) and (GCBWQry.fieldbyname('zwsm').isnull)) then
            begin
              GCBWQry.delete;
            end else
            begin
             with tmpQry do    //計算領料單流水號
             begin
               active:=false;
               sql.Clear;
               sql.Add('select gcbwdh from KT_SOPCutS_GCBWD where gcbwdh like ''0G%'' ');
               sql.add('order by gcbwdh');
               active:=true;
               if recordcount >0 then
               begin
                 Last;
                 gcbwdh:=fieldbyname('gcbwdh').AsString;
                 gcbwdh:=copy(gcbwdh,3,4);
                 gcbwdh:=inttostr(strtoint(gcbwdh)+1);
                 while length(gcbwdh)<4 do
                 begin
                   gcbwdh:='0'+gcbwdh;
                 end;
               end else
               begin
                 gcbwdh:='0001';
               end;
               gcbwdh :='0G'+gcbwdh;
               //
               GCBWQry.edit;
               GCBWQry.FieldByName('gcbwdh').Value:=gcbwdh;
               GCBWQry.FieldByName('userID').Value:=main.edit1.text;
               GCBWQry.FieldByName('userdate').Value:=date;
               GCBWQry.FieldByName('YN').Value:='1';
               GCBWUpd.apply(ukinsert);
             end;
            end;
          end;
          usmodified:
          begin
            if NDate-GCBWQry.FieldByName('userdate').Value<=300  then
            begin
              if GCBWQry.fieldbyname('YN').value='0' then
              begin
                GCBWUpd.apply(ukdelete);
              end else
              begin
                GCBWQry.edit;
                GCBWQry.FieldByName('userID').Value:=main.edit1.text;
                GCBWQry.FieldByName('userdate').Value:=date;
                GCBWUpd.apply(ukmodify);
              end;
            end else
            begin
              Showmessage('Date > 300, can not modify.');
            end;
          end;
        end;
        GCBWQry.Next;
      end;
    GCBWQry.active:=false;
    GCBWQry.cachedupdates:=false;
    GCBWQry.requestlive:=false;
    GCBWQry.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    DBGrid1.Columns[5].ButtonStyle := cbsNone;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TKT_SOPCutS_GCBWD.BB6Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGrid1.Columns[5].ButtonStyle := cbsNone;
end;

procedure TKT_SOPCutS_GCBWD.FormCreate(Sender: TObject);
begin
  with tmpQry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TKT_SOPCutS_GCBWD.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TKT_SOPCutS_GCBWD.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TKT_SOPCutS_GCBWD.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='zsdh' then
  begin
    SOPProcess_Supplier := TSOPProcess_Supplier.Create(self);
    SOPProcess_Supplier.Show;
  end;
end;

end.
