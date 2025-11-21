unit OrderPack_CartonPrintS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, QRExport, QRXMLSFilt,
  QRPDFFilt, DBClient;

type
  TOrderPack_CartonPrintS = class(TForm)
    QuickRep1: TQuickRep;
    YWDDBZ: TQuery;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    QRCompositeReport1: TQRCompositeReport;
    TmpQry: TQuery;
    QRDBTextV1: TQRDBText;
    QRDBTextV2: TQRDBText;
    YWBZPOS: TQuery;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBTextM1_3: TQRDBText;
    QRDBTextM1_4: TQRDBText;
    QRDBTextM1_2: TQRDBText;
    QRDBTextM1_1: TQRDBText;
    QRDBTextM1_5: TQRDBText;
    QRDBTextM1_6: TQRDBText;
    QRDBTextM1_9: TQRDBText;
    QRDBTextM1_7: TQRDBText;
    QRDBTextM1_10: TQRDBText;
    QRDBTextM1_11: TQRDBText;
    QRDBTextM1_8: TQRDBText;
    QRDBTextM1_13: TQRDBText;
    QRDBTextM1_12: TQRDBText;
    QRImageSingal1: TQRImage;
    QRLabelSingal1: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
  private
    PrintDataSet1:TDataSet;
    PrintDataSet2:TDataSet;
    DDCCArray:array [0..32] of double;
    //
    IsExistSingleSize:boolean;
    IsExistsMulitSize:boolean;
    { Private declarations }
    procedure InitYWDDBZ();
    function InitYWBZPOS_Single():boolean;
    function InitYWBZPOS_Multi():boolean;
    procedure OtherSingalCode(Index:String);
    //
    function CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
    Function AddDataToSet(AdsData: TDataSet;FieldValue:TStringlist): TDataSet;
  public
    { Public declarations }
  end;

var
  OrderPack_CartonPrintS: TOrderPack_CartonPrintS;

implementation
   uses OrderList1, FunUnit;
{$R *.dfm}
//
procedure TOrderPack_CartonPrintS.OtherSingalCode(Index:String);
var i,j:integer;
    tmpQRDBText:TQRDBText;
    tmpQRImage:TQRImage;
    tmpQRLabel:TQRLabel;
    Value:String;
begin
   tmpQRLabel:=TQRLabel(FindComponent('QRLabelSingal'+index));
   tmpQRImage:=TQRImage(FindComponent('QRImageSingal'+index));
   if tmpQRLabel<>nil then
   begin
     tmpQRLabel.Caption:='';
     for i:=1 to  13 do
     begin
          tmpQRDBText:=TQRDBText(FindComponent('QRDBTextM'+index+'_'+inttostr(i)));
          if tmpQRDBText<>nil then
          begin
             for j:=0 to YWDDBZ.FieldCount-1 do
             begin
               if YWDDBZ.Fields[j].FieldName=tmpQRDBText.DataField then
               begin
                 Value:=YWDDBZ.Fields[j].AsString;
                 if Pos('FABRIQUE',Value)>0 then
                 begin
                    tmpQRImage.Left:=tmpQRDBText.Left+61;
                    tmpQRImage.Top:=tmpQRDBText.Top-7;
                    //
                    tmpQRLabel.Left:=tmpQRDBText.Left+57;
                    tmpQRLabel.Top:=tmpQRDBText.Top-9;
                 end;
                 break;
               end;
             end;
          end;
     end;
   end;
   //
end;
//產生DataSet
function TOrderPack_CartonPrintS.CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
var
  dsTemp:TDataSet;
  cdsTemp: TClientDataSet;
  i:integer;
begin
  dsTemp := TDataSet.Create(nil);
  try
      //增加欄位
      with dsTemp.FieldDefs do
      begin
        for i:=0 to FieldNM.Count-1 do
        begin
          Add(FieldNM.Strings[i],ftString, strtoint(FielSize.Strings[i]));
        end;
       //
      end;
      //
      cdsTemp := TClientDataSet.Create(nil);
      if dsTemp.FieldDefs <> nil then
      begin
        cdsTemp.FieldDefs.Assign(dsTemp.FieldDefs);
        cdsTemp.CreateDataSet;
        result := (cdsTemp as TDataSet);
      end;
  finally
      dsTemp.Free;
  end;
end;
//新增資料到DataSet
Function TOrderPack_CartonPrintS.AddDataToSet(AdsData: TDataSet;FieldValue:TStringlist): TDataSet;
var i:integer;
begin
  //
  AdsData.Open;
  with AdsData do
  begin
    Append;//
    for i:=0 to FieldValue.Count-1 do
     Fields[i].AsString := FieldValue.Strings[i];
    post;//
  end;
end;
//
procedure TOrderPack_CartonPrintS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PrintDataSet1:=nil;
  PrintDataSet2:=nil;
  OrderPack_CartonPrintS:=nil;
end;

procedure TOrderPack_CartonPrintS.FormCreate(Sender: TObject);
begin
  //混裝尺碼陣列 使用者說A5沒有混裝先不做
  DDCCArray[0]:=1;  DDCCArray[1]:=1.5; DDCCArray[2]:=2; DDCCArray[3]:=2.5;
  DDCCArray[4]:=3;  DDCCArray[5]:=3.5; DDCCArray[6]:=4; DDCCArray[7]:=4.5;
  DDCCArray[8]:=5;  DDCCArray[9]:=5.5; DDCCArray[10]:=6; DDCCArray[11]:=6.5;
  DDCCArray[12]:=7;  DDCCArray[13]:=7.5; DDCCArray[14]:=8; DDCCArray[15]:=8.5;
  DDCCArray[16]:=9;  DDCCArray[17]:=9.5; DDCCArray[18]:=10; DDCCArray[19]:=10.5;
  DDCCArray[20]:=11;  DDCCArray[21]:=11.5; DDCCArray[22]:=12; DDCCArray[23]:=12.5;
  DDCCArray[24]:=13;  DDCCArray[25]:=13.5; DDCCArray[26]:=14; DDCCArray[27]:=14.5;
  DDCCArray[28]:=15;  DDCCArray[29]:=16; DDCCArray[30]:=17; DDCCArray[31]:=18;
  DDCCArray[32]:=19;
  //
  InitYWDDBZ();
  InitYWBZPOS_Single();
  InitYWBZPOS_Multi();
end;
//
procedure TOrderPack_CartonPrintS.InitYWDDBZ();
var i:integer;
begin
  //
  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select XH,ZWSM,LX from YWDDBZ where DDBH='''+OrderList.SpecMas.FieldByName('DDBH').AsString+''' ');
    SQL.Add('and  YN = 2  and IsNull(LX,'''')<>'''' order by LX');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  with YWDDBZ do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDBH');
    for i:=0  to TmpQry.RecordCount-1 do
    begin
      SQL.Add(',Max( case when XH='''+TmpQry.FieldByName('XH').AsString+''' then '''+TmpQry.FieldByName('ZWSM').AsString+''' end) as '+TmpQry.FieldByName('LX').AsString+' ');
      TmpQry.Next;
    end;
    SQL.Add('from YWDDBZ ');
    SQL.Add('where DDBH='''+OrderList.SpecMas.FieldByName('DDBH').AsString+''' ');
    SQL.Add('Group by DDBH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  TmpQry.Active:=false;
  //特殊符號
  OtherSingalCode('1');
end;

function TOrderPack_CartonPrintS.InitYWBZPOS_Single():boolean;
var FieldList,SizeList,FieldValueList:TStringlist;
    i,j:integer;
begin

  FieldList:=TStringlist.Create;
  SizeList:=TStringlist.Create;
  FieldValueList:=TStringlist.Create;
  //FieldName欄位
  FieldList.Add('Size');
  FieldList.Add('Qty');
  SizeList.Add('5');
  SizeList.Add('5');
  PrintDataSet1:=CreateDataSet(FieldList,SizeList);
  //Field Value
  with YWBZPOS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.DDCC,YWBZPOS.Qty,YWBZPOS.CTS from (');
    SQL.Add('select DDBH,XH,Count(DDCC) as CountCC from YWBZPOS ');
    SQL.Add('where DDBH='''+OrderList.SpecMas.FieldByName('DDBH').AsString+''' ');
    SQL.Add('Group by DDBH,XH ) YWBZPO  ');
    SQL.Add('left join YWBZPOS on YWBZPOS.DDBH=YWBZPO.DDBH and YWBZPOS.XH=YWBZPO.XH ');
    SQL.Add('where CountCC=1 ');
    Active:=true;
  end;
  if YWBZPOS.RecordCount>0 then
  begin
    // Add Value to DataSet
    for i:=0 to YWBZPOS.RecordCount-1 do
    begin
      for j:=1 to YWBZPOS.FieldByName('CTS').AsInteger do
      begin
        FieldValueList.Clear;
        FieldValueList.Add(Format('%.1f',[(strtofloat(YWBZPOS.FieldByName('DDCC').AsString))]));
        FieldValueList.Add(YWBZPOS.FieldByName('Qty').AsString);
        AddDataToSet(PrintDataSet1,FieldValueList);
      end;
      YWBZPOS.Next;
    end;
    //binding
    QRDBTextV1.DataSet:=PrintDataSet1;
    QRDBTextV2.DataSet:=PrintDataSet1;
    QRDBTextV1.DataField:='Size';
    QRDBTextV2.DataField:='Qty';
    QuickRep1.DataSet:=PrintDataSet1;
    IsExistSingleSize:=true;
  end else
  begin
    IsExistSingleSize:=false;
  end;
  YWBZPOS.Active:=false;
  //
  FieldValueList.Free;
  FieldList.Free;
  SizeList.Free;
  Result:=IsExistSingleSize;
end;

function TOrderPack_CartonPrintS.InitYWBZPOS_Multi():boolean;
var FieldList,SizeList,FieldValueList:TStringlist;
    i,j,k:integer;
    QRDBText:TQRDBText;
begin
  {
  FieldList:=TStringlist.Create;
  SizeList:=TStringlist.Create;
  FieldValueList:=TStringlist.Create;
  //FieldName欄位 total 33 column
   FieldList.Add('Pairs');
   SizeList.Add('5');
  for i:=1 to 33 do
  begin
     FieldList.Add('DC'+inttostr(i));
     SizeList.Add('5');
  end;
  PrintDataSet2:=CreateDataSet(FieldList,SizeList);
  //Field Value
  with YWBZPOS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select  XH ');
    SQL.Add(',CTS ,Sum(Qty) as Pairs  ');
    for i:=0 to High(DDCCArray) do
    begin
      SQL.Add(',Max( case when Convert(float,DDCC)='+floattostr(DDCCArray[i])+' then Qty end) as DC'+inttostr(i+1)+' ');
    end;
    SQL.Add('from (');
    SQL.Add('select YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.DDCC,YWBZPOS.Qty,YWBZPOS.CTS from (');
    SQL.Add('select DDBH,XH,Count(DDCC) as CountCC from YWBZPOS');
    SQL.Add('where DDBH='''+OrderList.SpecMas.FieldByName('DDBH').AsString+''' ');
    SQL.Add('Group by DDBH,XH ) YWBZPO ');
    SQL.Add('left join YWBZPOS on YWBZPOS.DDBH=YWBZPO.DDBH and YWBZPOS.XH=YWBZPO.XH');
    SQL.Add('where CountCC>1 ) YWBZPOS');
    SQL.Add('Group by XH,CTS');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if YWBZPOS.RecordCount>0 then
  begin
    // Add Value to DataSet
    for i:=0 to YWBZPOS.RecordCount-1 do
    begin
      for j:=1 to YWBZPOS.FieldByName('CTS').AsInteger do
      begin
        FieldValueList.Clear;
        FieldValueList.Add(YWBZPOS.FieldByName('Pairs').AsString);
        //DataSet total 33 column
        for k:=1 to 33 do
        begin
          FieldValueList.Add(YWBZPOS.Fields[k+2].AsString);
        end;
        AddDataToSet(PrintDataSet2,FieldValueList);
      end;
      YWBZPOS.Next;
    end;
    //Binding
    for k:=1 to 33 do
    begin
      QRDBText:=TQRDBText(FindComponent('DC'+inttostr(k)));
      if QRDBText<>nil then
      begin
       QRDBText.DataSet:=PrintDataSet2;
       QRDBText.DataField:='DC'+inttostr(k);
      end;
    end;
    QRDBTextPairs.DataSet:=PrintDataSet2;
    QRDBTextPairs.DataField:='Pairs';
    QuickRep2.DataSet:=PrintDataSet2;
    IsExistsMulitSize:=true;
  end else
  begin
    IsExistsMulitSize:=false;
  end;
  YWBZPOS.Active:=false;
  //
  FieldValueList.Free;
  FieldList.Free;
  SizeList.Free;
  }
  result:=IsExistsMulitSize;
end;

procedure TOrderPack_CartonPrintS.QRCompositeReport1AddReports(
  Sender: TObject);
begin
  if IsExistSingleSize=true then
  OrderPack_CartonPrintS.QRCompositeReport1.reports.Add(OrderPack_CartonPrintS.QuickRep1);
  {
  if IsExistsMulitSize=true then
  OrderPack_CartonPrintS.QRCompositeReport1.reports.Add(OrderPack_CartonPrintS.QuickRep2);
  }
end;

end.
