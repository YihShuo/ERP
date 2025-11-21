unit Lock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ExtCtrls;

type
  TLock = class(TForm)
    Query1: TQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    Label2: TLabel;
    CheckBox4: TCheckBox;
    Button2: TButton;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label3: TLabel;
    CBX1: TComboBox;
    Qtemp: TQuery;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lock: TLock;

implementation

{$R *.dfm}

procedure TLock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TLock.Button1Click(Sender: TObject);
begin
  if checkbox1.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimitsTemp ');
      sql.add('select * from Blimits ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimitstemp  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'05'+'''');
      sql.add('      and FORMID like '+''''+'SN12'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimits');
      sql.add('where MKID='+''''+'05'+'''');
      sql.add('         and FORMID like '+''''+'SN12'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql  ;
      showmessage('領料出庫鎖定OK');
    end;
  end;
  if checkbox2.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimitsTemp ');
      sql.add('select * from Blimits ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimitstemp  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'05'+'''');
      sql.add('      and FORMID like '+''''+'SN21'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimits');
      sql.add('where MKID='+''''+'05'+'''');
      sql.add('         and FORMID like '+''''+'SN21'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql  ;
      showmessage('入庫單鎖定OK');
    end;
  end;
  if checkbox3.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimitsTemp ');
      sql.add('select * from Blimits ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimitstemp  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'06'+'''');
      sql.add('      and FORMID like ''SN21%'' ');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimits');
      sql.add('where MKID='+''''+'06'+'''');
      sql.add('         and  FORMID like ''SN21%''  ');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('加工出庫鎖定OK');
    end;
  end;
  if checkbox7.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimitsTemp ');
      sql.add('select * from Blimits ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimitstemp  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'03'+'''');
      sql.add('      and FORMID in ('+''''+'SN31'+''''+','+''''+'SN32'+''''+')');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimits');
      sql.add('where MKID='+''''+'03'+'''');
      sql.add('         and FORMID in ('+''''+'SN31'+''''+','+''''+'SN32'+''''+')');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('領料單鎖定OK');
    end;
  end;
  if checkbox9.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimitsTemp ');
      sql.add('select * from Blimits ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimitstemp  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'06'+'''');
      sql.add('      and FORMID like ''SN12%'' ');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimits');
      sql.add('where MKID='+''''+'06'+'''');
      sql.add('         and FORMID like ''SN12%'' ');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('加工單鎖定OK');
    end;
  end;
  checkbox1.Checked:=false;
  checkbox2.Checked:=false;
  checkbox3.Checked:=false;
  checkbox7.Checked:=false;
  checkbox9.Checked:=false;
end;

procedure TLock.Button2Click(Sender: TObject);
begin
  if checkbox4.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimits ');
      sql.add('select * from BlimitsTemp ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimits  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'05'+'''');
      sql.add('      and FORMID like '+''''+'SN12'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete BlimitsTemp');
      sql.add('where MKID='+''''+'05'+'''');
      sql.add('         and FORMID like '+''''+'SN12'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('領料出庫解鎖OK');
    end;
  end;
  if checkbox5.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimits ');
      sql.add('select * from Blimitstemp ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimits  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'05'+'''');
      sql.add('      and FORMID like '+''''+'SN21'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimitstemp');
      sql.add('where MKID='+''''+'05'+'''');
      sql.add('         and FORMID like '+''''+'SN21'+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql;
      showmessage('入庫單解鎖OK');
    end;
  end;
  if checkbox6.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimits ');
      sql.add('select * from Blimitstemp ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimits  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'06'+'''');
      sql.add('      and FORMID like ''SN21%''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimitstemp');
      sql.add('where MKID='+''''+'06'+'''');
      sql.add('         and FORMID like ''SN21%''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('加工出庫解鎖OK');
    end;
  end;
  if checkbox8.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimits ');
      sql.add('select * from Blimitstemp ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimits  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'03'+'''');
      sql.add('      and FORMID in ('+''''+'SN31'+''''+','+''''+'SN32'+''''+')');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimitstemp');
      sql.add('where MKID='+''''+'03'+'''');
      sql.add('         and FORMID in ('+''''+'SN31'+''''+','+''''+'SN32'+''''+')');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('領料單解鎖OK');
    end;
  end;
  if checkbox10.Checked then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert BLimits ');
      sql.add('select * from Blimitstemp ');
      sql.add('where not exists(select USERID,MKID,FORMID  ');
      sql.add('                 from BLimits  ');
      sql.add('                 where BLimits.USERID=BLimitstemp.USERID');
      sql.add('                       and BLimits.MKID=BLimitstemp.MKID');
      sql.add('                       and BLimits.GSBH=BLimitstemp.GSBH');
      sql.add('                       and BLimits.FORMID=BLimitstemp.FORMID ) ');
      sql.add('      and MKID='+''''+'06'+'''');
      sql.add('      and FORMID like ''SN12%''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      sql.add('delete Blimitstemp');
      sql.add('where MKID='+''''+'06'+'''');
      sql.add('         and FORMID like ''SN12%''');
      if CBX1.itemindex<>0 then
      begin
        sql.add('         and GSBH='+''''+CBX1.Text+'''');
      end;
      execsql ;
      showmessage('加工單解鎖OK');
    end;
  end;
  checkbox4.Checked:=false;
  checkbox5.Checked:=false;
  checkbox6.Checked:=false;
  checkbox8.Checked:=false;
  checkbox10.Checked:=false;
end;

procedure TLock.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSdH from BGSZL order by GSdH ');
    active:=true;
    //CBX3.Items.Clear;
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('GSdH').AsString);
      next;
    end;
    close;
  end;
  CBX1.ItemIndex:=0;
end;

procedure TLock.FormDestroy(Sender: TObject);
begin
  Lock:=nil;
end;

end.
