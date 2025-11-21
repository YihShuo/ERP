unit DelOther_BL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh;

type
  TDelOther_BL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BLNOEdit: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query1BLNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCQty: TCurrencyField;
    Query1DFL: TStringField;
    Query1CLSL: TCurrencyField;
    Query1Qty: TCurrencyField;
    DBGridEh1: TDBGridEh;
    Query1ZLBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieMing: TStringField;
    Query1YN: TStringField;
    Label2: TLabel;
    MergNoEdit: TEdit;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Button2: TButton;
    Label7: TLabel;
    DFLCombo: TComboBox;
    Label3: TLabel;
    CLBHEdit: TEdit;
    Query2: TQuery;
    Query1NK: TCurrencyField;
    Query1TC: TCurrencyField;
    Query1HD: TCurrencyField;
    Query1KD: TCurrencyField;
    Query1XT: TCurrencyField;
    Query1GC: TCurrencyField;
    Query1ZZZZ: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BLNOEditKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_BL: TDelOther_BL;

implementation

uses DelOther1, main1, FunUnit;

{$R *.dfm}

procedure TDelOther_BL.FormDestroy(Sender: TObject);
begin
  DelOther_BL:=nil;
end;

procedure TDelOther_BL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TDelOther_BL.Button1Click(Sender: TObject);
begin
  if ((BLNOEdit.Text='') and (MergNoEdit.Text='')) then
  begin
    Showmessage('Please input BLNO or MergNO');
    Abort;
  end;
  //
  with Query1 do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select SCBL.ZLBH,DDZL.ARTICLE,XXZL.XieMing,SCBLS.BLNO,SCBLS.CLBH,CLZL.YWPM,CLZL.DWBH,sum(SCBLS.Qty) as CLSL ,KCZLS.KCQty');
     SQL.Add('          ,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ');
     SQL.Add('          ,isnull(XXBWFLS.DFL,''N'') as DFL,IsNull(KCLLS.Qty,0.00) as Qty,SCBLYYS.YYBH,SCBLYYS.YWSM,DDZL.YN');
     SQL.Add('from  SCBLS ');
     SQL.Add('left join SCBL on SCBL.BLNO=SCBLS.BLNO');
     SQL.Add('left join (select SCBLYYS.BLNO,SCBLYYS.YYBH,SCBLYY.YWSM from SCBLYYS ');
     SQL.Add('           left join SCBLYY on SCBLYY.YYBH=SCBLYYS.YYBH');
     SQL.Add('           where 1=1');
     if BLNOEdit.Text<>'' then
     SQL.Add('            and BLNO='''+BLNOEdit.Text+'''');
     if MergNoEdit.Text<>'' then
     SQL.Add('            and BLNO in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
     SQL.Add('           ) SCBLYYS on SCBLYYS.BLNO=SCBLS.BLNO');
     SQL.Add('left join DDZL on DDZL.ZLBH=SCBL.ZLBH');
     SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
     SQL.Add('left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=SCBLS.BWBH');
     SQL.Add('left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH');
     SQL.Add('left join BWZL on BWZL.BWDH=SCBLS.BWBH');
     SQL.Add('left join CLZL on CLZL.CLDH=SCBLS.CLBH');
     SQL.Add('left join (select MEMO,CLBH,DFL,sum(Qty) as Qty from KCLLS where  1=1');
     if BLNOEdit.Text<>'' then
     SQL.Add('            and Memo='''+BLNOEdit.Text+'''');
     if MergNoEdit.Text<>'' then
     SQL.Add('            and Memo in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
     SQL.Add('           group by MEMO,CLBH,DFL ) KCLLS  on KCLLS.CLBH=SCBLS.CLBH and KCLLS.DFL=XXBWFLS.DFL and KCLLS.MEMO=SCBLS.BLNO');
     SQL.Add('left join KCZLS on KCZLS.CLBH=SCBLS.CLBH and KCZLS.CKBH='''+DelOther.DelMas.fieldbyname('CKBH').AsString+'''');
     SQL.Add('where SCBL.GSBH='''+main.Edit2.Text+'''');
     if BLNOEdit.Text<>'' then
     SQL.Add('         and SCBLS.BLNO='''+BLNOEdit.Text+''' ');
     if MergNoEdit.Text<>'' then
     SQL.Add('         and SCBL.MergNO='''+MergNoEdit.Text+''' ');
     if CLBHEdit.Text<>'' then
     SQL.Add('         and SCBLS.CLBH like '''+CLBHEdit.Text+'%'' ');
     if DFLCombo.Text<>'' then
     SQL.Add('         and isnull(XXBWFLS.DFL,''N'')='''+DFLCombo.Text+''' ');
     SQL.Add('		 and SCBLS.MJBH = ''ZZZZZZZZZZ''');
     SQL.Add('group by  SCBL.ZLBH,DDZL.ARTICLE,XXZL.XieMing,SCBLS.BLNO,SCBLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,XXBWFLS.DFL,KCLLS.Qty,SCBLYYS.YYBH,SCBLYYS.YWSM,DDZL.YN,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ');
     SQL.Add('order by XXBWFLS.DFL,SCBLS.CLBH');
     Active:=true;
  end;
end;

procedure TDelOther_BL.BLNOEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1.SetFocus;
end;

procedure TDelOther_BL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.FieldByName('YN').AsString<>'1' then
  begin
     showmessage('Already Locked.');
     abort;
  end;
  if query1.FieldByName('KCQty').value=0 then
  begin
    showmessage('khong con ton kho, van can mo phieu sao?');
  end;
  if query1.FieldByName('DFL').value='N' then
  begin
    showmessage('Pls contect with develop department first.');
    abort;
  end;
  begin
    with DelOther.DelDet do
    begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        //fieldbyname('CostID').value:='621' ;
        fieldbyname('CostID').value:=DelOther.Pro_CostID;
        fieldbyname('BLSB').value:='Y';
        fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
        fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
        if query1.fieldbyname('Qty').isnull then
          fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value
        else
          fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
        fieldbyname('MEMO').value:=query1.fieldbyname('BLNO').value;
        fieldbyname('YYBH').value:=query1.fieldbyname('YYBH').value;
        fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
        post;
    end;
    Query1.Edit;
    query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
  end ;
end;

procedure TDelOther_BL.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if  Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)   then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if Query1.FieldByName('YN').value<>'1' then
  begin
    DBGridEh1.canvas.Brush.Color:=clBtnface;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_BL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TDelOther_BL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TDelOther_BL.Button2Click(Sender: TObject);
var bm:Tbookmark;
  i:integer;
  Qty:real;
  bookmarklist:tbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    //
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
        try
          for i:=0 to bookmarklist.count-1 do
          begin
            query1.gotobookmark(pointer(bookmarklist[i]));
            if query1.FieldByName('YN').AsString<>'1' then
            begin
               showmessage('Already Locked.');
               abort;
            end;
            if query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value>0 then
            begin
              with DelOther.DelDet do
              begin
                insert;
                fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
                fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
                fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
                fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
                //fieldbyname('CostID').value:='621' ;
                fieldbyname('CostID').value:=DelOther.Pro_CostID;
                fieldbyname('BLSB').value:='Y';
                fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
                fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
                if query1.fieldbyname('Qty').isnull then
                  fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value
                else
                  fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
                fieldbyname('MEMO').value:=query1.fieldbyname('BLNO').value;
                fieldbyname('YYBH').value:=query1.fieldbyname('YYBH').value;
                fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
                post;
              end;
              Query1.Edit;
              query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
            end;
          end;
        finally
          begin
            query1.gotobookmark(bm);
            query1.freebookmark(bm);
            query1.enablecontrols;
            showmessage('You have finish copy!');
          end;
        end;
      end;
    end;
  end;

procedure TDelOther_BL.FormCreate(Sender: TObject);
var i:integer;
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DFL from XXBWFLs');
    active:=true;
    for i:=1 to recordcount do
    begin
      DFLCombo.Items.Add(fieldbyname('DFL').asstring);
      next;
    end;
    active:=false;
  end;
end;

end.
