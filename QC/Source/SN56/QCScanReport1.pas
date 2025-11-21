unit QCScanReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ComCtrls, ExtCtrls;

type
  TQCScanReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Button2: TButton;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QReport: TQuery;
    LabSKU: TLabel;
    EditSKU: TEdit;
    CkJustSKU: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure QueryCreare;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCScanReport: TQCScanReport;

implementation

{$R *.dfm}
procedure TQCScanReport.QueryCreare;
var tmp: TField;
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
     Fields.Clear;
     if CkJustSKU.Checked then
     begin
     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportXieMing';
     tmp.DisplayLabel:='ARTICLE';
     tmp.FieldName:='XieMing';
     tmp.DisplayWidth:=30;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportInterval';
     tmp.DisplayLabel:='Interval';
     tmp.FieldName:='Interval';
     tmp.DisplayWidth:=24;
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportQty';
     tmp.DisplayLabel:='Pass Quantity';
     tmp.FieldName:='Qty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportNGQty';
     tmp.DisplayLabel:='NG Times';
     tmp.FieldName:='NGQty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportSumQty';
     tmp.DisplayLabel:='Total Inspections';
     tmp.FieldName:='SumQty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportFIT';
     tmp.DisplayLabel:='FIT';
     tmp.FieldName:='FIT';
     tmp.DataSet:= QReport;

     SQL.Add('SELECT :ST +''-''+ :ED  as Interval,d.XieMing ,sum([Qty]) [Qty],sum([NGQty]) [NGQty],sum([Qty])+sum([NGQty]) SumQty,');
    SQL.Add('case when sum([NGQty])>0 then (sum([Qty])+sum([NGQty]))/sum([NGQty]) else 0 end FIT ');
    SQL.Add(' FROM [WOPR] a ');
    SQL.Add(' inner join DDZL c on a.SCBH=c.DDBH ');
    SQL.Add(' left join [xxzl] d on c.XieXing=d.XieXing ');
    SQL.Add(' where SCDate between :ST and :ED ');
    if EditSKU.Text<>'' then
    begin
      SQL.Add(' AND c.ARTICLE LIKE :ARTICLE');
      ParamByName('ARTICLE').Value := EditSKU.Text+'%';
    end ;
    SQL.Add(' group by c.ARTICLE,d.XieMing');
    ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
     end
     else
     begin
     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportDepName';
     tmp.DisplayLabel:='Production Team';
     tmp.FieldName:='DepName';
     tmp.DisplayWidth:=30;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportARTICLE';
     tmp.DisplayLabel:='SKU';
     tmp.FieldName:='ARTICLE';
     tmp.DisplayWidth:=20;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportXieMing';
     tmp.DisplayLabel:='ARTICLE';
     tmp.FieldName:='XieMing';
     tmp.DisplayWidth:=30;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportInterval';
     tmp.DisplayLabel:='Interval';
     tmp.FieldName:='Interval';
     tmp.DisplayWidth:=24;
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportQty';
     tmp.DisplayLabel:='Pass Quantity';
     tmp.FieldName:='Qty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportNGQty';
     tmp.DisplayLabel:='NG Times';
     tmp.FieldName:='NGQty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportSumQty';
     tmp.DisplayLabel:='Total Inspections';
     tmp.FieldName:='SumQty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportFIT';
     tmp.DisplayLabel:='FIT';
     tmp.FieldName:='FIT';
     tmp.DataSet:= QReport;

     SQL.Add('SELECT :ST +''-''+ :ED  as Interval,b.DepName, c.ARTICLE,d.XieMing ,sum([Qty]) [Qty],sum([NGQty]) [NGQty],sum([Qty])+sum([NGQty]) SumQty,');
    SQL.Add('case when sum([NGQty])>0 then (sum([Qty])+sum([NGQty]))/sum([NGQty]) else 0 end FIT ');
    SQL.Add(' FROM [WOPR] a ');
    SQL.Add(' inner join BDepartment b on a.DepNo=b.ID ');
    SQL.Add(' inner join DDZL c on a.SCBH=c.DDBH ');
    SQL.Add(' left join [xxzl] d on c.XieXing=d.XieXing ');
    SQL.Add(' where SCDate between :ST and :ED ');
    if EditSKU.Text<>'' then
    begin
      SQL.Add(' AND c.ARTICLE LIKE :ARTICLE');
      ParamByName('ARTICLE').Value := EditSKU.Text+'%';
    end ;
    SQL.Add(' group by b.DepName, c.ARTICLE,d.XieMing');
    ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
     end;
     Active := true;
  end;
  DBGridEh1.Columns.AddAllColumns(true);
end;


procedure TQCScanReport.Button1Click(Sender: TObject);
begin
  QueryCreare;
end;

end.
