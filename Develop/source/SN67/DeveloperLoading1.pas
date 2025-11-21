unit DeveloperLoading1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ComCtrls;

type
  TDeveloperLoading = class(TForm)
    DS1: TDataSource;
    DS2: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Query1jijie: TStringField;
    Query1RealScore: TFloatField;
    Query1FD: TStringField;
    Query2jijie: TStringField;
    Query2fd: TStringField;
    Query2devcode: TStringField;
    Query2xieming: TStringField;
    Query2Type: TStringField;
    Query2XieXing: TStringField;
    Query2RealScore: TFloatField;
    Query2Score: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    TotalNew: TLabel;
    NewMaterial: TLabel;
    NewUpper: TLabel;
    NewGraphic: TLabel;
    NewColor: TLabel;
    ElseT: TLabel;
    TotalNewPlusText1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TotalNewText: TEdit;
    NewMaterialText: TEdit;
    NewUpperText: TEdit;
    NewGraphicText: TEdit;
    ColorUpdateText: TEdit;
    Button1: TButton;
    ElseText: TEdit;
    SeasonText: TComboBox;
    DeveloperText: TComboBox;
    TotalNewPlusText: TEdit;
    NewUpperPlusText: TEdit;
    NewUpperMinText: TEdit;
    NewMaterialPlusText: TEdit;
    NewProcessText: TEdit;
    NewBottomComponentToolingText: TEdit;
    NewCuttingDiesText: TEdit;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Memo1: TMemo;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    TabSheet2: TTabSheet;
    Memo2: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
    procedure SeasonTextChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeveloperLoading: TDeveloperLoading;

implementation

uses main1;

{$R *.dfm}

procedure TDeveloperLoading.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TDeveloperLoading.FormDestroy(Sender: TObject);
begin
  DeveloperLoading:=nil;
end;

procedure TDeveloperLoading.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select jijie,sum(convert(float,RealScore)) RealScore,FD from (');
      sql.Add('select jijie,fd,convert(float,Score) Score,rank,kflx,');
      sql.Add('case when rank=''1'' then Score else ''1'' end RealScore from (');
      sql.Add('select kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh,FD,');
      sql.Add('case');
      sql.Add('when kflx=''TN''  then ''TotalNew''');
      sql.Add('when kflx=''TN+'' then ''TotalNew+''');
      sql.Add('when kflx=''CU''  then ''NewColor''');
      sql.Add('when kflx=''NU''  then ''NewUpper''');
      sql.Add('when kflx=''NU+'' then ''NewUpper+''');
      sql.Add('when kflx=''NU-'' then ''NewUpper-''');
      sql.Add('when kflx=''NG''  then ''NewGraphic''');
      sql.Add('when kflx=''MU''  then ''NewMaterial''');
      sql.Add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.Add('when kflx=''NP''  then ''NewProcess''');
      sql.Add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.Add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.Add('else ''Error'' end Type,');
      sql.Add('case');
      sql.Add('when kflx=''TN'' then '''+TotalNewText.text+'''');
      sql.Add('when kflx=''TN+'' then '''+TotalNewPlusText.text+'''');
      sql.Add('when kflx=''CU'' then '''+ColorUpdateText.text+'''');
      sql.Add('when kflx=''NU'' then '''+NewUpperText.text+'''');
      sql.Add('when kflx=''NU+'' then '''+NewUpperPlusText.text+'''');
      sql.Add('when kflx=''NU-'' then '''+NewUpperMinText.text+'''');
      sql.Add('when kflx=''NG'' then '''+NewGraphicText.text+'''');
      sql.Add('when kflx=''MU'' then '''+NewMaterialText.text+'''');
      sql.Add('when kflx=''MU+'' then '''+NewMaterialPlusText.text+'''');
      sql.Add('when kflx=''NP'' then '''+NewProcessText.text+'''');
      sql.Add('when kflx=''NT'' then '''+NewBottomComponentToolingText.text+'''');
      sql.Add('when kflx=''ND'' then '''+NewCuttingDiesText.text+'''');
      sql.Add('else '''+ElseText.text+'''  end Score,row_number() OVER (PARTITION BY xiexing,FD ORDER BY FD) as rank,kflx');
      sql.Add('from kfxxzl');
      sql.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      sql.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH=''CDC''');
      if seasontext.text<>''then
         sql.Add('and kfxxzl.jijie = '''+seasontext.Text+''' ');
      if Developertext.text<>''then
         sql.Add('and kfxxzl.fd = '''+Developertext.Text+''' ');
      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%''  ');
      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%''  )main1 )main');
      sql.Add('group by jijie,FD');
      sql.Add('order by RealScore desc');
    //  memo2.text:=sql.text;
      active:=true;
    //
  end;
  query2.Active:=true;
end;

procedure TDeveloperLoading.DBGridEh1CellClick(Column: TColumnEh);
begin
  with query2 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select jijie,fd,devcode,xieming,Type,convert(float,RealScore) RealScore,convert(float,Score) Score,XieXing from (');
      sql.Add('select jijie,fd,devcode,xieming,Type,case when rank=''1'' then Score else ''1'' end RealScore,Score,XieXing from (');
      sql.Add('select kfxxzl.devcode,kfxxzl.xieming,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh,FD,');
      sql.Add('case');
      sql.Add('when kflx=''TN''  then ''TotalNew''');
      sql.Add('when kflx=''TN+'' then ''TotalNew+''');
      sql.Add('when kflx=''CU''  then ''NewColor''');
      sql.Add('when kflx=''NU''  then ''NewUpper''');
      sql.Add('when kflx=''NU+'' then ''NewUpper+''');
      sql.Add('when kflx=''NU-'' then ''NewUpper-''');
      sql.Add('when kflx=''NG''  then ''NewGraphic''');
      sql.Add('when kflx=''MU''  then ''NewMaterial''');
      sql.Add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.Add('when kflx=''NP''  then ''NewProcess''');
      sql.Add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.Add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.Add('else ''Error'' end Type,');
      sql.Add('case');
      sql.Add('when kflx=''TN'' then '''+TotalNewText.text+'''');
      sql.Add('when kflx=''TN+'' then '''+TotalNewPlusText.text+'''');
      sql.Add('when kflx=''CU'' then '''+ColorUpdateText.text+'''');
      sql.Add('when kflx=''NU'' then '''+NewUpperText.text+'''');
      sql.Add('when kflx=''NU+'' then '''+NewUpperPlusText.text+'''');
      sql.Add('when kflx=''NU-'' then '''+NewUpperMinText.text+'''');
      sql.Add('when kflx=''NG'' then '''+NewGraphicText.text+'''');
      sql.Add('when kflx=''MU'' then '''+NewMaterialText.text+'''');
      sql.Add('when kflx=''MU+'' then '''+NewMaterialPlusText.text+'''');
      sql.Add('when kflx=''NP'' then '''+NewProcessText.text+'''');
      sql.Add('when kflx=''NT'' then '''+NewBottomComponentToolingText.text+'''');
      sql.Add('when kflx=''ND'' then '''+NewCuttingDiesText.text+'''');
      sql.Add('else '''+ElseText.text+'''  end Score,row_number() OVER (PARTITION BY xiexing,FD ORDER BY FD) as rank,kflx');
      sql.Add('from kfxxzl');
      sql.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      sql.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH=''CDC''  and fd=:fd and jijie=:jijie');
      if  developertext.Text<>'' then
        sql.Add('and kfxxzl.fd like ''%'+developertext.Text+'%''');
      if  seasontext.Text<>'' then
        sql.Add('and kfxxzl.jijie like ''%'+seasontext.Text+'%''');
      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%''  ');
      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%''  )main1 )main2 order by FD,XieXing desc');
      // memo2.text:=sql.text;
      active:=true;
    //
  end;
end;

procedure TDeveloperLoading.FormCreate(Sender: TObject);
begin
    with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select jijie from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
         SQL.Add('AND LEN(jijie) < 4 ');
         sql.add('group by jijie');
         sql.add('order by jijie desc');
         active:=true;
         seasonText.items.clear;

         while not eof do
         begin
           seasonText.items.add(fieldbyname('jijie').asstring );
           next;
         end;
      end;
      seasonText.ItemIndex:=0;
end;

procedure TDeveloperLoading.SeasonTextChange(Sender: TObject);
begin
      with query3 do
        begin
         active:=false;
         sql.Clear;
         sql.add('select FD from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and kfxxzl.jijie='''+seasontext.text+''' ');
         sql.add('group by FD');
         active:=true;
         DeveloperText.items.clear;
         while not eof do
         begin
           DeveloperText.items.add(fieldbyname('FD').asstring );
           next;
         end;
      end;
      DeveloperText.ItemIndex:=-1;
end;

end.
