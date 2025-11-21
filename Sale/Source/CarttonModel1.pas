unit CarttonModel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, GridsEh, DBGridEh,comobj, Menus;

type
  TCarttonModel = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    YWWX: TQuery;
    DS2: TDataSource;
    UPYWWX2: TUpdateSQL;
    DBGrid1: TDBGridEh;
    YWWXCLDH: TStringField;
    YWWXYWPM: TStringField;
    YWWXDWBH: TStringField;
    YWWXCLBH: TStringField;
    YWWXLength: TFloatField;
    YWWXWidth: TFloatField;
    YWWXHeight: TFloatField;
    YWWXOWeigh: TCurrencyField;
    YWWXMemo: TStringField;
    YWWXUSERDATE: TDateTimeField;
    YWWXUSERID: TStringField;
    YWWXYN: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Query1: TQuery;
    CheckBox1: TCheckBox;
    YWWXSquare: TCurrencyField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    YWWXCapacity: TSmallintField;
    cbCapacity: TComboBox;
    lbCapacity: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure YWWXNewRecord(DataSet: TDataSet);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  CarttonModel: TCarttonModel;

implementation

uses main1;

{$R *.dfm}

procedure TCarttonModel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TCarttonModel.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if YWWX.fieldbyname('USERDate').IsNull then
  begin
     DBGrid1.canvas.Font.Color:=clred;
  end;
end;

procedure TCarttonModel.Button1Click(Sender: TObject);
begin
with YWWX do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZl.DWBH,YWWX2.* ');
    sql.add('from CLZl');
    sql.add('left join YWWX2 on CLZL.CLDH=YWWX2.CLBH');
    sql.add('where CLZL.CLDH like ''U1%''');
    sql.add('      and CLZL.CLDh like '''+edit1.Text+'%''');
    sql.add('      and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('      and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('      and CLZL.YWPM like ''%'+edit4.Text+'%''');
    if cbCapacity.Text <> '' then
      sql.add('      and YWWX2.Capacity='+cbCapacity.Text);
    sql.add('      and (TYJH is null or TYJH='+'''N'')');
    if CHECKBOX1.Checked then
      begin
        sql.add('       and YWWX2.Length is null ');
      end;
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
BB4.Enabled:=true;
BBT6.enabled:=true; 
N1.enabled:=false;
N2.enabled:=false;
end;

procedure TCarttonModel.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCarttonModel.BB4Click(Sender: TObject);
begin
  with YWWX do
    begin
      cachedupdates:=true;
      requestlive:=true;
    end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  N1.enabled:=true;
  N2.enabled:=true;
end;

procedure TCarttonModel.YWWXNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCarttonModel.BB5Click(Sender: TObject);
begin
  YWWX.First;
  while not YWWX.Eof do
  begin
    if (YWWX.FieldByName('Length').IsNull or
        YWWX.FieldByName('Width').IsNull or
        YWWX.FieldByName('Square').IsNull or
        YWWX.FieldByName('Height').IsNull or
        YWWX.FieldByName('OWeigh').IsNull) then
    begin
      if ((not YWWX.FieldByName('Length').IsNull) or
          (not YWWX.FieldByName('Width').IsNull) or
          (not YWWX.FieldByName('Square').IsNull) or
          (not YWWX.FieldByName('Height').IsNull) or
          (not YWWX.FieldByName('OWeigh').IsNull)) then
      begin
        showmessage('Pls key in data finished ');
        abort;
      end;
    end;
    YWWX.Next;
  end;

  try
    YWWX.First;
    while not YWWX.Eof do
      begin
        if YWWX.updatestatus=usmodified then
          begin
            if not YWWX.fieldbyname('Length').isnull then
              begin
                with query1 do
                  begin
                    active:=false;
                    sql.clear;
                    sql.add('insert into YWWX2(CLBH,Length,Width,Height,OWeigh,Square,Memo,Capacity,USERDATE,USERID,YN)');
                    sql.add('values(');
                    sql.add(''''+YWWX.fieldbyname('CLDH').value+''',');
                    sql.add(''''+YWWX.fieldbyname('Length').asstring+''',');
                    sql.add(''''+YWWX.fieldbyname('Width').asstring+''',');
                    sql.add(''''+YWWX.fieldbyname('Height').asstring+''',');
                    sql.add('convert(money,'''+YWWX.fieldbyname('OWeigh').asstring+'''),');
                    sql.add('convert(money,'''+YWWX.fieldbyname('Square').asstring+'''),');
                    sql.add(''''+YWWX.fieldbyname('Memo').asstring+''',');
                    sql.add(''''+YWWX.fieldbyname('Capacity').asstring+''',');
                    sql.add('getdate(),');
                    sql.add(''''+main.Edit1.Text+''',''1'')');

                    try
                      execsql;
                    except
                      active:=false;
                      sql.Clear;
                      sql.add('update YWWX2 set ');
                      sql.add('CLBH='''+YWWX.fieldbyname('CLDH').value+''',');
                      sql.add('Length='''+YWWX.fieldbyname('Length').asstring+''',');
                      sql.add('Width='''+YWWX.fieldbyname('Width').asstring+''',');
                      sql.add('Height='''+YWWX.fieldbyname('Height').asstring+''',');
                      sql.add('OWeigh=convert(money,'''+YWWX.fieldbyname('OWeigh').asstring+'''),');
                      sql.add('Square=convert(money,'''+YWWX.fieldbyname('Square').asstring+'''),');
                      sql.add('Memo='''+YWWX.fieldbyname('Memo').asstring+''',');
                      sql.add('Capacity='+YWWX.fieldbyname('Capacity').asstring);
                      sql.add('where CLBH='''+YWWX.fieldbyname('CLDH').value+'''');
                      execsql;
                    end;
                  end;
              end;
          end;
        YWWX.Next;
      end;

    with YWWX do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    N1.enabled:=false;
    N2.enabled:=false;
    showmessage('Succeed');
  except
    showmessage('Have wrong');
  end;
end;

procedure TCarttonModel.BB6Click(Sender: TObject);
begin
  with YWWX do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  N1.enabled:=false;
  N2.enabled:=false;
end;

procedure TCarttonModel.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  YWWX.active  then
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
        for   i:=0   to   YWWX.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YWWX.fields[i].FieldName;
          end;

        YWWX.First;
        j:=2;
        while   not   YWWX.Eof   do
          begin
            for   i:=0   to  YWWX.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YWWX.Fields[i].Value;
            end;
          YWWX.Next;
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

procedure TCarttonModel.N1Click(Sender: TObject);
VAR L,W,H:integer;
begin
with YWWX do
  begin
    if  ((not fieldbyname('Length').isnull ) and  (not fieldbyname('Width').isnull )
                  and  (not fieldbyname('Height').isnull )) then
      begin  
        L:=fieldbyname('Length').Value;
        W:=fieldbyname('Width').Value;
        H:=fieldbyname('Height').Value;
        edit;
        fieldbyname('Square').Value:=trunc(((L+W)*2+46)*(W+H)/100)/10000;
      end;
  end;
end;

procedure TCarttonModel.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if ActiveControl = DBGrid1 then
      begin
        TDBGrideh(ActiveControl).SelectedIndex := TDBGrideh(ActiveControl).SelectedIndex + 1;
        Key := #0;
      end;
end;

procedure TCarttonModel.N2Click(Sender: TObject);
var L,W,H :integer;
begin
with YWWX do
  begin
    if  ((not fieldbyname('Length').isnull ) and  (not fieldbyname('Width').isnull )
                  and  (not fieldbyname('Height').isnull )) then
      begin
        L:=fieldbyname('Length').Value;
        W:=fieldbyname('Width').Value;
        H:=fieldbyname('Height').Value;
        edit;
        if (fieldbyname('Length').Value+fieldbyname('Width').Value)*2<=20000 then
          begin
            fieldbyname('Square').Value:= trunc(((L+W)*2+50)*(H+W +20)/100)/10000;
          end
          else
            begin
              fieldbyname('Square').Value:= trunc(((L+W)*2+100)*(H+W+20)/100)/10000;
            end;
      end;
  end;
end;

procedure TCarttonModel.FormDestroy(Sender: TObject);
begin
   CarttonModel:=nil;
end;

end.
