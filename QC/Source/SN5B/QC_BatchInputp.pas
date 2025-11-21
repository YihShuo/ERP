unit QC_BatchInputp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables, Spin,
  Grids, DBGrids,StrUtils, GridsEh, DBGridEh;

type
  TQC_BatchInput = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    WorkDate: TDateTimePicker;
    Label2: TLabel;
    XH_ID: TEdit;
    DepNo: TEdit;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    DepNM: TEdit;
    Label6: TLabel;
    DDBHCombo: TComboBox;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    DepQry: TQuery;
    Panel2: TPanel;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BB5: TBitBtn;
    Button1: TButton;
    Insect_GroupBox: TGroupBox;
    Label3: TLabel;
    NGQtySpin: TSpinEdit;
    Label4: TLabel;
    ReQtySpin: TSpinEdit;
    QCBLYY_DS: TDataSource;
    QCBLYYQry: TQuery;
    DDBHQry: TQuery;
    QCBLYY_Upd: TUpdateSQL;
    SaveQry1: TQuery;
    SaveQry2: TQuery;
    BB4: TBitBtn;
    chk1: TRadioButton;
    chk2: TRadioButton;
    DBGrid: TDBGridEh;
    Label8: TLabel;
    QtySpin: TSpinEdit;
    BB2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
  private
    { Private declarations }
    function MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;Buttons: TMsgDlgButtons; Captions: array of string): Integer;
  public
    { Public declarations }
  end;

var
  QC_BatchInput: TQC_BatchInput;
  TDFL,TGXLB:string;//品檢分類和製程工段
implementation
   uses QCOnTime_Dep1,QCOnTime_XH1, main1, FunUnit, ShoeBC1;
{$R *.dfm}
//自訂選擇視窗改變文字,DFL大分類 成型前段A或後段AR
function TQC_BatchInput.MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;Buttons: TMsgDlgButtons; Captions: array of string): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
  { Create the Dialog }
  
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  captionIndex := 0;
  { Loop through Objects in Dialog }

  for i := 0 to aMsgDlg.ComponentCount - 1 do
  begin
   { If the object is of type TButton, then }
  
    if (aMsgDlg.Components[i] is TButton) then
    begin
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex>High(Captions) then Break;
      { Give a new caption from our Captions array}
     
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;
//
procedure TQC_BatchInput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  funcObj.StopAP(ExtractFilePath(Application.ExeName)+'\KeyBoard.exe');
  action:=Cafree;
end;

procedure TQC_BatchInput.FormDestroy(Sender: TObject);
begin
  QC_BatchInput:=nil;
end;

procedure TQC_BatchInput.FormCreate(Sender: TObject);
begin
  WorkDate.DateTime := now; //報工日期
  XH_ID.Text := '01';  //時間序號
  //
end;

procedure TQC_BatchInput.BitBtn2Click(Sender: TObject);
begin
  QCOnTime_Dep:=TQCOnTime_Dep.create(self);
  QCOnTime_Dep.Label3.Caption := 'SN5B';
  QCOnTime_Dep.show;
end;

procedure TQC_BatchInput.Button1Click(Sender: TObject);
var strList:TStringList;

begin
    if DepNM.Text='' then
    begin
        //英文或越文
        if Chk1.Checked then
          showmessage('Please Select  Department first!')
        else
          showmessage('Vui long chon don vi truoc !');
        exit;
    end;
    if DDBHCombo.Text='' then
    begin
        //英文或越文
        if Chk1.Checked then
          showmessage('Please Select exact RY# first!')
        else
          showmessage('Vui long chon chinh xac don hang truoc !');
        exit;
    end;
    //QC部門區別製程階段
    with DepQry do
    begin
       active:=false;
       sql.Clear;
       sql.Add('select Depname,GXLB from BDepartment where Depname = '+''''+DepNM.Text+''+'''');
       sql.add('      and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
       sql.add('group by Depname,GXLB');
       //funcobj.WriteErrorLog(sql.Text);
       active:=true;
       if recordcount >0 then
       begin
          if DepQry.fieldbyname('GXLB').AsString='A' then
          begin
            {if MyMessageDialog('truoc Go hay la sau go?', mtConfirmation, mbOKCancel,['truoc go', 'sau go']) = mrOk then
            begin
              TGXLB := 'A'; //WORK.GBLB
              TDFL := 'A'
            end else
            begin
              TGXLB := 'AR'; //WORK.GBLB
              TDFL := 'AR';
            end; }
            begin
              TGXLB := 'A'; //WORK.GBLB
              TDFL := 'A';
            end
          end else
          if DepQry.fieldbyname('GXLB').AsString='S' then
          begin
            TGXLB := 'C+S'; //WORK.GBLB
            TDFL := 'S';    //QCBLYY.DFL
          end else
          if DepQry.fieldbyname('GXLB').AsString='C' then
          begin
            TGXLB := 'C';  //WORK.GBLB
            TDFL := 'C';   //QCBLYY.DFL
          end;
       end else
       begin
        showmessage('Wrong department!');
        exit;
       end;
    end;
    //檢查使用者訂單是否輸入正確
    with DDBHQry do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select DDBH from DDZL ');
      sql.Add('where DDBH = '''+DDBHCombo.Text+'''');
      sql.Add('  and GSBH = '''+main.Edit2.Text+'''');
      active:=true;
      if (recordcount = 0) then
      begin
        //英文或越文
        if Chk1.Checked then
          showmessage('Please Select exact RY# first!')
        else
          showmessage('Vui long chon chinh xac don hang truoc !');
        exit;
      end;
      active:=false;
    end;
    //Default 分類原因
    with QCBLYYQry do
    begin
      Active:=false;
      SQL.Clear;
      if chk1.Checked and not chk2.Checked then
        sql.add('select YYBH,YWSM as ZWSM,0 as Qty from QCBLYY Where DFL = '+''''+TDFL+''''+' and gsbh=' + '''' + main.Edit2.text + ''' and YN=''2'' order by YYBH')
      //判斷越文QC原文
      else
        sql.add('select YYBH,ZWSM,0 as Qty from QCBLYY Where DFL = '+''''+TDFL+''''+' and gsbh=' + '''' + main.Edit2.text + ''' and YN=''2'' order by YYBH');
      Active:=true;
    end;
    //開啟編輯
    with QCBLYYQry do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    //
    Panel1.Visible:=false;
    DDBHCombo.Enabled:=false;
    Insect_GroupBox.Visible:=true;
    BB2.Enabled:=true;
    BB5.Enabled:=true;
end;

procedure TQC_BatchInput.BB1Click(Sender: TObject);
begin
    QCBLYYQry.Active:=false;
    Panel1.Visible:=true;
    DDBHCombo.Enabled:=true;
    Insect_GroupBox.Visible:=false;
    BB5.Enabled:=false;
end;
//
procedure TQC_BatchInput.BB5Click(Sender: TObject);
var Last_PaQty,PaQty,NGQty,ReQty:integer;
    ProNO:string;
    IsHaveDeFect:boolean;
begin

  if (DBGrid.Columns[2].Footers[0].SumValue>0) and ((NGQtySpin.Value=0) and (ReQtySpin.Value=0)) then
  begin
    //英文或越文
    if Chk1.Checked then
      Showmessage('NGQty or  ReQty must > 0 !')
    else
      Showmessage('Chu y ! NGQty hay  ReQty can phai > 0 !');
    exit;
  end;
  //取得目前部門報工資料
  with SaveQry1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select qty,');  //一次OK數量
    sql.add('       ngqty,'); //QC不良返修數量
    sql.add('       reqty '); //QC返修數量
    sql.add('from WOPR');    //QC報工資料檔
    sql.Add('Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',WorkDate.Date)+#39);
    sql.add('      and SJXH = '+#39+XH_ID.Text+#39);
    sql.add('      and DepNo = '+#39+DepNo.Text+#39);
    sql.add('      and GSBH = '+#39+main.Edit2.Text+#39);
    sql.add('      and SCBH='''+DDBHCombo.Text+''' and gxlb='''+TGXLB+'''');
    sql.add('      and CC=''NULL'''); //報工制為 CC尺寸為NULL
    active:=true;
  end;

  //更新WOPR 累加 NGQty 和 ReQty
  with SaveQry1 do
  begin
    if recordcount>0 then
    begin
      PaQty :=FieldByName('Qty').AsInteger+ QtySpin.Value;
      NGQty :=FieldByName('NGQty').AsInteger+ NGQtySpin.Value;
      ReQty :=FieldByName('ReQty').AsInteger+ ReQtySpin.Value;

      //更新WOPR資料
      SQL.Clear;
      SQL.Add('Update WOPR Set');
      sql.add('       qty='+inttostr(PaQty)+',');  //一次OK數量
      sql.add('       ngqty='+inttostr(NGQty)+','); //QC不良返修數量
      sql.add('       reqty='+inttostr(ReQty)+', '); //QC返修數量
      sql.add('       userdate=GetDate() ');
      sql.Add('Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',WorkDate.Date)+#39);
      sql.add('      and SJXH = '+#39+XH_ID.Text+#39);
      sql.add('      and DepNo = '+#39+DepNo.Text+#39);
      sql.add('      and GSBH = '+#39+main.Edit2.Text+#39);
      sql.add('      and SCBH='''+DDBHCombo.Text+''' and gxlb='''+TGXLB+'''');
      sql.add('      and CC=''NULL'''); //報工制為 CC尺寸為NULL
      ExecSQL;
    end else
    begin
      //檢查是否當天生產跨訂單
      //
      PaQty   := QtySpin.Value;
      NGQty := NGQtySpin.Value;
      ReQty := ReQtySpin.Value;
      //新增WOPR資料
      active:=false;
      sql.Clear;
      sql.add('INSERT INTO WOPR ');
      sql.add(' (SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)  ');
      sql.Add('  VALUES ('''+formatdatetime('yyyy/MM/dd',WorkDate.Date)+#39);
      sql.add(','+#39+XH_ID.Text+#39);
      sql.add(','+#39+DepNO.Text+#39);
      sql.add(','+#39+main.Edit2.Text+#39);
      sql.add(','''+DDBHCombo.Text+''','''+TGXLB+'''');
      sql.add(',''NULL'','+inttostr(PaQty)+','+inttostr(NGQty)+','+inttostr(ReQty)+','''+main.edit1.text+''',GetDate())');
      ExecSQL;
    end;
  end;
  //檢查使用者需要輸入品檢原因數量 才能新增QCR 和 QCRD
  with QCBLYYQry do
  begin
    IsHaveDeFect:=false;
    First;
    while not Eof do
    begin
      if FieldByName('Qty').AsInteger>0 then
      begin
        IsHaveDeFect:=true;
        break;
      end;
      Next;
    end;
  end;
  //如果使用者有輸入Defect原因數量才需要新增,避免新增空值QCR檔頭
  if IsHaveDeFect=true then
  begin
    //QCR流水號 -----------------------------------------------
    with SaveQry2 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select top 1 ProNO from QCR order by ProNO Desc ');
        active:=true;
        if recordcount>0 then
          begin
            ProNO:='000000000'+inttostr(strtoint(fieldbyname('ProNO').Value)+1);
            ProNO:=copy(ProNO,length(ProNO)-9,10)
          end
        else
          ProNO:='0000000001';
      end;
    //新增QCR 和 QCRD
    with SaveQry1 do
    begin
      //品檢資料頭檔
      sql.Clear;
      sql.Add('insert into QCR (ProNo, SCDate, SJXH, DepNo, GSBH,SCBH,GXLB,CC,USERID, USERDATE)' ) ;
      sql.add(' values ('+#39+ProNO+#39+','+#39+Formatdatetime('YYYY/MM/DD',WorkDate.Date)+#39+','+#39+XH_ID.Text+#39+','+#39+DepNO.Text+#39+','+#39+main.Edit2.Text+#39);
      sql.add(','''+DDBHCombo.Text+''','''+TGXLB+''',''NULL'' ');
      sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+')');
      execsql;
      //品檢資料身檔
      with QCBLYYQry do
      begin
        First;
        while Not Eof do
        begin
          if FieldByName('Qty').AsInteger>0 then
          begin
              SaveQry2.Active:=false;
              SaveQry2.sql.Clear;
              SaveQry2.sql.Add('insert into QCRD (ProNo, YYBH, Qty,USERID, USERDATE)' ) ;
              SaveQry2.sql.add(' values ('+#39+ProNO+#39+','+#39+FieldByName('YYBH').AsString+#39+','+FieldByName('Qty').AsString);
              SaveQry2.sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+')');
              SaveQry2.execsql;
          end;
          Next;
        end;
      end;
    end;
  end;
  Showmessage('Input QC data OK!');
end;

procedure TQC_BatchInput.BitBtn1Click(Sender: TObject);
begin
  QCOnTime_XH:=TQCOnTime_XH.create(self);
  QCOnTime_XH.Label3.Caption := 'SN5B';
  QCOnTime_XH.show;
end;

procedure TQC_BatchInput.BB4Click(Sender: TObject);
begin
  BB4.Enabled:=false;
  if FileExists(ExtractFilePath(Application.ExeName)+'\KeyBoard.exe')=false then
    CopyFile(Pchar('\\'+main.ServerIP+'\d$\liy_erp\KeyBoard.exe'),Pchar(ExtractFilePath(Application.ExeName)+'\KeyBoard.exe'),false);

  if FileExists(ExtractFilePath(Application.ExeName)+'\KeyBoard.exe') then
  begin
       funcObj.StopAP(ExtractFilePath(Application.ExeName)+'\KeyBoard.exe');
       funcObj.StartAP(ExtractFilePath(Application.ExeName)+'\KeyBoard.exe');
  end;
  BB4.Enabled:=true;
end;

procedure TQC_BatchInput.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TQC_BatchInput.BB2Click(Sender: TObject);
begin
  ShoeBC:=TShoeBC.Create(self);
  ShoeBC.ShowModal();
  ShoeBC.Free;
end;

end.
