unit MaterialArticle1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DBGridEhImpExp, ShellAPI,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,
  Menus;

type
  TMaterialArticle = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1lycc: TStringField;
    Query1gjlb: TStringField;
    Query1cqdh: TStringField;
    Query1tyjh: TStringField;
    DataSource2: TDataSource;
    Query2: TQuery;
    Query2ARTICLE: TStringField;
    Query2XIEXING: TStringField;
    Query2SHEHAO: TStringField;
    Query2CLBH: TStringField;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh2: TDBGridEh;
    Query3: TQuery;
    DataSource3: TDataSource;
    Query3ARTICLE: TStringField;
    Query3CLBH: TStringField;
    Query3YPDH: TStringField;
    Query3KFJD: TStringField;
    Query3JiJie: TStringField;
    Query3FD: TStringField;
    Query2FD: TStringField;
    Query2JiJie: TStringField;
    Query1clzmlb: TStringField;
    Panel7: TPanel;
    Panel8: TPanel;
    Splitter3: TSplitter;
    DBGridEh4: TDBGridEh;
    Query4: TQuery;
    DataSource4: TDataSource;
    Query4CGDATE: TDateTimeField;
    Query4PURPOSE: TStringField;
    Query4CGNO: TStringField;
    Query2XieMing: TStringField;
    Query4ZSYWJC: TStringField;
    Query2ZSYWJC: TStringField;
    DS_A3B: TDataSource;
    Qry_A3B: TQuery;
    Qry_A3BDDBH: TStringField;
    Qry_A3BARTICLE: TStringField;
    Qry_A3BPairs: TIntegerField;
    Qry_A3BDDRQ: TDateTimeField;
    Qry_A3BSHQR: TStringField;
    Radio_MatType: TRadioGroup;
    Splitter4: TSplitter;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid1: TDBGridEh;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    Pop_A3B: TPopupMenu;
    Excel1: TMenuItem;
    Excel2: TMenuItem;
    Excel3: TMenuItem;
    Excel4: TMenuItem;
    Excel5: TMenuItem;
    Query4GSBH: TStringField;
    Query4CGLX: TStringField;
    DBGridEh8: TDBGridEh;
    Splitter5: TSplitter;
    Qry_clzhzlSub: TQuery;
    StringField30: TStringField;
    FloatField1: TFloatField;
    StringField32: TStringField;
    StringField33: TStringField;
    DateTimeField4: TDateTimeField;
    Qry_clzhzlSubclzmlb: TStringField;
    DS_clzhzlSub: TDataSource;
    Qry_clzhzlSubzsdh: TStringField;
    Label4: TLabel;
    Edit_Supplier: TEdit;
    ShowDetail1: TCheckBox;
    ShowDetail3: TCheckBox;
    ShowDetail2: TCheckBox;
    ShowDetail4: TCheckBox;
    YWPMEdit: TEdit;
    StopCK: TCheckBox;
    Qry_clzhzlSubzsywjc: TStringField;
    Query1UseCount: TIntegerField;
    SplitCK: TCheckBox;
    Query3devcode: TStringField;
    Query3userid: TStringField;
    Edit2: TEdit;
    Label3: TLabel;
    Query1khdh: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure Excel4Click(Sender: TObject);
    procedure Excel5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ShowDetail1Click(Sender: TObject);
    procedure ShowDetail2Click(Sender: TObject);
    procedure ShowDetail3Click(Sender: TObject);
    procedure ShowDetail4Click(Sender: TObject);
    procedure YWPMEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialArticle: TMaterialArticle;

implementation
  uses main1,FunUnit, SampleMaterial1;

{$R *.dfm}

procedure TMaterialArticle.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  if ( (trim(YWPMEdit.Text)='') and (trim(Edit1.Text)='') ) then
  begin
    Showmessage('Please input Mat Name');
    exit;
  end;
  Query2.Active:=false;
  Query3.Active:=false;
  Query4.Active:=false;
  Qry_A3B.Active:=false;
  Qry_clzhzlSub.Active:=false;
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select top 100 cldh,ywpm,dwbh,lycc,gjlb,cqdh,tyjh,clzmlb,YPZLS.UseCount,'''+edit2.text+''' as khdh');
      sql.add(' from CLZL ');
      sql.add('left join ( ');
      sql.add('select CLBH,Count(CLBH) as UseCount from ( ');
      sql.add('select CLBH  from YPZLS,YPZL,KFXXZL where YPZL.YPDH=YPZLS.YPDH and  YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing  and YPZL.UserDate>='''+FormatDateTime('YYYYMMDD',Date()-720)+''' ');
      sql.add('and KFXXZL.KHDH in ('''+SampleMaterial.Develop_N23_KHDH+''' ) ');
      sql.add('union all ');
      sql.add('select Clzhzl.CLDH1 as CLBH from YPZLS ');
      sql.add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH ');
      sql.add('inner join KFXXZL on YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing ');
      sql.add('inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  ');
      sql.add('where YPZL.UserDate>='''+FormatDateTime('YYYYMMDD',Date()-720)+''' ');
      if edit2.Text <> '' then
      begin
         sql.add('and KFXXZL.KHDH='''+edit2.text+''' ');
      end else
      begin
        sql.add('and KFXXZL.KHDH in ('''+SampleMaterial.Develop_N23_KHDH+''' ) ')
      end;
      sql.add(') YPZLSAll  Group by CLBH ) YPZLS on YPZLS.CLBH=CLZL.CLDH  ');
      sql.add('where 1=1 ');
      if edit1.Text<>'' then
         sql.add('and CLDH like '+''''+edit1.Text+'%'+'''');
      if trim(YWPMEdit.Text)<>'' then
      begin
        if SplitCK.Checked=true then
           tmpList:=FuncObj.SplitString(YWPMEdit.Text,'*')
        else
           tmpList:=FuncObj.SplitString(YWPMEdit.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
          if trim(tmpList.Strings[i])<>'' then
          SQL.Add('and YWPM like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
        end;
        tmpList.Free;
      end;
      if Radio_MatType.ItemIndex=2 then
         sql.Add(' and CLZMLB = ''N''');
      if Radio_MatType.ItemIndex=1 then
         sql.Add(' and CLZMLB = ''Y''');
      if Edit_Supplier.Text<>'' then
         sql.add('and ZS.zsywjc like '+''''+'%'+Edit_Supplier.Text+'%'+'''');
      if StopCK.Checked=true then
         sql.Add('and IsNull(clzl.tyjh,'''')<>''Y''  ');
      sql.add('order by  YPZLS.UseCount desc ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  if ShowDetail1.Checked=true then Query3.Active:=true;
  if ShowDetail2.Checked=true then Query4.Active:=true;
  if ShowDetail3.Checked=true then Query2.Active:=true;
  if ShowDetail4.Checked=true then Qry_A3B.Active:=true;
  Qry_clzhzlSub.Active:=true;
end;

procedure TMaterialArticle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialArticle.FormDestroy(Sender: TObject);
begin
MaterialArticle:=nil;
end;

procedure TMaterialArticle.Image2Click(Sender: TObject);
begin
  MaterialArticle.Close;
end;

procedure TMaterialArticle.Excel1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  if (DBGrid1 is TDBGridEh) then
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
        SaveDBGridEhToExportFile(ExpClass,DBGrid1,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TMaterialArticle.Excel2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  if (DBGridEh2 is TDBGridEh) then
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
        SaveDBGridEhToExportFile(ExpClass,DBGridEh2,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TMaterialArticle.Excel3Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  if (DBGridEh4 is TDBGridEh) then
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
        SaveDBGridEhToExportFile(ExpClass,DBGridEh4,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TMaterialArticle.Excel4Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  if (DBGridEh3 is TDBGridEh) then
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
        SaveDBGridEhToExportFile(ExpClass,DBGridEh3,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TMaterialArticle.Excel5Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  if (DBGridEh1 is TDBGridEh) then
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
        SaveDBGridEhToExportFile(ExpClass,DBGridEh1,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TMaterialArticle.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
       if (Query1.FieldByName('tyjh').Value='Y')  then
           DBGridEh1.canvas.font.color:=clred;
end;

procedure TMaterialArticle.ShowDetail1Click(Sender: TObject);
begin
  if ShowDetail1.Checked=false then
  begin
    Query3.Active:=false;
  end else
  begin
    if Query1.Active=true then
    begin
      //Query3.Active:=true;
      with query3 do
      begin
        sql.Clear;
        active:=false;
        sql.Add('select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.KFJD,kfxxzl.JiJie,kfxxzl.FD  ,ypzl.userid');
        sql.Add('from  ypzlS left join ypzl on ypzlS.YPDH=ypzl.YPDH');
        sql.Add('left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.SheHao=ypzl.SheHao');
        sql.Add('WHERE ypzlS.CLBH='''+Query1.fieldbyname('CLDH').Value+''' and kfxxzl.khdh in ('''+SampleMaterial.Develop_N23_KHDH+''')');
        sql.Add('UNION ALL');
        sql.Add('select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.KFJD,kfxxzl.JiJie,kfxxzl.FD  ,ypzl.userid');
        sql.Add('from  ypzlS left join ypzl on ypzlS.YPDH=ypzl.YPDH');
        sql.Add('left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.SheHao=ypzl.SheHao');
        sql.Add('left join CLZHZL on CLZHZL.cldh=ypzls.clbh');
        sql.Add('WHERE CLZHZL.cldh1='''+Query1.fieldbyname('CLDH').Value+'''');
        sql.Add('and kfxxzl.khdh in ('''+SampleMaterial.Develop_N23_KHDH+''' )');
        sql.Add('order by  JiJie DESC');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
      end;
    end;
  end;
end;

procedure TMaterialArticle.ShowDetail2Click(Sender: TObject);
begin
  if ShowDetail2.Checked=false then
  begin
    Query4.Active:=false;
  end else
  begin
    if Query1.Active=true then
    begin
      Query4.Active:=true;
    end;
  end;
end;

procedure TMaterialArticle.ShowDetail3Click(Sender: TObject);
begin
  if ShowDetail3.Checked=false then
  begin
    Query2.Active:=false;
  end else
  begin
    if Query1.Active=true then
    begin
      //Query2.Active:=true;
      with Query2 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT AA.* FROM ( ');
        sql.Add('select XXZL.ARTICLE,XXZLS.XIEXING,XXZLS.SHEHAO,XXZLS.CLBH,kfxxzl.FD,XXZL.JiJie,xxzl.xieming,ZSZL.ZSYWJC');
        sql.Add('from  XXZLS left join XXZL   ON XXZLS.XIEXING=XXZL.XIEXING AND  XXZLS.SHEHAO=XXZL.SHEHAO');
        sql.Add('left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHao=kfxxzl.SheHao');
        sql.Add('left join ZSZL on  ZSZL.ZSDH=XXZLS.CSBH');
        sql.Add('WHERE kfxxzl.khdh in ('''+SampleMaterial.Develop_N23_KHDH+''' ) AND XXZLS.CLBH='''+Query1.fieldbyname('CLDH').Value+'''');
        sql.Add('UNION ALL');
        sql.Add('select XXZL.ARTICLE,XXZLS.XIEXING,XXZLS.SHEHAO,XXZLS.CLBH,kfxxzl.FD,XXZL.JiJie,xxzl.xieming,ZSZL.ZSYWJC');
        sql.Add('from  XXZLS left join XXZL ON XXZLS.XIEXING=XXZL.XIEXING AND XXZLS.SHEHAO=XXZL.SHEHAO');
        sql.Add('left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHao=kfxxzl.SheHao');
        sql.Add('left join ZSZL on  ZSZL.ZSDH=XXZLS.CSBH');
        sql.Add('WHERE kfxxzl.khdh in ('''+SampleMaterial.Develop_N23_KHDH+''' ) AND XXZLS.CLBH  IN (SELECT  CLDH FROM CLZHZL  WHERE  CLDH1='''+Query1.fieldbyname('CLDH').Value+''' )');
        sql.Add('UNION ALL');
        sql.Add('select XXZL.ARTICLE,XXZLSVN.XIEXING,XXZLSVN.SHEHAO,XXZLSVN.CLBH,kfxxzl.FD,XXZL.JiJie,xxzl.xieming,ZSZL.ZSYWJC');
        sql.Add('from  XXZLSVN left join XXZL ON XXZLSVN.XIEXING=XXZL.XIEXING AND XXZLSVN.SHEHAO=XXZL.SHEHAO');
        sql.Add('left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHao=kfxxzl.SheHao');
        sql.Add('left join ZSZL on  ZSZL.ZSDH=XXZLSVN.CSBH');
        sql.Add('WHERE kfxxzl.khdh in ('''+SampleMaterial.Develop_N23_KHDH+''' ) AND XXZLSVN.CLBH='''+Query1.fieldbyname('CLDH').Value+'''');
        sql.Add(') AA');
        sql.Add('GROUP BY  ARTICLE,XIEXING,SHEHAO,CLBH,FD,JiJie,aa.xieming,ZSYWJC');
        sql.Add('order by JiJie DESC');
        active:=true;
      end;
    end;
  end;
end;

procedure TMaterialArticle.ShowDetail4Click(Sender: TObject);
begin
  if ShowDetail4.Checked=false then
  begin
    Qry_A3B.Active:=false;
  end else
  begin
    if Query1.Active=true then
    begin
      Qry_A3B.Active:=true;
    end;
  end;
end;

procedure TMaterialArticle.YWPMEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

end.
