unit Lab_TestReason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TLab_TestReason = class(TForm)
    Panel1: TPanel;
    btninsert: TBitBtn;
    btnmodify: TBitBtn;
    btndelete: TBitBtn;
    btnsave: TBitBtn;
    btncancel: TBitBtn;
    DBGridEh1: TDBGridEh;
    qry1: TQuery;
    DS1: TDataSource;
    qry1TestID: TStringField;
    qry1TestReason: TStringField;
    Label1: TLabel;
    edt1: TEdit;
    Label2: TLabel;
    edt2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Upd1: TUpdateSQL;
    qry1UserID: TStringField;
    qry1UserDate: TDateTimeField;
    qry1YN: TStringField;
    qry1GSBH: TStringField;
    qry1Brand: TStringField;
    qry1kfjc: TStringField;
    qry1Abb: TStringField;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btninsertClick(Sender: TObject);
    procedure btnmodifyClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lab_TestReason: TLab_TestReason;

implementation

uses Main1, MatLabCheck1, Brand1;

{$R *.dfm}

procedure TLab_TestReason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    // close;
    action:=cafree;
end;

procedure TLab_TestReason.FormDestroy(Sender: TObject);
begin
    Lab_TestReason:=nil;
end;

procedure TLab_TestReason.Button1Click(Sender: TObject);
begin
    with qry1 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('select Lab_TestReason.*,kfjc from Lab_TestReason');
        sql.Add('left join kfzl on Lab_TestReason.brand=kfzl.kfdh');
        sql.Add('where 1=1');
        if edt1.Text<>'' then
          sql.Add('     and TestID like '''+edt1.Text+'%'' ');
        if edt2.Text<>'' then
          sql.Add('     and TestReason like '''+edt2.Text+'%'' ');
        sql.Add('and GSBH='''+main.Edit2.Text+''' ');
        sql.Add('order by Lab_TestReason.UserDate desc');
        active:=true;
    end;

    btninsert.Enabled:=true;
    btnmodify.Enabled:=true;
    btndelete.Enabled:=true;
end;

procedure TLab_TestReason.btninsertClick(Sender: TObject);
begin
    with qry1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
    end;
    btnsave.Enabled:=true;
    btncancel.Enabled:=true;
    DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TLab_TestReason.btnmodifyClick(Sender: TObject);
begin
   if (qry1.FieldByName('USERID').Value <> main.edit1.Text) then
    begin
      ShowMessage('It is not yours,you can not modify!!!');
      abort;
    end;

   with qry1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    btnsave.Enabled:=true;
    btncancel.Enabled:=true;
    DBGridEh1.Columns[0].ButtonStyle:=cbsnone;
    DBGridEh1.Columns[0].ReadOnly:=true;
    DBGridEh1.Columns[1].ReadOnly:=true;
end;

procedure TLab_TestReason.btndeleteClick(Sender: TObject);
begin
    if (qry1.FieldByName('USERID').Value <> main.edit1.Text) then
    begin
      ShowMessage('It is not yours,can not delete!!!');
      abort;
    end;

   if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
   begin
        with qry1 do
        begin
           requestlive:=true;
           cachedupdates:=true;
           edit;
           fieldbyname('YN').Value:='0';
        end;
        btnsave.Enabled:=true;
        btncancel.Enabled:=true;
   end ;
end;

procedure TLab_TestReason.btnsaveClick(Sender: TObject);
var i:integer;
begin
  try
    qry1.first;
    for i:=1 to qry1.RecordCount do
      begin
        case qry1.updatestatus of
          usinserted:
            begin
                qry1.edit;
                qry1.fieldbyname('YN').Value:='1';
                qry1.fieldbyname('USERID').Value:=main.edit1.text;
                qry1.FieldByName('GSBH').Value:= main.edit2.text;
                Upd1.Apply(ukInsert);
            end;
          usmodified:
          begin
             if qry1.fieldbyname('YN').value='0'then
             begin
                qry1.edit;
                Upd1.apply(ukdelete);
             end
             else
             begin
                qry1.edit;
                Upd1.apply(ukmodify);
             end;
          end;
        end;
        qry1.next;
      end;
    qry1.active:=false;
    qry1.cachedupdates:=false;
    qry1.requestlive:=false;
    qry1.active:=true;
  except
    Messagedlg('Error, can not save data!',mtwarning,[mbyes],0);
    Abort;
  end;
  btnsave.Enabled:=false;
  btncancel.Enabled:=false;

end;

procedure TLab_TestReason.btncancelClick(Sender: TObject);
begin
    with qry1 do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    btnsave.Enabled:=false;
    btncancel.Enabled:=false;
end;

procedure TLab_TestReason.DBGridEh1DblClick(Sender: TObject);
begin
    if (not qry1.Active) or (qry1.RecordCount<1) then
    begin
       abort;
    end;
    if Lab_TestReason.Label4.Caption<>'NULL' then
    begin
     with qry1 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end;
      try
        if MatLabCheck.qry_Qc.RequestLive then
        begin
          with MatLabCheck.qry_Qc do
          begin
              edit;
              if Lab_TestReason.Label4.Caption='FailReason' then
                fieldbyname('Lab_Reason').AsString:=qry1.fieldbyname('TestID').AsString + ',' + fieldbyname('Lab_Reason').AsString;
              if Lab_TestReason.Label4.Caption='TLSP' then
                fieldbyname('Receducing_TLSP').AsString:=qry1.fieldbyname('TestID').AsString + ',' + fieldbyname('Receducing_TLSP').AsString;
          end;
          qry1.Delete;
          //close
        end
        else
          abort;
        except
            showmessage('Can not insert data, pls double check again !!!');
        end;
      end;
    
end;

procedure TLab_TestReason.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (qry1.FieldByName('YN').Value ='0') then
  begin
      DBGridEh1.canvas.font.color:=clRed;
  end;
end;

procedure TLab_TestReason.DBGridEh1EditButtonClick(Sender: TObject);
begin
 if DBGridEh1.SelectedField.FieldName='kfjc' then
 begin
    Brand:= TBrand.create(self);
    Brand.ShowModal();
    Brand.Free;
 end;
end;

procedure TLab_TestReason.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
