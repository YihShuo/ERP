unit ScanIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
  Grids, DBGrids, Spin;

type
  TScanIn = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Timer1: TTimer;
    SMZL: TQuery;
    DS1: TDataSource;
    UpSMZL: TUpdateSQL;
    SMZLCODEBAR: TStringField;
    SMZLCTS: TIntegerField;
    SMZLDepNO: TStringField;
    SMZLUSERDATE: TDateTimeField;
    SMZLUSERID: TStringField;
    SMZLDepName: TStringField;
    SMZLDDBH: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLXH: TStringField;
    SMZLQty: TIntegerField;
    SMZLoldCTS: TIntegerField;
    SMZLTotQty: TIntegerField;
    DBGridEh1: TDBGridEh;
    SMDDSS: TQuery;
    SMDDSS2: TQuery;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    DS2: TDataSource;
    Qtemp: TQuery;
    Button2: TButton;
    Button3: TButton;
    SMDDSS2DDBH: TStringField;
    SMDDSS2GXLB: TStringField;
    SMDDSS2XXCC: TStringField;
    SMDDSS2LackQty: TIntegerField;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoGSBH: TStringField;
    DepNoDepName: TStringField;
    DepNoDepMemo: TStringField;
    SMDDSSYSBH: TStringField;
    Timer2: TTimer;
    SMDDSS2okqty: TIntegerField;
    DepNoGXLB: TStringField;
    SMDDSSDepGXLB: TStringField;
    DBGridEh2: TDBGridEh;
    UploadCK: TCheckBox;
    UpdSMDDSS: TUpdateSQL;
    SMZLScanDate: TStringField;
    Splitter1: TSplitter;
    UploadBtn: TButton;
    seDate: TSpinEdit;
    Label3: TLabel;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    Qtemp2: TQuery;
    DS3: TDataSource;
    Edit4: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Edit5: TEdit;
    Label5: TLabel;
    Query1: TQuery;
    Qtemp3: TQuery;
    CheckBox1: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SMZLCalcFields(DataSet: TDataSet);
    procedure UploadCKClick(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure seDateChange(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Button1Click(Sender: TObject);
  private
    DepGXLB:string;
    { Private declarations }
    procedure SMDDSS_Init();
    procedure ScanKeyPressVer1(Key: Char);
    procedure ScanKeyPressVer2(Key: Char);
  public
    { Public declarations }
  end;

var
  ScanIn: TScanIn;
  NDate:TDateTime;

implementation

uses ScanIn_Dep1, main1, DateUtils, funUnit, MaKe1;


function LastInput: DWord;
var
  LInput: TLastInputInfo;
begin
  LInput.cbSize := SizeOf(TLastInputInfo);
  GetLastInputInfo(LInput);
  Result := GetTickCount - LInput.dwTime;
end;

{$R *.dfm}

procedure TScanIn.FormDestroy(Sender: TObject);
begin
  ScanIn:=nil;
end;

procedure TScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScanIn.Timer1Timer(Sender: TObject);
begin
  //label3.Caption := Format('¹«¼Ð¤w¦³ %d ¨S¦³¨Ï¥Î', [(LastInput)div 1000]);
  if (LastInput)div 1000 >300 then
  begin
    edit1.Text:='';
    edit2.text:='';
  end;
end;

procedure TScanIn.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  SMZL.Active:=true;
  DepNo.active:=true;
  if SecondsBetween(NDate,Now())>600 then
  begin
    UploadCK.Checked:=false;
    UploadCK.Enabled:=false;
    Showmessage('Thoi gian may tinh khong chinh xac');
  end;
end;

procedure TScanIn.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if UploadCK.Checked=false then
    ScanKeyPressVer1(Key)
  else
    ScanKeyPressVer2(Key);
end;
//
procedure TScanIn.ScanKeyPressVer1(Key: Char);
var NowQty:integer;
begin
  DepNo.active:=true;
  if key=#13 then
  begin
    if DepNo.Locate('ID',copy(edit3.Text,0,10),[]) then
    begin
        edit2.Text:=DepNo.fieldbyname('ID').Value;
        edit1.Text:=DepNo.fieldbyname('DepName').Value;
        edit3.text:='';
        DepGXLB:=DepNo.fieldbyname('GXLB').Value;
        SMDDSS_Init();
        abort;
    end;
    if edit2.text='' then
    begin
        showmessage('Pls select Department first.');
        edit3.Text:='';
        abort;
    end;
    with SMDDSS do
    begin
        active:=false;
        Params.Items[0].AsString :=edit3.text;
        active:=true;
        //20151124 check
        if DepGXLB<>fieldbyname('DepGXLB').AsString then
        begin
          Showmessage('Don vi scan khong giong cong doan scan');
          edit3.Text:='';
          exit;
        end;
        //
        if recordcount>0 then
        begin
            qtemp.Active:=false;
            qtemp.SQL.Clear;
            Qtemp.sql.Add('select smdd.ddbh,SMDDSS.GXLB,sum(SMDDSS.Qty*SMDDSS.okCTS) as okQty ');
            Qtemp.sql.add('from SMDDSS ');
            Qtemp.sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
            Qtemp.sql.add('where SMDDSS.DDBH='''+fieldbyname('DDBH').Value+'''');
            Qtemp.sql.add('      and SMDD.SCCX='''+ fieldbyname('GXLB').Value+'''');
            Qtemp.sql.add('      and SMDDSS.XXCC='''+ fieldbyname('XXCC').Value+'''');
            Qtemp.sql.add('      and smdd.gxlb in (''C'',''S'',''A'',''O'')');
            Qtemp.sql.add('group by smdd.ddbh,SMDDSS.GXLB ');
            //memo1.text:=qtemp.sql.text;
            Qtemp.active:=true;
            if Qtemp.recordcount>0 then
            begin
              Qtemp.active:=false; //Qtemp¥Î©óÀË¬d¬O§_¦³¤W¤@¬yµ{ÁÙ¨S¦³§¹¦¨¥»¬yµ{´N¦b±½´y
              Qtemp.sql.Clear;
              qtemp.SQL.Add('select smdd.ddbh,smdd.ysbh,smddss.xxcc,SMDDSS.GXLB,isnull(sum(SMDDSS.Qty*SMDDSS.okCTS),0) as okQty,isnull((f.okqty),0) as fokqty');
              qtemp.SQL.Add('from Smddss ');
              qtemp.SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
              qtemp.SQL.Add('left join ');
              qtemp.SQL.add('(select k.ddbh,k.gxlb,sum(k.okqty) as okqty from ');
              Qtemp.sql.Add('(select smdd.ddbh,SMDDSS.GXLB,sum(SMDDSS.Qty*SMDDSS.okCTS) as okQty');
              Qtemp.sql.add('from SMDDSS ');
              Qtemp.sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
              Qtemp.sql.add('where SMDDSS.DDBH='''+fieldbyname('DDBH').Value+'''');
              Qtemp.sql.add('      and SMDD.SCCX='''+ fieldbyname('GXLB').Value+'''');
              Qtemp.sql.add('      and SMDDSS.XXCC='''+ fieldbyname('XXCC').Value+'''');
              Qtemp.sql.add('      and smdd.gxlb in (''C'',''S'',''A'')');
              Qtemp.sql.add(' group by smdd.ddbh,SMDDSS.GXLB,smdd.sccx) as k group by k.ddbh,k.gxlb)');
              qtemp.SQL.Add(' as f on f.ddbh=smdd.ddbh  ');

              Qtemp.sql.add('where SMDDSS.DDBH='''+fieldbyname('DDBH').Value+'''');
              Qtemp.sql.add('      and SMDD.GXLB='''+ fieldbyname('GXLB').Value+'''');
              Qtemp.sql.add('      and SMDDSS.XXCC='''+ fieldbyname('XXCC').Value+'''');
              Qtemp.sql.add('group by  smdd.ddbh,smdd.ysbh,smddss.xxcc,SMDDSS.GXLB,f.okqty');
              //memo1.Text:=qtemp.sql.Text;
              Qtemp.active:=true;
              if Qtemp.recordcount>0 then
                NowQty:=Qtemp.fieldbyname('fokqty').value-Qtemp.fieldbyname('okQty').value;
            end else
                NowQty:=10000;

            if (NowQty<fieldbyname('Qty').Value) and ((qtemp.fieldbyname('gxlb').Value<>'C') and (qtemp.fieldbyname('gxlb').Value<>'Z') and (qtemp.fieldbyname('gxlb').Value<>'O')) then
            begin
                showmessage('No enough Qty for Scan.');
                edit3.Text:='';
            end else
            begin
              SMDDSS2.Active:=true;    //SMDDSS2¥Î©óÀË¬d¦Û¤wªº¼Æ¶q¬O§_¦³¶W¹L¡A¤£¯à¶W¹L¥»½ü¦¸ªº¸¹½XÁ`¼Æ¶q
              if SMDDSS2.fieldbyname('LackQty').value>=SMDDSS.FieldByName('Qty').value then
              begin
                {¥[¤J§À¼Æ¼ÐÀË¬d billweng 2012/11/9 }
                if not((smddss.FieldByName('xh').Value=2) and (smddss.FieldByName('okcts').Value>=1)) then
                begin
                  if SMZL.Locate('CODEBAR',edit3.text,[]) then
                  begin
                    SMZL.Edit;
                    SMZL.FieldByName('CTS').Value:=SMZL.FieldByName('CTS').Value+1;
                    SMZL.Post;
                  end else
                  begin
                    SMZL.Insert;
                    SMZL.fieldbyname('DDBH').value:=SMDDSS.FieldByName('DDBH').Value;
                    SMZL.fieldbyname('GXLB').value:=SMDDSS.FieldByName('GXLB').Value;
                    SMZL.fieldbyname('XXCC').value:=SMDDSS.FieldByName('XXCC').Value;
                    SMZL.fieldbyname('XH').value:=SMDDSS.FieldByName('XH').Value;
                    SMZL.fieldbyname('Qty').value:=SMDDSS.FieldByName('Qty').Value;
                    SMZL.fieldbyname('CODEBAR').value:=SMDDSS.FieldByName('CODEBAR').Value;
                    SMZL.fieldbyname('CTS').value:=1;
                    SMZL.fieldbyname('DepNO').value:=edit2.text;
                    SMZL.fieldbyname('DepName').value:=edit1.text;
                    SMZL.fieldbyname('ScanDate').value:=FormatDatetime('YYYY-MM-DD HH:NN:SS',NDate);
                    SMZL.fieldbyname('USERID').value:=main.edit1.text;
                    SMZL.fieldbyname('USERDATE').value:=FormatDatetime('YYYY-MM-DD HH:NN:SS',NDate);
                    SMZL.post;
                  end;
                  Qtemp.active:=false;
                  Qtemp.sql.Clear;
                  ////////////////// YS
                  if (CheckBox1.Checked) and (edit4.Text='') then
                    begin
                    ShowMessage('Vat tu de vui long nhap ma ke');
                    abort;
                    end;
                  //===============
                  Qtemp.sql.Add('insert into SMZL ');
                  Qtemp.sql.add('(CODEBAR, CTS, DepNO, ScanDate, USERDATE, USERID, YN,SB) ');
                  Qtemp.sql.add('values('''+edit3.Text+''',1,');
                  Qtemp.sql.add('          '''+edit2.Text+''',getdate(),getdate(),' );
                  Qtemp.sql.add('          '''+main.edit1.Text+''','+'''1'''+',null)');
                  Qtemp.sql.add('update SMDDSS ');
                  Qtemp.sql.add('set okCTS=okCTS+1');
                  Qtemp.sql.add('where DDBH='''+fieldbyname('DDBH').Value+'''');
                  Qtemp.sql.add('      and GXLB='''+ fieldbyname('GXLB').Value+'''');
                  Qtemp.sql.add('      and XXCC='''+ fieldbyname('XXCC').Value+'''');
                  Qtemp.sql.add('      and XH='''+ fieldbyname('XH').Value+'''');
                  /////////////////////
                  if CheckBox1.Checked then
                  begin
                  Qtemp.SQL.Add('INSERT INTO SMZL_MAKE (CODEBAR, MA_KE)');
                  Qtemp.SQL.Add('VALUES (''' + SMZL.FieldByName('CODEBAR').AsString + ''', ''' + Edit4.Text + ''')');
                  end;
                  ////////////////////////
                  Qtemp.ExecSQL;
                  edit3.text:='';
                end else
                begin
                  showmessage('More than Order Qty.'+#39+'¶W¹L¤F§À¼Æ¼Æ¶q'+#39+'Don hang du so luong tua');
                  edit3.Text:='';
                end;
              end else
              begin
                showmessage('More than Order Qty.'+#39+'¶W¹L¤F½ü¦¸¼Æ¶q'+#39+'Don hang du so luong tua');
                edit3.Text:='';
              end;
            end;
          end else
          begin
              showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
              edit3.Text:='';
          end;
        active:=false;
    end;
    SMDDSS2.Active:=false;
  end;
  //
end;

//20180913
procedure TScanIn.ScanKeyPressVer2(Key: Char);
var NowQty:integer;
    SCANDate:String;
begin
  DepNo.active:=true;
  if key=#13 then
  begin
    if ((edit2.text='') or (length(edit3.text)<12)) then
    begin
      if DepNo.Locate('ID',copy(edit3.Text,0,10),[]) then
      begin
          edit2.Text:=DepNo.fieldbyname('ID').Value;
          edit1.Text:=DepNo.fieldbyname('DepName').Value;
          edit3.text:='';
          DepGXLB:=DepNo.fieldbyname('GXLB').Value;
          SMDDSS_Init();
          abort;
      end;
    end;
    if edit2.text='' then
    begin
        showmessage('Pls select Department first.');
        edit3.Text:='';
        abort;
    end;
    //Find SMDDSS
    if SMDDSS.Locate('CODEBAR',Edit3.text,[]) then
    begin
      if SMDDSS.FieldByName('okCTS').value<SMDDSS.FieldByName('CTS').value then
      begin
        SCANDate:=FormatDatetime('YYYY/MM/DD hh:nn:00',Now());
        if SMZL.Locate('CODEBAR;ScanDate',VarArrayOf([edit3.text,SCANDate]),[]) then
        begin
          SMZL.Edit;
          SMZL.FieldByName('CTS').Value:=SMZL.FieldByName('CTS').Value+1;
          SMZL.Post;
        end else
        begin
          SMZL.Insert;
          SMZL.fieldbyname('DDBH').value:=SMDDSS.FieldByName('DDBH').Value;
          SMZL.fieldbyname('GXLB').value:=SMDDSS.FieldByName('GXLB').Value;
          SMZL.fieldbyname('XXCC').value:=SMDDSS.FieldByName('XXCC').Value;
          SMZL.fieldbyname('XH').value:=SMDDSS.FieldByName('XH').Value;
          SMZL.fieldbyname('Qty').value:=SMDDSS.FieldByName('Qty').Value;
          SMZL.fieldbyname('CODEBAR').value:=SMDDSS.FieldByName('CODEBAR').Value;
          SMZL.fieldbyname('CTS').value:=1;
          SMZL.fieldbyname('DepNO').value:=edit2.text;
          SMZL.fieldbyname('DepName').value:=edit1.text;
          SMZL.fieldbyname('ScanDate').value:=SCANDate;
          SMZL.fieldbyname('USERID').value:=main.edit1.text;
          SMZL.fieldbyname('USERDATE').value:=SCANDate;
          SMZL.post;
        end;
        //
        SMDDSS.Edit;
        SMDDSS.FieldByName('okCTS').value:=SMDDSS.FieldByName('okCTS').value+1;
        SMDDSS.Post;
        edit3.text:='';
      end else
      begin
        showmessage('More than Order Qty.'+#39+'¶W¹L¤F½ü¦¸¼Æ¶q'+#39+'Don hang du so luong tua');
        edit3.Text:='';
      end;
    end else
    begin
        showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
        edit3.Text:='';
    end;
    //
  end;
end;
//
procedure TScanIn.SMDDSS_Init();
begin
  //
  if UploadCK.Checked=false then
  begin
    //
    with SMDDSS do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select SMDDSS.DDBH,SMDD.YSBH,SMDDSS.GXLB,SMDDSS.XXCC,smdd.ysbh');
      SQL.Add('         ,SMDDSS.XH,SMDDSS.CODEBAR,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS,SCGXDY.DepGXLB');
      SQL.Add('from SMDDSS');
      SQL.Add('left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB');
      SQL.Add('left join SCGXDY on SCGXDY.GXLB=SMDDSS.GXLB');
      SQL.Add('where SMDDSS.CODEBAR=:CODEBAR');
      SQL.Add('         and SMDD.YSBH is not null');
      SQL.Add('order by SMDDSS.DDBH ');
    end;
  end else
  begin
    //
    with SMDDSS do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select SMDDSS.DDBH,SMDD.YSBH,SMDDSS.GXLB,SMDDSS.XXCC,smdd.ysbh ');
      SQL.Add('         ,SMDDSS.XH,SMDDSS.CODEBAR,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS,SCGXDY.DepGXLB ');
      SQL.Add('from SMDDSS ');
      SQL.Add('left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      SQL.Add('left join SCGXDY on SCGXDY.GXLB=SMDDSS.GXLB ');
      SQL.Add('where  SMDDSS.GXLB='''+DepGXLB+''' and SMDD.PlanDate>GetDate()-'+(seDate.Text)+'');
      SQL.Add('       and SMDDSS.okCTS<SMDDSS.CTS  and SMDD.YSBH is not null');
      SQL.Add('order by SMDDSS.DDBH ');
      Active:=true;
    end;
  end;
  //
end;

procedure TScanIn.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TScanIn.Button2Click(Sender: TObject);
begin
  SMZL.Active:=false;
  SMZL.Active:=true;
  SMDDSS_Init();  
end;

procedure TScanIn.SMZLCalcFields(DataSet: TDataSet);
begin
  //
  with SMZL do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value;
  end;
  //
end;

procedure TScanIn.UploadCKClick(Sender: TObject);
begin
  edit2.Text:='';
  edit1.Text:='';
  edit3.text:='';
  DepGXLB:='';
  if UploadCK.Checked=true then
  begin
    UploadBtn.Visible:=true;
    DBGridEh2.Visible:=true;
    DBGridEh1.OptionsEh:=[dghFixed3D,dghHighlightFocus,dghClearSelection,dghDialogFind];
  end else
  begin
    UploadBtn.Visible:=false;
    DBGridEh2.Visible:=false;
    DBGridEh1.OptionsEh:=[dghFixed3D,dghHighlightFocus,dghClearSelection,dghAutoSortMarking,dghMultiSortMarking,dghDialogFind];
  end;
  SMZL.Active:=false;
  SMZL.Active:=true;
  SMDDSS.Active:=false;
end;

procedure TScanIn.UploadBtnClick(Sender: TObject);
var i:integer;
    NowQty,ScanQty,CTS:integer;
begin
  //
  if SMZL.RecordCount>0 then
  begin
    SMZL.First;
    for i:=0 to SMZL.RecordCount-1 do
    begin
      //
      qtemp.Active:=false;
      qtemp.SQL.Clear;
      Qtemp.sql.Add('select smdd.ddbh,SMDDSS.GXLB,sum(SMDDSS.Qty*SMDDSS.okCTS) as okQty ');
      Qtemp.sql.add('from SMDDSS ');
      Qtemp.sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
      Qtemp.sql.add('where SMDDSS.DDBH='''+SMZL.fieldbyname('DDBH').Value+'''');
      Qtemp.sql.add('      and SMDD.SCCX='''+SMZL.fieldbyname('GXLB').Value+'''');
      Qtemp.sql.add('      and SMDDSS.XXCC='''+SMZL.fieldbyname('XXCC').Value+'''');
      Qtemp.sql.add('      and smdd.gxlb in (''C'',''S'',''A'',''O'')');
      Qtemp.sql.add('group by smdd.ddbh,SMDDSS.GXLB ');
      //funcObj.WriteErrorLog(Qtemp.sql.Text);
      Qtemp.active:=true;
      //
      if Qtemp.recordcount>0 then
      begin
        Qtemp.active:=false; //Qtemp¥Î©óÀË¬d¬O§_¦³¤W¤@¬yµ{ÁÙ¨S¦³§¹¦¨¥»¬yµ{´N¦b±½´y
        Qtemp.sql.Clear;
        qtemp.SQL.Add('select smdd.ddbh,smdd.ysbh,smddss.xxcc,SMDDSS.GXLB,isnull(sum(SMDDSS.Qty*SMDDSS.okCTS),0) as okQty,isnull((f.okqty),0) as fokqty');
        qtemp.SQL.Add('from Smddss ');
        qtemp.SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
        qtemp.SQL.Add('left join ');
        qtemp.SQL.add('(select k.ddbh,k.gxlb,sum(k.okqty) as okqty from ');
        Qtemp.sql.Add('(select smdd.ddbh,SMDDSS.GXLB,sum(SMDDSS.Qty*SMDDSS.okCTS) as okQty');
        Qtemp.sql.add('from SMDDSS ');
        Qtemp.sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
        Qtemp.sql.add('where SMDDSS.DDBH='''+SMZL.fieldbyname('DDBH').Value+'''');
        Qtemp.sql.add('      and SMDD.SCCX='''+ SMZL.fieldbyname('GXLB').Value+'''');
        Qtemp.sql.add('      and SMDDSS.XXCC='''+ SMZL.fieldbyname('XXCC').Value+'''');
        Qtemp.sql.add('      and smdd.gxlb in (''C'',''S'',''A'')');
        Qtemp.sql.add(' group by smdd.ddbh,SMDDSS.GXLB,smdd.sccx) as k group by k.ddbh,k.gxlb)');
        qtemp.SQL.Add(' as f on f.ddbh=smdd.ddbh  ');
        Qtemp.sql.add('where SMDDSS.DDBH='''+SMZL.fieldbyname('DDBH').Value+'''');
        Qtemp.sql.add('      and SMDD.GXLB='''+ SMZL.fieldbyname('GXLB').Value+'''');
        Qtemp.sql.add('      and SMDDSS.XXCC='''+ SMZL.fieldbyname('XXCC').Value+'''');
        Qtemp.sql.add('group by  smdd.ddbh,smdd.ysbh,smddss.xxcc,SMDDSS.GXLB,f.okqty');
        //funcObj.WriteErrorLog(Qtemp.sql.Text);
        Qtemp.active:=true;
        if Qtemp.recordcount>0 then
          NowQty:=Qtemp.fieldbyname('fokqty').value-Qtemp.fieldbyname('okQty').value; //©M«e¤@¤u¬q®t²§¼Æ¶q
      end else
          NowQty:=10000;
      //ÀË¬d ¥Ø«e·í¤@±i±½´yQty¬O§_ ¤p «e¤u¬q®t²§¼Æ¶q
      if (NowQty<SMZL.fieldbyname('Qty').Value) and ((qtemp.fieldbyname('gxlb').Value<>'C') and (qtemp.fieldbyname('gxlb').Value<>'Z') and (qtemp.fieldbyname('gxlb').Value<>'O')) then
      begin
          showmessage('No enough Qty for Scan.');
      end else
      begin
        //
        CTS:=SMZL.fieldbyname('CTS').Value;
        ScanQty:=SMZL.fieldbyname('Qty').Value*CTS;
        if ScanQty>NowQty then
        begin
          repeat
            CTS:=CTS-1;
            ScanQty:=SMZL.fieldbyname('Qty').Value*CTS;
          until  (ScanQty<=NowQty) or (CTS<=0);
          //
          showmessage('No enough Qty for Scan.');
        end;
        Qtemp.Active:=false; //SMDDSS2¥Î©óÀË¬d¦Û¤wªº¼Æ¶q¬O§_¦³¶W¹L¡A¤£¯à¶W¹L¥»½ü¦¸ªº¸¹½XÁ`¼Æ¶q
        Qtemp.SQL.Clear;
        Qtemp.SQL.add('Select DDBH,GXLB,XXCC,sum(CTS*Qty)-sum(okCTS*Qty) as LackQty,sum(okcts*qty) as OKqty ');
        Qtemp.SQL.add('from SMDDSS');
        Qtemp.SQL.Add('where DDBH='''+SMZL.fieldbyname('DDBH').Value+''' and GXLB='''+SMZL.fieldbyname('GXLB').Value+''' and XXCC='''+SMZL.fieldbyname('XXCC').Value+''' and XH='''+SMZL.fieldbyname('XH').Value+''' group by DDBH,GXLB,XXCC');
        //funcObj.WriteErrorLog(Qtemp.sql.Text);
        Qtemp.Active:=true;
        if Qtemp.RecordCount>0 then
        begin
          if (SMZL.fieldbyname('Qty').Value*CTS)>Qtemp.FieldByName('LackQty').Value then
          begin
            repeat
              CTS:=CTS-1;
              ScanQty:=SMZL.fieldbyname('Qty').Value*CTS;
            until  (ScanQty<=Qtemp.FieldByName('LackQty').Value) or (CTS<=0);
          end;
        end;
        if CTS>0 then
        begin
          //·s¼W SMZL©M§ó·s SMDDSS
          Qtemp.active:=false;
          Qtemp.sql.Clear;
                  ////////////////// YS
                  if (CheckBox1.Checked) and (edit4.Text='') then
                    begin
                    ShowMessage('Vat tu de vui long nhap ma ke');
                    abort;
                    end;
                  //===============
          Qtemp.sql.Add('insert into SMZL ');
          Qtemp.sql.add('(CODEBAR, CTS, DepNO, ScanDate, USERDATE, USERID, YN,SB) ');
          Qtemp.sql.add('values('''+SMZL.fieldbyname('CODEBAR').Value+''','+inttostr(CTS)+',');
          Qtemp.sql.add('          '''+SMZL.fieldbyname('DepNO').Value+''','''+FormatDatetime('YYYY-MM-DD HH:NN:SS',SMZL.fieldbyname('USERDATE').Value)+''','''+FormatDatetime('YYYY-MM-DD HH:NN:SS',SMZL.fieldbyname('USERDATE').Value)+''',' );
          Qtemp.sql.add('          '''+main.edit1.Text+''','+'''1'''+',null)');
          Qtemp.sql.add('update SMDDSS ');
          Qtemp.sql.add('set okCTS=okCTS+'+inttostr(CTS)+', ScanSDate=case when ScanSDate is null then GETDATE() else ScanSDate end, ScanEDate=GETDATE() ');
          Qtemp.sql.add('where DDBH='''+SMZL.fieldbyname('DDBH').Value+'''');
          Qtemp.sql.add('      and GXLB='''+ SMZL.fieldbyname('GXLB').Value+'''');
          Qtemp.sql.add('      and XXCC='''+ SMZL.fieldbyname('XXCC').Value+'''');
          Qtemp.sql.add('      and XH='''+ SMZL.fieldbyname('XH').Value+'''');
          Qtemp.ExecSQL;
          //////////////////////////////////////////////
          if CheckBox1.Checked then
          begin
          Qtemp3.SQL.Clear;
              Qtemp3.SQL.Add('SELECT COUNT(*) AS CNT FROM SMZL_MAKE WHERE CODEBAR = ''' +
              SMZL.FieldByName('CODEBAR').AsString + ''' AND MA_KE = ''' +
              Edit4.Text + '''');
          Qtemp3.Open;

            if Qtemp3.FieldByName('CNT').AsInteger = 0 then
              begin
              // D? li?u chua t?n t?i ? INSERT
              Qtemp3.SQL.Clear;
              Qtemp3.SQL.Add('INSERT INTO SMZL_MAKE (CODEBAR, MA_KE, QtyIn, QtyOut) VALUES (' +
                '''' + SMZL.FieldByName('CODEBAR').AsString + ''', ' +
                '''' + Edit4.Text + ''', ' + IntToStr(StrToInt(SMZL.FieldByName('Qty').AsString) * CTS) + ', 0)');
              end
            else
              begin
               // D? li?u dã t?n t?i ? UPDATE
              Qtemp3.SQL.Clear;
              Qtemp3.SQL.Add('UPDATE SMZL_MAKE SET QtyIn = QtyIn + ' + IntToStr(StrToInt(SMZL.FieldByName('Qty').AsString) * CTS) + ' WHERE CODEBAR = ''' +
              SMZL.FieldByName('CODEBAR').AsString + ''' AND MA_KE = ''' + Edit4.Text + '''');
              end;
              Qtemp3.ExecSQL;
            end;
          //////////////////////////////
          //funcObj.WriteErrorLog(Qtemp.sql.Text);
         end;
        edit3.text:='';
      end;
      //
      SMZL.Next;
    end;
    //
    SMZL.Active:=false;
    SMZL.Active:=true;
    SMDDSS_Init();
  end;
end;

procedure TScanIn.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMDDSS.FieldByName('okCTS').value=SMDDSS.FieldByName('CTS').value then
    DBGridEh2.Canvas.Font.Color:=ClBlue;
end;

procedure TScanIn.seDateChange(Sender: TObject);
begin
  if (edit1.text = '') or (seDate.Text = '') then
    abort
  else if strtoint(seDate.Text) >180 then
    showmessage('Khong nhap qua 180 ngay')
  else
    SMDDSS_Init();
end;

procedure TScanIn.DBGridEh2CellClick(Column: TColumnEh);
begin
    //var SelectedValue := DBGridEh1.DataSource.DataSet.FieldByName('DDBH').AsString;
  if DBGridEh2.DataSource.DataSet.FieldByName('GXLB').AsString  <>'A' then panel2.Visible:= false;
  // C?p nh?t truy v?n d? li?u c?a Grid2 d?a trên giá tr? dã ch?n
  Qtemp2.Close;
  Qtemp2.SQL.Text := 'select SMDDSS.DDBH, SMDDSS.GXLB, SMDDSS.XXCC, SMDDSS.okCTS from SMDDSS where SMDDSS.GXLB=''S'' and SMDDSS.DDBH = ''' + DBGridEh2.DataSource.DataSet.FieldByName('DDBH').AsString + ''' and SMDDSS.XXCC = ''' + DBGridEh2.DataSource.DataSet.FieldByName('XXCC').AsString + '''';
  Qtemp2.Open;
  with DBGridEh3 do
  columns[1].Width:=60;
end;

procedure TScanIn.Button1Click(Sender: TObject);
begin
  MAKE:=TMAKE.Create(self);
  MAKE.ShowModal();
  MAKE.Free;
end;

end.
