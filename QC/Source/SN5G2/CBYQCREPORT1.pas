unit CBYQCREPORT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,ComObj,fununit;

type
  TCBYQCReport = class(TForm)
    QCYBQC: TQuery;
    DS1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    ED_QCID: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    QCYBQCDefectCategory: TStringField;
    QCYBQCDefectquantity: TIntegerField;
    QCYBQCYWSM: TStringField;
    QCYBQCZWSM: TStringField;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    QCBYQC1: TQuery;
    QCBYQC1QCDate: TDateTimeField;
    QCBYQC1FirstPASS: TIntegerField;
    QCBYQC1FirstInspection: TIntegerField;
    QCBYQC1NGTIME: TIntegerField;
    QCBYQC1NonFirstPass: TIntegerField;
    QCBYQC1TotalInspections: TIntegerField;
    QCBYQC1FTT: TStringField;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button5: TButton;
    Button6: TButton;
    Edit2: TEdit;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    QCBYORDER: TQuery;
    QCBYORDERUninspected_Order_ID: TStringField;
    QCBYORDERShipping_Date: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CBYQCReport: TCBYQCReport;

implementation

uses main1;

{$R *.dfm}

procedure TCBYQCReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCBYQCReport.FormDestroy(Sender: TObject);
begin
  CBYQCReport := Nil;
end;

procedure TCBYQCReport.Button1Click(Sender: TObject);
var
  StatusSQL: string;
begin

  with QCYBQC do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select ''Pass times'' as DefectCategory,count(*) as Defectquantity,'''' as YWSM,'''' as ZWSM from WOPR_MA where Result = ''P'' and YYBH is not null');
    SQL.Add('and CONVERT(VARCHAR, SCDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('and GSBH = ''' + main.Edit2.Text + '''');
    if (ED_QCID.Text <> '') then
      SQL.Add('AND ID LIKE ''' + ED_QCID.Text + '%''');
    SQL.Add('union');
    SQL.Add('select ''Defect ''+WOPR_MA.YYBH as DefectCategory,count(*) as Defectquantity,QCBLYY.YWSM,QCBLYY.ZWSM from WOPR_MA');
    SQL.Add('left join QCBLYY on QCBLYY.YYBH = WOPR_MA.YYBH and QCBLYY.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('where Result = ''F'' and WOPR_MA.YYBH is not null');
    SQL.Add('and WOPR_MA.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND CONVERT(VARCHAR, SCDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if (ED_QCID.Text <> '') then
      SQL.Add('AND ID LIKE ''' + ED_QCID.Text + '%''');
    SQL.Add('GROUP BY WOPR_MA.YYBH,QCBLYY.YWSM,QCBLYY.ZWSM ');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(sql.Text);
    Active := true;
  end;

end;

procedure TCBYQCReport.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if PageControl1.ActivePageIndex = 0 then begin
    if (QCYBQC.Active) then
    begin
      try
        eclApp := CreateOleObject('Excel.Application');
        WorkBook := CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook := eclApp.workbooks.Add;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[1, i+1] := DBGridEh1.Columns[i].Title.Caption;
        end;

        QCYBQC.First;
        j := 2;
        while not QCYBQC.Eof do
        begin
          for i:=0 to DBGridEh1.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh1.Fields[i].AsString;
          end;
          QCYBQC.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    if (QCBYQC1.Active) then
    begin
      try
        eclApp := CreateOleObject('Excel.Application');
        WorkBook := CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook := eclApp.workbooks.Add;
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells[1, i+1] := DBGridEh2.Columns[i].Title.Caption;
        end;

        QCBYQC1.First;
        j := 2;
        while not QCBYQC1.Eof do
        begin
          for i:=0 to DBGridEh2.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh2.Fields[i].AsString;
          end;
          QCBYQC1.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    if (QCBYORDER.Active) then
    begin
      try
        eclApp := CreateOleObject('Excel.Application');
        WorkBook := CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook := eclApp.workbooks.Add;
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells[1, i+1] := DBGridEh3.Columns[i].Title.Caption;
        end;

        QCBYORDER.First;
        j := 2;
        while not QCBYORDER.Eof do
        begin
          for i:=0 to DBGridEh3.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh3.Fields[i].AsString;
          end;
          QCBYORDER.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
end;

procedure TCBYQCReport.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DTP1.Date := Date - 7;
  DTP2.Date := Date;
  DTP3.Date := Date - 7;
  DTP4.Date := Date;
  DTP5.Date := Date - 7;
  DTP6.Date := Date;
  PageControl1Change(sender);
end;

procedure TCBYQCReport.Button3Click(Sender: TObject);
begin

  with QCBYQC1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select QCDate,');
    SQL.Add('(select count(*) from WOPR_MA where YYBH is not null and Result = ''P'' and GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add('and SCBH not in (select SCBH from WOPR_MA where Result = ''F'') AND SCDate = QCDATE.QCDate) as FirstPASS,');
    SQL.Add('(select count(distinct SCBH) from WOPR_MA where YYBH is not null and GSBH = ''' + main.Edit2.Text + ''' AND SCDate = QCDATE.QCDate');
    SQL.Add(') as FirstInspection,');
    SQL.Add('(select count(*) from WOPR_MA where YYBH is not null and Result = ''F'' and GSBH = ''' + main.Edit2.Text + ''' AND SCDate = QCDATE.QCDate');
    SQL.Add(') as NGTIME,');
    SQL.Add('(select count(*) from WOPR_MA where YYBH is not null and Result = ''P'' and GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('and SCBH in (select SCBH from WOPR_MA where Result = ''F'') AND SCDate = QCDATE.QCDate');
    SQL.Add(') as NonFirstPass,');
    SQL.Add('(select count(*) from WOPR_MA where YYBH is not null and GSBH = ''' + main.Edit2.Text + ''' AND SCDate = QCDATE.QCDate');
    SQL.Add(') as TotalInspections,');
    SQL.Add('CONVERT(varchar(10),round(100*(select count(*) from WOPR_MA where YYBH is not null and Result = ''P'' and GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('and SCBH not in (select SCBH from WOPR_MA where Result = ''F'') AND SCDate = QCDATE.QCDate) /');
    SQL.Add('(select count(distinct SCBH) from WOPR_MA where YYBH is not null and GSBH = ''' + main.Edit2.Text + ''' AND SCDate = QCDATE.QCDate');
    SQL.Add('),2))+''%'' as FTT');
    SQL.Add('from (');
    SQL.Add('select SCDate as QCDate');
    SQL.Add('from WOPR_MA where YYBH is not null');
    SQL.Add('AND CONVERT(VARCHAR, SCDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''');
    SQL.Add('and GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add('group by SCDate');
    SQL.Add(') QCDATE');
    SQL.Add('order by QCDate');
    //showmessage(SQL.Text);
    Active := true;
  end;

end;

procedure TCBYQCReport.PageControl1Change(Sender: TObject);
var i:integer;
    sheet:TTabSheet;
begin
  for i:=0 to PageControl1.PageCount-1   do
  begin
     sheet:=PageControl1.Pages[i];
     if sheet=PageControl1.ActivePage   then
        sheet.Highlighted:=true
     else
        sheet.Highlighted:=false;
  end;
end;

procedure TCBYQCReport.Button5Click(Sender: TObject);
begin
  with QCBYORDER do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select workOrderId as Uninspected_Order_ID,initialEstimatedShipDate as Shipping_Date from CBY_Orders ');
    SQL.Add('where CONVERT(VARCHAR, initialEstimatedShipDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''  ');
    SQL.Add('and isnull(cancel,0) <> 1 and workOrderId not in');
    SQL.Add('(select SCBH from WOPR_MA ');
    SQL.Add('where Result = ''P'' ');
    SQL.Add('and GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add(')');
    SQL.Add('order by initialEstimatedShipDate  ');
    Active := true;
  end;
end;

end.
