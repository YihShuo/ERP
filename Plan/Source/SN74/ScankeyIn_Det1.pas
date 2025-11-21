unit ScankeyIn_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, ComCtrls, GridsEh, DBGridEh,
  Spin;

type
  TScankeyIn_Det = class(TForm)
    SMDDSS: TQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    SMDDSSUSERDate: TDateTimeField;
    SMDDSSUSERID: TStringField;
    SMDDSSYN: TStringField;
    UpdateSQL1: TUpdateSQL;
    Label3: TLabel;
    CBX3: TComboBox;
    Qtemp: TQuery;
    SMDDSSArticle: TStringField;
    SMDDSSXieMing: TStringField;
    SMDDSSokQty: TIntegerField;
    SMDDSSTotQty: TIntegerField;
    SMDDSSOther: TQuery;
    SMDDSSOtherDDBH: TStringField;
    SMDDSSOtherokQty: TIntegerField;
    SMDDSSOtherGXLB: TStringField;
    Label4: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Label7: TLabel;
    Label9: TLabel;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    CB5: TCheckBox;
    Button2: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    SpinEdit1: TSpinEdit;
    Label6: TLabel;
    RB1: TCheckBox;
    RB2: TCheckBox;
    SMDDSSDepName: TStringField;
    SMDDSSDepNO: TStringField;
    Label10: TLabel;
    RB3: TCheckBox;
    DTP3: TDateTimePicker;
    Label11: TLabel;
    DTP4: TDateTimePicker;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure SMDDSSCalcFields(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure InitCombo();
    procedure MultiSelect2SMZL(IsInput:boolean;TotalQty:integer);

  public
    { Public declarations }
  end;

var
  ScankeyIn_Det: TScankeyIn_Det;
  NDate:TDate;

implementation

uses ScankeyIn1, main1, FunUnit;

{$R *.dfm}

procedure TScankeyIn_Det.FormDestroy(Sender: TObject);
begin
  ScankeyIn_Det:=nil;
end;

procedure TScankeyIn_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScankeyIn_Det.Button1Click(Sender: TObject);
begin
  if ((RB1.Checked=false) and (RB2.Checked=false) and (RB3.Checked=false)) then
  begin
    if length(edit1.Text)<7 then
    begin
      showmessage('Pls key in order no first.');
      abort;
    end;
  end;
  //穝琩高惠睲既
  with ScankeyIn.SMZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    cachedupdates:=true;
    requestlive:=true;
  end;
  //
  with SMDDSS do
  begin
    active:=false;
    sql.clear;
    sql.add('select SMDDSS.*,SMDD.Article,SMDD.XieMing,BDepartment.DepName,SMDD.DepNO ');
    sql.add('from SMDDSS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    sql.add('left join BDepartment on BDepartment.ID=SMDD.DepNO ');
    sql.add('where SMDDSS.DDBH like '+''''+edit1.text+'%'+'''');
    //sql.add('      and Bdepartment.DepName like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and SMDD.GSBH='+''''+main.Edit2.Text+'''');
    if RB1.Checked=true then
    begin
      sql.add('      and SMDD.SCYEAR='+''''+CBX1.Text+'''');
      sql.add('      and SMDD.SCMONTH='+''''+CBX2.Text+'''');
    end;
    sql.add('      and SMDDSS.XXCC like '''+Edit3.Text+'%'' ');
    if RB2.Checked=true then
    begin
      sql.add('and SMDD.planDate between ');
      sql.add('Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''')'+ ' and '+'Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date+1)+''')');
    end;
    //
    if RB3.Checked=true then
    begin
      sql.add('and SMDDSS.UserDate between ');
      sql.add('Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''')'+ ' and '+'Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date+1)+''')');
    end;
    //
    sql.add('      and SMDDSS.GXLB='+''''+CBX3.Text+'''');
    if CB5.Checked=true then
      sql.add('and okCTS<CTS ');
    sql.Add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH ');
    active:=true;
    //showmessage(sql.Text);
  end;

end;

//陪ボら戳
procedure TScankeyIn_Det.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  //
  DTP1.Date:=NDate;
  DTP2.Date:=NDate;
  DTP3.Date:=NDate;
  DTP4.Date:=NDate;
end;

procedure TScankeyIn_Det.FormCreate(Sender: TObject);
var i,index:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY where GX not in (''C'',''S'',''A'')   order by GX');
    active:=true;
    index:=0;
    for i:=1 to recordcount do
    begin
      CBX3.Items.Add(fieldbyname('GX').asstring);
      if ScankeyIn.DepGXLB=fieldbyname('GX').asstring
        then index:=i;
      if 'B'=fieldbyname('GX').asstring
        then index:=i;
      next;
    end;
    CBX3.ItemIndex:=index;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  InitCombo();                                  
end;
//
procedure TScankeyIn_Det.MultiSelect2SMZL(IsInput:boolean;TotalQty:integer);
var PNum:string;
    Q:word;
    iRes:boolean;
begin
  if not SMDDSS.active then
  begin
    showmessage('No data .');
    abort;
  end;
  if SMDDSS.recordcount=0 then
  begin
    showmessage('No data .');
    abort;
  end;

  if SMDDSS.FieldByName('Article').Isnull then
  begin
    showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
    abort;
  end;
  if IsInput=true then
  begin
    PNum:=inttostr(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value);
    if InputQuery('Key in Qty.','Packages:',PNum)=true then
      iRes:=true
    else
      iRes:=false;
    //PNum:=inputbox('Key in Qty.','Packages:',inttostr(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value));
  end else
  begin
    iRes:=true;
    if TotalQty<=0 then
    begin
      PNum:=inttostr(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value);
    end else
    begin
      PNum:=inttostr(TotalQty);
    end;
  end;
  //
  if iRes=true then
  begin
    try
      Q:=strtoint(PNum);
    except
      messagedlg('Packages is not right.',mterror,[mbOK],0);
      abort;
    end;
    if Q>0 then
    begin
      if Q>(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value) then
      begin
        showmessage('More then the Qty of order.'+#13+'禬筁璹虫计秖');
        abort;
      end;
      {
      with SMDDSSOther do
      begin
        active:=true;
        if recordcount>0 then
          begin
            if (Q*SMDDSS.FieldByName('Qty').value)>(fieldbyname('okQty').Value-SMDDSS.FieldByName('okQty').value) then
              begin
                showmessage('The Qty is not enough.'+#13+'玡琿ЧΘ计秖ぃì计秖.');
                abort;
              end;
          end;
        active:=false;
      end;  }

      with ScanKeyIn.SMZL do
      begin
        insert ;
        fieldbyname('DDBH').value:=SMDDSS.FieldByName('DDBH').Value;
        fieldbyname('GXLB').value:=SMDDSS.FieldByName('GXLB').Value;
        fieldbyname('XXCC').value:=SMDDSS.FieldByName('XXCC').Value;
        fieldbyname('XH').value:=SMDDSS.FieldByName('XH').Value;
        fieldbyname('Qty').value:=SMDDSS.FieldByName('Qty').Value;
        fieldbyname('CODEBAR').value:=SMDDSS.FieldByName('CODEBAR').Value;
        fieldbyname('CTS').value:=Q;
        fieldbyname('DepNO').value:=ScankeyIn.DepID;
        fieldbyname('DepName').value:=ScanKeyIn.edit1.text;
        fieldbyname('ScanDate').value:=NDate;
        fieldbyname('USERID').value:=main.edit1.text;
        fieldbyname('USERDATE').value:=NDate;
        fieldbyname('YN').value:='2';
        post;
      end;
      with SMDDSS do
      begin
        edit;
        fieldbyname('okCTS').Value:= fieldbyname('okCTS').Value+Q;
        post;
      end;
    end;
  end;

end;
//
procedure TScankeyIn_Det.DBGridEh1DblClick(Sender: TObject);
begin
  MultiSelect2SMZL(true,-1);
end;

procedure TScankeyIn_Det.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrideh1dblclick(nil);
end;

procedure TScankeyIn_Det.SMDDSSCalcFields(DataSet: TDataSet);
begin
  with SMDDSS do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value ;
    fieldbyname('okQty').Value:=fieldbyname('Qty').Value*fieldbyname('okCTS').Value ;
  end;

end;

procedure TScankeyIn_Det.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMDDSS.FieldByName('okQty').value=SMDDSS.FieldByName('TotQty').value then
  DBGrideh1.canvas.font.Color:=clred;
end;



procedure TScankeyIn_Det.Button2Click(Sender: TObject);
var bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    TotalQty,CTS,i:integer;
begin
  if SMDDSS.Active=false then exit;
  //﹚羆计秖======
  TotalQty:=0;
  if SpinEdit1.Value>0 then
  begin
    SMDDSS.First;
    DBGridEh1.SelectedRows.Clear;
    for i:=0 to SMDDSS.RecordCount-1 do
    begin
      if (SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value)>0 then
      begin
        TotalQty:=TotalQty+(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value);
        DBGridEh1.SelectedRows.CurrentRowSelected:= true;
      end;
      //
      if TotalQty<SpinEdit1.Value   then
      begin
        SMDDSS.Next;
      end else
      begin
        break;
      end;
    end;
    TotalQty:=SpinEdit1.Value;
  end;
  //﹚羆计秖======
  SMDDSS.disablecontrols;
  bm:=SMDDSS.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  //
  if bookmarklist.count=0 then DBGridEh1.SelectedRows.CurrentRowSelected:= true;
  if bookmarklist.count>0 then
  begin
    try
      if TotalQty=0 then
      begin
        for i:=0 to bookmarklist.count-1 do
        begin
          SMDDSS.gotobookmark(pointer(bookmarklist[i]));
          MultiSelect2SMZL(false,-1);
        end;
      end else  //﹚羆计秖======
      begin
        for i:=0 to bookmarklist.count-1 do
        begin
          SMDDSS.gotobookmark(pointer(bookmarklist[i]));
          if (TotalQty -(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value)>=0) then
            CTS:=SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value
          else
            CTS:=TotalQty;
          MultiSelect2SMZL(false,CTS);
          TotalQty:=TotalQty -CTS;
          if TotalQty<=0 then break;
        end;
      end;
    finally
      begin
        SMDDSS.gotobookmark(bm);
        SMDDSS.freebookmark(bm);
        SMDDSS.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end else
  begin
    SMDDSS.gotobookmark(bm);
    SMDDSS.freebookmark(bm);
    SMDDSS.enablecontrols;
  end;
  //
end;

procedure TScankeyIn_Det.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
