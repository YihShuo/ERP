unit VendorColorKPI1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh,
  ComCtrls, Mask, Buttons, ExtCtrls,ComObj;

type
  TVendorColorKPI = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Query1: TQuery;
    CGMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    BDelRec: TQuery;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    Check: TCheckBox;
    DBGrid3: TDBGridEh;
    Label2: TLabel;
    Edit2: TEdit;
    CGMasKPIPERIOD: TStringField;
    CGMasSupplier: TStringField;
    CGMasVendorFlexID: TStringField;
    CGMasMaterialType: TStringField;
    CGMasTotalPO: TCurrencyField;
    CGMasColorMatchingRate: TCurrencyField;
    CGMasColorRftRate: TCurrencyField;
    CGMasOverallRate: TCurrencyField;
    CGMasUserID: TStringField;
    CGMasUSERDATE: TDateTimeField;
    CGMasConfirmedDate: TDateTimeField;
    CGMasRemark: TStringField;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendorColorKPI: TVendorColorKPI;
  NDate:Tdate;
  MyVar: Integer;
implementation

uses main1, VendorColorKPI_ZS1;

{$R *.dfm}

procedure TVendorColorKPI.BB1Click(Sender: TObject);
begin
    panel2.Visible:=true;
end;

procedure TVendorColorKPI.Button1Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from MATCHINGKPI where 1 = 1');
    if Edit1.Text<>'' then
      sql.add(' and KPIPeriod like ''%'+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
      sql.add('and MaterialType like ''%'+Edit3.Text+'%'' ');
    if Edit2.Text<>'' then
      sql.add('and Supplier like ''%'+Edit2.Text+'%'' ');
      
    sql.add('and convert(smalldatetime,convert(varchar,USERDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
    begin
      sql.Add('and USERID='''+main.Edit1.Text+'''');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;

  end;

  //Moi them
  //BB1.Enabled := false;


  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  //BBT7.Enabled:=true;
  check.Checked:=true;
  //CGDet.Active:=true;
end;

procedure TVendorColorKPI.BB2Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;

  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.Columns[1].ReadOnly := True;
  dbgrid3.Columns[7].ReadOnly := True;
  dbgrid3.Columns[8].ReadOnly := True;
  dbgrid3.Columns[9].ReadOnly := True;
  dbgrid3.Columns[10].ReadOnly := True;
end;

procedure TVendorColorKPI.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TVendorColorKPI.BBTT1Click(Sender: TObject);
begin
    VendorColorKPI_ZS:=TVendorColorKPI_ZS.create(self);
    VendorColorKPI_ZS.show;
end;

procedure TVendorColorKPI.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  if length(m)<2 then
  m:='0'+m;

  try
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
      begin
        case CGMas.updatestatus of
            usinserted:
            begin
              if (CGMas.FieldByName('KPIPeriod').IsNull) or (CGMas.FieldByName('Supplier').IsNull) or (CGMas.FieldByName('MaterialType').IsNull) or (CGMas.FieldByName('VendorFlexID').IsNull) then
              begin
                ShowMessage('Please enter KPIPeriod, Supplier, VendorFlexID and MaterialType before saving.');
              end
              else
              begin
                CGMas.edit;
                CGMas.FieldByName('userID').Value:=main.edit1.text;
                CGMas.FieldByName('userdate').Value:=Ndate;
                CGMas.FieldByName('ConfirmedDate').Value:=Ndate;
                if (not CGMas.FieldByName('ColorMatchingRate').IsNull) and (not CGMas.FieldByName('ColorRftRate').IsNull) then
                begin
                  CGMas.FieldByName('OverallRate').Value := (CGMas.FieldByName('ColorMatchingRate').AsFloat + CGMas.FieldByName('ColorRftRate').AsFloat) / 2;
                end;
                CGMas.fieldbyname('Remark').Value := '';
                upMas.apply(ukinsert);
              end;
        end;

           usmodified:
           begin
            if CGMas.FieldByName('UserID').Value=main.Edit1.Text then
              begin
                if CGMas.fieldbyname('Remark').asstring ='0'then
                  begin
                    with BDelRec do
                    begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'KPIPeriod'+''''+','+''''+CGMas.fieldbyname('KPIPeriod').Value+'''');
                        sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                        active:=false;
                    end;
                    upMas.apply(ukdelete);
                  end else
                  begin
                   // if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
                   // begin
                        CGMas.edit;
                        CGMas.FieldByName('UserID').Value:=main.edit1.text;
                        CGMas.FieldByName('USERDATE').Value:=Ndate;
                        CGMas.FieldByName('ConfirmedDate').Value:=Ndate;
                        if (not CGMas.FieldByName('ColorMatchingRate').IsNull) and (not CGMas.FieldByName('ColorRftRate').IsNull) then
                        begin
                          CGMas.FieldByName('OverallRate').Value := (CGMas.FieldByName('ColorMatchingRate').AsFloat + CGMas.FieldByName('ColorRftRate').AsFloat) / 2;
                        end;
                        upMas.apply(ukmodify);
                   // end else
                   // begin
                        //showmessage('Date>7, can not modify.');
                   // end;
                  end;
                end else
                begin
                  Showmessage('It is not yours, can not modify.');
                end;

            end;
        end;
       CGMas.next;
      end;
  CGMas.active:=false;
  CGMas.cachedupdates:=false;
  CGMas.requestlive:=false;
  CGMas.active:=true;
  //CGS.Active:=true;
  //CGDet.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;

  dbgrid3.Columns[0].ReadOnly := False;
  dbgrid3.Columns[1].ReadOnly := False;
  dbgrid3.Columns[2].ReadOnly := False;
  dbgrid3.Columns[3].ReadOnly := False;
  dbgrid3.Columns[7].ReadOnly := False;
  dbgrid3.Columns[8].ReadOnly := False;
  dbgrid3.Columns[9].ReadOnly := False;
  dbgrid3.Columns[10].ReadOnly := False;

  //Moi them
  //BB1.enabled := true;

except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;



procedure TVendorColorKPI.BB3Click(Sender: TObject);
begin
  begin
    with CGMas do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('Remark').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.Columns[1].ReadOnly := True;
  //dbgrid3.Columns[2].ReadOnly := True;
  dbgrid3.Columns[3].ReadOnly := True;
  dbgrid3.Columns[7].ReadOnly := True;
  dbgrid3.Columns[8].ReadOnly := True;
  dbgrid3.Columns[9].ReadOnly := True;
  dbgrid3.Columns[10].ReadOnly := True; 
  end;
end;
procedure TVendorColorKPI.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (DataCol in [0, 1, 2, 3]) then
  begin
    DBGrid3.Canvas.Brush.Color := clYellow;
    DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;


  if CGMas.FieldByName('Remark').AsString = '0' then
  begin
    dbgrid3.Canvas.Font.Color := clRed;
  end;

  dbgrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TVendorColorKPI.BB4Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.Columns[0].ReadOnly := True;
  dbgrid3.Columns[1].ReadOnly := True;
  dbgrid3.Columns[7].ReadOnly := True;
  dbgrid3.Columns[8].ReadOnly := True;
  dbgrid3.Columns[9].ReadOnly := True;
  dbgrid3.Columns[10].ReadOnly := True;

end;

procedure TVendorColorKPI.BBT1Click(Sender: TObject);
begin
    CGMas.First;
end;

procedure TVendorColorKPI.BBT2Click(Sender: TObject);
begin
    CGMas.prior;
end;

procedure TVendorColorKPI.BBT3Click(Sender: TObject);
begin
    CGMas.next;
end;

procedure TVendorColorKPI.BBT4Click(Sender: TObject);
begin
    CGMas.last;
end;

procedure TVendorColorKPI.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
     if  CGMas.active  then
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
        for   i:=0   to   CGMas.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CGMas.fields[i].FieldName;
          end;

        CGMas.First;
        j:=2;
        while   not   CGMas.Eof   do
          begin
            for   i:=0   to  CGMas.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGMas.Fields[i].Value;
            end;
          CGMas.Next;
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

procedure TVendorColorKPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    panel1.Visible:=true;
    action:=canone;
  end else
   begin
      action:=Cafree;
   end;
end;

procedure TVendorColorKPI.FormDestroy(Sender: TObject);
begin
     VendorColorKPI:=nil;
end;

procedure TVendorColorKPI.BB6Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[2].ButtonStyle:=cbsnone;

//Moi them
//bb1.enabled:=true;

  dbgrid3.Columns[0].ReadOnly := False;
  dbgrid3.Columns[1].ReadOnly := False;
  dbgrid3.Columns[2].ReadOnly := False;
  dbgrid3.Columns[3].ReadOnly := False;
  dbgrid3.Columns[7].ReadOnly := False;
  dbgrid3.Columns[8].ReadOnly := False;
  dbgrid3.Columns[9].ReadOnly := False;
  dbgrid3.Columns[10].ReadOnly := False;



end;

procedure TVendorColorKPI.BB7Click(Sender: TObject);
begin
    close;
end;

procedure TVendorColorKPI.FormCreate(Sender: TObject);
begin
    //Lay ngay hien tai cho DateTimePicker
    DTP2.DateTime := Now;
end;

end.
