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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
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
    Qry_clzhzlSubzsywjc: TStringField;
    Label4: TLabel;
    Edit_Supplier: TEdit;
    Query1zsywjc: TStringField;
    ShowDetail1: TCheckBox;
    ShowDetail3: TCheckBox;
    ShowDetail2: TCheckBox;
    ShowDetail4: TCheckBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialArticle: TMaterialArticle;

implementation


{$R *.dfm}

procedure TMaterialArticle.Button1Click(Sender: TObject);
begin
  Query2.Active:=false;
  Query3.Active:=false;
  Query4.Active:=false;
  Qry_A3B.Active:=false;
  Qry_clzhzlSub.Active:=false;
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select cldh,ywpm,dwbh,lycc,gjlb,cqdh,tyjh,clzmlb,ZS.zsywjc ');
      sql.add(' from CLZL ');
      sql.add(' Left Join (select ZLZLS2.CLBH,max(ZSZL.zsywjc) AS zsywjc from ZLZLS2,ZSZL,DDZLTW ');
      sql.add('             where ZSZL.ZSDH=ZLZLS2.CSBH AND ZLZLS2.ZLBH=DDZLTW.DDBH GROUP BY ZLZLS2.CLBH ');
      sql.add('            )  ZS ON ZS.CLBH=CLZL.cldh  ');
      sql.add('where 1=1 ');
      if edit1.Text<>'' then
         sql.add('and CLDH like '+''''+edit1.Text+'%'+'''');
      if edit2.Text<>'' then
         sql.add('and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      if edit3.Text<>'' then
         sql.add('and YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      if edit4.Text<>'' then
         sql.add('and YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      if Radio_MatType.ItemIndex=2 then
         sql.Add(' and CLZMLB = ''N''');
      if Radio_MatType.ItemIndex=1 then
         sql.Add(' and CLZMLB = ''Y''');
      if Edit_Supplier.Text<>'' then
         sql.add('and ZS.zsywjc like '+''''+'%'+Edit_Supplier.Text+'%'+'''');

      sql.add('order by CLDH ');
      active:=true;
    end;
  if ShowDetail1.Checked=true then Query2.Active:=true;
  if ShowDetail2.Checked=true then Query2.Active:=true;
  if ShowDetail3.Checked=true then Query2.Active:=true;
  if ShowDetail4.Checked=true then Query2.Active:=true;
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
      Query3.Active:=true;
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
      Query2.Active:=true;
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

end.
