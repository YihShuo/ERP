unit PurSample_SP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Math, Menus, comobj;

type
  TPurSample_SP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    MatNoEdit: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    SampleNoEdit: TEdit;
    ArticleEdit: TEdit;
    DBGrid1: TDBGrid;
    YPZLSQry: TQuery;
    MatDS: TDataSource;
    Label4: TLabel;
    YPZLSQryYPDH: TStringField;
    YPZLSQryCLBH: TStringField;
    YPZLSQryywpm: TStringField;
    YPZLSQryCLSL: TFloatField;
    YPZLSQryokQty: TCurrencyField;
    YPZLSQryzsywjc: TStringField;
    YPZLSQryCSBH: TStringField;
    YPZLSQryUserName: TStringField;
    YPZLSQryCLZMLB: TStringField;
    DBGrid2: TDBGrid;
    ClzhzlQry: TQuery;
    DetDS: TDataSource;
    ClzhzlQryCLDH: TStringField;
    ClzhzlQryYWPM: TStringField;
    ClzhzlQrysyl: TFloatField;
    YPZLSQryDWBH: TStringField;
    YPZLSQryArticle: TStringField;
    ClzhzlQryokQty: TCurrencyField;
    ClzhzlQryDWBH: TStringField;
    CKBox: TCheckBox;
    PopupMenu: TPopupMenu;
    PurchaseDetail1: TMenuItem;
    NotBuyCK: TCheckBox;
    Label5: TLabel;
    StageEdit: TEdit;
    Label6: TLabel;
    SeasonEdit: TEdit;
    Button2: TButton;
    PartCB: TComboBox;
    DevTypeCB: TComboBox;
    Label7: TLabel;
    SupnoEdit: TEdit;
    Label8: TLabel;
    SupnameEdit: TEdit;
    Label9: TLabel;
    TestnoEdit: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PurchaseDetail1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_SP: TPurSample_SP;

implementation
  uses main1,PurSample1,PurSample_SP_Detail1,FunUnit;
{$R *.dfm}

procedure TPurSample_SP.Button1Click(Sender: TObject);
  function GetPartID(Str:string):String;
  begin
    result:=Copy(Str,Pos('-',Str)+1,Length(Str));
  end;
begin
  if ((SampleNoEdit.Text='') and (ArticleEdit.Text='') and (TestnoEdit.Text='')) then
  begin
    showmessage('Plase Input Sample No or Article!');
    exit;
  end;
  //
  with YPZLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT ypzls.YPDH,ypzl.Article ,ypzls.CLBH ,clzl.ywpm ,CLZL.DWBH ,Sum(ypzls.CLSL) as CLSL,IsNULL(CGZL.okQty,0) as okQty ,zszl.zsywjc ,ypzls.CSBH, BUsers.UserName,CLZL.CLZMLB,shoetest.testno  FROM ypzls ypzls  ');
    SQL.Add('inner JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
    SQL.Add('inner JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('left join bwzl on bwzl.bwdh=ypzls.bwbh ');
    SQL.Add('left join shoetest on shoetest.YPDH=YPZLS.YPDH ');
    SQL.Add('left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('LEFT JOIN ZSZL_DEV ON ZSZL_DEV.zsdh = zszl.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.UserID ');
    sql.add('left join (select sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH,CGZLSS.ZLBH  ');
    sql.add('           from CGZLSS ');
    sql.add('           inner join YPZL on YPZL.YPDH=CGZLSS.ZLBH ');
    sql.add('           inner join CLZL on CLZL.CLDH=CGZLSS.CLBH ');
    sql.add('           inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
    sql.add('           inner join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    sql.add('           where CGZL.GSBH='+''''+main.edit2.text+''' and CGZLSS.CLBH like '+''''+MatNoEdit.Text+'%'+'''');
    sql.add('                 and CGZLSS.ZLBH like '''+SampleNoEdit.Text+'%''');
    sql.add('                 and YPZL.Article like '''+ArticleEdit.Text+'%''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    //sql.add('                 and CGZLSS.XXCC='+''''+'ZZZZZZ'+'''');
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL on CGZL.CLBH=YPZLS.CLBH AND CGZL.ZLBH=YPZL.YPDH  ');
    sql.add('WHERE 1=1 ');
    if SampleNoEdit.Text<>'' then
      sql.add('and YPZLS.YPDH like  '''+SampleNoEdit.Text+'%'' ');
    if StageEdit.Text<>'' then
      sql.Add('and YPZL.KFJD = '''+StageEdit.Text+''' ');
    if StageEdit.Text<>'' then
      sql.Add('and KFXXZL.JiJie = '''+SeasonEdit.Text+''' ');
    if ArticleEdit.Text<>'' then
      sql.Add('and YPZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    //20150824 filter material
    if MatNoEdit.Text<>'' then
      sql.Add('and ypzls.clbh like '''+MatNoEdit.Text+'%''');
    if edit2.Text<>'' then
      sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if  edit3.Text<>'' then
      sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
      sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    //
    if PartCB.Text<>'' then
      sql.add('and bwzl.BWDH = '''+GetPartID(PartCB.Text)+''' ');
    if DevTypeCB.Text<>'' then
      sql.add('and KFXXZL.DevType = '''+DevTypeCB.Text+''' ');
    //
    if CKBox.Checked=true then
      sql.Add('and ZSZL_DEV.SamplePurchaser='''+main.Edit1.Text+''' ');
    if NotBuyCK.Checked=true then
      sql.add('and IsNull(CGZL.okQty,0)=0 ');
    if SupnoEdit.Text<>'' then
      sql.add('and zszl.zsdh like '''+SupnoEdit.Text+'%'' ');
    if SupnameEdit.Text<>'' then
      sql.add('and zszl.zsywjc like '''+SupnameEdit.Text+'%'' ');
    if PartCB.Text<>'' then
      sql.add('and bwzl.BWDH = '''+GetPartID(PartCB.Text)+''' ');
    if TestnoEdit.Text<>'' then
      sql.add('and shoetest.testno like  '''+TestnoEdit.Text+'%'' ');
    sql.Add('Group by ypzls.YPDH,ypzl.Article ,ypzls.CLBH ,clzl.ywpm ,CLZL.DWBH ,CGZL.okQty ,zszl.zsywjc ,ypzls.CSBH, BUsers.UserName,CLZL.CLZMLB,shoetest.testno ');
    sql.add('union');
    //子材料

    SQL.Add('SELECT ypzls.YPDH,ypzl.Article ,clzhzl.CLDH1 as CLBH ,clzl.ywpm ,CLZL.DWBH ,Sum(ypzls.CLSL) as CLSL,IsNULL(CGZL.okQty,0) as okQty ,zszl.zsywjc ,clzhzl.zsdh, BUsers.UserName,CLZL.CLZMLB,shoetest.testno  FROM ypzls ypzls  ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('inner JOIN clzl clzl ON clzhzl.CLDH1 = clzl.cldh');
    SQL.Add('inner JOIN YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('left join bwzl on bwzl.bwdh=ypzls.bwbh');
    SQL.Add('left join shoetest on shoetest.YPDH=YPZLS.YPDH');
    SQL.Add('left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN ZSZL_DEV ON ZSZL_DEV.zsdh = zszl.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.UserID ');
    sql.add('left join (select sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH,CGZLSS.ZLBH  ');
    sql.add('           from CGZLSS ');
    sql.add('           inner join YPZL on YPZL.YPDH=CGZLSS.ZLBH ');
    sql.add('           inner join CLZL on CLZL.CLDH=CGZLSS.CLBH ');
    sql.add('           inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
    sql.add('           inner join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    sql.add('           where CGZL.GSBH='+''''+main.edit2.text+''' and CGZLSS.CLBH like '+''''+MatNoEdit.Text+'%'+'''');
    sql.add('                 and CGZLSS.ZLBH like '''+SampleNoEdit.Text+'%''');
    sql.add('                 and YPZL.Article like '''+ArticleEdit.Text+'%''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    //sql.add('                 and CGZLSS.XXCC='+''''+'ZZZZZZ'+'''');
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL on CGZL.CLBH=YPZLS.CLBH AND CGZL.ZLBH=YPZL.YPDH  ');
    sql.add('WHERE 1=1 ');
    if SampleNoEdit.Text<>'' then
      sql.add('and YPZLS.YPDH like  '''+SampleNoEdit.Text+'%'' ');
    if StageEdit.Text<>'' then
      sql.Add('and YPZL.KFJD = '''+StageEdit.Text+''' ');
    if StageEdit.Text<>'' then
      sql.Add('and KFXXZL.JiJie = '''+SeasonEdit.Text+''' ');
    if ArticleEdit.Text<>'' then
      sql.Add('and YPZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    //20150824 filter material
    if MatNoEdit.Text<>'' then
      sql.Add('and ypzls.clbh like '''+MatNoEdit.Text+'%''');
    if edit2.Text<>'' then
      sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if  edit3.Text<>'' then
      sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
      sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    //
    if PartCB.Text<>'' then
      sql.add('and bwzl.BWDH = '''+GetPartID(PartCB.Text)+''' ');
    if DevTypeCB.Text<>'' then
      sql.add('and KFXXZL.DevType = '''+DevTypeCB.Text+''' ');
    //
    if CKBox.Checked=true then
      sql.Add('and ZSZL_DEV.SamplePurchaser='''+main.Edit1.Text+''' ');
    if NotBuyCK.Checked=true then
      sql.add('and IsNull(CGZL.okQty,0)=0 ');
    if SupnoEdit.Text<>'' then
      sql.add('and zszl.zsdh like '''+SupnoEdit.Text+'%'' ');
    if SupnameEdit.Text<>'' then
      sql.add('and zszl.zsywjc like '''+SupnameEdit.Text+'%'' ');
    if PartCB.Text<>'' then
      sql.add('and bwzl.BWDH = '''+GetPartID(PartCB.Text)+''' ');
    if TestnoEdit.Text<>'' then
      sql.add('and shoetest.testno like  '''+TestnoEdit.Text+'%'' ');
    sql.Add('Group by ypzls.YPDH,ypzl.Article ,clzhzl.CLDH1,clzl.ywpm ,CLZL.DWBH ,CGZL.okQty ,zszl.zsywjc ,clzhzl.zsdh, BUsers.UserName,CLZL.CLZMLB,shoetest.testno  ');


    Active:=true;
  end;
  ClzhzlQry.Active:=true;
end;

procedure TPurSample_SP.DBGrid2DblClick(Sender: TObject);
var i:integer;
begin
  if (not YPZLSQry.Active) then
  begin
    abort;
  end;
  if (YPZLSQry.recordcount<1) then
  begin
    abort;
  end;
  with PurSample.CGDet do
  begin
    insert;
    if YPZLSQry.FieldByName('CLZMLB').AsString='N' then //母材料
    begin
      fieldbyname('CLBH').value:=YPZLSQry.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=YPZLSQry.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=YPZLSQry.fieldbyname('DWBH').value;
      fieldbyname('YQDate').value:=Date()+7;//預設要求日期+7
      if  YPZLSQry.fieldbyname('CLSL').value>YPZLSQry.fieldbyname('okQty').value then
      begin
          fieldbyname('XqQty').value:=roundto(YPZLSQry.fieldbyname('CLSL').value-YPZLSQry.fieldbyname('okQty').value,-1);
      end else
      begin
         fieldbyname('XqQty').value:=0;
      end;
      Post;
    end else //子材料
    begin
      ClzhzlQry.First;
      for i:=0 to ClzhzlQry.RecordCount-1 do
      begin
        insert;
        fieldbyname('CLBH').value:=ClzhzlQry.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=ClzhzlQry.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=ClzhzlQry.fieldbyname('DWBH').value;
        fieldbyname('YQDate').value:=Date()+7;
        if  (YPZLSQry.fieldbyname('CLSL').value*ClzhzlQry.fieldbyname('syl').value)>ClzhzlQry.fieldbyname('okQty').value then
        begin
            fieldbyname('XqQty').value:=roundto((YPZLSQry.fieldbyname('CLSL').value*ClzhzlQry.fieldbyname('syl').value)-ClzhzlQry.fieldbyname('okQty').value,-1);
        end else
        begin
           fieldbyname('XqQty').value:=0;
        end;
        Post;
        ClzhzlQry.Next;

      end;
    end;

  end;
  showmessage('Succeed.');
end;

procedure TPurSample_SP.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if YPZLSQry.FieldByName('CLSL').value>=YPZLSQry.FieldByName('okQty').value then
  begin
    DBGrid2.canvas.font.color:=clred;
    DBGrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  {
  if (YPZLSQry.FieldByName('okQty').value>0) and (YPZLSQry.FieldByName('CLSL').value>YPZLSQry.FieldByName('okQty').value) then
  begin
    DBGrid2.canvas.font.color:=clred;
    DBGrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  }
end;

procedure TPurSample_SP.PurchaseDetail1Click(Sender: TObject);
begin
  PurSample_SP_Detail:=TPurSample_SP_Detail.Create(self);
  PurSample_SP_Detail.ShowModal();
  PurSample_SP_Detail.Free;
end;

procedure TPurSample_SP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSample_SP.FormDestroy(Sender: TObject);
begin
  PurSample_SP:=nil;
end;

procedure TPurSample_SP.FormCreate(Sender: TObject);
begin
  SeasonEdit.Text:=PurSample.CGMas.FieldByName('SEASON').AsString;
  StageEdit.Text:=PurSample.CGMas.FieldByName('PURPOSE').AsString;
  SupnoEdit.Text:=PurSample.CGMas.FieldByName('ZSBH').AsString;
end;

procedure TPurSample_SP.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  YPZLSQry.active  then
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
        for   i:=0   to   YPZLSQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YPZLSQry.fields[i].FieldName;
          end;

        YPZLSQry.First;
        j:=2;
        while   not   YPZLSQry.Eof   do
          begin
            for   i:=0   to  YPZLSQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YPZLSQry.Fields[i].Value;
            end;
          YPZLSQry.Next;
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

end.
