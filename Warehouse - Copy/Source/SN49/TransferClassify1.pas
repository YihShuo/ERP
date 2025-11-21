unit TransferClassify1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  ComCtrls;

type
  TTransferClassify = class(TForm)
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
    Button1: TButton;
    DC_TLFLRpt: TQuery;
    DC_TLFLRptCLBH: TStringField;
    DC_TLFLRptLB: TIntegerField;
    DC_TLFLRptDJBH: TStringField;
    DC_TLFLRptGSBH: TStringField;
    DC_TLFLRptDFL1: TStringField;
    DC_TLFLRptDFL2: TStringField;
    DC_TLFLRptTQty: TFloatField;
    DC_TLFLRptLYOU: TStringField;
    DC_TLFLRptAQty: TFloatField;
    DC_TLFLRptBQty: TFloatField;
    DC_TLFLRptCQty: TFloatField;
    DC_TLFLRptDQty: TFloatField;
    DC_TLFLRptEQty: TFloatField;
    DC_TLFLRptFQty: TFloatField;
    DC_TLFLRptGQty: TFloatField;
    DC_TLFLRptUserID: TStringField;
    DC_TLFLRptUserDate: TDateTimeField;
    DC_TLFLRptYN: TStringField;
    DC_TLFLRptYWPM: TStringField;
    UPDetFL: TUpdateSQL;
    DS: TDataSource;
    tmpQry: TQuery;
    TLFLDBGridEh: TDBGridEh;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    InfoGroup: TGroupBox;
    ClassLabel: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure TLFLDBGridEhEditButtonClick(Sender: TObject);
    procedure TLFLDBGridEhGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferClassify: TTransferClassify;

implementation
  uses main1,ClassifyList1;
{$R *.dfm}

procedure TTransferClassify.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TTransferClassify.FormDestroy(Sender: TObject);
begin
  TransferClassify:=nil;
end;

procedure TTransferClassify.Button1Click(Sender: TObject);
begin
  //
  with DC_TLFLRpt do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select DC_TLFL.*,CLZL.YWPM from DC_TLFL ');
    SQL.Add('Left join CLZL on CLZL.CLDH=DC_TLFL.CLBH ');
    SQL.Add('where DC_TLFL.YN=1 and DC_TLFL.LB=4 and DC_TLFL.DFL1=''TRANS'' and DC_TLFL.DFL2=''TRANS'' ');
    sql.add('      and convert(smalldatetime,convert(varchar,DC_TLFL.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
    begin
      sql.Add('      and DC_TLFL.USERID='+''''+main.Edit1.Text+'''');
    end;
    Active:=true;
  end;
  //
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb4.enabled:=true;
end;

procedure TTransferClassify.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TTransferClassify.BB2Click(Sender: TObject);
begin
  //
  with DC_TLFLRpt do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  //
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  TLFLDBGridEh.Columns[1].ButtonStyle:=cbsEllipsis;

end;

procedure TTransferClassify.BB3Click(Sender: TObject);
begin
  //
  with DC_TLFLRpt do
  begin
    if fieldbyname('USERID').value=main.Edit1.Text then
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
  //
end;

procedure TTransferClassify.BB4Click(Sender: TObject);
begin
  //
  with DC_TLFLRpt do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;

procedure TTransferClassify.BB6Click(Sender: TObject);
begin
  with DC_TLFLRpt do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  TLFLDBGridEh.Columns[1].ButtonStyle:=cbsNone;  
end;

procedure TTransferClassify.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
    SumQty:double;
begin
  //檢查數量
  if ((main.Edit2.Text='CDC') or (main.Edit2.Text='KDC')) then
    begin
      DC_TLFLRpt.First;
      while not DC_TLFLRpt.Eof do
      begin
      //A12 Converse
          if main.Edit2.Text='CDC' then
          begin
           if ((FloattoStr(DC_TLFLRpt.FieldByName('AQty').AsFloat+DC_TLFLRpt.FieldByName('BQty').AsFloat+DC_TLFLRpt.FieldByName('CQty').AsFloat+
                DC_TLFLRpt.FieldByName('DQty').AsFloat))<>'0') then
            begin
              Showmessage('Tong cac so luong <> 0!');
              exit;
            end;

          end;
     //B2
          if main.Edit2.Text='KDC' then
          begin
            if ((FloattoStr(DC_TLFLRpt.FieldByName('AQty').AsFloat+DC_TLFLRpt.FieldByName('BQty').AsFloat+DC_TLFLRpt.FieldByName('CQty').AsFloat+
                DC_TLFLRpt.FieldByName('DQty').AsFloat+DC_TLFLRpt.FieldByName('EQty').AsFloat+DC_TLFLRpt.FieldByName('FQty').AsFloat))<>'0') then
            begin
              Showmessage('Sum Quantity <> 0 !');
              exit;
            end;
          end;
          //
          SumQty:=0;
          if DC_TLFLRpt.FieldByName('AQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('AQty').AsFloat;
          if DC_TLFLRpt.FieldByName('BQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('BQty').AsFloat;
          if DC_TLFLRpt.FieldByName('CQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('CQty').AsFloat;
          if DC_TLFLRpt.FieldByName('DQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('DQty').AsFloat;
          if DC_TLFLRpt.FieldByName('EQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('EQty').AsFloat;
          if DC_TLFLRpt.FieldByName('FQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('FQty').AsFloat;
          if DC_TLFLRpt.FieldByName('GQty').AsFloat>0 then SumQty:=SumQty+DC_TLFLRpt.FieldByName('GQty').AsFloat;
          if SumQty>DC_TLFLRpt.FieldByName('TQty').AsFloat then
          begin
            Showmessage('Tong cac so luong > Qty!');
            exit;
          end;
       // end;
        DC_TLFLRpt.Next;
     end;
   end;
  //
  with tmpQry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then m:='0'+m;
  //
  try
    DC_TLFLRpt.first;
    for i:=1 to DC_TLFLRpt.RecordCount do
      begin
        case DC_TLFLRpt.updatestatus of
          usinserted:
            begin
               with tmpQry do    //計算領料單流水號
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('select DJBH from DC_TLFL where DC_TLFL.LB=4 and DC_TLFL.DFL1=''TRANS'' and DC_TLFL.DFL2=''TRANS'' and DJBH like '''+y+m+'%''');
                 sql.add('order by DJBH');
                 active:=true;
                 if recordcount >0 then
                 begin
                   last;
                   a:=fieldbyname('DJBH').AsString;
                   a:=copy(a,7,5);
                   a:=inttostr(strtoint(a)+1);
                   while length(a)<5 do
                   begin
                     a:='0'+a;
                   end;
                 end else
                 begin
                   a:='00001';
                 end;
                 a :=y+m+a;
                 active:=false;
               end;
               DC_TLFLRpt.edit;
               DC_TLFLRpt.fieldbyname('DJBH').Value:=a;
               DC_TLFLRpt.fieldbyname('LB').Value:=4;
               DC_TLFLRpt.fieldbyname('GSBH').Value:=main.Edit2.Text;
               DC_TLFLRpt.fieldbyname('DFL1').Value:='TRANS';
               DC_TLFLRpt.fieldbyname('DFL2').Value:='TRANS';
               DC_TLFLRpt.FieldByName('userID').Value:=main.Edit1.Text;
               DC_TLFLRpt.FieldByName('userdate').Value:=Ndate;
               DC_TLFLRpt.FieldByName('YN').Value:=1;
               //
               if DC_TLFLRpt.FieldByName('AQty').IsNull=true then DC_TLFLRpt.FieldByName('AQty').Value:=0;
               if DC_TLFLRpt.FieldByName('BQty').IsNull=true then DC_TLFLRpt.FieldByName('BQty').Value:=0;
               if DC_TLFLRpt.FieldByName('CQty').IsNull=true then DC_TLFLRpt.FieldByName('CQty').Value:=0;
               if DC_TLFLRpt.FieldByName('DQty').IsNull=true then DC_TLFLRpt.FieldByName('DQty').Value:=0;
               if DC_TLFLRpt.FieldByName('EQty').IsNull=true then DC_TLFLRpt.FieldByName('EQty').Value:=0;
               if DC_TLFLRpt.FieldByName('FQty').IsNull=true then DC_TLFLRpt.FieldByName('FQty').Value:=0;
               if DC_TLFLRpt.FieldByName('GQty').IsNull=true then DC_TLFLRpt.FieldByName('GQty').Value:=0;
               //
               UPDetFL.apply(ukinsert);
               //
            end;
          usmodified:
             begin
               if (NDate-DC_TLFLRpt.FieldByName('USERDATE').value)<3  then
               begin
                 if DC_TLFLRpt.fieldbyname('YN').value='0'then
                  begin
                    UPDetFL.apply(ukdelete);
                  end else
                  begin
                    DC_TLFLRpt.edit;
                    DC_TLFLRpt.FieldByName('userID').Value:=main.Edit1.Text;
                    DC_TLFLRpt.FieldByName('userdate').Value:=Ndate;
                    UPDetFL.apply(ukmodify);
                  end;
                end else
                begin
                  showmessage('Date>3, can not modify.');
                end;
             end;
        end;
       DC_TLFLRpt.next;
      end;
      DC_TLFLRpt.active:=false;
      DC_TLFLRpt.cachedupdates:=false;
      DC_TLFLRpt.requestlive:=false;
      DC_TLFLRpt.Active:=true;
      //
      BB5.enabled:=false;
      BB6.enabled:=false;
      TLFLDBGridEh.Columns[1].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TTransferClassify.TLFLDBGridEhEditButtonClick(Sender: TObject);
begin
  //
  if TLFLDBGridEh.Selectedfield.fieldname='CLBH' then
  begin
    ClassifyList:=TClassifyList.Create(self);
    ClassifyList.ShowModal();
    ClassifyList.Free;
  end;
  //
end;

procedure TTransferClassify.TLFLDBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DC_TLFLRpt.FieldByName('YN').value='0' then
  begin
    TLFLDBGridEh.canvas.font.color:=clred;
  end;
end;

procedure TTransferClassify.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-2;
  DTP2.date:=date;
  if main.Edit2.Text='CDC' then
  begin
    TLFLDBGridEh.Columns[4].Title.Caption:='DevQty';
    TLFLDBGridEh.Columns[5].Title.Caption:='TechQty';
    TLFLDBGridEh.Columns[6].Title.Caption:='NG';
    TLFLDBGridEh.Columns[7].Title.Caption:='Defect';
    TLFLDBGridEh.Columns[8].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[9].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[10].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[8].Visible:=false;
    TLFLDBGridEh.Columns[9].Visible:=false;
    TLFLDBGridEh.Columns[10].Visible:=false;
   //和預設介面一樣
   ClassLabel.Caption:='0 = Dev+Tech+NG+Defect';
  end;
  if main.Edit2.Text='KDC' then
  begin
    TLFLDBGridEh.Columns[4].Title.Caption:='K-SwissQty';
    TLFLDBGridEh.Columns[5].Title.Caption:='PALLADIUMQty';
    TLFLDBGridEh.Columns[6].Title.Caption:='361Qty';
    TLFLDBGridEh.Columns[7].Title.Caption:='G-STARQty';
    TLFLDBGridEh.Columns[8].Title.Caption:='TOMMYQty';
    TLFLDBGridEh.Columns[9].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[10].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[9].Visible:=false;
    TLFLDBGridEh.Columns[10].Visible:=false;
    ClassLabel.Caption:='0 = K-Swi+PALL+361+G-START+TOMM+Rev';    
  end;
end;

end.
