unit MaterialArea1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, StdCtrls, Grids, DBGrids, comobj ,ExtCtrls,
  GridsEh, DBGridEh, Menus, DateUtils;

type
  TMaterialArea = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
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
    MatArea: TQuery;
    DS1: TDataSource;
    UPMatArea: TUpdateSQL;
    TempSql: TQuery;
    Edit3: TEdit;
    Edit4: TEdit;
    MatAreaCLDH: TStringField;
    MatAreaYWPM: TStringField;
    MatAreaDWBH: TStringField;
    MatAreaoldCLBH: TStringField;
    MatAreaLYCC: TStringField;
    MatAreaCLZMLB: TStringField;
    MatAreaCQDH: TStringField;
    MatAreaCLBH: TStringField;
    MatAreaCKBH: TStringField;
    MatAreaKCBH: TStringField;
    MatAreaUSERID: TStringField;
    MatAreaUSERDATE: TDateTimeField;
    MatAreaCWBH: TStringField;
    MatAreaUSERID2: TStringField;
    MatAreaUSERDATE2: TDateTimeField;
    MatAreaYN: TStringField;
    MatAreaKCMC: TStringField;
    DBGridEh1: TDBGridEh;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MatAreaZWPM: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label4: TLabel;
    Edit5: TEdit;
    MatAreaMemo: TStringField;
    MatAreaDFL: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialArea: TMaterialArea;

implementation

uses MatArea_KC1, main1, Sitearea1, FunUnit;

{$R *.dfm}

procedure TMaterialArea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MatArea.requestlive then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end else
    action:=cafree;
end;

procedure TMaterialArea.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TMaterialArea.FormCreate(Sender: TObject);
begin
  MatArea.active:=false;
  with tempsql do
  begin
    active:=false;
    sql.clear;
    sql.add('select CKBH from KCCK where GSBH='+''''+main.Edit2.Text+'''');
    active:=true;
    while not tempsql.eof do
    begin
        CBX1.Items.Add(fields[0].value);
        next;
    end;
    if CBX1.text='' then
    begin
        CBX1.ItemIndex:=0;
    end;
    active:=false;
  end;
end;

procedure TMaterialArea.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:String;
    CKBHList:String;
    i:integer;
begin

  Decodedate(Date,iYear,iMonth,iDay);   //找庫存相關的數據
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  if ((Edit1.Text='') and (CheckBox1.Checked=false)) then
  begin
    Showmessage('Please input CLBH or Chheck');
    Exit;
  end;
  if CBX1.Text<>'' then
  begin
    CKBHList:='('''+CBX1.Text+''')'
  end else
  begin
    for i:=0 to CBX1.Items.Count-1 do
    begin
      CKBHList:=CKBHList+''''+CBX1.Items[i]+''',';
    end;
    CKBHList:='('+Copy(CKBHList,1,length(CKBHList)-1)+')';
  end;

  with MatArea do
  begin
    active:=false;
    sql.clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.CLBH as oldCLBH ,');
    sql.add('CLZL.LYCC,CLZL.CLZMLB,CLZL.CQDH,KCZLS.*,KCZL.KCMC,KCZL.Memo ');
    sql.add('from CLZL');
    sql.add('left join (select KCZLS.* from KCZLS where 1=1 ');
    sql.add('             and KCZLS.CKBH in '+CKBHList);
    sql.add('           ) KCZLS on KCZLS.CLBH=CLZL.CLDH ');
    sql.add('left join KCZL on KCZL.CKBH=KCZLS.CKBH and KCZL.KCBH=KCZLS.KCBH');
    sql.add('where CLZL.CLDH like '''+edit1.Text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit4.Text+'%''');
    if Edit5.Text<>'' then
    sql.add('and KCZLS.KCBH like '''+Edit5.Text+'%'' ');
    if CheckBox1.Checked=true then
    begin
      SQL.Add('and Exists (  ');
      SQL.Add('     Select  CLBH from (');
      SQL.Add('	 Select  KCCLMONTH.CLBH from KCCLMONTH where CKBH in '+CKBHList+' and KCYEAR='''+sYear+''' and KCMONTH='''+sMonth+'''');
      SQL.Add('	 union all ');
      SQL.Add('     Select  CGZLS.CLBH from CGZL,CGZLS where CGZL.CGNO=CGZLS.CGNO and CGZL.GSBH='''+main.Edit2.Text+''' and Convert(smalldatetime,Convert(varchar,CGZL.USERDate)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+Formatdatetime('yyyy/MM/dd',Date)+'''');
      SQL.Add('	 union all');
      SQL.Add('     Select  JGZLS.CLBH from JGZL,JGZLS where JGZL.JGNO=JGZLS.JGNO and JGZL.CKBH in '+CKBHList+'   and Convert(smalldatetime,Convert(varchar,JGZL.USERDate)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+Formatdatetime('yyyy/MM/dd',Date)+'''');
      SQL.Add('	 union all');
      SQL.Add('     Select  KCLLS.CLBH from KCLL,KCLLS where KCLL.LLNO=KCLLS.LLNO and KCLL.CKBH in '+CKBHList+'  and Convert(smalldatetime,Convert(varchar,KCLL.CFMDate)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+Formatdatetime('yyyy/MM/dd',Date)+''' ');
      SQL.Add('	 ) CLBHAll  where CLBHAll.CLBH=CLZL.CLDH Group by CLBH');
      SQL.Add('    )');
    end;
    if CheckBox2.Checked=true then
      sql.add('and IsNull(KCZLS.KCBH,'''')='''' ');
    sql.add('order by CLZL.CLDH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB4.Enabled:=true;
  BBt1.Enabled:=true;
  BBt2.Enabled:=true;
  BBt3.Enabled:=true;
  BBt4.Enabled:=true;
  BBt5.Enabled:=true;
  BBt6.Enabled:=true;
end;

procedure TMaterialArea.BB4Click(Sender: TObject);
begin
  MatArea.RequestLive:=true;
  MatArea.CachedUpdates:=true;
  MatArea.Edit;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaterialArea.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    MatArea.First;
    for i:=1 to MatArea.RecordCount do
    begin
      if MatArea.updatestatus=usmodified then
        begin
          if not MatArea.FieldByName('oldCLBH').isnull     then
          begin
            UPMatArea.apply(ukmodify);
          end else
          begin
            MatArea.edit;
            MatArea.fieldbyname('CLBH').Value:=MatArea.fieldbyname('CLDH').value;
            {
            //20220820 億春先不用設預設
            if ((Copy(MatArea.fieldbyname('CLBH').AsString,1,1)='X') or (Copy(MatArea.fieldbyname('CLBH').AsString,1,1)='Y')
                or (Copy(MatArea.fieldbyname('CLBH').AsString,1,1)='Z') or (Copy(MatArea.fieldbyname('CLBH').AsString,1,1)='V') ) then
            begin
              if (Copy(MatArea.fieldbyname('CLBH').AsString,1,2)='V9') then //開發樣品臨時料號
              begin
                MatArea.fieldbyname('CWBH').Value:='152';
              end else
              begin
                MatArea.fieldbyname('CWBH').Value:='153';
              end;
            end else
            begin
              MatArea.fieldbyname('CWBH').Value:='152';
            end;
            }
            MatArea.fieldbyname('USERDATE2').Value:=date;
            MatArea.fieldbyname('USERID2').Value:=main.edit1.text;
            MatArea.fieldbyname('USERDATE').Value:=date;
            MatArea.fieldbyname('USERID').Value:=main.edit1.text;
            MatArea.fieldbyname('YN').Value:='1';
            UPMatArea.apply(ukinsert);
          end;
        end;
      MatArea.next;
    end;
    MatArea.active:=false;
    MatArea.requestlive:=false;
    MatArea.cachedupdates:=false;
    MatArea.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    showmessage('Succeed');
  except
    showmessage('have wrong');
  end;

end;

procedure TMaterialArea.BB6Click(Sender: TObject);
begin
  MatArea.active:=false;
  MatArea.requestlive:=false;
  MatArea.cachedupdates:=false;
  MatArea.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TMaterialArea.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TMaterialArea.BBT1Click(Sender: TObject);
begin
  MatArea.first;
end;

procedure TMaterialArea.BBT2Click(Sender: TObject);
begin
  MatArea.prior;
end;

procedure TMaterialArea.BBT3Click(Sender: TObject);
begin
MatArea.next;
end;

procedure TMaterialArea.BBT4Click(Sender: TObject);
begin
  MatArea.last;
end;

procedure TMaterialArea.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if MatArea.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   8   do
        begin
          eclApp.Cells(1,i+1):=MatArea.fields[i].FieldName;
        end;

        MatArea.First;
        j:=2;
        while   not   MatArea.Eof   do
        begin
          for   i:=0   to   8   do
          begin
            eclApp.Cells(j,i+1):=MatArea.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          MatArea.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TMaterialArea.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TMaterialArea.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TMaterialArea.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TMaterialArea.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TMaterialArea.FormDestroy(Sender: TObject);
begin
  MaterialArea:=nil;
end;

procedure TMaterialArea.DBGridEh1CellClick(Column: TColumnEh);
begin
  if MatArea.requestlive then
  begin
     if DBGridEh1.Selectedindex=3  then
     begin
         DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
     end;
  end else
  begin
      DBGridEh1.columns[3].ButtonStyle:=cbsnone;
  end;
end;

procedure TMaterialArea.DBGridEh1EditButtonClick(Sender: TObject);
begin
  MatArea_KC:=TMatArea_KC.create(self);
  MatArea_KC.show;
end;

procedure TMaterialArea.N1Click(Sender: TObject);
var CKBH,KCBH,KCMC:String;
begin
  CKBH:=MatArea.FieldByName('CKBH').AsString;
  KCBH:=MatArea.FieldByName('KCBH').AsString;
  KCMC:=MatArea.FieldByName('KCMC').AsString;
  while not MatArea.Eof do
  begin
    MatArea.Edit;
    MatArea.FieldByName('CKBH').Value:=CKBH;
    MatArea.FieldByName('KCBH').Value:=KCBH;
    MatArea.FieldByName('KCMC').Value:=KCMC;
    MatArea.Post;
    MatArea.Next;
  end;
end;

end.
