unit DelOther_INK_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,
  GridsEh, DBGridEh, comobj,IniFiles;

type
  TDelOther_INK_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    NoDelCK: TCheckBox;
    Label6: TLabel;
    DFLComBo: TComboBox;
    DBGridEh1: TDBGridEh;
    Button2: TButton;
    cbGSBH: TComboBox;
    Label7: TLabel;
    Button3: TButton;
    Label9: TLabel;
    RB2: TRadioButton;
    DTP3: TDateTimePicker;
    Label8: TLabel;
    DTP4: TDateTimePicker;
    Label10: TLabel;
    Edit5: TEdit;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1CLSL: TFloatField;
    Query1ZLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1Flag: TIntegerField;
    Query1DFL: TStringField;
    RB1: TRadioButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    Pro_CostID_HC:string;
    { Public declarations }
  end;

var
  DelOther_INK_Mat: TDelOther_INK_Mat;

implementation

uses main1,DelOther_INK1,FunUnit;

{$R *.dfm}
procedure TDelOther_INK_Mat.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  Pro_CostID_HC:='62113';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Pro_CostID_HC:= MyIni.ReadString('ERP','Pro_CostID_HC','62113');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDelOther_INK_Mat.FormDestroy(Sender: TObject);
begin
  DelOther_INK_Mat:=nil;
end;

procedure TDelOther_INK_Mat.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  Action:=Cafree;
  query1.active:=false;
end;

procedure TDelOther_INK_Mat.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     edit2.SetFocus;
end;

procedure TDelOther_INK_Mat.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     edit3.SetFocus;
end;

procedure TDelOther_INK_Mat.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     edit4.SetFocus;
end;

procedure TDelOther_INK_Mat.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     button1Click(nil);
end;

procedure TDelOther_INK_Mat.Button1Click(Sender: TObject);
begin
  if ((RB1.Checked=false) and (RB2.Checked=false) and (Length(Edit4.Text)<4)) then
  begin
    showmessage('Please select shipdate or input OrderNo(4)');
    exit;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select * from (');
    sql.add('select CLZL.CLDH as CLBH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(ZLZLS2.CLSL) as CLSL,isnull(KCLLS.Qty,0) as Qty,XXBWFLS.DFL ,case when sum(ZLZLS2.CLSL)>isnull(KCLLS.Qty,0) then 0 else 1 end as Flag   ');
    sql.add('from ZLZLS2_YM ZLZLS2 ');
    sql.add('inner join CLZL on CLZL.CLDH=ZLZLS2.CLBH ');
    sql.add('inner join DDZL on DDZL.DDBH=ZLZLS2.ZLBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH ');
    sql.add('left join XXZL ON XXZL.XIEXING=DDZL.XIEXING AND XXZL.SHEHAO=DDZL.SHEHAO ');
    sql.add('left join XXBWFL ON ZLZLS2.BWBH=XXBWFL.BWBH AND XXZL.XIEXING=XXBWFL.XIEXING ');
    sql.add('left join XXBWFLS ON XXBWFL.FLBH=XXBWFLS.FLBH ');
    sql.add('left join (select KCLLS.SCBH,KCLLS.CLBH,KCLLS.DFL ,round(sum(KCLLS.Qty),4) as Qty ');
    sql.add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('           where KCLL.USERDate>getdate()-180 ');
    sql.add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
    sql.add('           group by KCLLS.SCBH,KCLLS.CLBH,KCLLS.DFL ) KCLLS ');
    sql.add('           on KCLLS.SCBH=ZLZLS2.ZLBH and KCLLS.CLBH=ZLZLS2.CLBH  and IsNull(XXBWFLS.DFL,''G'')=KCLLS.DFL ');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if edit4.text<>'' then
    begin
      sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
    end;
    if DFLComBo.Text<>'' then
    sql.add('      and XXBWFLS.DFL='''+DFLComBo.Text+''' ');
    if Edit5.Text<>'' then
    sql.add('      and DDZL.BUYNO like '''+Edit5.Text+'%'' ');
    sql.add('      and CLZL.CLDH like ''W%'' ');
    sql.add('      and DDZL.GSBH='''+cbGSBH.Text+''' ');
    if RB1.Checked=true then
    begin
      sql.add('      and DDZL.shipdate>='+''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
      sql.add('      and DDZL.shipdate<='+''''+formatdatetime('yyyyMMdd',DTP2.date)+'''');
    end;
    if RB2.Checked=true then
    begin
      sql.add('      and SCZLDate.ADate>='+''''+formatdatetime('yyyyMMdd',DTP3.date)+'''');
      sql.add('      and SCZLDate.ADate<='+''''+formatdatetime('yyyyMMdd',DTP4.date)+'''');
    end;
    sql.add('      and DDZL.YN<>5');
    sql.add('Group by CLZL.CLDH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCLLS.Qty,XXBWFLS.DFL  ');
    sql.add(') ZLZLS2');
    if NoDelCK.Checked=true then
      sql.add('where Flag=0 ');
    sql.add('order by CLBH,ZLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  {
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select * from (');
    sql.add('select CLZL.CLDH as CLBH,ZLZLS2_VN.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(ZLZLS2_VN.CLSL) as CLSL,isnull(KCLLS.Qty,0) as Qty,case when sum(ZLZLS2_VN.CLSL)>isnull(KCLLS.Qty,0) then 0 else 1 end as Flag   ');
    sql.add('from ZLZLS2_VN ');
    sql.add('inner join CLZL on CLZL.CLDH=ZLZLS2_VN.CLBH ');
    sql.add('inner join DDZL on DDZL.DDBH=ZLZLS2_VN.ZLBH ');
    sql.add('left join (select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),1) as Qty ');
    sql.add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('           where KCLL.USERDate>getdate()-90 ');
    sql.add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
    sql.add('           group by KCLLS.SCBH,KCLLS.CLBH) KCLLS ');
    sql.add('           on KCLLS.SCBH=ZLZLS2_VN.ZLBH and KCLLS.CLBH=ZLZLS2_VN.CLBH ');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if edit4.text<>'' then
    begin
      sql.add('      and ZLZLS2_VN.ZLBH like '+''''+edit4.Text+'%'+'''');
    end;
    sql.add('      and CLZL.CLDH like ''W%'' ');
    sql.add('      and DDZL.GSBH='''+cbGSBH.Text+''' ');
    if ShipDateCK.Checked=true then
    begin
      sql.add('      and DDZL.shipdate>='+''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
      sql.add('      and DDZL.shipdate<='+''''+formatdatetime('yyyyMMdd',DTP2.date)+'''');
    end;
    sql.add('      and DDZL.YN<>5');
    sql.add('Group by CLZL.CLDH,ZLZLS2_VN.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCLLS.Qty ');
    sql.add(') ZLZLS2_VN');
    if NoDelCK.Checked=true then
       sql.add('where Flag=0 ');
    sql.add('order by CLBH,ZLBH');
    active:=true;
  end;
  }
end;

procedure TDelOther_INK_Mat.FormCreate(Sender: TObject);
var i:integer;
begin
  with DelOther_INK.QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DFL from XXBWFLS order by DFL');
    active:=true;
    DFLComBo.Clear;
    DFLComBo.Items.add('');
    for i:=1 to recordcount do
    begin
      DFLComBo.Items.Add(fieldbyname('DFL').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from Bgszl');
    active:=true;
    cbGSBH.Clear;
    cbGSBH.Items.add('');
    for i:=1 to recordcount do
    begin
      cbGSBH.Items.Add(fieldbyname('GSDH').asstring);
      if fieldbyname('GSDH').asstring=main.Edit2.Text then cbGSBH.ItemIndex:=i;
      next;
    end;
    active:=true;
  end;

  DTP1.Date:=DelOther_INK.DTP1.Date;
  DTP2.Date:=DelOther_INK.DTP2.Date+60;
  DTP3.Date:=DelOther_INK.DTP1.Date;
  DTP4.Date:=DelOther_INK.DTP2.Date+30;
  ReadIni();

end;

procedure TDelOther_INK_Mat.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('CLSL').value<=query1.FieldByName('Qty').value then
  begin
    DBGridEh1.canvas.font.Color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_INK_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value>0 then
  begin
    with DelOther_INK.DelDet do
    begin
      fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
      fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
      fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
      fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
      if DFLComBo.Text<>'' then
         fieldbyname('DFL').value:=DFLComBo.Text
      else
         fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
      //fieldbyname('CostID').value:='621' ;
      fieldbyname('CostID').value:=Pro_CostID_HC;
      fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
      insert;
    end;
    showmessage('Succeed');
  end;
end;

procedure TDelOther_INK_Mat.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TDelOther_INK_Mat.Button2Click(Sender: TObject);
var bm:Tbookmark;
  i:integer;
  Qty:real;
  bookmarklist:tbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qty:=0;
  if (not query1.Active) then
    begin
      abort;
    end;
  if (Query1.recordcount<1) then
    begin
      abort;
    end;
  //with query1 do
   // begin
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          if query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value>0 then
          begin
            with DelOther_INK.DelDet do
            begin
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
              fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
              if DFLComBo.Text<>'' then
                 fieldbyname('DFL').value:=DFLComBo.Text
              else
                 fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
              //fieldbyname('CostID').value:='621' ;
              fieldbyname('CostID').value:=Pro_CostID_HC;
              fieldbyname('CLSL').value:=0;
              insert;
            end;
          end;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TDelOther_INK_Mat.Button3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
  begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to   Query1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TDelOther_INK_Mat.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
