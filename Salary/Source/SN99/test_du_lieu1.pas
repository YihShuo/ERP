unit test_du_lieu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, DBCtrls, Mask, StdCtrls,
  Buttons, ExtCtrls;

type
  Ttest_du_lieu = class(TForm)
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
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit2: TEdit;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBC1: TDBCheckBox;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1ProYN: TBooleanField;
    Query1Worker_Qty: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1GXLB: TStringField;
    Query1sumline: TStringField;
    Query1reportclass: TStringField;
    Query1ID_HRM: TStringField;
    Query1flDepID: TStringField;
    Query1Xuong: TStringField;
    Query1BZLB: TStringField;
    UpSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    tmpQry: TQuery;
    Label10: TLabel;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  test_du_lieu: Ttest_du_lieu;

implementation

{$R *.dfm}

procedure Ttest_du_lieu.Button1Click(Sender: TObject);
begin
  with query1 do
    begin
      active:=false;
      sql.clear;
      sql.add('select top 10* from bdepartment ');
      sql.add('where id like'''+edit1.Text+'%''');
      sql.Add('and gxlb like'''+edit2.Text+'%''');
      sql.Add('and ProYn like'''+combobox1.Text+'%''');
      sql.Add('and GSBH like'''+CBX1.Text+'%''');
      sql.Add('and sumline like'''+edit4.Text+'%''');
      sql.Add('and YN like'''+Combobox2.Text+'%''');
      active:=true;
    end;
    bb2.enabled :=true;
end;

procedure Ttest_du_lieu.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
  panel2.Visible:=false;
  Edit1.SetFocus;
end;

procedure Ttest_du_lieu.BB2Click(Sender: TObject);
begin
  with query1 do
    begin
      cachedupdates:=true;
      requestlive:=true;
      insert;
    end;
    bb5.enabled:=true;
    bb6.enabled:=true;
    N1.Enabled:=true;
    N2.Enabled:=true;
end;

end.
