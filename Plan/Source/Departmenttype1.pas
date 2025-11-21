unit Departmenttype1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  DBCtrls;

type
  TDepartmenttype = class(TForm)
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
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1ProYN: TBooleanField;
    UpSQL1: TUpdateSQL;
    Label2: TLabel;
    Edit2: TEdit;
    Table1: TTable;
    Query1C: TStringField;
    Query1S: TStringField;
    Query1A: TStringField;
    Query1O: TStringField;
    Query1W: TStringField;
    Query1I: TStringField;
    Query1Y: TStringField;
    Query1Z: TStringField;
    DC1: TDBCheckBox;
    DC2: TDBCheckBox;
    DC3: TDBCheckBox;
    DC4: TDBCheckBox;
    DC5: TDBCheckBox;
    DC6: TDBCheckBox;
    DC7: TDBCheckBox;
    DC8: TDBCheckBox;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Departmenttype: TDepartmenttype;

implementation

uses main1;

{$R *.dfm}

procedure TDepartmenttype.FormClose(Sender: TObject;
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

procedure TDepartmenttype.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select BDepartment.*,case when GXC.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as C, ');
    sql.add('case when GXS.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as S,');
    sql.Add('case when GXA.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as A,');
    sql.add('case when GXO.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as O,');
    sql.add('case when GXW.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as W,');
    sql.add('case when GXI.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as I,');
    sql.add('case when GXY.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as Y,');
    sql.add('case when GXZ.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as Z ');
    sql.add('from BDepartment');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'C'+'''');
    sql.add(') GXC on GXC.DepNo=BDepartment.ID ');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'S'+'''');
    sql.add(') GXS  on GXS.DepNo=BDepartment.ID ');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'O'+'''');
    sql.add(') GXO  on GXO.DepNo=BDepartment.ID');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'A'+'''');
    sql.add(') GXA  on GXA.DepNo=BDepartment.ID');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'W'+'''');
    sql.add(') GXW  on GXW.DepNo=BDepartment.ID');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'I'+'''');
    sql.add(') GXI  on GXI.DepNo=BDepartment.ID');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'Y'+'''');
    sql.add(') GXY  on GXY.DepNo=BDepartment.ID');
    sql.add('left join (select SCBMGX.DepNo,SCBMGX.GXLB from SCBMGX where SCBMGX.GXLB='+''''+'Z'+'''');
    sql.add(') GXZ  on GXZ.DepNo=BDepartment.ID');
    sql.add('where BDepartment.ID like '+''''+edit1.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+'''');
    if checkbox1.Checked then
      begin
        sql.add('and BDepartment.ProYN=1');
      end;
    sql.add('order by BDepartment.ID');
    active:=true;
  end;
bb4.enabled:=true;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TDepartmenttype.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TDepartmenttype.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TDepartmenttype.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (gdFocused in State) then
     begin
     if (DataCol=3) then
       begin
       DC1.Left:=Rect.Left  + DBGrid1.Left;
       DC1.Top:=Rect.Top   + DBGrid1.top;
       DC1.Width:=Rect.Right - Rect.Left;
       DC1.Height:=Rect.Bottom- Rect.Top;
       DC1.Visible:=True;
       end;
    end;
    
    if (gdFocused in State) then
     begin
     if (DataCol=4) then
       begin
       DC2.Left:=Rect.Left  + DBGrid1.Left;
       DC2.Top:=Rect.Top   + DBGrid1.top;
       DC2.Width:=Rect.Right - Rect.Left;
       DC2.Height:=Rect.Bottom- Rect.Top;
       DC2.Visible:=True;
       end;
    end;
    if (gdFocused in State) then
     begin
     if (DataCol=5) then
       begin
       DC3.Left:=Rect.Left  + DBGrid1.Left;
       DC3.Top:=Rect.Top   + DBGrid1.top;
       DC3.Width:=Rect.Right - Rect.Left;
       DC3.Height:=Rect.Bottom- Rect.Top;
       DC3.Visible:=True;
       end;
    end ;
    if (gdFocused in State) then
     begin
     if (DataCol=6) then
       begin
       DC4.Left:=Rect.Left  + DBGrid1.Left;
       DC4.Top:=Rect.Top   + DBGrid1.top;
       DC4.Width:=Rect.Right - Rect.Left;
       DC4.Height:=Rect.Bottom- Rect.Top;
       DC4.Visible:=True;
       end;
    end  ;
    if (gdFocused in State) then
     begin
     if (DataCol=7) then
       begin
       DC5.Left:=Rect.Left  + DBGrid1.Left;
       DC5.Top:=Rect.Top   + DBGrid1.top;
       DC5.Width:=Rect.Right - Rect.Left;
       DC5.Height:=Rect.Bottom- Rect.Top;
       DC5.Visible:=True;
       end;
    end  ;
    if (gdFocused in State) then
     begin
     if (DataCol=8) then
       begin
       DC6.Left:=Rect.Left  + DBGrid1.Left;
       DC6.Top:=Rect.Top   + DBGrid1.top;
       DC6.Width:=Rect.Right - Rect.Left;
       DC6.Height:=Rect.Bottom- Rect.Top;
       DC6.Visible:=True;
       end;
    end ;
    if (gdFocused in State) then
     begin
     if (DataCol=9) then
       begin
       DC7.Left:=Rect.Left  + DBGrid1.Left;
       DC7.Top:=Rect.Top   + DBGrid1.top;
       DC7.Width:=Rect.Right - Rect.Left;
       DC7.Height:=Rect.Bottom- Rect.Top;
       DC7.Visible:=True;
       end;
    end ;
    if (gdFocused in State) then
     begin
     if (DataCol=10) then
       begin
       DC8.Left:=Rect.Left  + DBGrid1.Left;
       DC8.Top:=Rect.Top   + DBGrid1.top;
       DC8.Width:=Rect.Right - Rect.Left;
       DC8.Height:=Rect.Bottom- Rect.Top;
       DC8.Visible:=True;
       end;
    end ;

if ((query1.FieldByName('C').value='0') and  (query1.FieldByName('S').value='0') and (query1.FieldByName('A').value='0')
    and  (query1.FieldByName('O').value='0')  and  (query1.FieldByName('I').value='0') and  (query1.FieldByName('W').value='0')
    and  (query1.FieldByName('Y').value='0') and  (query1.FieldByName('Z').value='0'))  then
    begin
      dbgrid1.canvas.font.color:=clred;
      dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

procedure TDepartmenttype.DBGrid1ColEnter(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname<>DC1.datafield then
  begin
    DC1.visible:=false;
  end;
if dbgrid1.selectedfield.fieldname<>DC2.datafield then
  begin
    DC2.visible:=false;
  end;
if dbgrid1.selectedfield.fieldname<>DC3.datafield then
  begin
    DC3.visible:=false;
  end;  
if dbgrid1.selectedfield.fieldname<>DC4.datafield then
  begin
    DC4.visible:=false;
  end;  
if dbgrid1.selectedfield.fieldname<>DC5.datafield then
  begin
    DC5.visible:=false;
  end; 
if dbgrid1.selectedfield.fieldname<>DC6.datafield then
  begin
    DC6.visible:=false;
  end; 
if dbgrid1.selectedfield.fieldname<>DC7.datafield then
  begin
    DC7.visible:=false;
  end;   
if dbgrid1.selectedfield.fieldname<>DC8.datafield then
  begin
    DC8.visible:=false;
  end;
end;

procedure TDepartmenttype.BB4Click(Sender: TObject);
begin
query1.RequestLive:=true;
query1.CachedUpdates:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TDepartmenttype.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    RequestLive:=FALSE;
    CachedUpdates:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

procedure TDepartmenttype.BB5Click(Sender: TObject);
begin
table1.Active:=true;
with query1 do
 begin
  first;
  while not eof do
   begin
    if updatestatus=usmodified then
      begin
        if fieldbyname('C').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'C']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='C';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'C']),[]) then
                 begin
                   table1.Delete;
                 end;
             end; 
        if fieldbyname('S').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'S']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='S';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'S']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;
        if fieldbyname('O').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'O']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='O';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'O']),[]) then
                 begin
                   table1.Delete;
                 end;
             end; 
        if fieldbyname('A').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'A']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='A';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'A']),[]) then
                 begin
                   table1.Delete;
                 end;
             end; 
        if fieldbyname('W').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'W']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='W';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'W']),[]) then
                 begin
                   table1.Delete;
                 end;
             end; 
        if fieldbyname('I').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'I']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='I';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'I']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;  
        if fieldbyname('Y').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'Y']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='Y';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'Y']),[]) then
                 begin
                   table1.Delete;
                 end;
             end; 
        if fieldbyname('Z').value='Yes' then
          begin
            if not table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'Z']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('DepNo').Value:=fieldbyname('ID').Value;
                table1.FieldByName('GXLB').Value:='Z';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.FieldByName('YN').Value:='1';
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('DepNo;GXLB',vararrayof([fieldbyname('ID').asstring,'Z']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;
      end;
    next;
  end;
 table1.Active:=false;
 active:=false;
 requestlive:=false;
 cachedupdates:=false;
 active:=true;
 BB5.Enabled:=false;
 BB6.Enabled:=false;
end;
end;

procedure TDepartmenttype.BB7Click(Sender: TObject);
begin
close;
end;

procedure TDepartmenttype.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TDepartmenttype.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TDepartmenttype.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TDepartmenttype.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TDepartmenttype.FormDestroy(Sender: TObject);
begin
Departmenttype:=nil;
end;

end.
