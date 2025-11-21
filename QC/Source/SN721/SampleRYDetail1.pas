unit SampleRYDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh, ComCtrls, fununit;

type
  TSampleRYDetail = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    SampleDetail: TQuery;
    DataSource1: TDataSource;
    Query1: TQuery;
    SampleDetailJiJie: TStringField;
    SampleDetailKFJD: TStringField;
    SampleDetailCLBH: TStringField;
    SampleDetailZWPM: TStringField;
    SampleDetailYWPM: TStringField;
    SampleDetailCSBH: TStringField;
    SampleDetailZSJC: TStringField;
    Panel1: TPanel;
    Label4: TLabel;
    Label81: TLabel;
    Label45: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    MatNOEdit: TEdit;
    SEASON: TEdit;
    KFJD: TEdit;
    FlexID: TEdit;
    MaterNM: TEdit;
    SampleDetailcldhflex: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleRYDetail: TSampleRYDetail;

implementation

uses main1, MatQcCheck1;

{$R *.dfm}


procedure TSampleRYDetail.Button1Click(Sender: TObject);
var
  StrList: TStringlist;
  i: integer;
  StrSource, NewSQL: string;
begin
  if SEASON.Text = '' then
  begin
     showmessage('You need to enter the season.');
     abort;
  end;
  if KFJD.Text = '' then
  begin
     showmessage('You need to enter the Stage.');
     abort;
  end;

  if (MaterNM.Text <> '') then
  begin
    StrSource := MaterNM.Text;
    StrList := TStringList.Create;

    try
      StrList.Delimiter := '@';
      StrList.DelimitedText := StrSource;

      NewSQL := 'AND (';
      for i := 0 to StrList.Count-1 do
      begin
        if (i = 0) then
          NewSQL := NewSQL + 'CLZL.YWPM LIKE ''%' + StrList[i] + '%'' '
        else
          NewSQL := NewSQL + 'AND CLZL.YWPM LIKE ''%' + StrList[i] + '%'' ';
      end;
      NewSQL := NewSQL + ')';
    finally
      StrList.Free;
    end;
  end;

  with SampleDetail do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select '''+SEASON.Text+''' as JiJie,'''+KFJD.Text+''' as KFJD,CLBH,ZWPM,YWPM,cldhflex,CSBH,ZSYWJC as ZSJC from ( ');
    SQL.Add('SELECT ypzls.YPDH,ypzls.CLBH ,clzl.zwpm ,clzl.Ywpm,clzl_flex.cldhflex ,clzl.dwbh,ypzls.CSBH ,zszl.ZSYWJC  ,clzl.clzmlb,clzl.CQDH');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('LEFT JOIN clzl_flex on  clzl_flex.cldh =clzl.cldh ');
    SQL.Add('WHERE YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='''+KFJD.Text+''' and KFXXZL.JiJie='''+SEASON.Text+''' )');
    if MatNOEdit.Text <> '' then
      SQL.add('and ypzls.CLBH like ''%'+MatNOEdit.Text+'%'' ');
    if FlexID.Text <> '' then
      SQL.add('and clzl_flex.cldhflex like ''%'+FlexID.Text+'%'' ');
    if MaterNM.Text <> '' then
      SQL.add(NewSQL);
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH ');
    SQL.Add(',clzl.zwpm,clzl.Ywpm,clzl_flex.cldhflex,clzl.dwbh ');
    SQL.Add(',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.ZSYWJC else  zszl.ZSYWJC  end as ZSYWJC ');
    SQL.Add(',clzl.clzmlb,clzl.CQDH   ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('LEFT JOIN clzl_flex on  clzl_flex.cldh =clzl.cldh ');
    SQL.Add('WHERE  CLZHZL.SYL>0 and YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='''+KFJD.Text+''' and KFXXZL.JiJie='''+SEASON.Text+''' )');
    if MatNOEdit.Text <> '' then
      SQL.add('and clzhzl.CLDH1 like ''%'+MatNOEdit.Text+'%'' ');
    if FlexID.Text <> '' then
      SQL.add('and clzl_flex.cldhflex like ''%'+FlexID.Text+'%'' ');
    if MaterNM.Text <> '' then
      SQL.add(NewSQL);
    SQL.Add('union all ');
    SQL.Add('Select clzhzl2.YPDH,clzhzl.CLDH1 as CLBH');
    SQL.Add(',clzl.zwpm ,clzl.Ywpm,clzl_flex.cldhflex ,clzl.dwbh ');
    SQL.Add(',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.ZSYWJC else  zszl.ZSYWJC  end as ZSYWJC ');
    SQL.Add(',clzl.clzmlb,clzl.CQDH  ');
    SQL.Add(' from (');
    SQL.Add('	SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH ');
    SQL.Add('	FROM ypzls ypzls ');
    SQL.Add('	Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('	LEFT JOIN clzl  ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('	WHERE  CLZHZL.SYL>0 and clzl.clzmlb=''Y''    and YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='''+KFJD.Text+''' and KFXXZL.JiJie='''+SEASON.Text+''' )  ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('LEFT JOIN clzl_flex on  clzl_flex.cldh =clzl.cldh ');
    SQL.Add('where 1=1 ');
    if MatNOEdit.Text <> '' then
      SQL.add('and clzhzl.CLDH1 like ''%'+MatNOEdit.Text+'%'' ');
    if FlexID.Text <> '' then
      SQL.add('and clzl_flex.cldhflex like ''%'+FlexID.Text+'%'' ');
    if MaterNM.Text <> '' then
      SQL.add(NewSQL);
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by CLBH,ZWPM,YWPM,cldhflex,CSBH,ZSYWJC');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TSampleRYDetail.DBGridEh1DblClick(Sender: TObject);
begin
    if (not SampleDetail.Active) or (SampleDetail.RecordCount<1) then
    begin
       abort;
    end;
    try
       with MatQcCheck.qry_Qc do
       begin
          edit;
          fieldbyname('CGNO').AsString:=SampleDetail.fieldbyname('KFJD').AsString;
          fieldbyname('CLBH').AsString:=SampleDetail.fieldbyname('CLBH').AsString;
          fieldbyname('ZSBH').AsString:=SampleDetail.fieldbyname('CSBH').AsString;
          fieldbyname('RKNO').AsString:=SampleDetail.fieldbyname('JiJie').AsString;
          FieldByName('Tracking').Value:=1;
          fieldbyname('LB').AsString:='4';
          FieldByName('SampleSent').Value := 1;
          insert;
          FieldByName('DateInput').Value := formatdatetime('yyyy/mm/dd', date);
          FieldByName('Hours').Value := Nhour;

       end;
       //Close;
    except
       showmessage('Can not insert data, pls double check again !!!');
    end;
end;

procedure TSampleRYDetail.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
