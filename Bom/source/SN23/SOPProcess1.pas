unit SOPProcess1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, comobj;

type
  TSOPProcess = class(TForm)
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
    XieMingDHEdit: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    GCBWQry: TQuery;
    DS1: TDataSource;
    GCBWUpd: TUpdateSQL;
    GCBWQrygcbwdh: TStringField;
    GCBWQryywsm: TStringField;
    GCBWQryzwsm: TStringField;
    GCBWQryzsdh: TStringField;
    GCBWQryQty1Day: TFloatField;
    GCBWQryUSERID: TStringField;
    GCBWQryUSERDATE: TDateTimeField;
    GCBWQryYN: TStringField;
    GCBWQryMemo: TStringField;
    GCBWQryzsjc: TStringField;
    GCBWQryEarlyDay: TFloatField;
    Label3: TLabel;
    XieXingEdit: TEdit;
    GCBWQryXieXing: TStringField;
    tmpQry: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    StringField9: TStringField;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Label4: TLabel;
    ArticleEdit: TEdit;
    Label5: TLabel;
    BuyNoEdit: TEdit;
    XXZLQry: TQuery;
    DS2: TDataSource;
    XXZLQryXieXing: TStringField;
    XXZLQrySheHao: TStringField;
    XXZLQryArticle: TStringField;
    XXZLQryXieMing: TStringField;
    XXZLQryLB: TStringField;
    BBT7: TBitBtn;
    GCBWQryDL: TFloatField;
    GCBWQryIDL: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SOPProcess: TSOPProcess;

implementation

uses
  main1, FunUnit, SOPProcess_GCBWD1,  KT_SOPCutS_GCBWD1;

{$R *.dfm}

procedure TSOPProcess.Button1Click(Sender: TObject);
begin

  if ((ArticleEdit.Text='') and (BuyNoEdit.Text='') and (XieXingEdit.Text='')   ) then
  begin
    Showmessage('Please input Edit');
    Exit;
  end;
  with XXZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,KT_SOPCutS_GCBW.XieXing as LB from XXZL ');
    SQL.Add('left join (select XieXing from KT_SOPCutS_GCBW group by XieXing) KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.XieXing=XXZL.XieXing ');
    SQL.Add('where 1=1 ');
    if ArticleEdit.Text<>'' then
    SQL.Add(' and XXZL.Article like '''+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
    SQL.Add(' and XXZL.XieXing like '''+XieXingEdit.Text+'%'' ');
    if XieMingDHEdit.Text<>'' then
    SQL.Add(' and XXZL.XieMing like '''+XieMingDHEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
    SQL.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
    SQL.Add('order by KT_SOPCutS_GCBW.XieXing asc ');
    Active:=true;
  end;

  GCBWQry.Active:=true;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TSOPProcess.BB1Click(Sender: TObject);
begin
  Panel3.Visible := true;
end;

procedure TSOPProcess.FormDestroy(Sender: TObject);
begin
  SOPProcess := nil;
end;

procedure TSOPProcess.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TSOPProcess.BB2Click(Sender: TObject);
begin

  with GCBWQry do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGrid1.Columns[1].ButtonStyle := cbsEllipsis;
end;

procedure TSOPProcess.BB4Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGrid1.Columns[1].ButtonStyle := cbsEllipsis;
end;

procedure TSOPProcess.BB6Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    Active := false;
    CachedUpdates := false;
    RequestLive := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
  //
  DBGrid1.Columns[1].ButtonStyle := cbsNone;
end;

procedure TSOPProcess.BB3Click(Sender: TObject);
begin
  with GCBWQry do
  begin
    if (FieldByName('USERID').Value = main.Edit1.Text) then
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := '0';
    end
    else begin
      ShowMessage('It is not yours, can not delete.');
    end;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSOPProcess.BB5Click(Sender: TObject);
var i: integer;
begin
  try
    GCBWQry.first;
    for i:=1 to GCBWQry.RecordCount do
    begin
      case GCBWQry.updatestatus of
        usInserted:
        begin
          if (GCBWQry.FieldByName('gcbwdh').isnull)  then
          begin
            GCBWQry.Delete;
          end else
          begin
            GCBWQry.Edit;
            GCBWQry.FieldByName('XieXing').Value := XXZLQry.fieldByName('XieXing').Value;
            GCBWQry.FieldByName('userID').Value := main.Edit1.Text;
            GCBWQry.FieldByName('userdate').Value := Date;
            GCBWQry.FieldByName('YN').Value := '1';
            GCBWUpd.Apply(ukInsert);
          end;
        end;
        usModified:
        begin
          if (GCBWQry.FieldByName('YN').Value = '0') then
          begin
            GCBWUpd.Apply(ukDelete);
          end
          else begin
            GCBWQry.Edit;
            GCBWQry.FieldByName('UserID').Value := main.Edit1.Text;
            GCBWQry.FieldByName('UserDate').Value := Date;
            GCBWUpd.Apply(ukModify);
          end;
        end;
      end;
      GCBWQry.Next;
    end;

    GCBWQry.Active := false;
    GCBWQry.CachedUpdates := false;
    GCBWQry.RequestLive := false;
    GCBWQry.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGrid1.Columns[1].ButtonStyle := cbsNone;
  except
    On E:Exception do
    begin
      MessageDlg('Have wrong, can not save data!' + E.Message, mtWarning, [mbyes], 0);
    end;
  end;
end;

procedure TSOPProcess.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (GCBWQry.FieldByName('YN').Value = '0') then
    DBGrid1.Canvas.Font.Color := clRed;
    
end;

procedure TSOPProcess.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='gcbwdh' then
  begin
    SOPProcess_GCBWD := TSOPProcess_GCBWD.Create(self);
    SOPProcess_GCBWD.Show;
  end;
end;

procedure TSOPProcess.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Not XXZLQry.FieldByName('LB').IsNull  then
      DBGridEh1.canvas.font.color:=clBlue;
end;

procedure TSOPProcess.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if XXZLQry.Active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        GCBWQry.Active:=false;
        WorkBook:=eclApp.workbooks.Add;
        for  i:=0  to  XXZLQry.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XXZLQry.fields[i].FieldName;
        end;
        XXZLQry.First;
        j:=2;
        while   not   XXZLQry.Eof   do
        begin
          for   i:=0   to   XXZLQry.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XXZLQry.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          XXZLQry.Next;
          inc(j);
        end;
        GCBWQry.Active:=true;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TSOPProcess.BBT7Click(Sender: TObject);
begin
   KT_SOPCutS_GCBWD := TKT_SOPCutS_GCBWD.Create(self);
   KT_SOPCutS_GCBWD.Show;
end;

end.
