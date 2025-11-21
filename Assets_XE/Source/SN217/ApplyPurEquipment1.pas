unit ApplyPurEquipment1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, Bde.DBTables, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,fununit,comobj;

type
  TApplyPurEquipment = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    SGNOEdit: TEdit;
    CheckDate: TCheckBox;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel8: TPanel;
    Panel7: TPanel;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ZSDHEdit: TEdit;
    Button1: TButton;
    SBBHEdit: TEdit;
    YWPMEdit1: TEdit;
    YWPMEdit2: TEdit;
    Chk_NoPur1: TCheckBox;
    TSCD_SGDH: TQuery;
    TSCD_SGDHS: TQuery;
    UpdateSQL1: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    DS1: TDataSource;
    DS2: TDataSource;
    Query1: TQuery;
    TSCD_SGDH_ToPO: TPopupMenu;
    Excel1: TMenuItem;
    Modify1: TMenuItem;
    TransferPO1: TMenuItem;
    Cancel1: TMenuItem;
    N1: TMenuItem;
    TSCD_SGDHS_ToPO: TPopupMenu;
    Excel2: TMenuItem;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    TSCD_SGDHSSGNO: TStringField;
    TSCD_SGDHSSBBH: TStringField;
    TSCD_SGDHSQty: TFloatField;
    TSCD_SGDHSokQty: TFloatField;
    TSCD_SGDHSDiff: TFloatField;
    TSCD_SGDHSYWPM: TStringField;
    TSCD_SGDHSZWPM: TStringField;
    TSCD_SGDHSDepName: TStringField;
    TSCD_SGDHSZSDH: TStringField;
    TSCD_SGDHSZSJC_YW: TStringField;
    TSCD_SGDHSDepID: TStringField;
    TSCD_SGDHSBBH: TStringField;
    TSCD_SGDHYWPM: TStringField;
    TSCD_SGDHZWPM: TStringField;
    TSCD_SGDHVWPM: TStringField;
    TSCD_SGDHLSBH: TStringField;
    TSCD_SGDHQUCBH: TStringField;
    TSCD_SGDHDWBH: TStringField;
    TSCD_SGDHQty: TFloatField;
    TSCD_SGDHokQty: TFloatField;
    TSCD_SGDHDiff: TFloatField;
    TSCD_SGDHZSDH: TStringField;
    TSCD_SGDHZSJC_YW: TStringField;
    TSCD_SGDHGSBH: TStringField;
    TSCD_SGDHQVNPrice: TCurrencyField;
    TSCD_SGDHQUSprice: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TransferPO1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyPurEquipment: TApplyPurEquipment;
  NDate:TDate;
  FY,FM:string;

implementation

uses main1, PurEquipment1;

{$R *.dfm}

procedure TApplyPurEquipment.Button1Click(Sender: TObject);
begin
  with TSCD_SGDH do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_SGDHS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH');
    SQL.Add(',sum(TSCD_SGDHS.Qty) as Qty,sum(isnull(TSCD_CGZLSS.okQty,0)) as okQty,sum(isnull(TSCD_SGDHS.Qty,0)-isnull(TSCD_CGZLSS.okQty,0)) as Diff,TSCD_ZSZL.ZSDH,TSCD_ZSZL.ZSJC_YW,TSCD_SGDH.GSBH,TSCD_SB.QVNPrice,TSCD_SB.QUSprice  ');
    SQL.Add('from TSCD_SGDHS   ');
    SQL.Add('left join TSCD_SGDH on TSCD_SGDH.SGNO=TSCD_SGDHS.SGNO  ');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD_SGDHS.SBBH    ');
    SQL.Add('left join TSCD_ZSZL on TSCD_ZSZL.ZSDH = TSCD_SB.ZSDH    ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_SGDH.DepID   ');
    SQL.Add('left join (select SGNO,SBBH,Sum(Qty) as okQty     ');
    SQL.Add('    		   from TSCD_CGZLSS   ');
    SQL.Add('    		   where 1=1   ');
    SQL.Add('    		   Group by SGNO,SBBH)TSCD_CGZLSS on TSCD_CGZLSS.SGNO=TSCD_SGDHS.SGNO and TSCD_CGZLSS.SBBH=TSCD_SGDHS.SBBH    ');
    SQL.Add('where 1=1  ');
    SQL.Add('and convert(smalldatetime,convert(varchar,TSCD_SGDH.USERDATE,111)) between ');
    SQL.Add(''''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.Add('and ');
    SQL.Add(''''+Formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if SGNOEdit.Text <> '' then
      SQL.Add('and TSCD_SGDH.SGNO like '''+SGNOEdit.Text+'%'+''' ');
    if SBBHEdit.Text <> '' then
      SQL.Add('and TSCD_SGDHS.SBBH like '''+SBBHEdit.Text+'%'+'''');
    if ZSDHEdit.Text <> '' then
      SQL.Add('and TSCD_ZSZL.ZSDH like '''+ZSDHEdit.Text+'%'+'''');
    if YWPMEdit1.Text <> '' then
      SQL.Add('and TSCD_SB.YWPM like '''+YWPMEdit1.Text+'%'+'''');
    if YWPMEdit2.Text <> '' then
      SQL.Add('and TSCD_SB.YWPM like '''+YWPMEdit2.Text+'%'+'''');
    if Chk_NoPur1.Checked then
      SQL.Add('and isnull(TSCD_CGZLSS.okQty,0)<isnull(TSCD_SGDHS.Qty,0)   ');
    //SQL.Add('and TSCD_SGDH.GSBH='+''''+main.Edit2.Text+'''');
    SQL.Add('group by TSCD_SGDHS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH,TSCD_ZSZL.ZSDH,TSCD_ZSZL.ZSJC_YW,TSCD_SGDH.GSBH,TSCD_SB.QVNPrice,TSCD_SB.QUSprice  ');
    SQL.Add('order by TSCD_SGDHS.SBBH,TSCD_ZSZL.ZSDH  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with TSCD_SGDHS do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  select TSCD_SGDHS.SGNO,TSCD_SGDHS.SBBH,TSCD_SGDHS.Qty,IsNull(TSCD_CGZLSS.okQty,0) as okQty,isnull(TSCD_SGDHS.Qty,0)-isnull(TSCD_CGZLSS.okQty,0) as Diff,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SGDH.DepID,BDepartment.DepName,TSCD_ZSZL.ZSDH,TSCD_ZSZL.ZSJC_YW    ');
    SQL.Add('  from TSCD_SGDHS   ');
    SQL.Add('  left join TSCD_SGDH on TSCD_SGDH.SGNO=TSCD_SGDHS.SGNO    ');
    SQL.Add('  left join TSCD_SB on TSCD_SB.SBBH = TSCD_SGDHS.SBBH  ');
    SQL.Add('  left join TSCD_ZSZL on TSCD_ZSZL.ZSDH = TSCD_SB.ZSDH   ');
    SQL.Add('  left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_SGDH.DepID    ');
    SQL.Add('  left join (select SGNO,SBBH,Sum(Qty) as okQty     ');
    SQL.Add('    		   from TSCD_CGZLSS   ');
    SQL.Add('    		   where 1=1   ');
    SQL.Add('    		   Group by SGNO,SBBH)TSCD_CGZLSS on TSCD_CGZLSS.SGNO=TSCD_SGDHS.SGNO and TSCD_CGZLSS.SBBH=TSCD_SGDHS.SBBH  		      ');
    SQL.Add('  where 1=1   ');
    SQL.Add('  and TSCD_SGDHS.SBBH=:SBBH  ');
    if SBBHEdit.Text <> '' then
      SQL.Add('and TSCD_SGDHS.SBBH like '''+SBBHEdit.Text+'%'+'''');
    if ZSDHEdit.Text <> '' then
      SQL.Add('and TSCD_ZSZL.ZSDH like '''+ZSDHEdit.Text+'%'+'''');
    if YWPMEdit1.Text <> '' then
      SQL.Add('and TSCD_SB.YWPM like '''+YWPMEdit1.Text+'%'+'''');
    if YWPMEdit2.Text <> '' then
      SQL.Add('and TSCD_SB.YWPM like '''+YWPMEdit2.Text+'%'+'''');
    if Chk_NoPur1.Checked then
      SQL.Add('and isnull(TSCD_CGZLSS.okQty,0)<isnull(TSCD_SGDHS.Qty,0)   ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TApplyPurEquipment.Cancel1Click(Sender: TObject);
begin
  Excel1.Enabled:=true;
  Modify1.Enabled:=true;
  TransferPO1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TApplyPurEquipment.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((TSCD_SGDH.FieldByName('okQty').AsCurrency>0) and (TSCD_SGDH.FieldByName('Diff').AsCurrency>0)) then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end else
  if TSCD_SGDH.FieldByName('Diff').Value = 0 then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end else
  if TSCD_SGDH.FieldByName('Diff').AsCurrency<0 then
  begin
    DBGridEh1.canvas.font.color:=clgreen;
  end;
end;

procedure TApplyPurEquipment.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  TSCD_SGDH.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for  i:=0  to DBGridEh1.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.fields[i].FieldName;
      end;
      TSCD_SGDH.First;
      j:=2;
      while   not   TSCD_SGDH.Eof   do
        begin
          for   i:=0   to  DBGridEh1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].AsString;
          end;
        TSCD_SGDH.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TApplyPurEquipment.Excel2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  TSCD_SGDHS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for  i:=0  to DBGridEh2.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=DBGridEh2.fields[i].FieldName;
      end;
      TSCD_SGDHS.First;
      j:=2;
      while   not   TSCD_SGDHS.Eof   do
        begin
          for   i:=0   to  DBGridEh2.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].AsString;
          end;
        TSCD_SGDHS.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TApplyPurEquipment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TApplyPurEquipment.FormCreate(Sender: TObject);
var i: integer;
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ,year(getdate()) as FY, month(getdate()) as FM ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    FY:=fieldbyname('FY').Value;
    FM:=fieldbyname('FM').Value;
    active:=false;
    DTP1.date:=NDate-30;
    DTP2.date:=NDate;
  end;

end;

procedure TApplyPurEquipment.FormDestroy(Sender: TObject);
begin
  ApplyPurEquipment:=nil;
end;

procedure TApplyPurEquipment.Modify1Click(Sender: TObject);
begin
  Excel1.Enabled:=false;
  Modify1.Enabled:=false;
  TransferPO1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TApplyPurEquipment.TransferPO1Click(Sender: TObject);
var bm:Tbookmark;
    CGNO,Supp_ID,Dep_ID:string;
    USPrice,VNPrice:string;
    i,j:integer;
    bookmarklist:tbookmarklistEH;
begin
  //
  if not TSCD_SGDH.Active then
     abort;
  if (TSCD_SGDH.recordcount<1) then
     abort;
  if length(FM)<2 then
     FM:='0'+FM;
  Supp_ID:='';
  TSCD_SGDH.disablecontrols;
  bm:=TSCD_SGDH.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count=0 then
  begin
    showmessage('Pls choose data first !');
    abort;
  end;
  if TSCD_SGDH.FieldByName('ZSDH').AsString ='' then
  begin
    showmessage('Nha cung ung khong ton tai.');
    abort;
  end;
  if bookmarklist.count>0 then
  begin
     try
       TSCD_SGDH.gotobookmark(pointer(bookmarklist[0]));
       Supp_ID:=TSCD_SGDH.FieldByName('ZSDH').AsString ;
       if TSCD_SGDH.FieldByName('diff').AsFloat>0 then
       begin
         with query1 do
         begin
           active:=false;
           sql.Clear;
           sql.Add('select CGNO from TSCD_CGZL where CGNO like '+''''+FY+FM+'%'+'''');
           sql.add('order by CGNO');
           active:=true;
           if recordcount >0 then
           begin
              last;
              CGNO:=fieldbyname('CGNO').AsString;
              CGNO:=copy(CGNO,7,5);
              CGNO:=inttostr(strtoint(CGNO)+1);
              while length(CGNO)<5 do
              begin
                  CGNO:='0'+CGNO;
              end;
           end else
           begin
             CGNO:='00001';
           end;
           CGNO :=FY+FM+CGNO;
           active:=false;
         end;
         with query1 do
         begin
           active:=false;
           sql.Clear;
           sql.Add('insert TSCD_CGZL ');
           sql.Add('(CGNO');
           sql.Add(',GSBH');
           sql.Add(',ZSBH');
           sql.Add(',DepID');
           sql.Add(',CGDate,USERDATE,USERID,YN) values (');
           sql.Add(' '''+CGNO+'''');
           sql.Add(','''+main.Edit2.text+'''');
           sql.Add(','''+Supp_ID+'''');
           sql.Add(','''+Dep_ID+'''');
           sql.Add(','''+formatdatetime('yyyy/MM/dd',NDate)+'''');
           sql.Add(','''+formatdatetime('yyyy/MM/dd',NDate)+'''');
           sql.Add(','''+main.edit1.Text+'''');
           sql.Add(',''1'' )');
           execsql;
           active:=false;
         end;
         for i:=0 to bookmarklist.count-1 do
         begin
           TSCD_SGDH.gotobookmark(pointer(bookmarklist[i]));
           TSCD_SGDHS.Active:=false;
           TSCD_SGDHS.Active:=true;
           if TSCD_SGDH.FieldByName('diff').AsFloat>0 then
           begin
             if  TSCD_SGDH.RecordCount>0 then
             begin
               Query1.Active:=false;
               with query1 do
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('insert TSCD_CGZLS ');
                 sql.Add('(CGNO');
                 sql.Add(',SBBH');
                 sql.Add(',Qty');
                 if TSCD_SGDH.FieldByName('QVNPrice').AsString <>'' then
                    sql.Add(',VNPrice')
                 else
                    sql.Add(',USPrice');
                 sql.Add(',USERID,USERDATE,YN) values (');
                 sql.Add(' '''+CGNO+'''');
                 sql.Add(','''+TSCD_SGDH.fieldbyname('SBBH').AsString+''' ');
                 sql.Add(','+floattostr(TSCD_SGDH.fieldbyname('Diff').asfloat)+'');
                 if TSCD_SGDH.FieldByName('QVNPrice').AsString <>'' then
                    sql.Add(','''+TSCD_SGDH.fieldbyname('QVNPrice').AsString+''' ')
                 else
                    sql.Add(','''+TSCD_SGDH.fieldbyname('QUSPrice').AsString+''' ');
                 sql.Add(','''+main.edit1.Text+'''');
                 sql.Add(','''+formatdatetime('yyyy/MM/dd',NDate)+'''');
                 sql.Add(',''1'')');
                 execsql;
                 active:=false;
               end;
               //
               for j:=1 to TSCD_SGDHS.RecordCount do
               begin
                 if ((TSCD_SGDHS.FieldByName('Qty').AsString<>'0') and (TSCD_SGDHS.FieldByName('Diff').AsFloat>0))  then
                 begin
                   with query1 do
                   begin
                     active:=false;
                     sql.Clear;
                     sql.Add('insert TSCD_CGZLSS ');
                     sql.Add('(CGNO');
                     sql.Add(',SGNO');
                     sql.Add(',SBBH');
                     sql.Add(',SGQty');
                     sql.Add(',Qty');
                     sql.Add(',USERID,USERDATE,YN) values (');
                     sql.Add(' '''+CGNO+''' ');
                     sql.Add(','''+TSCD_SGDHS.fieldbyname('SGNO').AsString+'''');
                     sql.Add(','''+TSCD_SGDHS.fieldbyname('SBBH').AsString+'''');;
                     sql.Add(','+floattostr(TSCD_SGDHS.fieldbyname('Diff').asfloat)+'');
                     sql.Add(','+floattostr(TSCD_SGDHS.fieldbyname('Diff').asfloat)+'');
                     sql.Add(','''+main.edit1.Text+'''');
                     sql.Add(','''+formatdatetime('yyyy/MM/dd',NDate)+'''');
                     sql.Add(',''1'')');
                     execsql;
                     active:=false;
                   end;
                 end;
                 TSCD_SGDHS.next;
               end;
             end;
           end;
         end;
       end;
     finally
     begin
       TSCD_SGDH.gotobookmark(bm);
       TSCD_SGDH.freebookmark(bm);
       TSCD_SGDH.enablecontrols;
     end;
   end;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('UPDATE TSCD_CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from TSCD_CGZLSS WHERE TSCD_CGZLSS.CGNO=TSCD_CGZLS.CGNO AND TSCD_CGZLSS.SBBH=TSCD_CGZLS.SBBH  ');
    sql.add(' and TSCD_CGZLSS.CGNO='''+CGNO+'''  GROUP BY CGNO,SBBH),0) ');
    sql.add(' where TSCD_CGZLS.CGNO='''+CGNO+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;
    close;
  end;
  showmessage('finish !');
  if PurEquipment<>nil then
  begin
    PurEquipment.show;
    PurEquipment.windowstate:=wsmaximized;
  end;
  if (PurEquipment.bbSave.Enabled=true) or (PurEquipment.bdSave.Enabled=true) then
  begin
    showmessage('Pls save data first ');
    abort;
  end;
  PurEquipment.edtCGNO.Text:=CGNO;
  PurEquipment.CheckMine.Checked:=false;
  PurEquipment.btnQueryClick(nil);
  TSCD_SGDHS.Active:=true ;
  Excel1.Enabled:=true;
  Modify1.Enabled:=true;
  TransferPO1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

end.
