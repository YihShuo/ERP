unit MA_Inspection_RY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TMA_Inspection_RY = class(TForm)
    Panel1: TPanel;
    imgClose: TImage;
    Label1: TLabel;
    edtRY: TEdit;
    pnlQuery: TPanel;
    gdDepRyList: TDBGrid;
    Qry: TQuery;
    ds: TDataSource;
    QryDepNo: TStringField;
    QryDepName: TStringField;
    QrySCBH: TStringField;
    QryQty: TIntegerField;
    Query1: TQuery;
    QryPairs: TIntegerField;
    QryShipDate: TDateTimeField;
    Query2: TQuery;
    QryProduction_Qty: TIntegerField;
    QryLotSize: TIntegerField;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    procedure pnlQueryClick(Sender: TObject);
    procedure gdDepRyListDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    hourago: TDateTime;
    GXLB:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MA_Inspection_RY: TMA_Inspection_RY;

implementation
  uses main1, MA_Inspection1, FunUnit;
{$R *.dfm}

procedure TMA_Inspection_RY.pnlQueryClick(Sender: TObject);
begin
  if MA_Inspection.RB1.Checked=true then
    GXLB:='HI'
  else
    GXLB:='DI';
  if not CheckBox1.Checked then
  begin
    with Qry do
    begin
      Active := false;
      SQL.Clear;
      if MA_Inspection.RB1.Checked=true then
      begin
        SQL.Add(' Select SMZLQC.DepNo,BDepartment.DepName,SMZLQC.SCBH,Sum(SMZLQC.Pairs) as Qty,DDZL.Pairs,Production_Qty,WOPR_MA.LotSize,DDZL.ShipDate');
        SQL.Add('	From SMZL_Tablet SMZLQC');
        SQL.Add('	left join BDepartment on BDepartment.ID=SMZLQC.DepNO');
        SQL.Add('	left join ddzl on ddzl.ddbh=SMZLQC.scbh');
        SQL.Add('	left join (select WOPR_MA.SCBH,WOPR_MA.DepNo,sum (WOPR_MA.PrdQty) as LotSize from WOPR_MA where userdate >= GETDATE() - 14 and WOPR_MA.GXLB=''HI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR_MA on WOPR_MA.SCBH=SMZLQC.SCBH and SMZLQC.DepNo=WOPR_MA.DepNo ');
        SQL.Add(' left join (select WOPR.SCBH,WOPR.DepNo,sum(WOPR.Qty+WOPR.NGQty) as Production_Qty from WOPR where userdate >= GETDATE() - 14 and WOPR.GXLB=''AR'' group by WOPR.SCBH,WOPR.DepNo) WOPR on WOPR.SCBH=SMZLQC.SCBH and WOPR.DepNo=WOPR_MA.DepNo');
        SQL.Add('	where   SMZLQC.DepNO='''+MA_Inspection.DepID_G+'''  ');
        SQL.Add('		 and ScanDate>= '''+FormatDateTime('YYYY/MM/DD 07:00:00', Now)+''' and ScanDate<DATEADD(hour,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+''')  )');
        if edtRY.Text<>'' then
        SQL.Add('    and SMZLQC.SCBH like '''+edtRY.Text+'%'' ');
        SQL.Add('    and DDZL.DDZT=''Y'' ');
        SQL.Add('	Group by SMZLQC.DepNo,BDepartment.DepName,SMZLQC.SCBH,DDZL.Pairs,DDZL.ShipDate,WOPR_MA.LotSize,Production_Qty');
        SQL.Add(' Order by  SMZLQC.SCBH ');
//        showmessage(SQL.Text);
      end else
      begin
        SQL.Add('	Select WOPR.DepNO,BDepartment.DepName,WOPR.SCBH,sum(WOPR.Qty+WOPR.NGQty) as Qty,DDZL.Pairs,sum(WOPR.Qty+WOPR.NGQty) as Production_Qty,WOPR_MA.LotSize,DDZL.ShipDate');
        SQL.Add('	from WOPR');
        SQL.Add('	left join BDepartment on BDepartment.ID=WOPR.DepNO');
        SQL.Add('	left join ddzl on ddzl.ddbh=WOPR.SCBH');
        SQL.Add('	left join (select WOPR_MA.SCBH,WOPR_MA.DepNo,sum (WOPR_MA.PrdQty) as LotSize from WOPR_MA where userdate >= GETDATE() - 14 and WOPR_MA.GXLB=''DI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR_MA on WOPR_MA.SCBH=WOPR.SCBH and WOPR.DepNo=WOPR_MA.DepNo ');
        SQL.Add('	where   WOPR.DepNO='''+MA_Inspection.DepID_G+''' and WOPR.GXLB=''AR'' ');
        if edtRY.Text<>'' then
          SQL.Add('       and WOPR.SCBH='''+edtRY.Text+''' ');
        SQL.Add(' and DDZL.DDZT=''Y'' ');
        SQL.Add(' and WOPR.SCBH in (select DDBH from YWCP where ((isnull (YWCP.SB,0)<>''3'') or  (Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD',Now)+''')-YWCP.EXEDATE=1)))');
        SQL.Add('	Group by WOPR.DepNO,BDepartment.DepName,WOPR.SCBH,DDZL.Pairs,DDZL.ShipDate,WOPR_MA.LotSize ');
        SQL.Add(' Order by WOPR.SCBH ');
        //showmessage(SQL.Text);
      end;
      //funcObj.WriteErrorLog(sql.text);
      Active := true;
    end;
  end else
  begin
    with Qry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('	Select BDepartment.ID as DepNO,BDepartment.DepName,SCZL.SCBH,sum(WOPR.Qty+WOPR.NGQty) as Qty,DDZL.Pairs,sum(WOPR.Qty+WOPR.NGQty) as Production_Qty,WOPR_MA.LotSize,DDZL.ShipDate');
      SQL.Add('	from SCZL');
      SQL.Add('	left join WOPR on SCZL.SCBH=WOPR.SCBH and WOPR.DepNO='''+MA_Inspection.DepID_G+'''');
      SQL.Add('	left join BDepartment on BDepartment.ID=WOPR.DepNO');
      SQL.Add('	left join ddzl on ddzl.ddbh=SCZL.SCBH');
      SQL.Add('	left join (select WOPR_MA.SCBH,WOPR_MA.DepNo,sum (WOPR_MA.PrdQty) as LotSize from WOPR_MA where userdate >= GETDATE() - 14 and WOPR_MA.GXLB='''+GXLB+'''  group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR_MA on WOPR_MA.SCBH=WOPR.SCBH and WOPR.DepNo=WOPR_MA.DepNo ');
      SQL.Add('	where 1=1  ');
      if edtRY.Text<>'' then
          SQL.Add('       and SCZL.SCBH='''+edtRY.Text+''' ');
      SQL.Add(' and DDZL.DDZT=''Y'' ');
      SQL.Add('	Group by BDepartment.ID,BDepartment.DepName,SCZL.SCBH,DDZL.Pairs,DDZL.ShipDate,WOPR_MA.LotSize ');
      SQL.Add(' Order by SCZL.SCBH ');
      //funcObj.WriteErrorLog(sql.text);
      Active := true;
    end;
  end;
end;

procedure TMA_Inspection_RY.gdDepRyListDblClick(Sender: TObject);
begin
  with MA_Inspection do
  begin
    edtRY.Text:=Qry.FieldByName('SCBH').AsString;
  end;
  //新增分頁
  MA_Inspection.addTabSheet();
  //顯示資訊
  if GXLB='HI' then
    MA_Inspection.Load_WOPR_MA();
  MA_Inspection.Load_DI_HI();
  if GXLB='DI' then
    MA_Inspection.Last_Date.Visible:=true
  else
    MA_Inspection.Last_Date.Visible:=false;
  Close;
end;

procedure TMA_Inspection_RY.FormCreate(Sender: TObject);
begin
//   pnlQueryClick(nil);
end;

end.
