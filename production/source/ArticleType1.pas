unit ArticleType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DBCtrls, DB, StdCtrls, Buttons, Grids, DBGrids,
  ExtCtrls;

type
  TArticleType = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
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
    XXZL: TQuery;
    DS1: TDataSource;
    CheckBox1: TCheckBox;
    DC1: TDBCheckBox;
    DC2: TDBCheckBox;
    DC3: TDBCheckBox;
    DC4: TDBCheckBox;
    DC5: TDBCheckBox;
    DC6: TDBCheckBox;
    DC7: TDBCheckBox;
    DC8: TDBCheckBox;
    UpdateSQL1: TUpdateSQL;
    Table1: TTable;
    Query1: TQuery;
    XXZLXieXing: TStringField;
    XXZLXieMing: TStringField;
    XXZLKHDH: TStringField;
    XXZLC: TStringField;
    XXZLS: TStringField;
    XXZLA: TStringField;
    XXZLO: TStringField;
    XXZLW: TStringField;
    XXZLI: TStringField;
    XXZLY: TStringField;
    XXZLZ: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
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
  ArticleType: TArticleType;

implementation

uses main1;

{$R *.dfm}

procedure TArticleType.FormClose(Sender: TObject;
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

procedure TArticleType.Button1Click(Sender: TObject);
begin
with XXZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XXZL2.XieXing,XXZL2.XieMing,XXZL2.KHDH,');
    sql.Add('case when GXC.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as C, ');
    sql.add('case when GXS.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as S,');
    sql.add('case when GXA.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as A,');
    sql.add('case when GXO.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as O,');
    sql.add('case when GXW.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as W,');
    sql.add('case when GXI.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as I,');
    sql.add('case when GXY.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as Y,');
    sql.add('case when GXZ.GXLB is not null then '+''''+'Yes'+''''+' else '+''''+'0'+''''+' end as Z');
    sql.add('from (select XXZL.XieXing,max(XXZL.XieMing) as XieMing,max(XXZL.KHDH) as KHDH from XXZL ');
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+edit5.text+'%'+'''');
    sql.add('and KHDH like'+''''+ edit4.Text+'%'+'''');
    if checkBox1.Checked then
      begin
        sql.add('and exists (select DDZL.DDBH from DDZL ');
        sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.ZLBH ');
        sql.add('where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
        sql.add('and ZLZL.CQDH='+''''+'LTY'+'''')  ;
        sql.add(' and DDZL.ShipDate>=(getdate()-31))');
      end;
    sql.add(' group by XXZL.XieXing) XXZL2');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'C'+''''+') GXC');
    sql.add('             on GXC.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'S'+''''+') GXS');
    sql.add('             on GXS.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'A'+''''+') GXA');
    sql.add('             on GXA.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'O'+''''+') GXO');
    sql.add('             on GXO.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'W'+''''+') GXW');
    sql.Add('             on GXW.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'I'+''''+') GXI');
    sql.add('             on GXI.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'Y'+''''+') GXY');
    sql.add('             on GXY.XieXing=XXZL2.XieXing');
    sql.add('left join (select XXGX.XieXing,XXGX.GXLB from XXGX where XXGX.GXLB='+''''+'Z'+''''+') GXZ');
    sql.add('             on GXZ.XieXing=XXZL2.XieXing');
    sql.add('order by XXZL2.XieXing');
    Active:=true;
  end;
BB4.Enabled:=true;
end;

procedure TArticleType.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
edit1.SetFocus;
end;

procedure TArticleType.DBGrid1DrawColumnCell(Sender: TObject;
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

if ((XXZL.FieldByName('C').value='0') and  (XXZL.FieldByName('S').value='0') and (XXZL.FieldByName('A').value='0')
    and  (XXZL.FieldByName('O').value='0')  and  (XXZL.FieldByName('I').value='0') and  (XXZL.FieldByName('W').value='0')
    and  (XXZL.FieldByName('Y').value='0') and  (XXZL.FieldByName('Z').value='0'))  then
    begin
      dbgrid1.canvas.font.color:=clred;
      dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

procedure TArticleType.DBGrid1ColEnter(Sender: TObject);
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

procedure TArticleType.BB4Click(Sender: TObject);
begin
XXZL.RequestLive:=true;
XXZL.CachedUpdates:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TArticleType.BB6Click(Sender: TObject);
begin
with XXZL do
  begin
    active:=false;
    RequestLive:=FALSE;
    CachedUpdates:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

procedure TArticleType.BB5Click(Sender: TObject);
begin
table1.Active:=true;
with XXZl do
 begin
  first;
  while not eof do
   begin
    if updatestatus=usmodified then
      begin
        if fieldbyname('C').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').asstring,'C']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='C';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text; 
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').asstring,'C']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('S').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'S']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='S';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;  
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'S']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('A').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'A']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='A';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;  
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'A']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('O').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'O']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='O';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;  
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'O']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('I').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'I']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='I';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;  
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'I']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('W').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'W']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='W';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text; 
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'W']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('Y').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'Y']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='Y';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;  
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'Y']),[]) then
                 begin
                   table1.Delete;
                 end;
             end;

        if fieldbyname('Z').value='Yes' then
          begin
            if not table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'Z']),[]) then
              begin
                table1.Insert;
                table1.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                table1.FieldByName('GXLB').Value:='Z';
                table1.FieldByName('USERDATE').Value:=date;
                table1.FieldByName('USERID').Value:=main.edit1.Text;
                table1.post;
              end;
          end
           else
             begin
               if  table1.Locate('XieXing;GXLB',vararrayof([fieldbyname('XieXing').Value,'Z']),[]) then
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

procedure TArticleType.BB7Click(Sender: TObject);
begin
close;
end;

procedure TArticleType.BBT1Click(Sender: TObject);
begin
XXZL.First;
end;

procedure TArticleType.BBT2Click(Sender: TObject);
begin
XXZL.prior;
end;

procedure TArticleType.BBT3Click(Sender: TObject);
begin
XXZL.next;
end;

procedure TArticleType.BBT4Click(Sender: TObject);
begin
XXZL.last;
end;

procedure TArticleType.FormDestroy(Sender: TObject);
begin
ArticleType:=nil;
end;

end.
