unit Deliver_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, ComCtrls, GridsEh, DBGridEh,
  Mask, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh,fununit,comobj;

type
  TDeliver_Detail = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtTSID: TEdit;
    btnQuery: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGridEh;
    KCLL: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    Label7: TLabel;
    DTP2: TDateTimePicker;
    DTP4: TDateTimePicker;
    DTP3: TDateTimePicker;
    Label8: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Usedatecheck: TCheckBox;
    CFMcheck: TCheckBox;
    Qtemp: TQuery;
    KCLLLLNO: TStringField;
    KCLLTSID: TStringField;
    KCLLQty: TFloatField;
    KCLLLB: TStringField;
    KCLLGSBH: TStringField;
    KCLLuserid: TStringField;
    KCLLuserdate: TDateTimeField;
    KCLLcfmid: TStringField;
    KCLLcfmdate: TDateTimeField;
    KCLLSBBH: TStringField;
    KCLLywpm: TStringField;
    KCLLzwpm: TStringField;
    KCLLvwpm: TStringField;
    KCLLdepname: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Deliver_Detail: TDeliver_Detail;
  NDate:TDate;

implementation

{$R *.dfm}

procedure TDeliver_Detail.btnQueryClick(Sender: TObject);
begin
  With KCLL do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''  and TSCD_KCLL.LB=''LLLLLLLLLL'' ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCBBS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCBB TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCDDS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCDD TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCCCS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCCC TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCSSS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCSS TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCTTS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCTT TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCRRS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCRR TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCFFS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCFF TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCHHS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCHH TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');

    SQL.Add('UNION ALL');
    SQL.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('       ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('from TSCD_KCMMS TSCD_KCLLS  ');
    SQL.Add('left join TSCD_KCMM TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO  ');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH  ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID  ');
    SQL.Add('where TSCD_KCLL.CFMID<>''NO''   ');
    if Usedatecheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if CFMcheck.Checked then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Edit1.Text<>'' then
      SQL.add('and BDepartment.DepName like '''+Edit1.Text+'%'+'''');

    if Edit2.Text<>'' then
      SQL.add('and TSCD_KCLLS.LLNO like '''+Edit2.Text+'%'+'''');
    if edtTSID.Text<>'' then
      SQL.add('and TSCD.TSID like '''+edtTSID.Text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('and TSCD.SBBH like '''+Edit3.Text+'%'+'''');
    SQL.Add('group by TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID,TSCD_KCLLS.Qty,TSCD_KCLL.LB,TSCD_KCLL.GSBH,TSCD_KCLL.userid,TSCD_KCLL.userdate,TSCD_KCLL.cfmid,TSCD_KCLL.cfmdate');
    SQL.Add('         ,TSCD.SBBH,TSCD_SB.ywpm,TSCD_SB.zwpm,TSCD_SB.vwpm,BDepartment.depname');
    SQL.Add('order by 1 ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TDeliver_Detail.Button1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  KCLL.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   KCLL.fieldcount-1   do
        begin
           eclApp.Cells(1,i+1):=KCLL.fields[i].FieldName;
        end;

        KCLL.First;
        j:=2;
        while   not KCLL.Eof   do
        begin
          for   i:=0   to  KCLL.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=KCLL.Fields[i].AsString;
          end;
          KCLL.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;

procedure TDeliver_Detail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDeliver_Detail.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:=date-3;
    DTP2.date:=date;
    DTP3.date:=date-3;
    DTP4.date:=date;
  end;
end;

procedure TDeliver_Detail.FormDestroy(Sender: TObject);
begin
  Deliver_Detail:=nil;
end;

end.
