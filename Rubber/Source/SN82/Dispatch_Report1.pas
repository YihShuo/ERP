unit Dispatch_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Comobj;

type
  TDispatch_Report = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button4: TButton;
    Edit6: TEdit;
    Button5: TButton;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    Edit7: TEdit;
    CheckBox2: TCheckBox;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    RDispatch: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    RDispatchDWDATE: TDateTimeField;
    RDispatchUnit_Type_Code: TIntegerField;
    RDispatchShift: TIntegerField;
    RDispatchBottom_Part_Code: TIntegerField;
    RDispatchRDWNO: TStringField;
    RDispatchDefectCode: TStringField;
    RDispatchModel_Name: TStringField;
    RDispatchMOLD_NO: TStringField;
    RDispatchMCS_CODE: TIntegerField;
    RDispatchMiltiple_MCS: TStringField;
    RDispatchComponent_Color_Code: TIntegerField;
    RDispatchNumber_of_Pairs: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    AppDir:String;
  public
    { Public declarations }
  end;

var
  Dispatch_Report: TDispatch_Report;

implementation

uses main1, RDispatch1;

{$R *.dfm}

procedure TDispatch_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDispatch_Report.FormCreate(Sender: TObject);
begin
  DTP5.Date := now - 7;
  DTP6.Date := now;
end;

procedure TDispatch_Report.FormDestroy(Sender: TObject);
begin
  Dispatch_Report := nil;
end;

procedure TDispatch_Report.Button4Click(Sender: TObject);
begin
  with RDispatch do
  begin
    active := false;
    sql.Clear;
    SQL.Add('  select RD.*  ');
    SQL.Add('  from   ');
    SQL.Add('  (select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then ''301'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS    ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs  ');
    SQL.Add('    ');
    SQL.Add('  from RDispatch where D301>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('    ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D301,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D301>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then ''302'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D302>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('    ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D302,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D302>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('    ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then ''303'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D303>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D303,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D303>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE   ');
    SQL.Add('  UNION ALL   ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then ''304'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D304>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D304,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D304>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then ''305'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D305>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D305,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D305>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then ''306'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D306>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D306,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D306>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then ''307'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D307>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D307,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D307>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then ''308'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D308>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D308,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D308>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then ''309'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D309>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D309,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D309>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then ''310'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D310>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D310,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D310>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then ''311'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D311>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D311,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D311>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then ''312'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D312>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D312,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D312>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then ''313'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D313>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D313,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D313>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then ''314'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D314>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D314,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D314>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE   ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,RDispatch.Total as Unit_Type_Code,RDispatch.DWCLASS as Shift,RDispatch.Total as Bottom_Part_Code,RDispatch.RDWNO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then ''362'' end as DefectCode  ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then RDispatch.Model_Name end as Model_Name   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then RDispatch.MOLD_NO end as MOLD_NO   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then RDispatch.MCS_CODE end as MCS_CODE,RDispatch.Miltiple_MCS   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then RDispatch.Component_Color_Code end as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then RDispatch.PageNO end as Number_of_Pairs   ');
    SQL.Add('  from RDispatch where D362>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE,RDispatch.Total,RDispatch.DWCLASS,RDispatch.Model_Name,MOLD_NO,MCS_CODE,RDispatch.PageNO,Component_Color_Code  ');
    SQL.Add('  ,RDispatch.Miltiple_MCS,RDispatch.RDWNO  ');
    SQL.Add('  UNION ALL  ');
    SQL.Add('  select RDispatch.DWDATE,0 as Unit_Type_Code,0 as Shift,0 as Bottom_Part_Code,''ZZZ'' as RDWNO  ');
    SQL.Add('  ,''Total'' as DefectCode  ');
    SQL.Add('  ,''ZZZ'' as  Model_Name   ');
    SQL.Add('  ,''ZZZ'' as MOLD_NO   ');
    SQL.Add('  ,0 as MCS_CODE,''ZZZ'' as Miltiple_MCS    ');
    SQL.Add('  ,0 as Component_Color_Code   ');
    SQL.Add('  ,case when max (isnull (RDispatch.D362,''''))<>0 then sum (RDispatch.Total) end as Number_of_Pairs  ');
    SQL.Add('  from RDispatch where D362>0  ');
    if edit7.Text <> '' then
      SQL.Add('and  RDispatch.RDWNO like '+''''+edit7.Text+'%'+'''');
    if edit6.Text <> '' then
      SQL.Add('and  RDispatch.MOLD_NO like '+''''+edit6.Text+'%'+'''');
    if edit1.Text <> '' then
      SQL.Add('and  RDispatch.Color_NO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      SQL.Add('and  RDispatch.SIZE like '+''''+edit2.Text+'%'+'''');
    SQL.Add('  group by RDispatch.DWDATE ) RD   ');
    SQL.Add('  left join RDispatch  on RD.RDWNO=RDispatch.RDWNO  ');
    SQL.Add('  where 1=1  ');
    if CheckBox2.Checked then
    begin
      SQL.add('and  (convert(smalldatetime,convert(varchar,RD.DWDATE ,111)) between ');
      SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP5.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP6.date)+''''+')');
    end;
    //memo1.Text:=sql.Text;
    active := true;
  end;
end;

procedure TDispatch_Report.Button5Click(Sender: TObject);
var i,j,k,excelcount:integer;
    eclApp,WorkBook:olevariant;
    SB,Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Ruper_N82.xls'),Pchar(AppDir+'Additional\Ruper_N82.xls'),false);
  if FileExists(AppDir+'Additional\Ruper_N82.xls')=true then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Ruper_N82.xls');
        j:=2;
        j:=2;
        RDispatch.First;
        while   not  RDispatch.Eof   do
        begin
          for   i:=0   to   RDispatch.fieldcount-1   do
          begin
              eclApp.Cells(j,1):='VIN VIE';
              eclApp.Cells(j,2):='Bottom Defect Data Collection - March 2024 - May 2024';
              eclApp.Cells(j,3):='RSM Bottom Defects Form and KPIs';
              eclApp.Cells(j,4):=RDispatch.FieldByName('DWDATE').AsString;
              eclApp.Cells(j,5):=RDispatch.FieldByName('Unit_Type_Code').AsString;
              eclApp.Cells(j,6):=RDispatch.FieldByName('Shift').AsString;
              eclApp.Cells(j,7):=RDispatch.FieldByName('Bottom_Part_Code').AsString;
              eclApp.Cells(j,8):=RDispatch.FieldByName('DefectCode').AsString;
              eclApp.Cells(j,9):=RDispatch.FieldByName('Model_Name').AsString;
              eclApp.Cells(j,10):=RDispatch.FieldByName('MOLD_NO').AsString;
              eclApp.Cells(j,11):=RDispatch.FieldByName('MCS_CODE').AsString;
              eclApp.Cells(j,12):=RDispatch.FieldByName('Miltiple_MCS').AsString;
              eclApp.Cells(j,13):=RDispatch.FieldByName('Component_Color_Code').AsString;
              eclApp.Cells(j,14):=RDispatch.FieldByName('Number_of_Pairs').AsString;
              if RDispatch.FieldByName('RDWNO').AsString ='ZZZ' then
              begin
                eclApp.Range['A'+inttostr(j)+':O'+inttostr(j)+''].Interior.Color := clyellow;
              end;
          end;
          RDispatch.Next;
          inc(j);
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[2,1],eclApp.cells[j-1,15]].borders[k].linestyle:=1;
          end;
        end;
        //eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;

end.
