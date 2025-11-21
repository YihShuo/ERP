unit SampleTracking_Quo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables, DB,
  DBCtrls, ComCtrls;

type
  TSampleTracking_Quo = class(TForm)
    MasPanel: TPanel;
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
    BDT6: TBitBtn;
    ToolPanel: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    SPSCMas: TQuery;
    UpMas: TUpdateSQL;
    MasDs: TDataSource;
    SPSCMasSPNO: TIntegerField;
    SPSCMasArticle: TStringField;
    SPSCMasODate: TDateTimeField;
    RB1: TBitBtn;
    RB2: TBitBtn;
    RB3: TBitBtn;
    SPSCDet: TQuery;
    RB4: TBitBtn;
    RB5: TBitBtn;
    tmpQuery: TQuery;
    SPSCMasUserID: TStringField;
    SPSCMasUserDate: TDateTimeField;
    SPSCMasYN: TStringField;
    SPSCMasGSBH: TStringField;
    ExeQuery: TQuery;
    DetDs: TDataSource;
    SPSCDetSPNO: TIntegerField;
    SPSCDetItemNM: TStringField;
    SPSCDetRENO: TIntegerField;
    SPSCDetUserDate: TDateTimeField;
    SPSCDetUserID: TStringField;
    UpDet: TUpdateSQL;
    SPSCDetYN: TIntegerField;
    SPSCDetExeDate: TDateTimeField;
    SPSCDetLYBH: TStringField;
    SPSCMasShipDate: TDateTimeField;
    Label1: TLabel;
    SR: TEdit;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    SPSCMasStage: TStringField;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    SPSCDetZWSM: TStringField;
    SPSCDetYWSM: TStringField;
    DateSearch: TComboBox;
    SPSCMasCkDate: TDateTimeField;
    Splitter1: TSplitter;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SPSCMasBOMDate: TDateTimeField;
    SPSCMasBOMExDate: TDateTimeField;
    SPSCMasYLDate: TDateTimeField;
    SPSCMasYLExDate: TDateTimeField;
    SPSCMasBGDate: TDateTimeField;
    SPSCMasBGExDate: TDateTimeField;
    SPSCMasPairs: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SPSCMasAfterOpen(DataSet: TDataSet);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure RB3Click(Sender: TObject);
    procedure RB5Click(Sender: TObject);
    procedure RB4Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SPSCDetItemNMSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleTracking_Quo: TSampleTracking_Quo;
  NDate:TDate;
implementation
   uses main1,SampleTrackReason1,SampleTrackingRms1,  FunUnit;
{$R *.dfm}

procedure TSampleTracking_Quo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleTracking_Quo.FormDestroy(Sender: TObject);
begin
   SampleTracking_Quo:=nil;
end;
//
procedure TSampleTracking_Quo.Button1Click(Sender: TObject);
var i:integer;
begin
   //
   with SPSCMas do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select SPSCList.SPNO,SPSCList.Article,SPSCList.GSBH,SPSCList.Stage,SPSCList.Pairs,SPSCList.ODate,SPSCList.CkDate,SPSCList.ShipDate, ');
     SQL.Add('  SPSCList.BOMDate,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''BOMExDate'') as BOMExDate, ');
     SQL.Add('  SPSCList.YLDate,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''YLExDate'') as YLExDate, ');
     SQL.Add('  SPSCList.BGDate,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''BGExDate'') as BGExDate, ');
     SQL.Add('  UserID,UserDate,''1'' as YN ');
     SQL.Add('from SPSCList ');
     SQL.Add('where Article like ''%'+SR.Text+'%'' and GSBH='''+main.Edit2.Text+''' ');
     if DateSearch.ItemIndex=0 then   // ODate下單日期
     begin
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) between ')
     end else if DateSearch.ItemIndex=1 then // ShipDate 出貨日期
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ShipDate,111)) between ');
     sql.add(''''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
     sql.add(' and  ');
     sql.add(''''+Formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
     SQL.Add('order by SPSCList.ODate ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //Button
   //
   SPSCDet.Active:=true;
   //單位執行項目
   DBGridEh2.Columns[0].PickList.Clear;
   DBGridEh2.Columns[0].PickList.add('BOMExDate');
   DBGridEh2.Columns[0].PickList.add('YLExDate');
   DBGridEh2.Columns[0].PickList.add('BGExDate');
   //
   ToolPanel.Visible:=false;
end;
//
procedure TSampleTracking_Quo.BB2Click(Sender: TObject);
begin

end;
//
procedure TSampleTracking_Quo.BB3Click(Sender: TObject);
begin

end;
//
procedure TSampleTracking_Quo.BB4Click(Sender: TObject);
begin

end;
//
procedure TSampleTracking_Quo.BB6Click(Sender: TObject);
begin

end;

//儲存
procedure TSampleTracking_Quo.FormCreate(Sender: TObject);
begin
  //
  with tmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  DTp1.Date:=NDate-15;
  DTP2.Date:=NDate+15;
  //
end;

procedure TSampleTracking_Quo.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if SPSCMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
  if (SPSCMas.FieldByName('SPNO').isnull) or (SPSCMas.FieldByName('SPNO').AsString='0') then
  begin
    if ((DataCol >= 1) and (DataCol <= 4)) then
    begin
      DBGridEh1.canvas.Brush.color:=clYellow;
      DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
  end;
  //
  //
  if ((SPSCMas.FieldByName('BOMExDate').IsNull=false) and (SPSCMas.FieldByName('YLExDate').IsNull=false) and (SPSCMas.FieldByName('BGExDate').IsNull=false)  )  then
  begin
      DBGridEh1.canvas.Font.color:=clBlue;
      DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleTracking_Quo.SPSCMasAfterOpen(DataSet: TDataSet);
begin
  if SPSCMas.RecordCount>0 then
  begin
    RB1.Enabled:=true;
    RB2.Enabled:=true;
    RB3.Enabled:=true;
  end else
  begin
    RB1.Enabled:=false;
    RB2.Enabled:=false;
    RB3.Enabled:=false;
  end;
end;

procedure TSampleTracking_Quo.RB1Click(Sender: TObject);
begin

  //
  with SPSCDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  RB4.Enabled:=true;
  RB5.Enabled:=true;
  DBGridEh2.Columns[1].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSampleTracking_Quo.RB2Click(Sender: TObject);
begin
  //
  with SPSCDet do
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
  RB4.Enabled:=true;
  RB5.Enabled:=true;
end;

procedure TSampleTracking_Quo.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if SPSCDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
end;

procedure TSampleTracking_Quo.RB3Click(Sender: TObject);
begin
  //
  with SPSCDet do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
  end;
  RB4.enabled:=true;
  RB5.enabled:=true;
  DBGridEh2.Columns[1].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSampleTracking_Quo.RB5Click(Sender: TObject);
begin
  //
  with SPSCDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  RB4.enabled:=false;
  RB5.enabled:=false;
  DBGridEh2.Columns[1].ButtonStyle:=cbsAuto;
  //
end;
//
procedure TSampleTracking_Quo.RB4Click(Sender: TObject);
var i,RENO:integer;
begin
  //
  SPSCDet.First;
  for i:=0 to SPSCDet.RecordCount-1 do
  begin
    case SPSCDet.updatestatus of
      usinserted:
      begin
        //
        with tmpQuery do    //計算領料單流水號
        begin
           active:=false;
           sql.Clear;
           sql.Add('select top 1 RENO as RENO from SPSCRm where SPNO='+SPSCMas.FieldByName('SPNO').AsString+' and ItemNM='''+SPSCDet.fieldbyname('ItemNM').AsString+''' order by RENO desc ');
           //funcObj.WriteErrorLog(sql.Text);
           active:=true;
           if recordcount >0 then
             RENO:=FieldByName('RENO').Value+1
           else
             RENO:=1;
           active:=false;
        end;
        //
        SPSCDet.edit;
        SPSCDet.fieldbyname('SPNO').Value:=SPSCMas.FieldByName('SPNO').AsString;;
        SPSCDet.fieldbyname('RENO').Value:=RENO;
        SPSCDet.fieldbyname('UserID').Value:=main.Edit1.Text;
        SPSCDet.fieldbyname('UserDate').Value:=NDate;
        SPSCDet.Post;
        //Reason和ExeDate必填
        if ((trim(SPSCDet.FieldByName('ItemNM').AsString)<>'') and (SPSCDet.FieldByName('LYBH').IsNull=false) and (SPSCDet.FieldByName('ExeDate').IsNull=false)) then
        begin
           if ((Date()-SPSCDet.FieldByName('ExeDate').Value)>=3) then
             Showmessage('ExeDate must be between  Today - 3 days !')
           else
             UpDet.Apply(ukinsert);
        end else
        begin
           Showmessage('Reason or ExeDate is empty!');
           abort;
        end;
        //
      end;
      usmodified:
      begin
        //
        if (SPSCDet.fieldbyname('UserID').AsString=main.edit1.text)  then
        begin
          //預計每個單位使用自己的UserDate1 UserDate2..來限制
          if (NDate-SPSCDet.FieldByName('USERDATE').value)<=2  then
          begin
            if SPSCDet.fieldbyname('YN').value='0' then
            begin
              UpDet.Apply(ukDelete);
            end else
            begin
              SPSCDet.edit;
              SPSCDet.fieldbyname('UserID').Value:=main.Edit1.Text;
              SPSCDet.fieldbyname('UserDate').Value:=NDate;
              SPSCDet.Post;
              //Reason和ExeDate必填
              if ((trim(SPSCDet.FieldByName('ItemNM').AsString)<>'') and (SPSCDet.FieldByName('LYBH').IsNull=false) and (SPSCDet.FieldByName('ExeDate').IsNull=false)) then
              begin
                 if ((Date()-SPSCDet.FieldByName('ExeDate').Value)>=3) then
                   Showmessage('ExeDate must be between  Today - 3 days !')
                 else
                   UpDet.Apply(ukModify)
              end else
              begin
                 Showmessage('Reason or ExeDate is empty!');
                 abort;
              end;
            end;
          end else
          begin
            showmessage('Date>2, can not modify.');
          end;
        end else
        begin
          showmessage('It is not yours, can not modify.');
        end;
        //
      end;
    end;
    SPSCDet.Next;
  end;
  //
  SPSCDet.active:=false;
  SPSCDet.cachedupdates:=false;
  SPSCDet.requestlive:=false;
  SPSCDet.active:=true;
  //
  RB4.enabled:=false;
  RB5.enabled:=false;
  DBGridEh2.Columns[1].ButtonStyle:=cbsAuto;
  //
end;

procedure TSampleTracking_Quo.DBGridEh2EditButtonClick(Sender: TObject);
begin
  //
  with DBGridEh2 do
  begin
    if Selectedfield.fieldname='ZWSM' then
    begin
      SampleTrackReason:=TSampleTrackReason.Create(self);
      SampleTrackReason.SetItemNM(SPSCDet.fieldByName('ItemNM').AsString,SPSCDet);
      SampleTrackReason.ShowModal;
      SampleTrackReason.Free;
    end;
  end;
  //
end;
//
procedure TSampleTracking_Quo.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;
//
procedure TSampleTracking_Quo.BitBtn1Click(Sender: TObject);
begin
  //
  if SampleTrackingRms=nil then
    SampleTrackingRms:=TSampleTrackingRms.Create(self);
  SampleTrackingRms.SetDepartment('Price');
  SampleTrackingRms.Show;
  //
end;

procedure TSampleTracking_Quo.SPSCDetItemNMSetText(Sender: TField;
  const Text: String);
begin
  if Text='BOMExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('BOMDate').Value;
  if Text='YLExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('YLDate').Value;
  if Text='BGExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('BGDate').Value;
  if SPSCDet.State =dsInsert then
  begin
    SPSCDet.FieldByName('LYBH').Value:='0001';
    SPSCDet.FieldByName('ZWSM').Value:='準時';
    SPSCDet.FieldByName('YWSM').Value:='on time';
  end;
  SPSCDet.FieldByName('ItemNM').Value:=Text;

end;

end.
