unit SOPProcessCapcity1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, GridsEh, DBGridEh, Buttons,
  ExtCtrls,comobj;

type
  TSOPProcessCapcity = class(TForm)
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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    XieMingDHEdit: TEdit;
    Button1: TButton;
    XieXingEdit: TEdit;
    ArticleEdit: TEdit;
    BuyNoEdit: TEdit;
    DBGrid1: TDBGridEh;
    GCBWXQry: TQuery;
    DS1: TDataSource;
    GCBWXUpd: TUpdateSQL;
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
    GCBWXQryXieXing: TStringField;
    GCBWXQrySheHao: TStringField;
    GCBWXQrygcbwdh: TStringField;
    GCBWXQryywsm: TStringField;
    GCBWXQryzwsm: TStringField;
    GCBWXQryQty1Day: TFloatField;
    GCBWXQryBZRS: TIntegerField;
    GCBWXQryBZJS: TIntegerField;
    GCBWXQryUSERID: TStringField;
    GCBWXQryUSERDATE: TDateTimeField;
    GCBWXQryYN: TStringField;
    GCBWXQryarticle: TStringField;
    GCBWXQryXieMing: TStringField;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    XXZLQry: TQuery;
    XXZLQryXieXing: TStringField;
    XXZLQrySheHao: TStringField;
    XXZLQryArticle: TStringField;
    XXZLQryXieMing: TStringField;
    DS2: TDataSource;
    XXZLQryLB: TStringField;
    GCBWXQryStdTime: TFloatField;
    GCBWXQryEarlyDay: TFloatField;
    GCBWXQrybwdh: TStringField;
    GCBWXQrybywsm: TStringField;
    GCBWXQrybzwsm: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SOPProcessCapcity: TSOPProcessCapcity;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TSOPProcessCapcity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSOPProcessCapcity.FormDestroy(Sender: TObject);
begin
 SOPProcessCapcity:=nil;
end;

procedure TSOPProcessCapcity.BB1Click(Sender: TObject);
begin
  Panel3.Visible := true;
end;

procedure TSOPProcessCapcity.Button1Click(Sender: TObject);
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
    SQL.Add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,KT_SOPCutS_GCBWX.xiexing as LB from XXZL ');
    SQL.Add('left join (select XieXing,shehao from KT_SOPCutS_GCS group by Xiexing,shehao) KT_SOPCutS_GCS on xxzl.XieXing=KT_SOPCutS_GCS.XieXing and xxzl.SheHao=KT_SOPCutS_GCS.SheHao ');
    SQL.Add('left join (select XieXing,shehao from KT_SOPCutS_GCBWX group by XieXing,shehao) KT_SOPCutS_GCBWX ');
    SQL.Add('on KT_SOPCutS_GCBWX.XieXing=XXZL.XieXing and KT_SOPCutS_GCBWX.shehao=XXZL.SheHao ');
    SQL.Add('where 1=1 and KT_SOPCutS_GCS.Xiexing is not null');
    if ArticleEdit.Text<>'' then
    SQL.Add(' and XXZL.Article like '''+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
    SQL.Add(' and XXZL.XieXing like '''+XieXingEdit.Text+'%'' ');
    if XieMingDHEdit.Text<>'' then
    SQL.Add(' and XXZL.XieMing like '''+XieMingDHEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
    SQL.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
    SQL.Add('order by KT_SOPCutS_GCS.XieXing asc ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  GCBWXQry.Active:=true;
  BB4.Enabled := true;
end;

procedure TSOPProcessCapcity.BB4Click(Sender: TObject);
begin
  with GCBWXQry do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSOPProcessCapcity.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    GCBWXQry.First;
    for i := 1 to GCBWXQry.RecordCount do
    begin
      case GCBWXQry.UpdateStatus of
        usModified:
        begin
          if (GCBWXQry.FieldByName('YN').AsString = '1') then
          begin
            if ( (GCBWXQry.FieldByName('StdTime').AsString='') and (GCBWXQry.FieldByName('EarlyDay').AsString='')   and
                 (GCBWXQry.FieldByName('Qty1Day').AsString='') and (GCBWXQry.FieldByName('BZRS').AsString='') and
                 (GCBWXQry.FieldByName('BZJS').AsString='') ) then
            begin
              GCBWXUpd.Apply(ukDelete);
            end else
            begin
              GCBWXQry.Edit;
              GCBWXQry.FieldByName('USERID').Value := main.Edit1.text;
              GCBWXQry.FieldByName('USERDATE').Value := date;
              GCBWXUpd.Apply(ukModify);
            end;
          end else
          begin
            GCBWXQry.Edit;
            GCBWXQry.FieldByName('USERID').Value := main.Edit1.Text;
            GCBWXQry.FieldByName('USERDATE').Value := date;
            GCBWXQry.FieldByName('YN').Value := 1;
            GCBWXUpd.Apply(ukInsert);
          end;
        end;
      end;
      GCBWXQry.Next;
    end;

    GCBWXQry.Active := false;
    GCBWXQry.CachedUpdates := false;
    GCBWXQry.RequestLive := false;
    GCBWXQry.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSOPProcessCapcity.BB6Click(Sender: TObject);
begin
  with GCBWXQry do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TSOPProcessCapcity.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if GCBWXQry.Active then
  begin
    if GCBWXQry.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
    end;
    GCBWXQry.First;
    j:=2;
    while   not  GCBWXQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        //eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      GCBWXQry.Next;
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

procedure TSOPProcessCapcity.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Not XXZLQry.FieldByName('LB').IsNull  then
      DBGridEh1.canvas.font.color:=clBlue;
end;

end.
