unit BOM_N385_LYS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  Buttons, ExtCtrls,comobj,fununit, Menus,StrUtils ;
  
type
  TCostingPriceList_LYS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    BA8: TBitBtn;
    BA3: TBitBtn;
    BA5: TBitBtn;
    BA2: TBitBtn;
    BA1: TBitBtn;
    ED1: TEdit;
    ED2: TEdit;
    BB1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1StyleNumber: TStringField;
    Query1Round: TStringField;
    Query1ColorCode: TStringField;
    Query1FOB: TCurrencyField;
    Query1Remark: TStringField;
    Query1CheckID: TStringField;
    Query1CheckDate: TDateTimeField;
    Label1: TLabel;
    Edit1: TEdit;
    opendialog: TOpenDialog;
    Query1PricingSeason: TStringField;
    Query1Style_Name: TStringField;
    Query1Colorway: TStringField;
    Query1Division: TStringField;
    Query1NO: TSmallintField;
    Query1KFCQ: TStringField;
    Query1KHDH: TStringField;
    procedure BA1Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BA8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostingPriceList_LYS: TCostingPriceList_LYS;

implementation

uses main1;

{$R *.dfm}

procedure TCostingPriceList_LYS.BA1Click(Sender: TObject);
begin
        with query1 do
          begin
            active:=false;
            SQL.clear;
            SQL.add('Select * from CostingPriceList');
            SQL.Add('Where CostingPriceList.PricingSeason like ''%'+ED2.Text+'%''');
            //SQL.add('  AND CostingPriceList.Devcode like '''+Ed_SR.Text+'%''');
            if ED1.text<>'' then
                SQL.add('  AND CostingPriceList.Style_Number like '''+ED1.Text+'%''');
            if Edit1.text<>'' then
                SQL.add('  AND CostingPriceList.Round like '''+Edit1.Text+'%''');
            //showmessage(SQL.Text);
            active:=true;
          end;
   query1.requestlive:=true;
   query1.cachedupdates:=true;
   query1.edit;
end;

procedure TCostingPriceList_LYS.BA2Click(Sender: TObject);
begin            
  query1.RequestLive:=true;
  query1.CachedUpdates:=true;
  query1.Insert;
end;

procedure TCostingPriceList_LYS.BA3Click(Sender: TObject);
begin       
    UpdateSQL1.apply(ukdelete);
    BA1.Click;
end;

procedure TCostingPriceList_LYS.BA5Click(Sender: TObject);
var i:integer;
    KHDH,KFCQ,FTY:string;
begin
  //
  if main.Edit2.Text='VDH' then
  begin
      KHDH:='0054';
      KFCQ:='YIH';
  end
  else if main.Edit2.Text='HBA' then
  begin
      KHDH:='0062';
      KFCQ:='YIH';
  end
  else if main.Edit2.Text='TBDC' then
  begin
      KHDH:='0054';
      KFCQ:='TYB';
  end;

  query1.First;

for i:=1 to query1.RecordCount do

  with query1 do
  begin
  Edit;
  FieldByName('CheckID').Value:=main.edit1.text;
  FieldByName('Checkdate').Value:=Date();    
  FieldByName('KFCQ').Value:=KFCQ;
  FieldByName('KHDH').Value:=KHDH;
    case updatestatus of usInserted:
      begin
       UpdateSQL1.apply(ukinsert);
      end;
    end;
    case updatestatus of usmodified:
      begin
       Edit;
       UpdateSQL1.apply(ukmodify);
      end;
    end;
    query1.Next;
  end;
  //
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  BA1.Click;
end;

procedure TCostingPriceList_LYS.BB1Click(Sender: TObject);
var
  i, j: Integer;
  MsExcel: OleVariant;
  MsExcelWorkbook: Variant;
  flag: Boolean;
  Text2: String;
begin
  with query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('Select * From CostingPriceList where 1=2');
    Active := True;
  end;

  try
    MsExcel := CreateOleObject('Excel.Application');
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL ' + E.Message), '', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;

  try
    if OpenDialog.Execute = True then
    begin
      MsExcelWorkBook := MsExcel.Workbooks.Open(OpenDialog.FileName);
      with query1 do
      begin
        CachedUpdates := True;
        RequestLive := True;
        Edit;
        First;
        j := 2;
        flag := True;
        while flag do
        begin
          try
            Text2 := MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, 1].Value; // Tham chi?u dúng d?n c?t 1
            if Text2 = '' then
              Break;

            Insert;
            for i := 1 to FieldCount -3 do
            begin
              try
                if i < 10 then
                 Fields[i].Value := MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, i].Value // Ð?m b?o tham chi?u dúng c?t
              {  else if i = 3 then
                  Fields[i].Value := MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, i + 2].Value
                else
                  Fields[i].Value := MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, i + 3].Value;     }
              except
                on E: Exception do
                begin
                  Application.MessageBox(PChar('Loi khi xu ly(' + IntToStr(j) + ', ' + IntToStr(i) + '): ' + E.Message), '', MB_OK + MB_ICONWARNING);
                  flag := False;
                  Break;
                end;
              end;
            end;
            FieldByName('CheckID').Value := Main.Edit1.Text;
            FieldByName('Checkdate').Value := Date;
            Inc(j);
          except
            on E: Exception do
            begin
              Application.MessageBox(PChar('Loi khi xu ly ' + IntToStr(j) + ': ' + E.Message), '', MB_OK + MB_ICONWARNING);
              flag := False;
            end;
          end;
        end;
      end;

      MsExcel.ActiveWorkBook.Saved := True;
      MsExcelWorkBook.Close;
      MsExcel.Quit;
      VarClear(MsExcel);
    end;
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL ' + E.Message), '', MB_OK);
      MsExcel.ActiveWorkBook.Saved := True;
      MsExcelWorkBook.Close;
      MsExcel.Quit;
      VarClear(MsExcel);
      Exit;
    end;
  end;
end;


{procedure TCostingPriceList_LYS.BB1Click(Sender: TObject);
var
  i,j:integer; 
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;   
  flag:boolean;
  Text2: String;
begin
   with query1 do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From CostingPriceList where 1=2');
         active:=true;
      end;
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
  if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    with query1 do
     begin
     cachedupdates:=true;
     requestlive:=true;
     query1.edit;
     query1.first;
     j:=2;
     flag:=true;
     while (flag=true) do
        begin
        Text2:=MsExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
        if Text2='' then
          break;
        insert;
        for   i:=0   to  query1.fieldcount-3  do
        begin
            if i<3 then
              query1.Fields[i].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,i]
            else if i=3 then
              query1.Fields[i].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,i+1]
            else
              query1.Fields[i].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,i+2]
        end;
        query1.FieldByName('CheckID').Value:=main.edit1.text;
        query1.FieldByName('Checkdate').Value:=Date();
        inc(j);
        end;   //with UploadQuery do
    end;     //with UploadQuery do


     MsExcel.ActiveWorkBook.Saved := True;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
     VarClear(MsExcel);
  end;
  except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;
   end;  //except
end;
  }
procedure TCostingPriceList_LYS.BA8Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  query1.active  then
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
        //eclApp.Cells(1,1):='No';
        for   i:=0   to   query1.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

        query1.First;

        j:=2;
        while   not   query1.Eof   do
        begin
          //eclApp.Cells(j,1):=j-1;
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
        query1.Next;
        inc(j);
        end;

       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
