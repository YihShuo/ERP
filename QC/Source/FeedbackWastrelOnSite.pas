unit FeedbackWastrelOnSite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables;

type
  TFmFeedbackWastrelOnSite = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit7: TEdit;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    QTemp: TQuery;
    Button5: TButton;
    Query4: TQuery;
    Button6: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure CustomButtonClick(Sender: TObject);
    procedure AddCounter(TYYBH : string; PorMOne : integer);
  public
    { Public declarations }
  end;

var
  FmFeedbackWastrelOnSite: TFmFeedbackWastrelOnSite;
  FixedComponentCount : Integer;
  TDFL,TupdateUser : string;
  PEdit,TPorMOne : integer;

implementation

uses QCOnTime_Dep1, QCOnTime_XH1,main1;

{$R *.dfm}

procedure TFmFeedbackWastrelOnSite.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TFmFeedbackWastrelOnSite.FormDestroy(Sender: TObject);
begin
  FmFeedbackWastrelOnSite := nil;
end;

procedure TFmFeedbackWastrelOnSite.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TFmFeedbackWastrelOnSite.FormCreate(Sender: TObject);
var
  dpid:string;
begin
  DateTimePicker1.DateTime := now;
  FixedComponentCount := 0;
  edit1.Text := '01';
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from scsj Where XH = '+''''+'01'+'''');
    active:=true;
    if not eof then
    begin
      Edit2.Text := fieldbyname('FTime').value +'-'+ fieldbyname('TTime').value;
      Edit3.Text := fieldbyname('YXGS').value ;
    end;
    active:=false;
    sql.Clear;
    sql.add('select * from busers Where userid = '+''''+main.Edit1.Text+'''');
    active:=true;
    if not eof then
    begin
      if  fieldbyname('Depid').value = null then
        dpid := ''
      else
        dpid := fieldbyname('Depid').value ;
      edit4.Text := dpid ;
    end;
    active:=false;
    sql.Clear;
    sql.add('select * from BDepartment Where id = '+''''+dpid+''''+' and gsbh = '+''''+main.Edit2.Text+'''');
    active:=true;
    if not eof then
      edit5.Text := fieldbyname('DepName').value ;
    active:=false;
  end;
  PEdit := 0;
end;

procedure TFmFeedbackWastrelOnSite.BitBtn1Click(Sender: TObject);
begin
  QCOnTime_XH:=TQCOnTime_XH.create(self);
  QCOnTime_XH.Label3.Caption := 'SN54';
  QCOnTime_XH.show;
end;

procedure TFmFeedbackWastrelOnSite.BitBtn2Click(Sender: TObject);
begin
    QCOnTime_Dep:=TQCOnTime_Dep.create(self);
    QCOnTime_Dep.Label3.Caption := 'SN54';
    QCOnTime_Dep.show;
end;

procedure TFmFeedbackWastrelOnSite.Button4Click(Sender: TObject);
var
  strList: TStringList;
  i,CCC : integer;
  ia : array [1..30] of TButton;
  ib : array [1..30] of TEdit;
begin
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
        Components[FixedComponentCount].Destroy;
  strList := TStringList.Create;
  strList.Add('LY_G-');
  strList.Add('LY_M-');
  strList.Add('LY_IN');
  strList.Add('LY_TH');
  strList.Add('LY_EP');
  case strList.IndexOf(copy(edit5.Text,1,5)) of
    0 :
      TDFL := 'A';
    1 :
      TDFL := 'S';
    2 :
      TDFL := 'O';
    3 :
      TDFL := 'O';
    4 :
      TDFL := 'O';
    else
    begin
      showmessage('Wrong department!');
      exit;
    end;
  end;
  if edit2.Text = '' then
  begin
    showmessage('Wrong duty time!');
    exit;
  end;
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from QCBB Where SCDATE = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
    sql.add(' and SJXH = '+#39+Edit1.Text+#39);
    sql.add(' and DepNo = '+#39+Edit4.Text+#39);
    sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
    active:=true;
  end;
  if query2.RecordCount > 0 then
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from QCBBS Where ProNo = '+''''+query2.Fields.Fields[0].AsString+'''');
      active:=true;
      edit7.Text := query2.fieldbyname('INSPECTQTY').Value;
    end
  else
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from QCBBS Where ProNo = '+#39+'0000000000'+#39);
      active:=true;
    end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YYBH,YWSM from QCBLYY Where DFL = '+''''+TDFL+''''+' order by YYBH');
    active:=true;
    for i:=1 to recordcount do
    begin
      ia[i] := TButton.Create(self);
      with ia[i] do
      begin
        Caption := fieldbyname('YYBH').asstring + ' : '+fieldbyname('YWSM').asstring;
        Top := i * 30 + 60;
        Left := 10;
        Width := 700;
        OnClick := CustomButtonClick;       // 指定button click事件
        Parent := self;
        Enabled := false;
      end;
      ib[i] := TEdit.Create(Self);
      with ib[i] do
      begin
        query3.Filtered := false;
        query3.Filter := 'SCBH = '+#39+fieldbyname('YYBH').asstring+#39;
        query3.Filtered := true;
        if not query3.Eof then
           Text := query3.Fields.Fields[3].AsString
        else
          Text := '0';
        Name := fieldbyname('YYBH').asstring;
        Font.Size := 12;
        Width := 40;
        Top := i * 30 + 60;
        Left := 720;
        ReadOnly := true;
        Parent := self;
      end;
      next;
    end;
    active:=false;
  end;
  query3.Filtered := false;
  button1.Visible := true;
  button6.Visible := true;
  button5.Visible := true;
  Button2.Visible := true;
  Edit6.Visible := true;
end;

procedure TFmFeedbackWastrelOnSite.FormActivate(Sender: TObject);
begin
  if FixedComponentCount = 0 then
    FixedComponentCount := self.ComponentCount;
end;

procedure TFmFeedbackWastrelOnSite.CustomButtonClick(Sender: TObject);
var
  Tyybh : string;
begin
  Tyybh := Copy(TButton(Sender).Caption,1,3);
  AddCounter(TYYBH,TPorMOne);
end;

procedure TFmFeedbackWastrelOnSite.Button1Click(Sender: TObject);
var
  i,ccc : integer;
  Tprono : string;
begin
  if formatdatetime('yyyy/MM/dd',datetimepicker1.Date) = formatdatetime('yyyy/MM/dd',now) then
  begin
  if query2.RecordCount = 0 then
  begin
    with QTemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select ProNO from QCBB order by ProNO Desc ');
      active:=true;
      if recordcount>0 then
      begin
        Tprono:='000000000'+inttostr(strtoint(fieldbyname('ProNO').Value)+1);
        Tprono:=copy(Tprono,length(Tprono)-9,10)
      end
      else
        Tprono:='0000000001';
    end;
    try
      with query2 do
      begin
        sql.Clear;
        sql.Add('insert into QCBB (ProNo, SCDate, SJXH, DepNo, GSBH,INSPECTQTY ,USERID, USERDATE, YN)' ) ;
        sql.add(' values ('+#39+Tprono+#39+','+#39+Formatdatetime('YYYY/MM/DD',DateTimePicker1.Date)+#39+','+#39+Edit1.Text+#39+','+#39+Edit4.Text+#39+','+#39+main.Edit2.Text+#39+',0,'+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+','+#39+'1'+#39+')');
        execsql;
        active:=false;
        sql.Clear;
        sql.add('select * from QCBB Where SCDATE = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
        sql.add(' and SJXH = '+#39+Edit1.Text+#39);
        sql.add(' and DepNo = '+#39+Edit4.Text+#39);
        sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
        active:=true;
      end;
    except
      Messagedlg('Server is too busy , Please try again!',mtwarning,[mbyes],0);
    end;
  end;
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
      if Components[i-1] is TButton then
        TButton(Components[i-1]).Enabled := true;
  button4.Visible := false;
  datetimepicker1.Enabled := false;
  bitbtn1.Enabled := false;
  bitbtn2.Enabled := false;
  Button2.Visible := false;
  Edit6.Visible := false;
  keypreview := true;
  TPorMOne := 1;
  end
  else
    showmessage('It is not today'+#39+'s data');
end;

procedure TFmFeedbackWastrelOnSite.Edit4Change(Sender: TObject);
begin
  Button1.Visible := false;
  Button6.Visible := false;
  Button5.Visible := false;
  Button2.Visible := false;
  Edit6.Visible := false;
end;

procedure TFmFeedbackWastrelOnSite.Edit1Change(Sender: TObject);
begin
  Button1.Visible := false;
  Button6.Visible := false;
  Button5.Visible := false;
  Button2.Visible := false;
  Edit6.Visible := false;
end;

procedure TFmFeedbackWastrelOnSite.DateTimePicker1Change(Sender: TObject);
begin
  Button1.Visible := false;
  Button6.Visible := false;  
  Button5.Visible := false;
  Button2.Visible := false;
  Edit6.Visible := false;
end;

procedure TFmFeedbackWastrelOnSite.Button5Click(Sender: TObject);
var
  i,ccc : integer;
begin
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
      if Components[i-1] is TButton then
        TButton(Components[i-1]).Enabled := false;
  button4.Visible := true;
  datetimepicker1.Enabled := true;
  bitbtn1.Enabled := true;
  bitbtn2.Enabled := true;
  if Button2.Visible = false then
  begin
    Button2.Visible := true;
    Edit6.Visible := true;
  end
  else
  begin
    Button1.Visible := true;
    Button6.Visible := true;    
  end;
  keypreview := false;
  if PEdit <> 0 then
  begin
    TEDIT(Components[Pedit]).color := clWindow;
    PEdit := 0;
  end;
end;

procedure TFmFeedbackWastrelOnSite.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  Case uppercase(Key)[1] of
    '1' : AddCounter(TDFL+'01',TPorMOne);
    '2' : AddCounter(TDFL+'02',TPorMOne);
    '3' : AddCounter(TDFL+'03',TPorMOne);
    '4' : AddCounter(TDFL+'04',TPorMOne);
    '5' : AddCounter(TDFL+'05',TPorMOne);
    '6' : AddCounter(TDFL+'06',TPorMOne);
    '7' : AddCounter(TDFL+'07',TPorMOne);
    '8' : AddCounter(TDFL+'08',TPorMOne);
    '9' : AddCounter(TDFL+'09',TPorMOne);
    '0' : AddCounter(TDFL+'10',TPorMOne);
    'Q' : AddCounter(TDFL+'11',TPorMOne);
    'W' : AddCounter(TDFL+'12',TPorMOne);
    'E' : AddCounter(TDFL+'13',TPorMOne);
    'R' : AddCounter(TDFL+'14',TPorMOne);
    'T' : AddCounter(TDFL+'15',TPorMOne);
    'Y' : AddCounter(TDFL+'16',TPorMOne);
    'U' : AddCounter(TDFL+'17',TPorMOne);
    'I' : AddCounter(TDFL+'18',TPorMOne);
    'O' : AddCounter(TDFL+'19',TPorMOne);
    'P' : AddCounter(TDFL+'20',TPorMOne);
    'A' : AddCounter(TDFL+'21',TPorMOne);
    'S' : AddCounter(TDFL+'22',TPorMOne);
    'D' : AddCounter(TDFL+'23',TPorMOne);
    'F' : AddCounter(TDFL+'24',TPorMOne);
    'G' : AddCounter(TDFL+'25',TPorMOne);
    'H' : AddCounter(TDFL+'26',TPorMOne);
    'J' : AddCounter(TDFL+'27',TPorMOne);
    'K' : AddCounter(TDFL+'28',TPorMOne);
    'L' : AddCounter(TDFL+'29',TPorMOne);
    ';' : AddCounter(TDFL+'30',TPorMOne);
  End;
end;

procedure TFmFeedbackWastrelOnSite.AddCounter(TYYBH : string; PorMOne : integer);
var
  i,ccc,Tc : integer;
  Tprono,Tuser : string;
begin
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
    begin
      if Components[i-1] is TEdit then
        if TEDIT(Components[i-1]).Name = Tyybh then
        begin
          if PEdit <> 0 then
            TEDIT(Components[Pedit]).color := clWindow;
          PEdit := i-1;
          if PorMOne = 1 then
            TEDIT(Components[PEdit]).color := clYellow
          else
            TEDIT(Components[PEdit]).color := clRed;
          TEdit(Components[PEdit]).text := inttostr(strtoint(TEdit(Components[PEdit]).text) + PorMone);
          if strtoint(TEdit(Components[PEdit]).text) < 0 then
            TEdit(Components[PEdit]).text := '0';
          Tprono := query2.Fields.Fields[0].AsString;
          if PorMOne > 0 then
            Tuser:=main.Edit1.Text
          else
            TUser:=TupdateUser;
          with query4 do
          begin
            sql.Clear;
            sql.Add('insert into QClog (ProNo, SCBH, QTY ,USERID)' ) ;
            sql.add(' values ('+#39+Tprono+#39+','+#39+TYYBH+#39+','+inttostr(PorMOne)+','+#39+TUser+#39+')');
            execsql;
          end;
          with query3 do
          begin
            Filtered := false;
            Filter := 'SCBH = '+#39+TYYBH+#39;
            Filtered := true;
            if Eof then
              begin
              if strtoint(TEdit(self.components[PEdit]).text) > 0 then
              begin
                sql.Clear;
                sql.Add('insert into QCbbs (ProNo, SCBH, Qty, USERID, USERDATE, YN)' ) ;
                sql.add(' values ('+#39+Tprono+#39+','+#39+TYYBH+#39+',1,'+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+','+#39+'1'+#39+')');
                execsql;
              end;
              end
            else
            begin
              tc := query3.Fields.Fields[3].AsInteger+PorMone;
              if tc < 0 then
                tc:=0;
              sql.Clear;
              sql.Add('update QCbbs set qty = '+inttostr(tc)+', userID = '+ #39+main.Edit1.Text+#39+', Userdate = '+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39) ;
              sql.add(' where Prono = '+#39+Tprono+#39+' and SCBH = '+#39+TYYBH+#39);
              execsql;
            end;
            sql.Clear;
            sql.add('select * from QCBBS Where ProNo = '+#39+Tprono+#39);
            active:=true;
          end;
          exit;
        end;
    end;
end;

procedure TFmFeedbackWastrelOnSite.Button2Click(Sender: TObject);
var
  i,ccc : integer;
  TUserID : String;
begin
  if (formatdatetime('yyyy/MM/dd',datetimepicker1.Date) = formatdatetime('yyyy/MM/dd',now)) then
  if (query2.RecordCount > 0) and (query3.RecordCount > 0) then
  begin
    with QTemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select userid from BUsers where PWD = '+#39+uppercase(Edit6.Text)+#39);
      active:=true;
    End;
    if QTemp.RecordCount > 0 then
    begin
      TUserID := QTemp.Fields.Fields[0].AsString;
      with QTemp do
      begin
        active:=false;
        sql.Clear;
        sql.add('select * from BLimits where GSBH = '+#39+'LYV'+#39+' and MKID = '+#39+'03'+#39+' and FormID = '+#39+'SN52'+#39);
        sql.add(' and USERID = '+#39+TUSERID+#39);
        active:=true;
      End;
      if QTemp.RecordCount > 0 then
      begin
        TupdateUser := TuserID;
        CCC := self.ComponentCount;
        if CCC > FixedComponentCount then
          for i := FixedComponentCount+1 to CCC do
            if Components[i-1] is TButton then
              TButton(Components[i-1]).Enabled := true;
        button4.Visible := false;
        datetimepicker1.Enabled := false;
        bitbtn1.Enabled := false;
        bitbtn2.Enabled := false;
        Button1.Visible := false;
        Button6.Visible := false;
        keypreview := true;
        TPorMOne := -1;
      end
      else
        showmessage('Not Authorized!');
    end
    else
      showmessage('Wrong password!');
  end
  else
    showmessage('There is no data to update!')
  else
    showmessage('It is not today'+#39+'s data');
  Edit6.Text := '';
end;

procedure TFmFeedbackWastrelOnSite.Button6Click(Sender: TObject);
begin
if query2.RecordCount > 0 then
if (formatdatetime('yyyy/MM/dd',datetimepicker1.Date) = formatdatetime('yyyy/MM/dd',now)) then
begin
  edit7.Text := inputbox('Inspected Qty','Inspected Qty:', edit7.Text);
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('update QCBB set inspectqty = '+''''+edit7.Text+'''');
    sql.add(' Where SCDATE = '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
    sql.add(' and SJXH = '+''''+edit1.Text+'''');
    sql.add(' and DEPNO = '+''''+edit4.Text+'''');
    sql.add(' and GSBH = '+''''+main.Edit2.Text+'''');
    ExecSQL;
  end;
end
else
    showmessage('It is not today'+#39+'s data')
else
    showmessage('Please Press [Start] first');
end;

end.
