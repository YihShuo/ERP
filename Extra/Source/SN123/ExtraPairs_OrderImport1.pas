unit ExtraPairs_OrderImport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ComObj, StdCtrls, Buttons, DB, DBTables;
//

type
  TExtra=record
    ArticleList:TStringlist;
    XieXingList:TStringlist;
    SheHaoList:TStringlist;
    ExtraList:TStringlist;
    USPriceList:TStringlist;
    VNPriceList:TStringlist;
    RYList:array of TStringlist;
    PairsList:array of TStringlist;
end;

type
  TExtraPairs_OrderImport = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    TmpQry: TQuery;
    Label1: TLabel;
    bbt6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    ExtraObj:TExtra;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraPairs_OrderImport: TExtraPairs_OrderImport;

implementation
  uses main1,ExtraPairs_Material1,FunUnit;
{$R *.dfm}

procedure TExtraPairs_OrderImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TExtraPairs_OrderImport.FormDestroy(Sender: TObject);
begin
  ExtraPairs_OrderImport:=nil;
end;

procedure TExtraPairs_OrderImport.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
        eclApp.Cells(1,1):='ARTICLE';
        eclApp.Cells(1,2):='RY';
        eclApp.Cells(1,3):='Extra';
        eclApp.Cells(1,4):='USPrice';
        eclApp.Cells(1,5):='VNPrice';
        eclApp.Cells(1,6):='ExtraEN';
        eclApp.Cells(1,7):='ExtraCN';
        //
        eclApp.Cells(2,1):='156732C';
        eclApp.Cells(2,2):='Y1610-0795';
        eclApp.Cells(2,3):='VJ10000001';
        eclApp.Cells(2,4):='0.09';
        eclApp.Cells(2,5):='';
        eclApp.Cells(2,6):='昇華轉印/數碼印刷';
        eclApp.Cells(2,7):='Sublimation/ditgial printing';
        //
        eclApp.Cells(3,1):='156732C';
        eclApp.Cells(3,2):='Y1610-0795';
        eclApp.Cells(3,3):='VJ30000001';
        eclApp.Cells(3,4):='0.09';
        eclApp.Cells(3,5):='';
        eclApp.Cells(3,6):='水洗鞋';
        eclApp.Cells(3,7):='Wash upper shoe';
        //
        eclApp.Cells(4,1):='156732C';
        eclApp.Cells(4,2):='Y1610-0795';
        eclApp.Cells(4,3):='VJ70000001';
        eclApp.Cells(4,4):='0.09';
        eclApp.Cells(4,5):='';
        eclApp.Cells(4,6):='印刷中底加工';
        eclApp.Cells(4,7):='DE TRUNG GIANG CONG';
        //
        eclApp.Cells(5,1):='156732C';
        eclApp.Cells(5,2):='Y1610-0795';
        eclApp.Cells(5,3):='VJ70000002';
        eclApp.Cells(5,4):='0.09';
        eclApp.Cells(5,5):='';
        eclApp.Cells(5,6):='印刷鞋面加工';
        eclApp.Cells(5,7):='MU GIAY GIANG CONG';
        //
        eclApp.Cells(6,1):='156732C';
        eclApp.Cells(6,2):='Y1610-0795';
        eclApp.Cells(6,3):='VJ80000001';
        eclApp.Cells(6,4):='0.09';
        eclApp.Cells(6,5):='';
        eclApp.Cells(6,6):='電繡';
        eclApp.Cells(6,7):='Embroidery';
        //
        eclapp.columns.autofit;
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
end;

procedure TExtraPairs_OrderImport.Button1Click(Sender: TObject);
   Function IsExtraExists(Article:String;Extra:string; var XieXing:string; var SheHao:string):boolean;
   var i:integer;
       IsFind:boolean;
   begin
      IsFind:=false;
      for i:=0  to ExtraObj.ArticleList.Count-1 do
      begin
        if (UpperCase(trim(ExtraObj.ArticleList.Strings[i]))=UpperCase(trim(Article))) and  (UpperCase(trim(ExtraObj.ExtraList.Strings[i]))=UpperCase(trim(Extra))) then
        begin
          XieXing:=ExtraObj.XieXingList.Strings[i];
          SheHao:=ExtraObj.SheHaoList.Strings[i];
          IsFind:=true;
          break;
        end;
      end;
      result:=IsFind;
   end;
   //
   Function AddRYList(Article:String;Extra:string; RY:string;Pairs:String):boolean;
   var i:integer;
       IsFind:boolean;
   begin
      IsFind:=false;
      for i:=0  to ExtraObj.ArticleList.Count-1 do
      begin
        if (UpperCase(trim(ExtraObj.ArticleList.Strings[i]))=UpperCase(trim(Article))) and  (UpperCase(trim(ExtraObj.ExtraList.Strings[i]))=UpperCase(trim(Extra))) then
        begin
          ExtraObj.RYList[i].Add(RY);
          ExtraObj.PairsList[i].Add(Pairs);
          IsFind:=true;
          break;
        end;
      end;
      result:=IsFind;
   end;
var S_Article,S_XieXing,S_Shehao,S_RY,S_Pairs,S_Extra,S_USPrice,S_VNPrice:string;
    ExcelApp: Variant;
    i,j,k:integer;
    JGNO:string;
begin

  //
  if OpenDialog1.Execute then
  begin
    //
    if ExtraPairs_Material.JGMas.FieldByName('USERDATE').Value<Date()-3 then
    begin
      showmessage('Date > 3 , can''t modify ');
      exit;
    end;
    if messagedlg('Import will Delete , are you sure import',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      with TmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from EXTRAS where JGNO='''+ExtraPairs_Material.JGMas.FieldByName('JGNO').AsString+'''; ');
        SQL.Add('Delete from EXTRASS where JGNO='''+ExtraPairs_Material.JGMas.FieldByName('JGNO').AsString+''' ');
        ExecSQL();
      end;
      Memo1.Lines.Clear;
      ExcelApp:=CreateOleObject('Excel.Application');
      ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
      ExcelApp.WorkSheets[1].Activate;
      //檢查欄位格式
      if ((ExcelApp.Cells[1,1].Value<>'ARTICLE') and (ExcelApp.Cells[1,2].Value<>'RY') and (ExcelApp.Cells[1,3].Value<>'Extra')
           and (ExcelApp.Cells[1,4].Value<>'USPrice') and (ExcelApp.Cells[1,4].Value<>'VNPrice')
           ) then
      begin
        Showmessage('Excel Format is not exact');
        exit;
      end;
      //
      i:=2;
      S_Article:=ExcelApp.Cells[i,1].Value;
      S_RY:=ExcelApp.Cells[i,2].Value;
      S_Extra:=ExcelApp.Cells[i,3].Value;
      S_USPrice:=ExcelApp.Cells[i,4].Value;
      S_VNPrice:=ExcelApp.Cells[i,5].Value;
      //
      ExtraObj.ArticleList:=TStringlist.Create;
      ExtraObj.XieXingList:=TStringlist.Create;
      ExtraObj.SheHaoList:=TStringlist.Create;
      ExtraObj.ExtraList:=TStringlist.Create;
      ExtraObj.USPriceList:=TStringlist.Create;
      ExtraObj.VNPriceList:=TStringlist.Create;
      //
      while ((trim(S_Article)<>'') and (trim(S_RY)<>'') and (trim(S_Extra)<>''))  do
      begin
        //儲存
        if IsExtraExists(S_Article,S_Extra,S_XieXing,S_SheHao)=false then
        begin
          with TmpQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select XieXing,SheHao from XXZL where Article='''+trim(S_Article)+''' and KHDH=''036'' ');
            Active:=true;
            if RecordCount>0 then
            begin
              S_XieXing:=FieldByName('XieXing').AsString;
              S_SheHao:=FieldByName('SheHao').AsString;
            end;
            Active:=false;
          end;
          ExtraObj.ArticleList.Add(S_Article);
          ExtraObj.XieXingList.Add(S_XieXing);
          ExtraObj.SheHaoList.Add(S_SheHao);
          ExtraObj.ExtraList.Add(S_Extra);
          ExtraObj.USPriceList.Add(S_USPrice);
          ExtraObj.VNPriceList.Add(S_VNPrice);
          //ExtraObj.ExtraRYObj.RYList.Add(S_RY);
        end;
        i:=i+1;
        S_Article:=ExcelApp.Cells[i,1].Value;
        S_RY:=ExcelApp.Cells[i,2].Value;
        S_Extra:=ExcelApp.Cells[i,3].Value;
        S_USPrice:=ExcelApp.Cells[i,4].Value;
        S_VNPrice:=ExcelApp.Cells[i,5].Value;
        //
      end;
      //儲存RY 清單
      setlength(ExtraObj.RYList,ExtraObj.ArticleList.Count);
      setlength(ExtraObj.PairsList,ExtraObj.ArticleList.Count);
      for i:=0 to  High(ExtraObj.RYList) do
      begin
        ExtraObj.RYList[i]:=TStringlist.Create;
        ExtraObj.PairsList[i]:=TStringlist.Create;
      end;
      i:=2;
      S_Article:=ExcelApp.Cells[i,1].Value;
      S_RY:=ExcelApp.Cells[i,2].Value;
      S_Extra:=ExcelApp.Cells[i,3].Value;
      S_USPrice:=ExcelApp.Cells[i,4].Value;
      S_VNPrice:=ExcelApp.Cells[i,5].Value;
      while ((trim(S_Article)<>'') and (trim(S_RY)<>'') and (trim(S_Extra)<>''))  do
      begin
        with TmpQry do
        begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select Pairs from DDZL where DDBH='''+S_RY+''' and KHBH=''036'' ');
            Active:=true;
            if RecordCount>0 then
            begin
              S_Pairs:=FieldByname('Pairs').AsString;
              if AddRYList(S_Article,S_Extra,S_RY,S_Pairs)=false then
              begin
                funcObj.WriteErrorLog('Error');
              end;
            end;
            Active:=false;
        end;
        //
        i:=i+1;
        S_Article:=ExcelApp.Cells[i,1].Value;
        S_RY:=ExcelApp.Cells[i,2].Value;
        S_Extra:=ExcelApp.Cells[i,3].Value;
        //
      end;
      //新增Extras 和 Extrass
      JGNO:=ExtraPairs_Material.JGMas.FieldByName('JGNO').AsString;
      for i:=0 to ExtraObj.ArticleList.Count-1 do
      begin
        //
        S_Article:=ExtraObj.ArticleList.Strings[i];
        S_XieXing:=ExtraObj.XieXingList.Strings[i];
        S_SheHao:=ExtraObj.SheHaoList.Strings[i];
        S_Extra:=ExtraObj.ExtraList.Strings[i];
        S_USPrice:=ExtraObj.USPriceList.Strings[i];
        S_VNPrice:=ExtraObj.VNPriceList.Strings[i];
        //新增EXTRAS
        with TmpQry do
        begin
           Active:=false;
           SQL.Clear;
           if S_USPrice<>'' then
           begin
             SQL.Add('Insert into EXTRAS (JGNO, XieXing, Shehao ,CLBH ,Qty, USPrice, CostID, BJNO, YQDate, CFMDate, UserDate, UserID, YN ) ');
           SQL.Add('Values ('''+JGNO+''','''+S_XieXing+''','''+S_SheHao+''','''+S_Extra+''',0,'+S_USPrice+',627,''00000000000'','''+FormatDateTime('YYYY/MM/DD',Date()+7)+''',GetDate(),GetDate(),'''+main.Edit1.Text+''',''1'') ');
           end else  if S_VNPrice<>'' then
           begin
             SQL.Add('Insert into EXTRAS (JGNO, XieXing, Shehao ,CLBH ,Qty, VNPrice , CostID, BJNO, YQDate, CFMDate, UserDate, UserID, YN ) ');
             SQL.Add('Values ('''+JGNO+''','''+S_XieXing+''','''+S_SheHao+''','''+S_Extra+''',0,'+S_VNPrice+',627,''00000000000'','''+FormatDateTime('YYYY/MM/DD',Date()+7)+''',GetDate(),GetDate(),'''+main.Edit1.Text+''',''1'') ');
           end;
           ExecSQL();
        end;
        //
        //更新EXTRAVN單價
        if (S_USPrice<>'') or (S_VNPrice<>'') then
        begin
          with TmpQry do
          begin
             Active:=false;
             SQL.Clear;
             SQL.Add('IF NOT EXISTS (Select * from EXTRAVN where XieXing='''+S_XieXing+''' and SheHao='''+S_SheHao+''' and BWBH='''+Copy(S_Extra,1,4)+''' and CLBH='''+S_Extra+''')  ');
             SQL.Add('Begin ');
             if S_USPrice<>'' then
             begin
               SQL.Add('Insert into EXTRAVN (XieXing, SheHao, BWBH, CLBH, USPrice, CLSL, USERID, USERDATE, YN)  ');
               SQL.Add('Values ('''+S_XieXing+''','''+S_SheHao+''','''+Copy(S_Extra,1,4)+''','''+S_Extra+''','+S_USPrice+',1,'''+main.Edit1.Text+''',GetDate(),1) ');
             end else  if S_VNPrice<>'' then
             begin
               SQL.Add('Insert into EXTRAVN (XieXing, SheHao, BWBH, CLBH, VNPrice, CLSL, USERID, USERDATE, YN)  ');
               SQL.Add('Values ('''+S_XieXing+''','''+S_SheHao+''','''+Copy(S_Extra,1,4)+''','''+S_Extra+''','+S_VNPrice+',1,'''+main.Edit1.Text+''',GetDate(),1) ');
             end;
             SQl.Add('End ');
             ExecSQL();
          end;
        end;
        //新增EXTRASS
        for j:=0 to ExtraObj.RYList[i].Count-1 do
        begin
          with TmpQry do
          begin
             Active:=false;
             SQL.Clear;
             SQL.Add('Insert into EXTRASS (JGNO, XieXing, Shehao ,CLBH , ZLBH, Qty, CLSL  , YQDate, CFMDate, UserDate, UserID, YN ) ');
             SQL.Add('Values ('''+JGNO+''','''+S_XieXing+''','''+S_SheHao+''','''+S_Extra+''','''+ExtraObj.RYList[i].Strings[j]+''','+ExtraObj.PairsList[i].Strings[j]+','+ExtraObj.PairsList[i].Strings[j]+','''+FormatDateTime('YYYY/MM/DD',Date()+7)+''',GetDate(),GetDate(),'''+main.Edit1.Text+''',''1'') ');
             Memo1.Lines.add('SKU:'+S_Article+'   RY:'+ExtraObj.RYList[i].Strings[j]+'   Qty:'+ExtraObj.PairsList[i].Strings[j]+' is OK! ');
             ExecSQL();
          end;
        end;
      end;
      //更新EXTRAS.Qty數量
      with TmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('update EXTRAS Set Qty=EXTRASS.Qty ');
        SQL.Add('From (Select XieXing, SheHao, CLBH,SUM(Qty) as Qty from EXTRASS where EXTRASS.JGNO='''+JGNO+'''  Group by EXTRASS.XieXing ,EXTRASS.SheHao,EXTRASS.CLBH) EXTRASS ');
        SQL.Add('where  EXTRAS.XieXing=EXTRASS.XieXing and EXTRAS.SheHao=EXTRASS.SheHao and EXTRAS.CLBH=EXTRASS.CLBH and EXTRAS.JGNO='''+JGNO+'''  ');
        ExecSQL();
      end;
      {
      //更新EXTRAS.USPrice or VNPrice 單價
      with TmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('update EXTRAS Set USPrice=ExtraVN.USPrice,VNPrice=ExtraVN.VNPrice ');
        SQL.Add('From ExtraVN ');
        SQL.Add('where  EXTRAS.XieXing=ExtraVN.XieXing and EXTRAS.SheHao=ExtraVN.SheHao and EXTRAS.CLBH=ExtraVN.CLBH and EXTRAS.JGNO='''+JGNO+''' ');
        ExecSQL();
      end;
      }
      //
      ExtraObj.ArticleList.Free;
      ExtraObj.XieXingList.Free;
      ExtraObj.SheHaoList.Free;
      ExtraObj.ExtraList.Free;
      ExtraObj.USPriceList.Free;
      ExtraObj.VNPriceList.Free;
      for i:=0 to High(ExtraObj.RYList) do
      begin
        ExtraObj.RYList[i].Free;
        ExtraObj.PairsList[i].Free;
      end;
      //
      //關閉Excel
      ExcelApp.WorkBooks.Close;
      ExcelApp.quit;
      //
      ExtraPairs_Material.JGDet.active:=false;
      ExtraPairs_Material.JGDet.active:=true;
      Showmessage('Finish');
      Close;
    end;
  end;
  //
end;


end.
