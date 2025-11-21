unit AndonInput1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables, DBCtrls, StrUtils,
  colorbutton, jpeg, MPlayer;

type
  TAndonInput = class(TForm)
    Query1: TQuery;
    QTemp: TQuery;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    Edit5: TEdit;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Label7: TLabel;
    DataSource1: TDataSource;
    Query5: TQuery;
    ComboBox1: TComboBox;
    Button2: TButton;
    Edit6: TEdit;
    Panel4: TPanel;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    ColorButton3: TColorButton;
    ColorButton4: TColorButton;
    ColorButton5: TColorButton;
    Label8: TLabel;
    Label9: TLabel;
    ColorButton6: TColorButton;
    ColorButton7: TColorButton;
    ColorButton8: TColorButton;
    ColorButton9: TColorButton;
    ColorButton10: TColorButton;
    ColorButton11: TColorButton;
    ColorButton12: TColorButton;
    ColorButton13: TColorButton;
    ColorButton14: TColorButton;
    ColorButton15: TColorButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Label10: TLabel;
    ColorButton16: TColorButton;
    ColorButton17: TColorButton;
    Edit29: TEdit;
    qrySize: TQuery;
    Label11: TLabel;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    btn1: TButton;
    btn2: TButton;
    chk1: TCheckBox;
    chk2: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Button6: TButton;
    Query2: TQuery;
    Query3: TQuery;
    Panel5: TPanel;
    Button7: TButton;
    ColorButton18: TColorButton;
    Timer1: TTimer;
    Query4: TQuery;
    ShoeBCColorBtn: TColorButton;
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
    procedure ColorButton17Click(Sender: TObject);
    procedure ColorButton16Click(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure ColorButton4Click(Sender: TObject);
    procedure ColorButton3Click(Sender: TObject);
    procedure ColorButton5Click(Sender: TObject);
    procedure Edit29Enter(Sender: TObject);
    procedure Edit29Exit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ColorButton18Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ShoeBCColorBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure CustomButtonClick(Sender: TObject);
    procedure SizeButtonClick(Sender: TObject);
    procedure AddCounter(TYYBH : string; PorMOne : integer);
    function  MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;Buttons: TMsgDlgButtons; Captions: array of string): Integer;
  public
    { Public declarations }
  end;

var
  AndonInput: TAndonInput;
  FixedComponentCount,DDD,EEE,GGG,Offset,Total : Integer;
  NP : Integer; //第幾個按鈕
  TDFL,TGXLB,TupdateUser : string;
  PEdit,TPorMOne : integer;

  NDate:TDate;   //今天的日期
  NYear:Integer;
  NMonth:Integer;
  NDay:Integer;
  
  ic : array [1..50] of String;    //訂單尺寸
  id : array [1..50] of Integer;   //訂單尺寸數量
  ie : array [1..50] of Integer;   //一次OK數量
  ig : array [1..50] of Integer;   //返修完成數量
  ih : array [1..50] of String;    //訂單單號

  kc : array [1..10] of TColorButton; //訂單尺寸 按鈕
  kd : array [1..10] of TEdit;        //訂單尺寸雙數 顯示在畫面上用
  ke : array [1..10] of TEdit;        //一次OK雙數   顯示在畫面上用
  kg : array [1..10] of TEdit;        //返修完成數量 顯示在畫面上用
  kh : array [1..10] of TLabel;       //不知??  


implementation

uses QCOnTime_Dep1, QCOnTime_XH1,main1, QCQueryList1, QCOnTime_Query1, MMSystem,
     AndonPicP,ShoeBC1,FunUnit;
const
 s = 'C:\ERP\alarmsound1.wav';
 s2 = 'C:\ERP\alarmsound2.wav';
{$R *.dfm}
//自訂選擇視窗改變文字,DFL大分類 成型前段A或後段AR
function TAndonInput.MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;Buttons: TMsgDlgButtons; Captions: array of string): Integer;
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

procedure TAndonInput.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TAndonInput.FormDestroy(Sender: TObject);
begin
  AndonInput := nil;
end;

procedure TAndonInput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

//[create] =====================================================================
procedure TAndonInput.FormCreate(Sender: TObject);
var
  dpid : String;
  i : Integer;
  SubSQL1,SubSQL2:string;
begin
  DateTimePicker1.DateTime := now;
  FixedComponentCount := 0;
  edit1.Text := '01';  //時間序號
  //==================
  //取今天的日期
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate,');
      sql.add('       datepart(year,getdate()) as NYear,');
      sql.add('       datepart(month,getdate()) as NMonth, ');
      sql.add('       datepart(day,getdate()) as NDay');

      active:=true;
      NDate:=fieldbyname('NDate').Value;
      NYear:=fieldbyname('NYear').Value;
      NMonth:=fieldbyname('NMonth').Value;
      NDay:=fieldbyname('NDay').Value;
      active:=false;
      sql.Clear;
      active:=false;
    end;
  //==================

  with query1 do
    begin
      //取 工作:起始時間-迄止時間
      //取 工作時數
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
      sql.Clear;
      sql.add('select * from scsj Where XH = '+''''+'01'+'''');
      active:=true;
      if not eof then
      begin
        Edit2.Text := fieldbyname('FTime').value +'-'+ fieldbyname('TTime').value;//起始時間-迄止時間
        Edit3.Text := fieldbyname('YXGS').value ;  //工作時數
      end;

    //取使用者=>部門編號
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

    //取部門名稱
    active:=false;
    sql.Clear;
    sql.add('select * from BDepartment Where id = '+''''+dpid+''''+' and gsbh = '+''''+main.Edit2.Text+'''');
    active:=true;
    if not eof then
      edit5.Text := fieldbyname('DepName').value ;
    active:=false;

     image1.Visible:=true;
     image2.Visible:=true;
     image3.Visible:=false;
     image4.Visible:=false;
     BUTTON6.Enabled := false;

  end;

  //編製:製令(訂單)編號 ==>下拉選單
  with query5 do
  begin
    active:=false;
    sql.Clear;

    //原本程式預設是裁斷
    SubSQL1:='	      where smddss.gxlb=''S''';
    SubSQL2:='        and (smdd.gxlb=''S'' )';
    if rightstr(edit5.Text,1)='G' then //成型
    begin
      SubSQL1:='	      where smddss.gxlb=''A''';
      SubSQL2:='        and (smdd.gxlb=''A'' )';
    end else if  rightstr(edit5.Text,1)='M' then //針車
    begin
      SubSQL1:='	      where smddss.gxlb=''S''';
      SubSQL2:='        and (smdd.gxlb=''S'' )';
    end else if  rightstr(edit5.Text,1)='C' then //裁斷
    begin
      SubSQL1:='	      where smddss.gxlb=''C''';
      SubSQL2:='        and (smdd.gxlb=''C'' )';
    end;
    sql.add('select zlbh from ');
    sql.add(' (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd ');
    sql.add('  left join zlzl on zlzl.zlbh=smdd.ysbh  ');
    sql.add('  left join ddzl on ddzl.ddbh=smdd.ysbh  ');
    sql.add('  left join ');
    sql.add('      (select smddss.ddbh,sum(okcts*qty) as qty');
    sql.add('       from smddss');
    sql.add(SubSQL1);//20120226 修改判斷部門生產別過濾挑選訂單
    sql.add('	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh ');
    sql.add('  where ddzl.yn='+''''+'1'+'''' );  //有沒有入庫
    sql.add('        and smdd.plandate <= getdate()' );  //已排產
    sql.add('        and smdd.depno=' + '''' + edit4.Text + '''' );//派工組別
    sql.add(SubSQL2);//20120226 修改判斷部門生產別過濾挑選訂單
    sql.Add('        and ddzl.gsbh=' + '''' + main.Edit2.text + '''');
    sql.add('  group by smdd.ysbh	) as dd');
    sql.add(' where  dd.lqty >0 ');

    {
    //20140226原本的程式
    if rightstr(edit5.Text,1)='G' then //成型
    begin
      //已入庫
      sql.add('select zlbh from ');
      sql.add(' (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd ');
      sql.add('  left join zlzl on zlzl.zlbh=smdd.ysbh  ');
      sql.add('  left join ddzl on ddzl.ddbh=smdd.ysbh  ');
      sql.add('  left join ');
      sql.add('      (select smddss.ddbh,sum(okcts*qty) as qty');
      sql.add('       from smddss');
      sql.add('	      where smddss.gxlb='+''''+'A'+'''');
      sql.add('	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh ');
      sql.add('  where ddzl.yn='+''''+'1'+'''' );  //有沒有入庫
      sql.add('        and smdd.plandate <= getdate()' );  //已排產
      sql.add('        and smdd.depno=' + '''' + edit4.Text + '''' );//派工組別
      sql.add('        and and smdd.gxlb='+''''+'A'+''''); //成型
      sql.Add('        and ddzl.gsbh=' + '''' + main.Edit2.text + '''');
      sql.add('  group by smdd.ysbh	) as dd');
      sql.add(' where  dd.lqty >0 ');
     end
    else
    begin
      //己入庫
      sql.add('select zlbh from ');
      sql.add(' (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd ');
      sql.add('  left join zlzl on zlzl.zlbh=smdd.ysbh  ');
      sql.add('  left join ddzl on ddzl.ddbh=smdd.ysbh  ');
      sql.add('  left join ');
      sql.add('      (select smddss.ddbh,sum(okcts*qty) as qty');
      sql.add('       from smddss');
      sql.add('	      where smddss.gxlb='+''''+'S'+'''');
      sql.add('	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh ');
      sql.add('  where ddzl.yn='+''''+'1'+'''' );  //有沒有入庫
      sql.add('        and smdd.plandate <= getdate()' );  //已排產
      sql.add('        and smdd.depno=' + '''' + edit4.Text + '''' );//派工組別      
      sql.add('        and smdd.gxlb='+''''+'S'+''''); //針車
      sql.Add('        and ddzl.gsbh=' + '''' + main.Edit2.text + '''');
      sql.add('  group by smdd.ysbh	) as dd');
      sql.add(' where  dd.lqty >0 ');
    end;
    }
    //memo1.text:=sql.text;
    active:=true;
    first;
    while not eof  do
    begin
      combobox1.Items.Add(fieldbyname('ZLBH').value);
      Next;
    end;
  end;

  PEdit := 0;

  kc[1] := ColorButton6;
  kc[2] := ColorButton7;
  kc[3] := ColorButton8;
  kc[4] := ColorButton9;
  kc[5] := ColorButton10;
  kc[6] := ColorButton11;
  kc[7] := ColorButton12;
  kc[8] := ColorButton13;
  kc[9] := ColorButton14;
  kc[10] := ColorButton15;

  kd[1] := Edit8;
  kd[2] := Edit9;
  kd[3] := Edit10;
  kd[4] := Edit11;
  kd[5] := Edit12;
  kd[6] := Edit13;
  kd[7] := Edit14;
  kd[8] := Edit15;
  kd[9] := Edit16;
  kd[10] := Edit17;

  ke[1] := Edit19;
  ke[2] := Edit20;
  ke[3] := Edit21;
  ke[4] := Edit22;
  ke[5] := Edit23;
  ke[6] := Edit24;
  ke[7] := Edit25;
  ke[8] := Edit26;
  ke[9] := Edit27;
  ke[10] := Edit28;

  kg[1] := Edit31;
  kg[2] := Edit32;
  kg[3] := Edit33;
  kg[4] := Edit34;
  kg[5] := Edit35;
  kg[6] := Edit36;
  kg[7] := Edit37;
  kg[8] := Edit38;
  kg[9] := Edit39;
  kg[10] := Edit40;

  kh[1] := lbl1;
  kh[2] := lbl2;
  kh[3] := lbl3;
  kh[4] := lbl4;
  kh[5] := lbl5;
  kh[6] := lbl6;
  kh[7] := lbl7;
  kh[8] := lbl8;
  kh[9] := lbl9;
  kh[10] := lbl10;
  
  for i:=1 to 10 do
  begin
    kc[i].Visible := false;
    kc[i].OnClick := SizeButtonClick;
    kd[i].Visible := false;
    ke[i].Visible := false;
    kg[i].Visible := false;
  end;
end;

procedure TAndonInput.BitBtn1Click(Sender: TObject);
begin
  QCOnTime_XH:=TQCOnTime_XH.create(self);
  QCOnTime_XH.Label3.Caption := 'SN56';
  QCOnTime_XH.show;
end;

procedure TAndonInput.BitBtn2Click(Sender: TObject);
begin
  QCOnTime_Dep:=TQCOnTime_Dep.create(self);
  QCOnTime_Dep.Label3.Caption := 'SN56';
  QCOnTime_Dep.show;
end;

//[query]=======================================================================
procedure TAndonInput.Button4Click(Sender: TObject);
var
  strList: TStringList;
  i,j,CCC : integer;
  ia : array [1..30] of TButton;  //原因說明
  ib : array [1..30] of TEdit;    //原因代號
begin

  //
  button5.Click;  //[stop]
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
        Components[FixedComponentCount].Destroy;

    strList := TStringList.Create;
    strList.Add('G');  //成型
    strList.Add('M');  //針車
    strList.Add('C');  //裁斷
//    strList.Add('LY_IN');  //印刷
//    strList.Add('LY_TH');  //電繡
//    strList.Add('LY_EP');  //壓花
    //-------->//根據測試.目前程式可做到==>成型.針車..其餘沒有

    //不同的部門.指定不同的工段類別.以便下面取用不同的QC原因
    case strList.IndexOf(rightstr(edit5.Text,1)) of
      0 :
        begin
          //QCBLYY.DFL  ,A12 成型QC檢驗會分前後段 所以有區分 A or AR 兩種 , B1廠 只分 A
          if main.Edit2.Text='VA12' then
          begin
            if MyMessageDialog('truoc Go hay la sau go?', mtConfirmation, mbOKCancel,['truoc go', 'sau go']) = mrOk then
            begin
              TGXLB := 'A'; //WORK.GBLB
              TDFL := 'A'
            end else
            begin
              TGXLB := 'AR'; //WORK.GBLB
              TDFL := 'AR';
            end;
          end else
          begin
              TGXLB := 'A'; //WORK.GBLB
              TDFL := 'A'; //VB廠大分類只會有 A 成型不分前後成型
          end;
        end;
      1 :
        begin
          TGXLB := 'C+S'; //WORK.GBLB
          TDFL := 'S';    //QCBLYY.DFL
        end;
      2 :
        begin
          TGXLB := 'C';  //WORK.GBLB
          TDFL := 'C';   //QCBLYY.DFL
        end;
      {
      3 :
        begin
          TGXLB := 'X';
          TDFL := 'O';
        end;
      4 :
        begin
          TGXLB := 'X';
          TDFL := 'O';
        end;
        }
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

  //步驟1.先秀出==>訂單尺寸.訂單尺寸數量.一次ok數量.返修ok數量
  //                訂單總數量.一次ok總數量.返修完成總數量
  IF COMBOBOX1.Text <> '' THEN
    BEGIN
        with qrySize do
        begin
          active:=false;
          sql.Clear;
          sql.add('select ddzls.ddbh,');     //訂單編號
          sql.add('       ddzls.cc,');       //訂單尺寸
          sql.add('       ddzls.quantity,'); //訂單尺寸數量
          sql.add('       sca.QTY,');        //一次ok數量
          sql.add('       sca.ReQTY,');      //返修完成數量
          sql.add('       SCA.GXLB, ');      //工段
          sql.add('       DDZL.XieXing, ');  //鞋型
          sql.Add('       DDZL.SheHao');     //色號
          sql.add('from ddzls');
          sql.add('left join (select scbh,'); //報工日期
          sql.add('                  cc,');   //Size
          sql.add('                  gxlb,'); //工段
          sql.add('                  qty,');  //一次OK數量
          sql.add('                  reqty'); //返修完成數量
          sql.add('           from WOPR');    //報工資料(QIP專用)
          sql.Add('           Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
          sql.add('                 and SJXH = '+#39+Edit1.Text+#39);
          sql.add('                 and DepNo = '+#39+Edit4.Text+#39);
          sql.add('                 and GSBH = '+#39+main.Edit2.Text+#39);
          sql.add('                 and SCBH='''+COMBOBOX1.Text+''' and gxlb='''+TGXLB+''' ) sca on sca.scbh=ddzls.ddbh and sca.cc=ddzls.cc');
          sql.add('left join ddzl on ddzl.ddbh = ddzls.ddbh ');
          sql.add('where ddzls.ddbh='''+COMBOBOX1.Text+'''');
          //memo1.Text:=sql.Text;
          active:=true;

          //抓取抽驗基數
          with query4 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select CJQTY from QCXXCJ');
            sql.Add('where XieXing = '''+qrySize.FieldByName('XieXing').AsString+'''');
            sql.Add('      and SheHao = '''+qrySize.FieldByName('SheHao').AsString+'''');
            active:=true;
          end;

          if (recordcount > 0) and (recordcount < 51) then //訂單多才尺寸.就多少筆
            begin
              DDD := 0;
              EEE := 0;
              GGG := 0;
              NP  := 0;
              for i:=1 to recordcount do
                begin
                  ic[i] := fieldbyname('cc').asstring;    //訂單尺寸
                  id[i] := fieldbyname('quantity').Value; //訂單尺寸數量
                  ih[i] := fieldbyname('ddbh').asstring;  //訂單單號

                  if fieldbyname('qty').Value = null then //一次OK數量
                    ie[i] := 0
                  else
                    ie[i] := fieldbyname('qty').Value;

                  if fieldbyname('reqty').Value = null then //返修完成數量
                    ig[i] := 0
                  else
                    ig[i] := fieldbyname('reqty').Value;

                  //累計 ------------
                  DDD := DDD + id[i]; //訂單總數量
                  EEE := EEE + ie[i]; //一次ok數量
                  GGG := GGG + ig[i]; //返修完成數量

                  if i < 11 then      //前10個尺寸
                    begin
                      //訂單尺寸
                      kc[i].Caption := ic[i];
                      kc[i].Hint    := inttostr(i);
                      kc[i].Visible := true;

                      //訂單尺寸雙數
                      kd[i].Text    := copy('         '+inttostr(id[i]),length(inttostr(id[i])),10);
                      kd[i].Visible := true;

                      //一次OK雙數
                      ke[i].Text    := copy('         '+inttostr(ie[i]),length(inttostr(ie[i])),10);
                      ke[i].Visible := true;

                      //返修完成數量
                      kg[i].Text    := copy('         '+inttostr(ig[i]),length(inttostr(ig[i])),10);
                      kg[i].Visible := true;
                      
                      //不知道是什麼東東??
                      kh[i].Caption := ih[i];
                      kh[i].Visible := true;    
                    end ;

                  next;
                end;

              //一個畫面容10個尺寸..超過則出現[NEXT]按鈕..可按下一批尺寸
              if recordcount > 10 then ColorButton17.Visible := true;

              //小於10個尺寸以內的.第10個不要顯示
              if recordcount < 10 then
                for j := recordcount+1 to 10 do
                  begin
                    kc[j].Visible := false;
                    kd[j].Visible := false;
                    ke[j].Visible := false;
                    kg[j].Visible := false;
                    kh[j].Visible := false;
                  end;


              //總計數量
              edit7.Text  := copy('         '+inttostr(DDD),length(inttostr(DDD)),10); //訂單總數量
              edit18.Text := copy('         '+inttostr(EEE),length(inttostr(EEE)),10); //一次ok總數量
              edit30.Text := copy('         '+inttostr(GGG),length(inttostr(GGG)),10); //返修完成總數量
              offset := 0;
              total := recordcount; //共多少個鞋碼
            end

          else

            begin
              showmessage('Wrong RY#!');
              exit;
            end;

        end;
    END
  ELSE
    begin
      showmessage('Please Select RY# first!');
      exit;
    end;

  //步驟2:秀出QC原因 -----------------------------------------------------------
  with query1 do
    begin
      //以不同的大工段.取用不同的QC原因
      active:=false;
      sql.Clear;
      //判斷英文QC原文
      if chk1.Checked and not chk2.Checked then
        sql.add('select YYBH,YWSM from QCBLYY Where DFL = '+''''+TDFL+''''+' and gsbh=' + '''' + main.Edit2.text + ''' and YN=''2'' order by YYBH');
      //判斷越文QC原文
      if not chk1.Checked and chk2.Checked then
        sql.add('select YYBH,ZWSM from QCBLYY Where DFL = '+''''+TDFL+''''+' and gsbh=' + '''' + main.Edit2.text + ''' and YN=''2'' order by YYBH');
      //memo1.text:=query1.sql.text;
      active:=true;
      for i:=1 to recordcount do
        begin
          ia[i] := TButton.Create(self);
          with ia[i] do
            begin
              //判斷英文QC原因
              if chk1.Checked and not chk2.Checked then
                Caption := fieldbyname('YYBH').asstring + ' : '+fieldbyname('YWSM').asstring;
              //判斷英文QC原因
              if not chk1.Checked and  chk2.Checked then
                Caption := fieldbyname('YYBH').asstring + ' : '+fieldbyname('ZWSM').asstring;

              Top := ((i + 1) div 2) * 30 + 300;
              Left := ((i + 1) mod 2) * 450 + 60;
              Font.Size := 12;
              Width := 440;
              height:=25;
              OnClick := CustomButtonClick;       // 指定button click事件
              Parent := self;   //顯示於螢幕
              Enabled := false;
            end;

          //原因統計欄位
          ib[i] := TEdit.Create(Self);
          with ib[i] do
            begin
              Text := '0';
              Name := fieldbyname('YYBH').asstring;
              Font.Size := 12;
              height:=25;
              Width := 40;
              Top := ((i + 1) div 2) * 30 + 300;
              Left := ((i + 1) mod 2) * 450 + 460;
              ReadOnly := true;
              Parent := self; //顯示於螢幕
            end;
          next;
        end;
      active:=false;
    end;

  button1.Visible := true;
  button5.Visible := False;
  Button2.Visible := true;
  Edit6.Visible   := true;
  ColorButton18.Visible:=true;
end;

procedure TAndonInput.FormActivate(Sender: TObject);
begin
  if FixedComponentCount = 0 then
    FixedComponentCount := self.ComponentCount;
end;

procedure TAndonInput.CustomButtonClick(Sender: TObject);
var
  Tyybh : string;
  Posi:Integer;
begin
  Posi:=Pos(' : ',TButton(Sender).Caption);
  if Posi>0 then
  begin
    Tyybh := Copy(TButton(Sender).Caption,1,Posi-1);
    AddCounter(TYYBH,TPorMOne);
  end;
end;

procedure TAndonInput.SizeButtonClick(Sender: TObject);
begin
  if np<>0 then
  begin
    ke[NP-offset].color := clWindow;
    kg[NP-offset].color := clWindow;
    kh[NP-offset].color := clBtnFace;
  end;
  NP := strtoint(TColorButton(Sender).Hint);
  if id[NP] = ie[NP]+ig[NP] then
  Begin
    NP := 0;
  end
  else
  begin
    ke[NP-offset].color := clRed;
    kg[NP-offset].color := clRed;
    kh[NP-offset].color := clRed;
  end;
end;

//[START] ======================================================================
procedure TAndonInput.Button1Click(Sender: TObject);
var
  i,ccc : integer;
//  Tprono : string;
begin
  //確定選今天現在的日期
  if formatdatetime('yyyy/MM/dd',datetimepicker1.Date) = formatdatetime('yyyy/MM/dd',now) then
    begin
      if eee < ddd then  // EEE=>一次ok數量   DDD=>訂單總數量
        begin
          //showmessage(inttostr(NP));
          if NP>0 then //NP:第幾個尺寸安鈕
            begin
              CCC := self.ComponentCount;
              //showmessage(inttostr(CCC));
              //showmessage(inttostr(FixedComponentCount));
              if CCC > FixedComponentCount then
                for i := FixedComponentCount+1 to CCC do
                  if Components[i-1] is TButton then
                    begin
                    TButton(Components[i-1]).Enabled := true;
                    end;

                  button4.Visible := false;        //[QUERY]
                  btn1.Visible    := false;        //[ADD1]
                  btn2.Visible    := false;        //[REMOVE]
                  datetimepicker1.Enabled := false;//日期欄位
                  bitbtn1.Enabled := false;        //時段按鈕
                  bitbtn2.Enabled := false;        //部門按鈕
                  Button2.Visible := false;
                  combobox1.Enabled := false;      //訂單按鈕
                  Edit6.Visible   := false;        //暫存用欄位
                  keypreview      := true;         //支持按鍵操作，如要設置快捷鍵就需要
                  TPorMOne        := 1;
                  ColorButton1.Visible := True;    //[ENTER]
                  ColorButton3.Visible := True;    //[CANCEL]
                  ColorButton5.Visible := True;    //[BGUpdate]
                  Edit29.Visible  := True;         //欄位->不知要做什麼
                  ColorButton4.Visible := True;    //[Re_Enter]
                  Button1.Visible := False;        //[START]
                  Button3.Visible := False;        //[EXIT]
                  Button5.Visible := True;         //[STOP]
                  ShoeBCColorBtn.Visible := True;    //B/C SHoe 20140717 weston新增
                  //showmessage('3333');
            end
          else
            showmessage('You need choose Size First!');
        end
      else
        showmessage('This RY# completed!');
    end
  else
    showmessage('It is not today'+#39+'s data');

end;

procedure TAndonInput.Edit4Change(Sender: TObject);
begin
  Button1.Visible := false;
  Button5.Visible := false;
  Button2.Visible := false;
  Edit6.Visible := false;
end;

procedure TAndonInput.Edit1Change(Sender: TObject);
begin
  Button1.Visible := false;
  Button5.Visible := false;
  Button2.Visible := false;
  Edit6.Visible := false;
end;

procedure TAndonInput.DateTimePicker1Change(Sender: TObject);
begin
  Button1.Visible := false;
  Button5.Visible := false;
  Button2.Visible := false;
  Edit6.Visible := false;
end;

//Button5(STOP)_click ==========================================================
procedure TAndonInput.Button5Click(Sender: TObject);
var
  i,ccc : integer;
begin
  //[亮燈控制.恢復開始] --------------------------------------------------------
  image1.Visible:=true;
  image2.Visible:=true;
  image3.Visible:=false;
  image4.Visible:=false;
  BUTTON6.Enabled := false;
  BUTTON6.Enabled := false;  //[Light OFF]
  //----------------------------------------------------------------------------

  ColorButton1.Visible := False;
  ColorButton3.Visible := False;
  ColorButton5.Visible := False;
  ShoeBCColorBtn.Visible := False;    //B/C SHoe 20140717 weston新增
  Edit29.Visible := False;
  if NP > 0 then
  begin
    ke[NP-offset].Color := clWindow;
    kg[NP-offset].Color := clWindow;
    kh[NP-offset].color := clBtnFace;
    NP := 0;
  end;
  ColorButton4.Visible := False;
  Button1.Visible := True;
  Button3.Visible := True;
  Button5.Visible := False;
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
      if Components[i-1] is TButton then
        TButton(Components[i-1]).Enabled := false;

      button4.Visible := true;
      btn1.Visible := true;
      btn2.Visible := true;
//      datetimepicker1.Enabled := true;
      bitbtn1.Enabled := true;
      bitbtn2.Enabled := true;
      combobox1.Enabled := true;
      if Button2.Visible = false then
        begin
          Button2.Visible := true;
          Edit6.Visible := true;
        end
  else
      begin
        Button1.Visible := true;
      end;

  keypreview := false;
  if PEdit <> 0 then
     begin
       TEDIT(Components[Pedit]).color := clWindow;
       PEdit := 0;
     end;
end;

procedure TAndonInput.FormKeyPress(Sender: TObject;
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

procedure TAndonInput.AddCounter(TYYBH : string; PorMOne : integer);
var
  i,ccc : integer;
  Tuser : string;
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
//          Tprono := query2.Fields.Fields[0].AsString;
          if PorMOne > 0 then
            Tuser:=main.Edit1.Text
          else
            TUser:=TupdateUser;
          exit;
        end;
    end;
end;

procedure TAndonInput.Button2Click(Sender: TObject);
var
  i,ccc : integer;
  TUserID : String;
begin
  if (formatdatetime('yyyy/MM/dd',datetimepicker1.Date) = formatdatetime('yyyy/MM/dd',now)) then
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
        btn1.Visible := false;
        btn2.Visible := false;
        datetimepicker1.Enabled := false;
        bitbtn1.Enabled := false;
        bitbtn2.Enabled := false;
        Button1.Visible := false;
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
    showmessage('It is not today'+#39+'s data');
  Edit6.Text := '';
  Button5.Visible := True;
end;

//[Next]下頁 ===================================================================
procedure TAndonInput.ColorButton17Click(Sender: TObject);
var i,j : Integer;
begin
  if total - offset > 10 then
  begin
    if NP > 0 then
    begin
      ke[NP-offset].Color := clWindow;
      kg[NP-offset].Color := clWindow;
      kh[NP-offset].Color := clBtnFace;
    end;
    offset := offset + 1;
    if NP > 0 then
    begin
      if NP-offset > 0 then
        begin
          ke[NP-offset].Color := clRed;
          kg[NP-offset].Color := clRed;
          kh[NP-offset].Color := clRed;
        end
      else
        begin
          NP := 0;
          Button5.Click;
        end;
    end;

    for i:=1 to 10 do
    begin
      j := i+offset;
      kc[i].Caption := ic[j];
      kc[i].Hint    := inttostr(j);
      kd[i].Text    := copy('         '+inttostr(id[j]),length(inttostr(id[j])),10);
      ke[i].Text    := copy('         '+inttostr(ie[j]),length(inttostr(ie[j])),10);
      kg[i].Text    := copy('         '+inttostr(ig[j]),length(inttostr(ig[j])),10);
      kh[i].Caption := ih[j];
    end;

    if not ColorButton16.Visible then  ColorButton16.Visible := true;
    if j = total then ColorButton17.Visible := False;
  end;
end;

//[Previous] 上頁 ==============================================================
procedure TAndonInput.ColorButton16Click(Sender: TObject);
var i,j : Integer;
begin
  if offset > 0 then
  begin
    if NP > 0 then
    begin
      ke[NP-offset].Color := clWindow;
      kg[NP-offset].Color := clWindow;
      kh[NP-offset].Color := clBtnFace;
    end;
    offset := offset - 1;
    if NP > 0 then
    begin
      if NP-offset < 11 then
        begin
          ke[NP-offset].Color := clRed;
          kg[NP-offset].Color := clRed;
          kh[NP-offset].Color := clRed;
        end
      else
        begin
          NP := 0;
          Button5.Click;
        end;
    end;
    for i:=1 to 10 do
    begin
      j := i+offset;
      kc[i].Caption := ic[j];
      kc[i].Hint := inttostr(j);
      kd[i].Text := copy('         '+inttostr(id[j]),length(inttostr(id[j])),10);
      ke[i].Text := copy('         '+inttostr(ie[j]),length(inttostr(ie[j])),10);
      kg[i].Text := copy('         '+inttostr(ig[j]),length(inttostr(ig[j])),10);
      kh[i].Caption := ih[j];
    end;
    if not ColorButton17.Visible then  ColorButton17.Visible := true;
    if offset=0 then ColorButton16.Visible := False;
  end;
end;

//[Enter] 按鈕 =================================================================
//新增記錄:1.WORP==>QC報工資料檔
//         2.QCR==>品檢資料頭檔
//         3.QCRD=>品檢資料身檔
procedure TAndonInput.ColorButton1Click(Sender: TObject);
var
  i,ccc,Pqty,Pngqty : integer;
  CJqty:integer; //抽驗基數
  Tprono,TYBH,TQTY : String;
  NG : Boolean;
  IRec : Integer; //循環用
  mAlarmLC,mStopLC :integer;
  mAlarmLC1,mStopLC1 :integer;
begin
  if NP > 0 then  //第幾個[尺寸鈕]-->大於0.則表示使用者有按[尺寸鈕]
    begin
      with QTemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('select qty,');  //一次OK數量
          sql.add('       ngqty'); //QC不良返修數量
          sql.add('from WOPR');    //QC報工資料檔
          sql.Add('Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
          sql.add('      and SJXH = '+#39+Edit1.Text+#39);
          sql.add('      and DepNo = '+#39+Edit4.Text+#39);
          sql.add('      and GSBH = '+#39+main.Edit2.Text+#39);
          sql.add('      and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
          sql.add('      and CC='''+ic[NP]+'''');
          active:=true;

          if recordcount>0 then
            begin
              pqty   := fieldbyname('qty').Value;
              pngqty := fieldbyname('ngqty').Value;
            end
          else
            begin
              pqty := 0;
              pngqty := 0;
              active:=false;
              sql.Clear;
              sql.add('INSERT INTO WOPR ');
              sql.add(' (SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)  ');
              sql.Add('  VALUES ('''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
              sql.add(','+#39+Edit1.Text+#39);
              sql.add(','+#39+Edit4.Text+#39);
              sql.add(','+#39+main.Edit2.Text+#39);
              sql.add(','''+ih[NP]+''','''+TGXLB+'''');
              sql.add(','''+ic[NP]+''',0,0,0,'''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd',Ndate)+''')');
              ExecSQL;
            end;
        end;

      //儲存錯誤原因次數 =======================================================
      CCC := self.ComponentCount;
      NG := False;
      if CCC > FixedComponentCount then
        for i := FixedComponentCount+1 to CCC do
          begin
            if Components[i-1] is TEdit then
              begin
                if TEDIT(Components[i-1]).Text <> '0' then
                  begin
                    TQTY := TEDIT(Components[i-1]).Text;
                    TYBH := TEDIT(Components[i-1]).name;
                    if NG then
                      begin
                        //存第2個以上的QC狀況 ------
                        //QC品檢資料身檔
                        with QTemp do
                          begin
                            sql.Clear;
                            sql.Add('insert into QCRD (ProNo, YYBH, Qty,USERID, USERDATE)' ) ;
                            sql.add(' values ('+#39+Tprono+#39+','+#39+TYBH+#39+','+TQTY);
                            sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+')');
                            execsql;
                          end;
                        //=================================================
                        //不良原因-各部門連續累計
                        with Qtemp do
                          begin
                            active:=false;
                            sql.Clear;
                            sql.Add('select *  ');
                            sql.add('from QCBLYYS');
                            sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                            active:=true;
                            //showmessage(inttostr(recordcount));
                            //showmessage(TYBH+' '+' '+Edit4.Text+' '+main.Edit2.Text);
                            //如果以前沒有記錄.
                            if recordcount=0 then
                              begin
                                sql.Clear;
                                sql.add('insert into QCBLYYS (YYBH, DepNo, GSBH,AlarmLC,StopLC,Light,USERID, USERDATE,YN)');
                                sql.add(' values ('+''''+TYBH+''''+','+''''+Edit4.Text+''''+','+''''+main.Edit2.Text+''''+','+TQTY+','+TQTY+',1');
                                sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+','+''''+'1'+''''+')');
                                execsql;
                              end
                            else
                              //累計
                              begin
                                mAlarmLC:=fieldbyname('AlarmLC').Value + TQTY;
                                mStopLC:=fieldbyname('StopLC').Value + TQTY;
                                sql.Clear;
                                sql.add('update QCBLYYS  ');
                                sql.add('set AlarmLC = '+inttostr(mAlarmLC)+' , StopLC='+inttostr(mStopLC));
                                sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                execsql;
                                active:=false;
                                sql.Clear;
                                sql.Add('select *  ');
                                sql.add('from QCBLYYS');
                                sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                active:=true;
                                mAlarmLC:=fieldbyname('AlarmLC').Value;
                                mStopLC:=fieldbyname('StopLC').Value;

                                //比對 統計次數和亮燈標準
                                active:=false;
                                sql.Clear;
                                sql.Add('select *  ');
                                sql.add('from QCBLYY');
                                sql.add('where yybh='+''''+TYBH+'''and GSBH='+''''+main.Edit2.Text+'''');
                                //memo1.Text:=qtemp.SQL.Text;
                                active:=true;

                                //亮燈設定
                                mAlarmLC1:= fieldbyname('AlarmL').Value;
                                mStopLC1:= fieldbyname('StopL').Value;
                                if (mAlarmLC >= mAlarmLC1) and (mAlarmLC1<>0) and (mStopLC < mStopLC1) then
                                   begin
                                     image1.Visible:=false;
                                     image3.Visible:=true;
                                 //  BUTTON6.Enabled := true;  //警告階段顯示Light OFF按鈕
                                     sql.Clear;
                                     sql.add('update QCBLYYS  ');
                                     sql.add('set Light = 2');
                                     sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                     execsql;
                                     sndPlaySound(Pchar(s),SND_ASYNC);
                                     Beep;
                                   end;

                                if (mStopLC >= mStopLC1) and (mStopLC1<>0) then
                                   begin
                                     image2.Visible:=false;
                                     image4.Visible:=true;
                                     BUTTON6.Enabled := true;
                                     sql.Clear;
                                     sql.add('update QCBLYYS  ');
                                     sql.add('set Light = 3');
                                     sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                     execsql;
                                     Timer1.Enabled:=true;
                                     sndPlaySound(Pchar(s2),SND_ASYNC);
                                     Beep;
                                   end;


                              end;
                          end;
                          //=================================================
                      end

                    else
                      //存第1個的QC狀況 ------
                      //QC品檢資料頭檔
                      begin
                        //流水號 -----------------------------------------------
                        with QTemp do
                          begin
                            active:=false;
                            sql.Clear;
                            sql.add('select ProNO from QCR order by ProNO Desc ');
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

                          with Qtemp do
                            begin
                              //品檢資料頭檔
                              sql.Clear;
                              sql.Add('insert into QCR (ProNo, SCDate, SJXH, DepNo, GSBH,SCBH,GXLB,CC,USERID, USERDATE)' ) ;
                              sql.add(' values ('+#39+Tprono+#39+','+#39+Formatdatetime('YYYY/MM/DD',DateTimePicker1.Date)+#39+','+#39+Edit1.Text+#39+','+#39+Edit4.Text+#39+','+#39+main.Edit2.Text+#39);
                              sql.add(','''+ih[NP]+''','''+TGXLB+''','''+ic[NP]+'''');
                              sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+')');
                              execsql;
                              //品檢資料身檔
                              sql.Clear;
                              sql.Add('insert into QCRD (ProNo, YYBH, Qty,USERID, USERDATE)' ) ;
                              sql.add(' values ('+#39+Tprono+#39+','+#39+TYBH+#39+','+TQTY);
                              sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+')');
                              execsql;
                            end;

                          //=================================================
                          //不良原因-各部門連續累計
                          with Qtemp do
                            begin
                              active:=false;
                              sql.Clear;
                              sql.Add('select *  ');
                              sql.add('from QCBLYYS');
                              sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                              active:=true;
                              //showmessage(inttostr(recordcount));
                              //showmessage(TYBH+' '+' '+Edit4.Text+' '+main.Edit2.Text);

                              //如果以前沒有記錄.
                              if recordcount=0 then
                                begin
                                  sql.Clear;
                                  sql.add('insert into QCBLYYS (YYBH, DepNo, GSBH,AlarmLC,StopLC,Light,USERID, USERDATE,YN)');
                                  sql.add(' values ('+''''+TYBH+''''+','+''''+Edit4.Text+''''+','+''''+main.Edit2.Text+''''+','+TQTY+','+TQTY+',1');
                                  sql.add(','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+','+''''+'1'+''''+')');
                                  execsql;
                                end
                              else
                                //累計
                                begin
                                  mAlarmLC:=fieldbyname('AlarmLC').Value + TQTY;
                                  mStopLC:=fieldbyname('StopLC').Value + TQTY;
                                  sql.Clear;
                                  sql.add('update QCBLYYS  ');
                                  sql.add('set AlarmLC = '+inttostr(mAlarmLC)+' , StopLC='+inttostr(mStopLC));
                                  sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                  execsql;

                                  active:=false;
                                  sql.Clear;
                                  sql.Add('select *  ');
                                  sql.add('from QCBLYYS');
                                  sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                  active:=true;

                                  mAlarmLC:=fieldbyname('AlarmLC').Value;
                                  mStopLC:=fieldbyname('StopLC').Value;

                                  //比對 統計次數和亮燈標準
                                  active:=false;
                                  sql.Clear;
                                  sql.Add('select *  ');
                                  sql.add('from QCBLYY');
                                  sql.add('where yybh='+''''+TYBH+'''and GSBH='+''''+main.Edit2.Text+'''');
                                  //memo1.Text:=sql.Text;
                                  active:=true;

                                  //亮燈設定
                                  mAlarmLC1:= fieldbyname('AlarmL').Value;
                                  mStopLC1:= fieldbyname('StopL').Value;
                                  if (mAlarmLC >= mAlarmLC1) and (mAlarmLC1<>0) and (mStopLC < mStopLC1) then
                                    begin
                                      image1.Visible:=false;
                                      image3.Visible:=true;
                                  //  BUTTON6.Enabled := true;  //警告階段顯示Light OFF按鈕
                                      sql.Clear;
                                      sql.add('update QCBLYYS  ');
                                      sql.add('set Light = 2');
                                      sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                      execsql;
                                      sndPlaySound(Pchar(s),SND_ASYNC);
                                      Beep;
                                    end;

                                  if (mStopLC >= mStopLC1) and (mStopLC1<>0) then
                                    begin
                                      image2.Visible:=false;
                                      image4.Visible:=true;
                                      BUTTON6.Enabled := true;
                                      sql.Clear;
                                      sql.add('update QCBLYYS  ');
                                      sql.add('set Light = 3');
                                      sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                      execsql;
                                      Timer1.Enabled:=true;
                                      sndPlaySound(Pchar(s2),SND_ASYNC);
                                      Beep;
                                    end;

                                end;
                            end;
                          //=================================================

                        except
                          Messagedlg('Server is too busy , Please try again!',mtwarning,[mbyes],0);
                      end;
                  end;
                NG := True;  //如果Deffcode有按的情況下
                TEDIT(Components[i-1]).Text := '0';
              end;

            TEDIT(Components[i-1]).color := clWindow;
          end;

      end;

    //讀取抽驗基數,如無則設為1
    if query4.FieldByName('CJQTY').IsNull then
    begin
      CJqty:=1;
    end
    else
    begin
      CJqty:=query4.FieldByName('CJQTY').Value;
    end;

    if NG then
    begin
      with QTemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('update wopr set ngqty ='+inttostr(pngqty+1));
          sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
          sql.add(' and SJXH = '+#39+Edit1.Text+#39);
          sql.add(' and DepNo = '+#39+Edit4.Text+#39);
          sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
          sql.add(' and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
          sql.add(' and CC='''+ic[NP]+'''');
          ExecSQL;
        end;
    end
    else
    begin
      with QTemp do
        begin
          active:=false;
          sql.Clear;
          if (pqty+ig[NP]+CJqty) >= id[NP] then   //判斷QC Pass數量是否超過尺寸總數,如果超過就等於尺寸總數
          begin
            sql.add('update wopr set qty ='+inttostr(id[NP]-ig[NP]));
          end
          else
          begin
            sql.add('update wopr set qty ='+inttostr(pqty+CJqty));
          end;
          sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
          sql.add(' and SJXH = '+#39+Edit1.Text+#39);
          sql.add(' and DepNo = '+#39+Edit4.Text+#39);
          sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
          sql.add(' and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
          sql.add(' and CC='''+ic[NP]+'''');
          ExecSQL;
        end;
      if (pqty+ig[NP]+CJqty) >= id[NP] then
      begin
        eee := eee + id[NP] - ig[NP];
      end
      else
      begin
        eee := eee + CJqty;
      end;

      edit18.Text := copy('         '+inttostr(EEE),length(inttostr(EEE)),10);

      if (pqty+ig[NP]+CJqty) >= id[NP] then
      begin
        ie[NP] := id[NP] - ig[NP];
      end
      else
      begin
        ie[NP] := ie[NP] + CJqty;
      end;

      ke[NP-offset].Text := copy('         '+inttostr(ie[NP]),length(inttostr(ie[NP])),10);
      if  id[NP] = ie[NP]+ ig[NP] then
      begin
        ke[NP-offset].Color := clWindow;
        kg[NP-offset].Color := clWindow;
        kh[NP-offset].Color := clBtnFace;
        NP := 0;
        Button5.Click;
      end;
    end;
  end
  else
    showmessage('You need choose Size First!');
end;

//[Re-ENTER] ===================================================================
procedure TAndonInput.ColorButton4Click(Sender: TObject);
var
  i,ccc,Preqty : integer;
  NG : Boolean;
begin
  if NP > 0 then
  begin
    with QTemp do
      begin
        active:=false;
        sql.Clear;
        sql.add('select reqty  from WOPR');
        sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
        sql.add(' and SJXH = '+#39+Edit1.Text+#39);
        sql.add(' and DepNo = '+#39+Edit4.Text+#39);
        sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
        sql.add(' and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
        sql.add(' and CC='''+ic[NP]+'''');
        active:=true;
        if recordcount>0 then
        begin
          preqty := fieldbyname('reqty').Value;
        end
        else
        begin
          preqty := 0;
          active:=false;
          sql.Clear;
          sql.add('INSERT INTO WOPR (SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)  ');
          sql.Add(' VALUES ('''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
          sql.add(','+#39+Edit1.Text+#39);
          sql.add(','+#39+Edit4.Text+#39);
          sql.add(','+#39+main.Edit2.Text+#39);
          sql.add(','''+ih[NP]+''','''+TGXLB+'''');
          sql.add(','''+ic[NP]+''',0,0,0,'''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd',Ndate)+''')');
          ExecSQL;
        end;
      end;
    CCC := self.ComponentCount;
    NG := False;
    if CCC > FixedComponentCount then
      for i := FixedComponentCount+1 to CCC do
      begin
        if Components[i-1] is TEdit then
        begin
          if TEDIT(Components[i-1]).Text <> '0' then
          begin
            NG := True;
            Break;
          end;
        end;
      end;
    if NG then
    begin
      showmessage('You need cancel QC records first!! Please try again');
    end
    else
    begin
      with QTemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('update wopr set reqty ='+inttostr(Preqty+1));
          sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
          sql.add(' and SJXH = '+#39+Edit1.Text+#39);
          sql.add(' and DepNo = '+#39+Edit4.Text+#39);
          sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
          sql.add(' and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
          sql.add(' and CC='''+ic[NP]+'''');
          ExecSQL;
        end;
      ggg := ggg + 1;
      edit30.Text := copy('         '+inttostr(ggg),length(inttostr(ggg)),10);
      ig[NP] := ig[NP] + 1;
      kg[NP-offset].Text := copy('         '+inttostr(ig[NP]),length(inttostr(ig[NP])),10);
      if  id[NP] = ie[NP]+ig[NP] then
      begin
        ke[NP-offset].Color := clWindow;
        kg[NP-offset].Color := clWindow;
        kh[NP-offset].Color := clBtnFace;
        NP := 0;
        Button5.Click;
      end;
    end;
  end
  else
    showmessage('You need choose Size First!');
end;

//[CANCEL] =====================================================================
procedure TAndonInput.ColorButton3Click(Sender: TObject);
var
  i,ccc : integer;
begin
  CCC := self.ComponentCount;
  if CCC > FixedComponentCount then
    for i := FixedComponentCount+1 to CCC do
    begin
      if Components[i-1] is TEdit then
      begin
        TEDIT(Components[i-1]).Text := '0';
        TEDIT(Components[i-1]).color := clWindow;
      end;
    end;
end;

procedure TAndonInput.ColorButton5Click(Sender: TObject);
Var NewIE,NewIG : Integer;
    TUserID : String;
begin
  {===暫時不用 =========
  if NP > 0 then
  begin
    with QTemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select userid from BUsers where PWD = '+#39+uppercase(Edit29.Text)+#39);
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
        NewIE := strtoint(Inputbox('Change Qty!','New Qty :',trim(ke[NP-offset].Text)));
        NewIG := strtoint(Inputbox('Change ReQty!','New ReQty :',trim(kg[NP-offset].Text)));
        if (NewIE >=0) and (NewIE+NewIG<=id[NP]) and (NewIG >=0) then
        begin
          eee := eee + NewIE - ie[NP];
          ggg := ggg + NewIG - ig[NP];
          ie[NP] := NewIE;
          ig[NP] := NewIG;
          with QTemp do
          begin
            active:=false;
            sql.Clear;
            sql.add('select qty,reqty  from WOPR');
            sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
            sql.add(' and SJXH = '+#39+Edit1.Text+#39);
            sql.add(' and DepNo = '+#39+Edit4.Text+#39);
            sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
            sql.add(' and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
            sql.add(' and CC='''+ic[NP]+'''');
            active:=true;
            if recordcount>0 then
              begin
                active:=false;
                sql.Clear;
                sql.add('update wopr set reqty ='+inttostr(NewIG)+' , qty ='+inttostr(NewIE));
                sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
                sql.add(' and SJXH = '+#39+Edit1.Text+#39);
                sql.add(' and DepNo = '+#39+Edit4.Text+#39);
                sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
                sql.add(' and SCBH='''+ih[NP]+''' and gxlb='''+TGXLB+'''');
                sql.add(' and CC='''+ic[NP]+'''');
                ExecSQL;
              end
            else
              begin
                active:=false;
                sql.Clear;
                sql.add('INSERT INTO WOPR (SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)  ');
                sql.Add(' VALUES ('''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
                sql.add(','+#39+Edit1.Text+#39);
                sql.add(','+#39+Edit4.Text+#39);
                sql.add(','+#39+main.Edit2.Text+#39);
                sql.add(','''+ih[NP]+''','''+TGXLB+'''');
                sql.add(','''+ic[NP]+''','+inttostr(NewIE)+',0,'+inttostr(NewIG)+','''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd',Ndate)+''')');
                ExecSQL;
              end;
          end;
          if id[NP] = ie[NP]+ig[NP] then
          begin
            ke[NP-offset].Color := clWindow;
            kg[NP-offset].Color := clWindow;
            kh[NP-offset].Color := clBtnFace;
            NP := 0;
          end;
          edit18.Text := copy('         '+inttostr(EEE),length(inttostr(EEE)),10);
          ke[NP-offset].Text := copy('         '+inttostr(ie[NP]),length(inttostr(ie[NP])),10);
          edit30.Text := copy('         '+inttostr(GGG),length(inttostr(GGG)),10);
          kg[NP-offset].Text := copy('         '+inttostr(ig[NP]),length(inttostr(ig[NP])),10);
        end
        else
          showmessage('Wrong Qty!');
      end
      else
        showmessage('Not Authorized!');
    end
    else
      showmessage('Wrong password!');
  end
  else
    showmessage('You need choose Size First!');
  edit29.Text := '';
  }
end;

procedure TAndonInput.Edit29Enter(Sender: TObject);
begin
  keypreview := false;
end;

procedure TAndonInput.Edit29Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure TAndonInput.btn1Click(Sender: TObject);
var
  i,j : integer;
begin
if total > 0 then
begin
  for i := 1 to total do
  begin
    if ih[i] = combobox1.Text then break;
  end;
  if i > total then
  begin
  with qrySize do
    begin
      active:=false;
      sql.Clear;
      sql.add('select ddzls.ddbh,ddzls.cc,ddzls.quantity,sca.QTY,sca.ReQTY,SCA.GXLB,DDZL.XieXing,DDZL.SheHao from ddzls');
      sql.add(' left join (select scbh,cc,gxlb,qty,reqty  from WOPR');
      sql.Add(' Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+#39);
      sql.add(' and SJXH = '+#39+Edit1.Text+#39);
      sql.add(' and DepNo = '+#39+Edit4.Text+#39);
      sql.add(' and GSBH = '+#39+main.Edit2.Text+#39);
      sql.add(' and SCBH='''+COMBOBOX1.Text+''' and gxlb='''+TGXLB+''' ) sca on sca.scbh=ddzls.ddbh and sca.cc=ddzls.cc');
      sql.Add(' left join ddzl on ddzl.ddbh = ddzls.ddbh');
      sql.add(' where ddzls.ddbh='''+COMBOBOX1.Text+'''');
      active:=true;
      if (recordcount > 0) and (recordcount+total < 51) then
      begin
        DDD := strtoint(edit7.Text);
        EEE := strtoint(edit18.Text);
        GGG := strtoint(edit30.Text);
        for j:=1 to recordcount do
        begin
          i := total + j;
          ic[i] := fieldbyname('cc').asstring;
          id[i] := fieldbyname('quantity').Value;
          ih[i] := fieldbyname('ddbh').asstring;
          if fieldbyname('qty').Value = null then
            ie[i] := 0
          else
            ie[i] := fieldbyname('qty').Value;
          if fieldbyname('reqty').Value = null then
            ig[i] := 0
          else
            ig[i] := fieldbyname('reqty').Value;
          DDD := DDD + id[i];
          EEE := EEE + ie[i];
          GGG := GGG + ig[i];
          if i < 11 then
          begin
            kc[i].Caption := ic[i];
            kc[i].Hint := inttostr(i);
            kc[i].Visible := true;
            kd[i].Text := copy('         '+inttostr(id[i]),length(inttostr(id[i])),10);
            kd[i].Visible := true;
            ke[i].Text := copy('         '+inttostr(ie[i]),length(inttostr(ie[i])),10);
            ke[i].Visible := true;
            kg[i].Text := copy('         '+inttostr(ig[i]),length(inttostr(ig[i])),10);
            kg[i].Visible := true;
            kh[i].Caption := ih[i];
            kh[i].Visible := true;
          end ;
          next;
        end;
        if recordcount+total > 10 then ColorButton17.Visible := true;
        if recordcount+total < 10 then
          for j := recordcount+total+1 to 10 do
          begin
            kc[j].Visible := false;
            kd[j].Visible := false;
            ke[j].Visible := false;
            kg[j].Visible := false;
            kh[j].Visible := false;
          end;
        edit7.Text  := copy('         '+inttostr(DDD),length(inttostr(DDD)),10);
        edit18.Text := copy('         '+inttostr(EEE),length(inttostr(EEE)),10);
        edit30.Text := copy('         '+inttostr(GGG),length(inttostr(GGG)),10);
//        offset := 0;
        total := total+recordcount;
      end
      else
      begin
        showmessage('Wrong RY# or too many RY!');
//        exit;
      end;
    end;
  end
  else
    showmessage('You can add new RY only !');
end
else
begin
  showmessage('You must use [Query] first !');
end;
end;

procedure TAndonInput.btn2Click(Sender: TObject);
var
  i,j,st,ln : integer;
begin
if total > 0 then
begin
  st := 0;
  ln := 0;
  for i := 1 to total do
  begin
    if ih[i] = combobox1.Text then
      if st = 0 then
      begin
        st := i;
        ln := 1;
      end
      else
        ln := ln + 1;
  end;
  if st > 0 then
  begin
    DDD := strtoint(edit7.Text);
    EEE := strtoint(edit18.Text);
    GGG := strtoint(edit30.Text);
    for i := st to (total-ln) do
    begin
      if i <= (st+ln-1) then
      begin
        DDD := DDD - id[i];
        EEE := EEE - ie[i];
        GGG := GGG - ig[i];
      end;
      ic[i] := ic[i+ln];
      id[i] := id[i+ln];
      ie[i] := ie[i+ln];
      ig[i] := ig[i+ln];
      ih[i] := ih[i+ln];
    end;
    total := total - ln;
    ke[NP-offset].Color := clWindow;
    kg[NP-offset].Color := clWindow;
    kh[NP-offset].Color := clBtnFace;
    NP := 0;
    if total > 10 then
      j := 10
    else
      j := total;
    for i := 1 to j do
    begin
      kc[i].Caption := ic[i];
      kc[i].Hint := inttostr(i);
      kc[i].Visible := true;
      kd[i].Text := copy('         '+inttostr(id[i]),length(inttostr(id[i])),10);
      kd[i].Visible := true;
      ke[i].Text := copy('         '+inttostr(ie[i]),length(inttostr(ie[i])),10);
      ke[i].Visible := true;
      kg[i].Text := copy('         '+inttostr(ig[i]),length(inttostr(ig[i])),10);
      kg[i].Visible := true;
      kh[i].Caption := ih[i];
      kh[i].Visible := true;
    end;
    ColorButton16.Visible := false;
    if total > 10 then ColorButton17.Visible := true
    else ColorButton17.Visible := false;
    if j < 10 then
      for i := j+1 to 10 do
      begin
        kc[i].Visible := false;
        kd[i].Visible := false;
        ke[i].Visible := false;
        kg[i].Visible := false;
        kh[i].Visible := false;
      end;
    edit7.Text  := copy('         '+inttostr(DDD),length(inttostr(DDD)),10);
    edit18.Text := copy('         '+inttostr(EEE),length(inttostr(EEE)),10);
    edit30.Text := copy('         '+inttostr(GGG),length(inttostr(GGG)),10);
    offset := 0;
  end
  else
    showmessage('No such RY in list now !');
end
else
begin
  showmessage('No RY can be removed !');
end;
end;

procedure TAndonInput.chk1Click(Sender: TObject);
begin
chk2.Checked:=false;
end;

procedure TAndonInput.chk2Click(Sender: TObject);
begin
chk1.Checked:=false;
end;

procedure TAndonInput.Button6Click(Sender: TObject);
 var i,ccc ,ii: integer;
 mAlarmLC,mStopLC:integer;
     Tprono,TYBH,TQTY : String;
     mFLAG:integer;
begin

   //=================================================
      Timer1.Enabled:=false; 
      sndPlaySound(nil,0);
      mFlag := 0;
      CCC := self.ComponentCount;

      if CCC > FixedComponentCount then
        for i := FixedComponentCount+1 to CCC do
          begin
            if Components[i-1] is TEdit then
              begin
                //if TEDIT(Components[i-1]).Text <> '0' then
                //  begin
                    TQTY := TEDIT(Components[i-1]).Text;
                    TYBH := TEDIT(Components[i-1]).name;
                    with Qtemp do
                      begin
                        active:=false;
                        sql.Clear;
                        sql.Add('select *  ');
                        sql.add('from QCBLYYS');
                        sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                        active:=true;
                        if recordcount=0 then
                          begin
                          end
                        else
                          begin
                            for ii := 1 to recordcount  do
                              begin
                                if fieldbyname('light').Value >=2 then //如果是亮燈
                                  begin
                                    with Query3 do
                                     begin
                                       mAlarmLC:=0;
                                       mStopLC:=0;
                                       sql.Clear;
                                       sql.add('update QCBLYYS  ');
                                       //sql.add('set AlarmLC = '+inttostr(mAlarmLC)+' , StopLC='+inttostr(mStopLC)+' ,Light='+'1');
                                       sql.add('set AlarmLC = 0  , StopLC=0  ,Light=1');
                                       sql.add('where yybh='+''''+TYBH+''''+' and DepNo='+''''+Edit4.Text+''''+' and GSBH='+''''+main.Edit2.Text+'''');
                                       execsql;

                                       image1.Visible:=true;
                                       image2.Visible:=true;
                                       image3.Visible:=false;
                                       image4.Visible:=false;
                                       BUTTON6.Enabled := false;  
                                       mFlag := 1;
                                       if mFlag = 1 then
                                        break;

                                     end;
                                    next;
                                  end;
                              end;

                          end;


                      end;
                //  end;
              end;
            if mFlag = 1 then
              break;
          end;
      //=================================================



end;

procedure TAndonInput.Button7Click(Sender: TObject);
begin
  QCOnTime_Query:=TQCOnTime_Query.create(self);
  QCOnTime_Query.show;
end;

procedure TAndonInput.ColorButton18Click(Sender: TObject);
begin
  AndonPic:=TAndonPic.create(self);
  AndonPic.show;
end;

procedure TAndonInput.Timer1Timer(Sender: TObject);
begin
  sndPlaySound(Pchar(s2),SND_ASYNC);    //持續響警告聲, 直至Button6 click
  Beep;
end;

procedure TAndonInput.ShoeBCColorBtnClick(Sender: TObject);
begin
  ShoeBC:=TShoeBC.create(self);
  ShoeBC.Left:=0;
  ShoeBC.Top:=0;
  ShoeBC.Width:=Screen.Width;
  ShoeBC.Height:=Screen.Height;
  ShoeBC.ShowModal();
  ShoeBC.Free;
end;

end.
