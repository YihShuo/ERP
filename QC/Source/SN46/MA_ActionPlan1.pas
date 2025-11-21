unit MA_ActionPlan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons,
  ComCtrls, DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg,FunUnit;

type
  TMA_ActionPlan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    edtLine: TEdit;
    edtRY: TEdit;
    DTP1: TDateTimePicker;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    EditArticle: TEdit;
    EditXuong: TEdit;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    WOPR_MA: TQuery;
    Query1: TQuery;
    WOPR_MASCDate: TDateTimeField;
    WOPR_MASCBH: TStringField;
    WOPR_MAID: TStringField;
    WOPR_MAResult: TStringField;
    WOPR_MAARTICLE: TStringField;
    WOPR_MAXieMing: TStringField;
    WOPR_MADepName: TStringField;
    WOPR_MAKHPO: TStringField;
    WOPR_MAPairs: TIntegerField;
    WOPR_MAShipDate: TDateTimeField;
    WOPR_MAywsm: TStringField;
    WOPR_MAInsQty: TSmallintField;
    WOPR_MAPrdQty: TSmallintField;
    WOPR_MAQty: TSmallintField;
    WOPR_MAZWSM: TStringField;
    Label3: TLabel;
    Query2: TQuery;
    CheckBox3: TCheckBox;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
    HIorDI:String;
    AppDir:String;
  public
    { Public declarations }
  end;

var
  MA_ActionPlan: TMA_ActionPlan;

implementation

uses main1;

{$R *.dfm}

procedure TMA_ActionPlan.Button1Click(Sender: TObject);
var t:integer;
begin
  if RB1.Checked then
  begin
    HIorDI:='HI';
  end else
  begin
    HIorDI:='DI';
  end;
  with WOPR_MA do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,DDZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,DDZL.KHPO');
    SQL.Add(',DDZL.Pairs,DDZL.ShipDate,LBZLS.ywsm,WOPR_MA.InsQty,WOPR_MA.PrdQty,sum (QCMAD.Qty) as Qty,QCMAYY.ZWSM');
    SQL.Add('From WOPR_MA');
    if CheckBox3.Checked=true then
      SQL.Add('left join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
    else
       SQL.Add('left join QCMA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
    SQL.Add('inner join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    SQL.Add('inner join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and  WOPR_MA.Result=''F''  and WOPR_MA.GSBH = '''+ main.Edit2.text +'''');
    if (Edit2.Text<>'') then
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
    if (edtRY.Text<>'') then
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');
    SQL.Add('group by WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,DDZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,DDZL.KHPO');
    SQL.Add(',DDZL.Pairs,DDZL.ShipDate,LBZLS.ywsm,WOPR_MA.InsQty,WOPR_MA.PrdQty,QCMAYY.ZWSM');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TMA_ActionPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMA_ActionPlan.FormDestroy(Sender: TObject);
begin
  MA_ActionPlan:=nil;
end;

procedure TMA_ActionPlan.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TMA_ActionPlan.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,t,RowPos,RowPos1:integer;
  PartALl,TenLoi:string;
  picture : OleVariant;
  workRange : OleVariant;
  workSheet : OleVariant;
  checkshoePic,checkshoePic1,checkshoePic2,NameTable,Maloi1,Maloi2,Maloi3 : string;
begin
  if Edit2.Text = '' then
  begin
    showmessage('Chua nhap Report.');
    Exit;
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\QC_SN46.xls'),Pchar(AppDir+'Additional\QC_SN46.xls'),false);
  if FileExists(AppDir+'Additional\QC_SN46.xls')=true then
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select ZWSM,XL_NganHan,XL_DaiHan,sum (Qty) as SLLoi');
      SQL.Add('from (select QCMAYY.ZWSM,QCMAYY.XL_DaiHan,QCMAYY.XL_NganHan,QCMAD.Qty,Case when WOPR_MA.Result=''F'' then WOPR_MA.DefQty else 0 end as FailQty');
      SQL.Add('From WOPR_MA');
      if CheckBox3.Checked=true then
        SQL.Add('left join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
      else
         SQL.Add('left join QCMA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
      SQL.Add('inner join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
      SQL.Add('inner join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
      SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
      SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
      SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
      SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+'''and  WOPR_MA.Result=''F'' and WOPR_MA.GSBH = '''+ main.Edit2.text +'''');
      if (Edit2.Text<>'') then
        SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
      if (edtRY.Text<>'') then
        SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
      if CheckBox1.Checked=true then
        SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      if edtLine.Text<>'' then
        SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
      if EditArticle.Text<>'' then
        SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
      if Edit1.Text<>'' then
        SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
      if Edit3.Text<>'' then
        SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');
      SQL.Add(' ) WOPR group by ZWSM,XL_NganHan,XL_DaiHan order by SLLoi desc');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
      while not Query1.eof do
      begin
        TenLoi:=TenLoi+Query1.fieldbyname('ZWSM').AsString+',';
        Query1.Next;
      end;
      TenLoi:=Copy(TenLoi,1,length(TenLoi)-1);

      with Query2 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select top 10 (QCMAD.ProNo+''_''+QCMAD.YYBH) as Prono');
        SQL.Add('From WOPR_MA');
        if CheckBox3.Checked=true then
          SQL.Add('left join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
        else
          SQL.Add('left join QCMA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
        SQL.Add('inner join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
        SQL.Add('inner join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
        SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
        SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
        SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
        SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
        SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and  WOPR_MA.Result=''F''  and WOPR_MA.GSBH = '''+ main.Edit2.text +'''');
        if (Edit2.Text<>'') then
          SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
        if (edtRY.Text<>'') then
          SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
        if CheckBox1.Checked=true then
          SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
        if edtLine.Text<>'' then
          SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
        if EditXuong.Text<>'' then
          SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
        if EditArticle.Text<>'' then
          SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
        if Edit1.Text<>'' then
          SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
        if Edit3.Text<>'' then
          SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');
        SQL.Add('group by QCMAD.ProNo,QCMAD.YYBH');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
    end;
    if  WOPR_MA.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\QC_SN46.xls');
        WorkBook:=eclApp.WorkBooks.Open(AppDir+'Additional\QC_SN46.xls');
        eclApp.WorkSheets[1].Activate;
        eclApp.Cells(4,3):=WOPR_MA.FieldByName('KHPO').value;
        eclApp.Cells(4,7):=WOPR_MA.FieldByName('ARTICLE').value;
        eclApp.Cells(4,10):=WOPR_MA.FieldByName('Pairs').value;
        eclApp.Cells(6,3):=formatdatetime('YYYY/MM/DD',WOPR_MA.FieldByName('ShipDate').value);
        eclApp.Cells(6,7):=formatdatetime('YYYY/MM/DD',WOPR_MA.FieldByName('SCDate').value);
        eclApp.Cells(6,10):=WOPR_MA.FieldByName('ywsm').value;
        eclApp.Cells(8,3):=WOPR_MA.FieldByName('InsQty').AsString+'/'+WOPR_MA.FieldByName('PrdQty').AsString;
        Maloi1:='';
        //Maloi2:='';
        //Maloi3:='';
        t:=1;
        j:=21;
        if Query1.RecordCount > 1 then
        begin
          for i:=1 to Query1.RecordCount-1 do
          begin
             eclApp.Range['A21:L21'].Copy;
             RowPos:=21+i;
             eclApp.Cells[RowPos,1].insert;
             //eclApp.Rows[RowPos,1].RowHeight:=30;
          end;
        end else
        begin
             eclApp.Range['A21:L21'].Copy;
             RowPos:=22;
             eclApp.Cells[RowPos,1].insert;
        end;

        for i:=1 to Query1.RecordCount*2-1 do
        begin
           RowPos1:=RowPos+2+i;
           eclApp.Range['A'+inttostr(RowPos1)+':L'+inttostr(RowPos1)+''].Copy;
           eclApp.Cells[RowPos1+1,1].insert;
           eclApp.Rows[RowPos1+1].RowHeight:=33;
        end;
        RowPos:=RowPos+3;
        RowPos1:=RowPos+1;
        Query1.First;
        for i:=0 to Query1.RecordCount-1 do
        begin
          eclApp.Cells(j,1):=Query1.FieldByName('ZWSM').value;
          eclApp.Cells(RowPos,1):=inttostr(i+1)+'. '+Query1.FieldByName('ZWSM').AsString;
          eclApp.Cells(RowPos1,1):=Query1.FieldByName('XL_DaiHan').value;
          eclApp.Cells(j,5):=Query1.FieldByName('SLLoi').value;
          eclApp.Cells(j,6):='-'+Query1.FieldByName('XL_NganHan').value;
          eclApp.Cells(j,11):='OK';
          Query1.Next;
          inc(j);
          RowPos:=RowPos+2;
          RowPos1:=RowPos1+2;
        end;

        Query2.First;
        for i:=0 to Query2.RecordCount-1 do
        begin
          Maloi1:=Query2.FieldByName('Prono').Asstring+'_1'+'.jpg';
          if HIorDI='DI' then
          begin
            checkshoePic:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi1;
          end else
          begin
            checkshoePic:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi1;
          end;
          funcObj.WriteErrorLog(checkshoePic);
          if FileExists(checkshoePic)=true then
          begin
            workSheet := workBook.WorkSheets[1];
            eclApp.WorkSheets[1].Activate;
            workSheet.Select;
            workRange :=workSheet.Range[workSheet.Cells.Item[15,t],workSheet.Cells.item[15,t]];
            picture := workSheet.pictures.Insert(StringReplace(checkshoePic,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
            picture.left := workRange.left + 1;
            picture.top := workRange.top + 1;
            picture.width := workRange.width - 2;
            picture.height := workRange.height - 2;
            picture.height := 45;
            picture := Unassigned;
            t:=t+1;
          end;
          Query2.Next;
        end;
        eclApp.Cells(8,7):='=SUM(E21:E'+inttostr(j-1)+')';
        eclApp.Cells(10,3):=copy(TenLoi,1,90)+' ...';
        eclApp.WorkSheets[1].Name:=WOPR_MA.FieldByName('SCBH').value;
        showmessage('Succeed.');
        eclApp.Visible:=True;
        //WOPR_MA.Active:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end else
  begin
    showmessage('File Sticker2 not exists');
  end;
end;

procedure TMA_ActionPlan.Edit2Change(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select *');
    SQL.Add('From WOPR_MA');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+'''and  WOPR_MA.Result=''F'' ');
    if (Edit2.Text<>'') then
      SQL.Add('  and WOPR_MA.ID = '''+Edit2.Text+''' ');
    Active:=true;
    if Query1.RecordCount <> 0 then
      Button2.Visible:=true
    else
      Button2.Visible:=false;
  end;
  Button1.Click;
end;

end.
