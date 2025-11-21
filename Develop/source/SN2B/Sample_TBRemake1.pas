unit Sample_TBRemake1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh, DateUtils, ShellApi, IniFiles;

type
  TSample_TBRemake = class(TForm)
    DS_PMRList: TDataSource;
    Q_PMRList: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    ED_Testno: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Button3: TButton;
    U_PMRList: TUpdateSQL;
    Q_PMRListTestNo: TStringField;
    Q_PMRListArticle: TStringField;
    Q_PMRListDevTp: TStringField;
    Q_PMRListstage: TStringField;
    Q_PMRListTestTime: TStringField;
    Q_PMRListSeason: TStringField;
    Q_PMRListSIZ: TStringField;
    Q_PMRListLastNo: TStringField;
    Q_PMRListCutDieNo: TStringField;
    Q_PMRListPurpose: TStringField;
    Q_PMRListMemo1: TMemoField;
    Q_PMRListMemo2: TMemoField;
    Q_PMRListUserID: TStringField;
    Q_PMRListUserDate: TDateTimeField;
    Q_PMRListFD: TStringField;
    Q_PMRListXieMing: TStringField;
    Q_PMRListCHOOSE: TStringField;
    Q_PMRListBrand: TStringField;
    Q_PMRListConstruction: TStringField;
    Q_PMRListsubtp: TStringField;
    Q_PMRListYPDH: TStringField;
    Q_PMRListDDMH: TStringField;
    Q_PMRListSeeStage: TStringField;
    Query1: TQuery;
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sample_TBRemake: TSample_TBRemake;
  NDate:TDate;

implementation
uses  main1, SKUChoose1, FunUnit;

{$R *.dfm}

procedure TSample_TBRemake.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TSample_TBRemake.FormDestroy(Sender: TObject);
begin
  Sample_TBRemake := Nil;
end;

procedure TSample_TBRemake.Button1Click(Sender: TObject);
begin
  if trim(ED_Testno.Text) = '' then begin
    showmessage('Please Keyin Test No!');
    abort;
  end;
  with Q_PMRList do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM shoetest ');
    SQL.Add(' WHERE 1 = 1 ');
    SQL.Add('and testno LIKE '''+ED_Testno.Text+'%''');
    Active := true;
  end;
  Button3.Enabled := true;
end;

procedure TSample_TBRemake.Button3Click(Sender: TObject);
var i: Integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    Ndate:=fieldbyname('NDate').AsDateTime ;
    active:=false;
  end;
  if Q_PMRList.IsEmpty then exit;
  Query1.Active := false;
  Query1.SQL.Clear;
  Query1.SQL.Add('Select count(*) from shoetest where testno like '''+copy(Q_PMRList.fieldbyname('testno').AsString,1,7)+'%''');
  Query1.Active := true;
  i := Query1.Fields[0].Value;
  if i >= 1 then begin
    if messagedlg('Want copy new TestNo  '+copy(Q_PMRList.fieldbyname('testno').AsString,1,7)+'_R'+inttostr(i)+'  ?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      Query1.Active := false;
      Query1.SQL.Clear;
      Query1.SQL.Add('Insert into shoetest (TestNo,Article,DevTp,stage,TestTime,Season,SIZ,LastNo,CutDieNo,Purpose,Memo1,Memo2,');
      Query1.SQL.Add('UserID,UserDate,FD,XieMing,CHOOSE,Brand,Construction,subtp,YPDH,DDMH,SeeStage) ');
      Query1.SQL.Add('Values('''+copy(Q_PMRList.fieldbyname('testno').AsString,1,7)+'_R'+inttostr(i)+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Article').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('DevTp').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('stage').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('TestTime').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Season').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('SIZ').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('LastNo').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('CutDieNo').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Purpose').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Memo1').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Memo2').AsString+''',');
      Query1.SQL.Add(''''+main.edit1.text+''',');
      Query1.SQL.Add(''''+formatdatetime('YYYY/MM/DD',Ndate)+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('FD').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('XieMing').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('CHOOSE').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Brand').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('Construction').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('subtp').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('YPDH').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('DDMH').AsString+''',');
      Query1.SQL.Add(''''+Q_PMRList.fieldbyname('SeeStage').AsString+''')');
      Query1.ExecSQL;

      Query1.Active := false;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * from shoetestplan where testno = '''+Q_PMRList.fieldbyname('testno').AsString+'''');
      Query1.Open;
      if not Query1.IsEmpty then begin
        Query2.Active := false;
        Query2.SQL.Clear;
        Query2.SQL.Add('Insert into shoetestplan (ypdh,TestNo,Serino,Priority,YN,Memo,R2,R3,Lamination,C_Memo,S_Memo,A_Memo,');
        Query2.SQL.Add('groups,P_Memo,groups2,C_ETA,S_ETA,USERID,USERDATE) ');
        Query2.SQL.Add('Values('''+Query1.fieldbyname('ypdh').AsString+''',');
        Query2.SQL.Add(''''+copy(Q_PMRList.fieldbyname('testno').AsString,1,7)+'_R'+inttostr(i)+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('Serino').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('Priority').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('YN').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('Memo').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('R2').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('R3').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('Lamination').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('C_Memo').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('S_Memo').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('A_Memo').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('groups').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('P_Memo').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('groups2').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('C_ETA').AsString+''',');
        Query2.SQL.Add(''''+Query1.fieldbyname('S_ETA').AsString+''',');
        Query2.SQL.Add(''''+main.edit1.text+''',');
        Query2.SQL.Add(''''+formatdatetime('YYYY/MM/DD',Ndate)+''')');
        Query2.ExecSQL;
      end;
    end;
  end;
  Button1Click(sender);
end;

end.
