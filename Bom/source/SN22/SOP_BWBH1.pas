unit SOP_BWBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls,MsHtml,
  GridsEh, DBGridEh, jpeg, Menus, untClipboard, Buttons;

type
  TSOP_BWBH = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    DS1: TDataSource;
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    SOPImage: TImage;
    OpenDialog: TOpenDialog;
    PopupMenu1: TPopupMenu;
    PasteN1: TMenuItem;
    GroupBox1: TGroupBox;
    PartIDEdit: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    PartNameEdit: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EDIT1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    OKBtn: TBitBtn;
    CheckBox1: TCheckBox;
    ImgCK: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SOPImageDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasteN1Click(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    JSObjId:string;
    { Public declarations }
  end;

var
  SOP_BWBH: TSOP_BWBH;

implementation
  uses SOPDocu1,SOPFunit1;
{$R *.dfm}

procedure TSOP_BWBH.Button1Click(Sender: TObject);
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     sql.add('select BWZL.BWDH,BWZL.ZWSM,BWZL.YWSM from XXZLS');
     sql.add('left join BWZL on XXZLS.BWBH=bwzl.bwdh ');
     sql.add('where XXZLS.XieXing='''+SOPDocu.XieXing+''' and SheHao='''+SOPDocu.SheHao+''' ');
     sql.add('and BWZL.YWSM like ''%'+Edit2.Text+'%'' ');
     sql.add('and BWZL.BWDH like '''+Edit1.Text+'%'' ');
     sql.add('order by BWDH');
     active:=true;
  end;

end;

procedure TSOP_BWBH.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TSOP_BWBH.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  Button1.Click;
end;

procedure TSOP_BWBH.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  Button1.Click;
end;

procedure TSOP_BWBH.DBGrid1DblClick(Sender: TObject);
begin
 // Button2.Click;
 PartIDEdit.Text:=PartIDEdit.Text+Query1.FieldByName('BWDH').AsString+',';
 PartNameEdit.Text:=PartNameEdit.Text+Query1.FieldByName('ZWSM').AsString+Query1.FieldByName('YWSM').AsString+',';
end;

procedure TSOP_BWBH.SOPImageDblClick(Sender: TObject);
begin
  if OpenDialog.Execute() then
  begin
    SOPImage.Picture.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TSOP_BWBH.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if (ssCtrl in Shift) and ((Key = Ord('V')) or (Key = Ord('v'))) then
  //  ShowMessage('Bingo');
end;

procedure TSOP_BWBH.PasteN1Click(Sender: TObject);
var
  Bmp: TBitmap;
  JPGImage: TGraphic ;
begin

  if Clipboard.HasFormat(CF_PICTURE) then
  begin
    Bmp := TBitmap.Create;
    JPGImage := TJPegImage.Create;
    try
      Bmp.Assign(Clipboard);
      JPGImage.Assign(bmp);
      SOPImage.Picture.Assign(JPGImage) ;
    finally
      JpgImage.Free;
      Bmp.Free;
    end;
  end;

end;

procedure TSOP_BWBH.OKBtnClick(Sender: TObject);
var HTMLWindow: IHTMLWindow2;
    BWDHStr,YWSMStr,FName,Value:WideString;
begin

  if (PartIDEdit.Text<>'') then
  begin
    BWDHStr:=PartIDEdit.Text;
    YWSMStr:=PartNameEdit.Text;
    //設定id.value
    if length(BWDHStr)>0 then BWDHStr:=Copy(BWDHStr,1,length(BWDHStr)-1);
    if length(YWSMStr)>0 then YWSMStr:=Copy(YWSMStr,1,length(YWSMStr)-1);
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    //部位js.id=erp11
    HTMLWindow.execScript('SetERPparamValue('''+JSObjId+''','''+BWDHStr+''')', 'JavaScript');   //儲存字串到JS變數
    //部位描述js.id=erp1
    HTMLWindow.execScript('SetERPparamText('''+Copy(JSObjId,1,length(JSObjId)-1)+''','''+YWSMStr+''',''1'')', 'JavaScript');
    //圖片更新
    FName:='';
    if ImgCK.Checked=true then
    begin
      //圖片名稱 js.id=erp16
      FName:=FormatDateTime('YYYYMMDDhhnnss',now())+'.jpg';
      SOPImage.Picture.SaveToFile(SOPDocu.AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images\'+FName);
      //儲存JS變數
      HTMLWindow.execScript('SetERPparamValue('''+Copy(JSObjId,1,length(JSObjId)-1)+'6'','''+FName+''')', 'JavaScript');
    end;
    //新增物件IMG  檔案路徑名稱,部位描述,input_id=erp16
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    HTMLWindow.execScript('PFCObj_AddImg('''+FName+''','''+copy(JSObjId,4,1)+':'+YWSMStr+'('+BWDHStr+')'','''+Copy(JSObjId,1,length(JSObjId)-1)+'6'')', 'JavaScript');
    //左右腳共用數 js.id=erp15
    if CheckBox1.Checked=true then Value:='1' else Value:='0';
    HTMLWindow.execScript('SetERPparamText_LRcom('''+Copy(JSObjId,1,length(JSObjId)-1)+'5'','''+Value+''')', 'JavaScript');
  end;
  close;

end;

end.
