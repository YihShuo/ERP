unit ExtraPairs_Mat_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DBTables, DB, StdCtrls, QRPDFFilt,
  grimgctrl;

type
  TExtraPairs_Mat_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    QRDBText10: TQRDBText;
    Label1: TLabel;
    QRPDFFilter1: TQRPDFFilter;
    Q1: TQRLabel;
    QDB1: TQRDBText;
    F: TQRShape;
    Q2: TQRLabel;
    Q3: TQRLabel;
    Q4: TQRLabel;
    Q5: TQRLabel;
    Q6: TQRLabel;
    Q7: TQRLabel;
    Q8: TQRLabel;
    Q9: TQRLabel;
    QRShape1: TQRShape;
    Q12: TQRLabel;
    QRShape2: TQRShape;
    Q13: TQRLabel;
    Q14: TQRLabel;
    Q15: TQRLabel;
    Q16: TQRLabel;
    Q17: TQRLabel;
    Q18: TQRLabel;
    Q19: TQRLabel;
    Q20: TQRLabel;
    QRHRule1: TQRHRule;
    QDB2: TQRDBText;
    QDB3: TQRDBText;
    QDB4: TQRDBText;
    QDB8: TQRDBText;
    QDB7: TQRDBText;
    QDB6: TQRDBText;
    QDB5: TQRDBText;
    QDB9: TQRDBText;
    QDB12: TQRDBText;
    QDB13: TQRDBText;
    QDB14: TQRDBText;
    QDB15: TQRDBText;
    QDB16: TQRDBText;
    QDB17: TQRDBText;
    QDB18: TQRDBText;
    QDB19: TQRDBText;
    QDB20: TQRDBText;
    QRShape3: TQRShape;
    QRHRule3: TQRHRule;
    QRHRule4: TQRHRule;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    TmpQry: TQuery;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel3: TQRLabel;
    Q10: TQRLabel;
    Q11: TQRLabel;
    QRShape13: TQRShape;
    Q21: TQRLabel;
    Q22: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QDB10: TQRDBText;
    QDB21: TQRDBText;
    QDB22: TQRDBText;
    QDB11: TQRDBText;
    QRDBText13: TQRDBText;
    QRHRule2: TQRHRule;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowReport();
  public
    { Public declarations }
  end;

var
  ExtraPairs_Mat_Print: TExtraPairs_Mat_Print;

implementation
  uses ExtraPairs_Material1,FunUnit;
{$R *.dfm}

procedure TExtraPairs_Mat_Print.FormDestroy(Sender: TObject);
begin
  ExtraPairs_Mat_Print:=nil;
end;

procedure TExtraPairs_Mat_Print.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraPairs_Mat_Print.ShowReport();
var i:integer;
    tmpQRlabel:TQRLabel;
    tmpQRDBText:TQRDBText;
begin

  for i:=1 to 22 do
  begin
    tmpQRlabel:=TQRLabel(FindComponent('Q'+inttostr(i)));
    if tmpQRLabel<>nil then tmpQRlabel.Caption:='';
    tmpQRDBText:=TQRDBText(FindComponent('QDB'+inttostr(i)));
    if tmpQRDBText<>nil then tmpQRDBText.DataField:='';
  end;

  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DDZLs.CC ');
    SQL.Add('from EXTRASS ');
    SQL.Add('Left join DDZL on DDZL.DDBH=EXTRASS.ZLBH ');
    SQL.Add('Left join DDZLs on DDZL.DDBH=DDZLs.DDBH ');
    SQL.Add('where EXTRASS.JGNO='''+ExtraPairs_Material.JGMas.FieldByName('JGNO').AsString+''' ');
    SQL.Add('Group by DDZLs.CC ');
    Active:=true;
    for i:=1 to  TmpQry.RecordCount do
    begin
      tmpQRlabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
      if tmpQRLabel<>nil then tmpQRlabel.Caption:=TmpQry.FieldByName('CC').AsString;
      tmpQRDBText:=TQRDBText(self.FindComponent('QDB'+inttostr(i)));
      if tmpQRDBText<>nil then tmpQRDBText.DataField:=TmpQry.FieldByName('CC').AsString;
      TmpQry.Next;
    end;
  end;
  //
  if  TmpQry.RecordCount <=22 then
  begin
    with DelDet do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select Extra.ARTICLE,Extra.YWPM,');
      TmpQry.First;
      while not TmpQry.Eof do
      begin
        SQL.Add('Max(case when CC='''+TmpQry.FieldByName('CC').AsString+''' then [Quantity] end) as  '''+TmpQry.FieldByName('CC').AsString+''',  ');
        TmpQry.Next;
      end;
      TmpQry.Active:=false;
      SQL.Add('SUM(Quantity) as Total ');
      SQL.Add('from (');
      SQL.Add('select DDZL.Article,CLZL.YWPM,DDZLs.CC, Sum(DDZLs.Quantity) as Quantity ');
      SQL.Add('from EXTRASS ');
      SQL.Add('left join DDZL on DDZL.DDBH=EXTRASS.ZLBH ');
      SQL.Add('left join DDZLs on DDZL.DDBH=DDZLs.DDBH ');
      SQL.Add('left join CLZL on CLZL.cldh=EXTRASS.CLBH ');
      SQL.Add('where EXTRASS.JGNO='''+ExtraPairs_Material.JGMas.FieldByName('JGNO').AsString+''' ');
      SQL.Add('Group by DDZL.Article,CLZL.YWPM,DDZLs.CC ) Extra ');
      SQL.Add('Group by Extra.ARTICLE,Extra.YWPM ');
      Active:=true;
    end;
  end else
  begin
    TmpQry.Active:=false;
    Showmessage('Max Size Number, Size Run not Full');
  end;
  //

end;

procedure TExtraPairs_Mat_Print.FormCreate(Sender: TObject);
begin
  ShowReport();
end;

end.
