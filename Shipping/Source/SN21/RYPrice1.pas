unit RYPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, GridsEh, DBGridEh, Buttons, StdCtrls,
  ExtCtrls,DBGridEhImpExp,shellAPI, ComCtrls,strUtils;

type
  TRYPrice = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button2: TButton;
    CheckBox2: TCheckBox;
    bbt5: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    chkPODD: TCheckBox;
    chkSDD: TCheckBox;
    cbo_PODD_M: TComboBox;
    Label7: TLabel;
    cbo_PODD_Y: TComboBox;
    Label8: TLabel;
    cboBrand: TComboBox;
    Query1RY: TStringField;
    Query1ARTICLE: TStringField;
    Query1CustOrdNo: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1IM_DATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERID_R: TStringField;
    Query1USERDATE_R: TDateTimeField;
    Label9: TLabel;
    GSBH: TComboBox;
    Qtemp: TQuery;
    CopyPrice1: TMenuItem;
    Query1IPrice: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CopyPrice1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RYPrice: TRYPrice;

implementation
   uses main1, ImportRYPrice1, FunUnit;
{$R *.dfm}

procedure TRYPrice.FormDestroy(Sender: TObject);
begin
   RYPrice:=nil;
end;

procedure TRYPrice.Button1Click(Sender: TObject);
begin

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select DDZL.*,RY_VNPRICE.CustOrdNo,RY_VNPRICE.VNPRICE,RY_VNPRICE.IM_DATE,RY_VNPRICE.USERID ,USERID_R,USERDATE_R from (');
//    SQL.Add('select DDZL.DDBH as RY,DDZL.ARTICLE,max(DDZLS.IPrice) as IPrice ');
    if (main.Edit2.Text = 'TBA') and (copy(Edit1.Text,1,2) = 'DC') then
      SQL.Add('select DDZL.DDBH as RY,DDZL.ARTICLE,DDZLS.IPrice ')
    else
      SQL.Add('select DDZL.DDBH as RY,DDZL.ARTICLE,max(DDZLS.IPrice) as IPrice ');
    SQL.Add('from DDZL ');
    SQL.Add('Left join DDZLS on DDZLS.DDBH=DDZL.DDBH');
    SQL.Add('where 1=1 ');
    if GSBH.Text<>'' then
       SQL.Add('and DDZL.GSBH='''+GSBH.Text+''' ');
    if Edit1.Text<>'' then
       SQL.Add('and DDZL.DDBH like '''+Edit1.Text+'%''');
    if Edit2.Text<>'' then
       SQL.Add('and DDZL.ARTICLE like ''%'+Edit2.Text+'%''');
    if chkPODD.Checked then
    begin
        SQL.Add('    and year(DDZL.DDRQ)='''+cbo_PODD_Y.Text+''' ');
        SQL.Add('    and month(DDZL.DDRQ)='''+cbo_PODD_M.Text+''' ');
    end;
    if chkSDD.Checked then
    begin
        SQL.Add('    and year(DDZL.shipdate)='''+CBX1.Text+''' ');
        SQL.Add('    and month(DDZL.shipdate)='''+CBX2.Text+''' ');
    end;
    if (main.Edit2.Text = 'TBA') and (copy(Edit1.Text,1,2) = 'DC') then
      SQL.Add('Group by DDZL.DDBH,DDZL.ARTICLE,DDZLS.IPrice ) DDZL')
    else
      SQL.Add('Group by DDZL.DDBH,DDZL.ARTICLE ) DDZL');
    SQL.Add('left join RY_VNPRICE on DDZL.RY=RY_VNPRICE.RYNO --and DDZL.IPrice = RY_VNPRICE.VNPRICE');
    SQL.Add('where 1=1 ');
    if CheckBox1.Checked then
       SQL.Add('and RY_VNPRICE.VNPrice is null');
    if CheckBox2.Checked then
       SQL.Add('and USERID_R is not null');
    SQL.Add('order by DDZL.RY');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;



end;

procedure TRYPrice.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if not Query1.FieldByName('VNPrice').IsNull then
    begin
      DBGridEh1.canvas.font.color:=clblue;
    end;

    if not Query1.FieldByName('USERID_R').IsNull then
    begin
      DBGridEh1.canvas.font.color:=clred;
    end;
end;

procedure TRYPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TRYPrice.FormShow(Sender: TObject);
var yy,mm,dd:word;
    s_yy,s_mm:string;
begin

  decodedate(now,yy,mm,dd);

  s_yy:=inttostr(yy);

  if mm<10 then
  begin
    s_mm:='0'+inttostr(mm);
  end
  else
  begin
    s_mm:=inttostr(mm);
  end;

  CBX1.ItemIndex:=CBX1.Items.IndexOf(s_yy);
  CBX2.ItemIndex:=CBX2.Items.IndexOf(s_mm);

end;

procedure TRYPrice.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh1;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TRYPrice.Query1AfterOpen(DataSet: TDataSet);
begin
    modify1.Enabled:=true;
end;

procedure TRYPrice.Modify1Click(Sender: TObject);
begin
    with Query1 do
    begin
       RequestLive:=true;
       CachedUpdates:=true;
       edit;
    end;
    save1.Enabled:=true;
    Cancel1.Enabled:=true;
    if DBGridEh1.Columns[3].Visible=true then
      CopyPrice1.Enabled:=true;
    if DBGridEh1.Columns[3].Visible=false then
      CopyPrice1.Enabled:=false;
end;

procedure TRYPrice.Cancel1Click(Sender: TObject);
begin
    with Query1 do
    begin
       active:=false;
       RequestLive:=false;
       CachedUpdates:=false;
       active:=true;
    end;
    save1.Enabled:=false;
    Cancel1.Enabled:=false;
    CopyPrice1.Enabled:=false;
end;

procedure TRYPrice.Save1Click(Sender: TObject);
var i:integer;
begin
   try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usmodified:
          begin
               query1.Edit;
               with Qtemp do
               begin
                  active:=false;
                  sql.Clear;
                  SQL.Add('select * from RY_VNPRICE');
                  if (main.Edit2.Text = 'TBA') and (copy(Edit1.Text,1,2) = 'DC') then
                    SQL.Add('where RYNO = '''+query1.fieldbyname('RY').Value+''' and VNPrice = '+query1.fieldbyname('VNPrice').AsString+'')
                  else
                    SQL.Add('where RYNO = '''+query1.fieldbyname('RY').Value+'''');
                  active:=true;
               end;
               if qtemp.RecordCount>0 then
               begin
                  query1.FieldByName('UserID_R').AsString:= Main.Edit1.Text;
                  if query1.FieldByName('UserID').AsString<>'' then
                    UpdateSQL1.apply(ukmodify);
               end else
               begin
                  Qtemp.Active:=false;
                  Qtemp.SQL.Clear;
                  Qtemp.SQL.Add('insert into RY_VNPRICE ');
                  Qtemp.SQL.Add('(RYNO, CustOrdNo, VNPRICE, IM_DATE, USERID) ');
                  Qtemp.SQL.Add('values('''+query1.FieldByName('RY').AsString+''','''+query1.FieldByName('CustOrdNo').AsString+''','''+query1.FieldByName('VNPrice').AsString+''','''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''','''+Main.Edit1.Text+''') ');
                  //funcobj.WriteErrorLog(qtemp.SQL.Text);
                  Qtemp.ExecSQL;
               end;
          end;
        end;
       query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    query1.active:=true;

    save1.Enabled:=false;
    Cancel1.Enabled:=false;
    CopyPrice1.Enabled:=false;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;

end;

procedure TRYPrice.bbt5Click(Sender: TObject);
begin
   ImportRYPrice:=TImportRYPrice.create(self);
   ImportRYPrice.show;
end;

procedure TRYPrice.FormCreate(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SFL from BGSZL where gsdh='''+main.Edit2.Text+''' ');
    Active:=true;
  end;
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSDH from BGSZL ');
    SQL.Add('where SFL=''PD'' and DFL in (select DFL from Bgszl where gsdh='''+main.Edit2.Text+''') ');
    Active:=true;
    if RecordCount>0 then
    begin
      While Not Eof do
      begin
        GSBH.Items.Add(FieldByname('GSDH').AsString);
        Next;
      end;
    end;
    if GSBH.Items.Count>0 then GSBH.ItemIndex:=0;
    Active:=false;
  end;
  //
  Qtemp.Active:=false;

end;

procedure TRYPrice.CopyPrice1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    Query1.Edit;
    Query1.FieldByName('VNPrice').Value:=Query1.FieldByName('IPrice').Value;
    Query1.Post;
    Query1.Next;
  end;
end;

end.
