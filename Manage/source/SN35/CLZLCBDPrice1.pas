unit CLZLCBDPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Buttons, StdCtrls, ExtCtrls, DBGridEhImpExp, ShellAPI,
  Menus;

type
  TCLZLCBDPrice = class(TForm)
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    MatNMEEdit: TEdit;
    MatNMCEdit: TEdit;
    Button3: TButton;
    CLBHEdit: TEdit;
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
    DBGrid1: TDBGridEh;
    CLZLQry: TQuery;
    DS1: TDataSource;
    UpCLZL: TUpdateSQL;
    TmpQry: TQuery;
    SaveDialog1: TSaveDialog;
    Label15: TLabel;
    CB2: TComboBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    lock1: TMenuItem;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    SupIDEdit: TEdit;
    Label2: TLabel;
    BrdEdit: TEdit;
    Label3: TLabel;
    SeaEdit: TEdit;
    Label4: TLabel;
    LockCBK: TComboBox;
    N2: TMenuItem;
    MatAricleN1: TMenuItem;
    CLZLQryYN: TBooleanField;
    CLZLQryCLBH: TStringField;
    CLZLQryYWPM: TStringField;
    CLZLQryZWPM: TStringField;
    CLZLQryCQDH: TStringField;
    CLZLQryDWBH: TStringField;
    CLZLQrysamplePrice: TFloatField;
    CLZLQrysamplePriceVN: TFloatField;
    CLZLQrysampleEx: TFloatField;
    CLZLQryCLZMLB: TStringField;
    Check: TCheckBox;
    CheckBox3: TCheckBox;
    CLZLQrySeason: TStringField;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    ComboBox5: TComboBox;
    CLZLQryFreight: TStringField;
    CLZLQryCostingRemark: TStringField;
    procedure Button3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure lock1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MatAricleN1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportGridEhExcel(SelectDBGrid:TDBGridEh);
  public
    IsEdit:boolean;
    { Public declarations }
  end;

var
  CLZLCBDPrice: TCLZLCBDPrice;

implementation
  uses main1, MaterialCBDPrice_SKU1, FunUnit, MaterialCBDPrice1;
{$R *.dfm}

procedure TCLZLCBDPrice.Button3Click(Sender: TObject);
begin
   //
   if ((CLBHEdit.Text='') and (length(SupIDEdit.Text)<3) and (length(SeaEdit.Text)<3) and (CB2.ItemIndex<=0) and (LockCBK.ItemIndex<=0) and (Edit1.Text='')  ) then
   begin
     Showmessage('Please input Mat No or SupID(3) or Season(3) !');
     Exit;
   end;
   if (Not(Edit1.Text='') and (length(Edit1.Text)<4)  ) then
   begin
     Showmessage('Please input Costing Season like FH24 or %%24 !');
     Exit;
   end;
   with CLZLQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select Convert(Bit,IsNull(MaterialCBDFilter.YN,0)) as YN,CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.CQDH,CLZL.DWBH,');
     SQL.Add('       MaterialCBD.samplePrice,Round(MaterialCBD.samplePrice*MaterialCBDEx.CWHL,0) as samplePriceVN ,MaterialCBDEx.CWHL as sampleEx,CLZL.CLZMLB,MaterialCBD.Season  ');
     SQL.Add('       ,MaterialCBD.Freight ,MaterialCBD.CostingRemark');
     SQL.Add('from CLZL');
     //20240627  ·s¼W©u«×
     SQL.Add('Left Join MaterialCBD_His MaterialCBD ON MaterialCBD.CLBH=CLZL.CLDH and  MaterialCBD.season like '''+Edit1.text+'%''');
         if ComboBox5.itemindex=0 then
            sql.add('and MaterialCBD.KHDH=''036''')
         else if ComboBox5.itemindex=1 then
            sql.add('and MaterialCBD.KHDH=''0079''')     //Cariuma
         else if ComboBox5.itemindex=2 then
            sql.add('and MaterialCBD.KHDH=''0078''');
     SQL.Add('Left Join MaterialCBDFilter on MaterialCBDFilter.CLBH=CLZL.CLDH and MaterialCBDFilter.GSBH='''+main.Edit2.Text+'''  ');
     SQL.Add('Left Join MaterialCBDEx on MaterialCBDEx.season=MaterialCBD.Season');         
         if ComboBox5.itemindex=0 then
            sql.add('and MaterialCBDEx.KHDH=''036''')
         else if ComboBox5.itemindex=1 then
            sql.add('and MaterialCBDEx.KHDH=''0079''')     //Cariuma
         else if ComboBox5.itemindex=2 then
            sql.add('and MaterialCBDEx.KHDH=''0078''');
     SQL.Add('where CLZL.CLDH like '''+CLBHEdit.Text+'%'' ');
     sql.add('and CLZL.YWPM like '+''''+'%'+MatNMEEdit.Text+'%'+'''');
     sql.add('and CLZL.ZWPM like '+''''+'%'+MatNMCEdit.Text+'%'+'''');
     if Not(Edit1.Text='') then
      sql.Add('and MaterialCBD.season like '''+Edit1.text+'''');

     if CB2.ItemIndex=1 then
     begin
      sql.Add('and (MaterialCBD.SamplePrice is null ) ');
     end;
     if CB2.ItemIndex=2 then
     begin
      sql.Add('and (MaterialCBD.SamplePrice is not null) ');
     end;
     if CheckBox1.Checked=false then
      sql.Add('and CLZL.CQDH<>''TW'' ');
     if CheckBox2.Checked=false then
      sql.Add('and CLZL.CQDH<>''VN'' ');
     if CheckBox3.Checked=true then
      sql.add('and CLZL.CLZMLB=''N'' ');
     if LockCBK.ItemIndex=1 then
      sql.Add('and MaterialCBDFilter.CLBH is not null ');
     if LockCBK.ItemIndex=2 then
      sql.Add('and MaterialCBDFilter.CLBH is  null ');
     if ((SupIDEdit.Text<>'') or (SeaEdit.Text<>'')) then
     begin
      SQL.Add('and CLZL.CLDH in (');
      SQL.Add(' select XXZLS.CLBH from (');
      SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB,XXZLS.USERDATE  ');
      SQL.Add(' from XXZLS ');
      SQL.Add(' left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao ');
      SQL.Add(' where XXZL.JiJie like '''+SeaEdit.Text+'%'' and XXZL.KHDH='''+BrdEdit.Text+''' and XXZLS.CSBH like '''+SupIDEdit.Text+'%''');
      SQL.Add(' union all ');
      SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE  ');
      SQL.Add(' from XXZLS ');
      SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH');
      SQL.Add(' left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao  ');
      SQL.Add(' where XXZL.JiJie like'''+SeaEdit.Text+'%'' and XXZL.KHDH='''+BrdEdit.Text+''' and CLZHZL.ZSDH like '''+SupIDEdit.Text+'%''');
      SQL.Add(' union all ');
      SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE  from ( ');
      SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB ');
      SQL.Add(' from XXZLS ');
      SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ');
      SQL.Add('  left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao  ');
      SQL.Add(' where XXZL.JiJie like '''+SeaEdit.Text+'%'' and XXZL.KHDH='''+BrdEdit.Text+''' ) XXZLS ');
      SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
      SQL.Add(' where CLZHZL.ZSDH like '''+SupIDEdit.Text+'%''');
      SQL.Add(' ) XXZLS ');
      SQL.Add('  left join xxzl on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao');
            if ComboBox5.ItemIndex=0 then
                sql.add('and xxzl.KFCQ=''JNG'' ');
            if ComboBox5.ItemIndex=1 then
                sql.add('and xxzl.KFCQ=''FNS''');
      SQL.Add(' Group by XXZLS.CLBH ');
      SQL.Add(')  ');
     end;
     if Check.Checked=true then
       sql.Add('and MaterialCBDFilter.USERID='''+main.Edit1.Text+''' ');
     SQL.Add('order by CLZL.CLDH ');
     //funcObj.WriteErrorLog(sql.Text);
     //showmessage(SQL.text);
     Active:=true;
   end;
   BBT6.Enabled:=true;
end;

procedure TCLZLCBDPrice.BB4Click(Sender: TObject);
begin
  if CLZLQry.Active=false then  Exit;
  with CLZLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCLZLCBDPrice.BB6Click(Sender: TObject);
begin
  with CLZLQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TCLZLCBDPrice.BB5Click(Sender: TObject);
var i:integer;
begin
  //
  try
    CLZLQry.First;
    with CLZLQry do
    begin
      for i:=0 to CLZLQry.RecordCount-1 do
      begin
       case CLZLQry.updatestatus of
        usmodified:
        begin
          if CLZLQry.FieldByName('YN').Value=true then
          begin
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              sql.Add('IF NOT EXISTS (Select CLBH from MaterialCBDFilter where CLBH='''+CLZLQry.FieldByName('CLBH').AsString+''' and GSBH='''+main.Edit2.Text+''')');
              SQL.Add('Begin ');
              SQL.Add('Insert into MaterialCBDFilter (CLBH, GSBH, USERID, USERDATE, YN)');
              SQL.Add('Values( '''+CLZLQry.FieldByName('CLBH').AsString+''','''+main.Edit2.Text+''','''+main.Edit1.Text+''',Getdate(),1)');
              SQl.Add('End ');
              ExecSQL();
            end;
          end else
          begin
            with TmpQry do
            begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''MaterialCBDFilter'','''+main.Edit2.Text+'''');
                sql.add(','''+CLZLQry.FieldByName('CLBH').AsString+''','+''''+main.Edit1.Text+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
            end;
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from MaterialCBDFilter ');
              SQL.Add('where CLBH='''+CLZLQry.FieldByName('CLBH').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
              ExecSQL();
            end;
          end;
        end;
       end;//Case ENDet.updatestatus of
       CLZLQry.Next;
      end;
    end;
    CLZLQry.active:=false;
    CLZLQry.cachedupdates:=false;
    CLZLQry.requestlive:=false;
    CLZLQry.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    //
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //

end;

procedure TCLZLCBDPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCLZLCBDPrice.FormDestroy(Sender: TObject);
begin
  CLZLCBDPrice:=nil;
end;

procedure TCLZLCBDPrice.ExportGridEhExcel(SelectDBGrid:TDBGridEh);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin

  tdbgh := SelectDBGrid;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;
procedure TCLZLCBDPrice.bbt6Click(Sender: TObject);
begin
  ExportGridEhExcel(DBGrid1)
end;

procedure TCLZLCBDPrice.N1Click(Sender: TObject);
begin
  if CLZLQry.Active=true then
  begin
    if CLZLQry.RequestLive=true then
    begin
      while not CLZLQry.Eof do
      begin
        CLZLQry.Edit;
        CLZLQry.FieldByName('YN').Value:=1;
        CLZLQry.Post;
        CLZLQry.Next;
      end;
    end;
  end;
end;

procedure TCLZLCBDPrice.lock1Click(Sender: TObject);
begin
  if CLZLQry.Active=true then
  begin
    if CLZLQry.RequestLive=true then
    begin
      while not CLZLQry.Eof do
      begin
        CLZLQry.Edit;
        CLZLQry.FieldByName('YN').Value:=0;
        CLZLQry.Post;
        CLZLQry.Next;
      end;
    end;
  end;
end;

procedure TCLZLCBDPrice.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
  if IsEdit=false then
  begin
   BB4.Enabled:=false;
   DBGrid1.Columns[0].Visible:=false;
  end;
end;

procedure TCLZLCBDPrice.MatAricleN1Click(Sender: TObject);
begin
  MaterialCBDPrice_SKU:=TMaterialCBDPrice_SKU.Create(self);
  MaterialCBDPrice_SKU.CLBHEdit.Text:=CLZLCBDPrice.CLZLQry.fieldByName('CLBH').AsString;
  MaterialCBDPrice_SKU.ShowModal();

end;

end.
