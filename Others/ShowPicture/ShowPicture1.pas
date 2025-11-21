unit ShowPicture1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JPeg;

type
  TShowPicture = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ListBox1: TListBox;
    Image1: TImage;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    BDE_SERVER:String;
    AppDir:String;
    procedure Showpic();
    { Public declarations }
  end;

var
  ShowPicture: TShowPicture;

implementation
  uses FunUnit;

{$R *.dfm}

procedure TShowPicture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  FuncObj.Free;
end;

procedure TShowPicture.FormDestroy(Sender: TObject);
begin
  ShowPicture:=nil;
end;

procedure TShowPicture.FormCreate(Sender: TObject);
begin
  //AppDir:=ExtractFilePath(Application.ExeName);
 // FuncObj:=TFuncObj.Create;
  //FuncObj.setParameter(false,ExtractFilePath(Application.ExeName));
  BDE_SERVER:='192.168.23.156';
  Showpic();
end;
procedure  TShowPicture.Showpic();
Var
  SR      : TSearchRec;
  DirList : TStrings;
begin
  DirList:=TStringList.Create;
  try
    if FindFirst( ExtractFilePath(Application.Exename)+'\*.jpeg', faArchive, SR) = 0 then
    begin
      repeat
         Listbox1.AddItem(SR.Name,DirList);
       until FindNext(SR) <> 0;
      FindClose(SR);
    end;
   finally
   DirList.Free;
  end;
  //
  DirList:=TStringList.Create;
  try
    if FindFirst( ExtractFilePath(Application.Exename)+'\*.jpg', faArchive, SR) = 0 then
    begin
      repeat
         Listbox1.AddItem(SR.Name,DirList);
       until FindNext(SR) <> 0;
      FindClose(SR);
    end;
   finally
   DirList.Free;
  end;
  //
  DirList:=TStringList.Create;
  try
    if FindFirst( ExtractFilePath(Application.Exename)+'\*.bmp', faArchive, SR) = 0 then
    begin
      repeat
         Listbox1.AddItem(SR.Name,DirList);
       until FindNext(SR) <> 0;
      FindClose(SR);
    end;
   finally
   DirList.Free;
  end;
end;

procedure TShowPicture.ListBox1Click(Sender: TObject);
var ShoePic,Name:string;
begin
    Name:=listbox1.Items[ListBox1.ItemIndex];
    shoePic:=ExtractFilePath(Application.Exename)+'\'+Name+'';
  if FileExists(shoePic)=true then
  begin
    Image1.Picture.LoadFromFile(shoePic);
    Image1.Stretch:=true;
  end;

end;

end.
