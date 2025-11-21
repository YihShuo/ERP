unit Adjustingp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, GridsEh,
  DBGridEh;

type
  TAdjusting = class(TForm)
    Query1: TQuery;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    upq1: TUpdateSQL;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Query1fkbh: TStringField;
    Query1zsbh: TStringField;
    Query1cgbh: TStringField;
    Query1clbh: TStringField;
    Query1qty: TFloatField;
    Query1usqty: TFloatField;
    Query1userdate: TDateTimeField;
    Query1userid: TStringField;
    dq: TQuery;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Query1DJLX: TStringField;
    Query1DJNO: TStringField;
    Query1DJDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    Query1vnqty: TCurrencyField;
    Query1cwhl: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Adjusting: TAdjusting;

implementation

uses payablelit1, main1, AdjustingprintP;
{$R *.dfm}

procedure TAdjusting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TAdjusting.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
  if  PayableLit.PayDet.FieldByName('usqty').IsNull then
    edit1.text:='0'
  else
    edit1.Text:=PayableLit.PayDet.FieldByName('usqty').Value;
  if PayableLit.PayDet.FieldByName('vnqty').IsNull  then
    edit2.Text:='0'
  else
    edit2.Text:=PayableLit.PayDet.FieldByName('vnqty').Value;
  if query1.RecordCount>0 then
    button2.Enabled:=true;
  //
  TCurrencyField(query1.FieldByName('vnqty')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;
  TCurrencyField(query1.FieldByName('cwhl')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;
end;

procedure TAdjusting.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    active:=false;
    sql.Clear;
    sql.Add('select * from adjusting');
    sql.Add('where FKBH='''+PayableLit.PayMas.fieldbyname('FKBH').Value+'''');
    active:=true;
    if query1.RecordCount>0 then
    begin
      edit;
      FieldByName('userID').Value:=main.edit1.text;
      FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      if dbedit1.text='' then
        FieldByName('USQty').Value:=strtofloat(edit1.Text)
      else
        FieldByName('USQty').Value:=strtofloat(edit1.Text)-PayableLit.PayDet.FieldByName('usacc').Value;

      if DBEdit4.Text='' then
        FieldByName('VNQty').Value:=strtofloat(edit2.Text)
      else
        FieldByName('VNQty').Value:=strtofloat(edit2.Text)-PayableLit.PayDet.FieldByName('vnacc').Value;

      FieldByName('cwhl').Value:=PayableLit.PayMas.FieldByName('cwhl').Value;
      upq1.apply(ukmodify);
    end else
    begin
      insert;
      fieldbyname('FKBH').Value:=PayableLit.PayMas.fieldbyname('FKBH').Value;
      //20190604
      fieldbyname('DJLX').Value:='AU';
      fieldbyname('DJNO').Value:='00';
      fieldbyname('CLBH').Value:='Adjusting';
      fieldbyname('CGBH').Value:='Adjusting';
      FieldByName('DJDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      //
      FieldByName('userID').Value:=main.edit1.text;
      FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      FieldByName('qty').Value:=1;
      FieldByName('zsbh').Value:=PayableLit.PayMas.FieldByName('zsbh').Value;
      FieldByName('cwhl').Value:=PayableLit.PayMas.FieldByName('cwhl').Value;

      if dbedit1.text='' then
        FieldByName('USQty').Value:=strtofloat(edit1.Text)
      else
        FieldByName('USQty').Value:=strtofloat(edit1.Text)-PayableLit.PayDet.FieldByName('usacc').Value;

      if DBEdit4.Text='' then
        FieldByName('VNQty').Value:=strtofloat(edit2.Text)
      else
        FieldByName('VNQty').Value:=strtofloat(edit2.Text)-PayableLit.PayDet.FieldByName('vnacc').Value;

      upq1.apply(ukinsert);
    end;

    active:=false;
    active:=true;
    with  Payablelit.PayDet do
    begin
      Insert;
      fieldbyname('ZSBH').Value:=query1.fieldbyname('ZSBH').Value;
      fieldbyname('DJNO').Value:=query1.fieldbyname('DJNO').Value;
      fieldbyname('DJLX').Value:='AU';
      fieldbyname('CGBH').Value:=query1.fieldbyname('CGBH').Value;
      fieldbyname('CLBH').Value:=query1.fieldbyname('CLBH').Value;
      fieldbyname('DJDATE').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      fieldbyname('QTY').Value:=1;
      fieldbyname('usprice').Value:=query1.fieldbyname('USqty').Value;
      fieldbyname('USacc').Value:=0;
      fieldbyname('USQty').Value:=query1.fieldbyname('USqty').Value;
      fieldbyname('CWHL').Value:=query1.fieldbyname('CWHL').Value;
      fieldbyname('VNprice').Value:=query1.fieldbyname('VNqty').Value;
      fieldbyname('vnacc').Value:=0;
      fieldbyname('VNQty').Value:=query1.fieldbyname('VNqty').Value;
      fieldbyname('YWPM').Value:='';
      fieldbyname('DWBH').Value:='';
      fieldbyname('FKBH').Value:=Payablelit.PayMas.fieldbyname('FKBH').Value;
      post;
    end;
    Button2.Enabled:=true;
  end;

end;

procedure TAdjusting.Button2Click(Sender: TObject);

begin
    Adjustingprint:=TAdjustingprint.create(self);
    Adjustingprint.quickrep1.prepare;

    Adjustingprint.sup.Caption:=dbedit3.Text+dbedit6.Text;
    Adjustingprint.gxbh.Caption:=main.Edit2.Text;
    Adjustingprint.fno.Caption:=dbedit9.Text;
    adjustingprint.dd.Caption:=query1.FieldByName('DJDate').AsString;

    Adjustingprint.quickrep1.preview;
    Adjustingprint.free;

// Adjustingprint:=TAdjustingprint.create(self);
// Adjustingprint.show;
end;

procedure TAdjusting.Button3Click(Sender: TObject);
begin
 self.close;
end;

procedure TAdjusting.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
