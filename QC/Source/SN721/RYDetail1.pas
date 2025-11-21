unit RYDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls;

type
  TRYDetail = class(TForm)
    qry_pur: TQuery;
    DS1: TDataSource;
    qry_purCLBH: TStringField;
    qry_purCGNO: TStringField;
    qry_purZSDH: TStringField;
    qry_purZSYWJC: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    CGNOEdit: TEdit;
    MatNOEdit: TEdit;
    DBGridEh1: TDBGridEh;
    chkPur: TCheckBox;
    chkExt: TCheckBox;
    qry_purMemo: TStringField;
    qry_purYWPM: TStringField;
    qry_purRKNO: TStringField;
    Label1: TLabel;
    INVOEdit: TEdit;
    Label2: TLabel;
    RKNOEdit: TEdit;
    qry_purQty: TCurrencyField;
    RB1: TRadioButton;
    RB2: TRadioButton;
    Button2: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure RKNOEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RYDetail: TRYDetail;

implementation

uses MatQcCheck1, Main1, FunUnit;

{$R *.dfm}

procedure TRYDetail.FormDestroy(Sender: TObject);
begin
  RYDetail := nil;
end;

procedure TRYDetail.Button1Click(Sender: TObject);
begin
  if ((chkPur.Checked = false) and (chkExt.Checked = false)) then
  begin
    showmessage('Please select at least one');
    exit;
  end;
  if (CGNOEdit.Text = '') and (RKNOEdit.Text = '') then
  begin
    showmessage('RK/GC NO. or Material ID are not empty.');
    CGNOEdit.SetFocus;
    abort;
  end;

  with qry_Pur do
  begin
    active := false;
    sql.Clear;
    //Material from purchase
    if chkPur.Checked = true then
    begin
      if RB1.Checked then
      begin
        SQL.Add('select KCRK.ZSNO as CGNO,KCRKS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,Sum(KCRKS.Qty) as Qty,KCRK.RKNO,''Purchase'' AS Memo');
        SQL.Add('from KCRK');
        SQL.Add('   Left join KCRKS on KCRK.RKNO=KCRKS.RKNO  ');
        SQL.Add('   left Join ZSZL on ZSZL.ZSDH =KCRK.ZSBH');
        SQL.Add('   Left Join CLZL on CLZL.cldh=KCRKS.CLBH ');
        SQL.Add('   Left Join CGZL on CGZL.CGNO =KCRK.ZSNO  ');
        SQL.Add('where KCRK.GSBH=''' + main.Edit2.Text + ''' ');
        if CGNOEdit.Text <> '' then
          SQL.Add('     and CGZL.CGNO like ''' + CGNOEdit.Text + '%'' ');
        SQL.Add('     and KCRKS.CLBH like ''' + MatNOEdit.Text + '%'' ');
        if INVOEdit.Text <> '' then
          SQL.Add('     and KCRK.DOCNO like ''' + INVOEdit.Text + '%''');
        SQL.Add('     and KCRK.RKNO like ''' + RKNOEdit.Text + '%'' ');
        if CGNOEdit.Text <> '' then
          SQL.Add('     and CLBH not in (select CLBH from MaterialQCcheck where CGNO = ''' + CGNOEdit.Text +
            ''' and RKNO like ''%''+KCRKS.RKNO+''%'') ');
        SQL.Add('group by KCRK.ZSNO,KCRKS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,KCRK.RKNO');
      end
      else if RB2.Checked then
      begin
        sql.Add('select CGZL.CGNO, CGZLS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,cgzls.Qty,''ZZZZZZZZZZ'' as RKNO,''Purchase'' AS Memo');
        sql.Add('from CGZL');
        sql.Add('     left join CGZLS on CGZL.CGNO=CGZLS.CGNO');
        sql.Add('     left Join ZSZL on ZSZL.ZSDH =CGZL.ZSBH');
        sql.Add('     Left Join CLZL on CLZL.cldh=CGZLS.CLBH');
        sql.Add('where cgzl.GSBH=''' + main.Edit2.Text + '''');
        if CGNOEdit.Text <> '' then
          SQL.Add('     and CGZL.CGNO like ''' + CGNOEdit.Text + '%'' ');
        SQL.Add('     and CGZLS.CLBH like ''' + MatNOEdit.Text + '%'' ');
      end;
    end;
    if ((chkPur.Checked = true) and (chkExt.Checked = true) and (RKNOEdit.Text <> '')) then
      sql.Add('union all');
    //material Extra
    if ((chkExt.Checked = true) and (RKNOEdit.Text <> '')) then
    begin
      sql.Add('select ''ZZZZZZZZZZ'' as CGNO,JGZLS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,Sum(JGZLS.Qty) as Qty,JGZLS.JGNO as RKNO,''Extra'' AS Memo');
      sql.Add('from JGZLS');
      sql.Add('	  left Join JGZL ON JGZLS.JGNO=JGZL.JGNO ');
      sql.Add('   left Join ZSZL on ZSZL.ZSDH =JGZL.ZSBH ');
      sql.Add('   Left Join CLZL on CLZL.cldh=JGZLS.CLBH ');
      sql.Add('where JGZL.GSBH=''' + main.Edit2.Text + '''  and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
      sql.Add('			and JGZLS.JGNO like ''' + RKNOEdit.Text + '%'' ');
      sql.Add('     and JGZLS.CLBH like ''' + MatNOEdit.Text + '%'' ');
      sql.Add('group by JGZLS.JGNO,JGZLS.CLBH,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM ');
    end;
    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);
    active := true;
  end;
end;

procedure TRYDetail.DBGridEh1DblClick(Sender: TObject);
begin
{  if (not qry_Pur.Active) or (qry_Pur.RecordCount < 1) then
  begin
    abort;
  end;
  try
    with MatQcCheck.qry_Qc do
    begin
      edit;
      fieldbyname('CGNO').AsString := qry_Pur.fieldbyname('CGNO').AsString;
      fieldbyname('CLBH').AsString := qry_Pur.fieldbyname('CLBH').AsString;
      fieldbyname('ZSBH').AsString := qry_Pur.fieldbyname('ZSDH').AsString;
      fieldbyname('RKNO').AsString := qry_Pur.fieldbyname('RKNO').AsString;
      FieldByName('Qty').Value := qry_Pur.fieldbyname('Qty').AsString;
      FieldByName('Tracking').Value := 1;
      FieldByName('SampleSent').Value := 1;
      if qry_Pur.fieldbyname('Memo').AsString = 'Purchase' then
        fieldbyname('LB').AsString := '1'
      else
        fieldbyname('LB').AsString := '2';
      insert;
      FieldByName('DateInput').Value := formatdatetime('yyyy/mm/dd', date);
      FieldByName('Hours').Value := Nhour;

    end;
    //Close;
  except
    showmessage('Can not insert data, pls double check again !!!');
  end;
}
end;

procedure TRYDetail.RKNOEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Button1.Click;
end;

procedure TRYDetail.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TRYDetail.Button2Click(Sender: TObject);
var
  i: Integer;
  RKNO, CLBH: string;
  Qty: Double;
  bookmarklist:tbookmarklistEH;
begin
  if (not qry_Pur.Active) or (qry_Pur.RecordCount < 1) then
  begin
    abort;
  end;
  RKNO := '';
  CLBH := '';
  Qty := 0;

  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count=0 then
  begin
    showmessage('Pls choose data first !');
    abort;
  end;

  for i := 0 to bookmarklist.Count - 1 do
  begin
//    Bookmark := DBGridEh1.SelectedRows[i];
//    DBGridEh1.DataSource.DataSet.GotoBookmark(Bookmark);
    qry_Pur.gotobookmark(pointer(bookmarklist[i]));

    if CLBH = '' then
    begin
      CLBH := qry_Pur.fieldbyname('CLBH').AsString;
      RKNO := qry_Pur.fieldbyname('RKNO').AsString;
      Qty :=  qry_Pur.fieldbyname('Qty').Value;
    end
    else if CLBH = qry_Pur.fieldbyname('CLBH').AsString then
    begin
      RKNO := RKNO + ',' + qry_Pur.fieldbyname('RKNO').AsString;
      Qty :=  Qty + qry_Pur.fieldbyname('Qty').Value;
    end
    else
    begin
      ShowMessage('You Must Choice Same Material');
      abort;
    end;
  end;

  if CLBH <> '' then
  begin
    try
      with MatQcCheck.qry_Qc do
      begin
        edit;
        fieldbyname('CGNO').AsString := qry_Pur.fieldbyname('CGNO').AsString;
        fieldbyname('CLBH').AsString := qry_Pur.fieldbyname('CLBH').AsString;
        fieldbyname('ZSBH').AsString := qry_Pur.fieldbyname('ZSDH').AsString;
//        fieldbyname('RKNO').AsString := qry_Pur.fieldbyname('RKNO').AsString;
//        FieldByName('Qty').Value := qry_Pur.fieldbyname('Qty').AsString;
        fieldbyname('RKNO').AsString := RKNO;
        FieldByName('Qty').Value := Qty;
        FieldByName('Tracking').Value := 1;
        FieldByName('SampleSent').Value := 1;
        if qry_Pur.fieldbyname('Memo').AsString = 'Purchase' then
          fieldbyname('LB').AsString := '1'
        else
          fieldbyname('LB').AsString := '2';
        insert;
        FieldByName('DateInput').Value := formatdatetime('yyyy/mm/dd', date);
        FieldByName('Hours').Value := Nhour;

      end;
      //Close;
    except
      showmessage('Can not insert data, pls double check again !!!');
    end;
  end;
end;

end.
