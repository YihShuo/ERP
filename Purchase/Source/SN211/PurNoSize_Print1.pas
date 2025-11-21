unit PurNoSize_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, IniFiles;

type
  TPurNoSize_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    Mas: TQuery;
    Det: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRDBText2: TQRDBText;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    MasCGNO: TStringField;
    MasCLBH: TStringField;
    MasXqQty: TCurrencyField;
    MasQty: TCurrencyField;
    MasUSPrice: TCurrencyField;
    MasVNPrice: TCurrencyField;
    MasMemo: TStringField;
    MasBJNO: TStringField;
    MasYQDate: TDateTimeField;
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    L6: TQRLabel;
    L7: TQRLabel;
    L5: TQRLabel;
    L4: TQRLabel;
    L3: TQRLabel;
    L1: TQRLabel;
    L2: TQRLabel;
    MasZLNO: TMemoField;
    QRDBText12: TQRDBText;
    L8: TQRLabel;
    SeasonQ: TQuery;
    SeasonQGSBH: TStringField;
    L9: TQRLabel;
    SeasonQBUYNO: TStringField;
    L10: TQRLabel;
    MasZWPM: TStringField;
    QRDBText14: TQRDBText;
    NoteInfo: TQRLabel;
    L20: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ComName:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PurNoSize_Print: TPurNoSize_Print;

implementation

uses main1;

{$R *.dfm}
procedure TPurNoSize_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPurNoSize_Print.FormCreate(Sender: TObject);
var i: integer;
    IsMark_WhitColor, IsMark_TRICOT, IsMark_Black, isMark_Natural, IsMark_Charcoal,
    IsMark_Red, IsMark_Navy, IsMark_Pink: boolean;
begin
  Mas.Active:=true;
  Det.Active:=true;
  SeasonQ.Active:=true;
  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  IsMark_WhitColor:=false;
  IsMark_TRICOT:=false;
  IsMark_Black:=false;
  isMark_Natural:=false;
  IsMark_Charcoal:=false;
  // 20161130 add note for Red- Navy- Pink
  //IsMark_Red:=false;
  IsMark_Navy:=false;
  IsMark_Pink:=false;


  Mas.First;
  while not Mas.Eof   do
  begin
    if pos('WHITE',UpperCase(Mas.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if pos('BV-10A',UpperCase(Mas.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if pos('BLACK',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;
    if pos('CONVERSE CHARCOAL',UpperCase(Mas.FieldByName('YWPM').AsString))<>0 then
      IsMark_Charcoal:=true;
    //20161130
    //if pos('CONVERSE RED',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
    //  IsMark_Red:=true;
    if pos('CONVERSE NAVY',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Navy:=true;
    if pos('CONVERSE PINK',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Pink:=true;
    Mas.Next;
  end;

  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  if (main.edit2.Text = 'VA12') and (IsMark_WhitColor=true) then
    //NoteInfo.Caption:='Material: white = 10A White';
    //NoteInfo.Caption:=NoteInfo.Caption+'Material: white = 10A White';
    NoteInfo.Caption:=NoteInfo.Caption+'Material: white = 129-96-00';
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/Black = 117-15-00';        // CONV-0013
  if (main.edit2.Text = 'VA12') and (IsMark_Charcoal=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/Material: CONVERSE Charcoal = CONV-0037';


  //20161130
  //if (main.edit2.Text = 'VA12') and (IsMark_Red=true) then
  //  NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Red = CONV-0034';
  if (main.edit2.Text = 'VA12') and (IsMark_Navy=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Navy = CONV-0033';
  if (main.edit2.Text = 'VA12') and (IsMark_Pink=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Pink = CONV-0036';

  if NoteInfo.Caption<>'' then NoteInfo.Enabled:=true;
  //

  Mas.First;
  if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L4.Caption:='';
    L5.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L8.Caption:='';
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
  end;
  if messagedlg('6 Order List only or All Order List?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if messagedlg('Print English or Chinese?',mtinformation,[mbYes,mbNo],0)=mrYes then
      QRDBtext14.Enabled:=false
    else
      QRDBtext1.Enabled:=false;
    while not Mas.Eof do
      begin
        if not Mas.fieldbyname('Memo').Isnull then
          begin
            Mas.Edit;
            Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+' //  '+Mas.fieldbyname('Memo').value;
            Mas.FieldByName('ZWPM').asstring :=Mas.FieldByName('ZWPM').value+' //  '+Mas.fieldbyname('Memo').value;
          end;
        if Det.recordcount>0 then
          begin
            if Det.recordcount<=6 then
              begin
                Det.First;
                while not Det.Eof do
                  begin
                    if not Mas.FieldByName('ZLNO').isnull then
                      begin
                        Mas.Edit;
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').Value
                            +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+') ';
                      end
                      else
                        begin
                          Mas.Edit;
                          Mas.FieldByName('ZLNO').asstring:=' '+Det.fieldbyname('ZLBH').Value
                            +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+')';
                        end;
                    Det.Next;
                  end;
              end
              else
                begin
                  for i:=1 to 4  do
                    begin
                      if not Mas.FieldByName('ZLNO').isnull then
                        begin
                          Mas.Edit;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').Value
                              +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+') ';
                        end
                        else
                          begin
                            Mas.Edit;
                            Mas.FieldByName('ZLNO').asstring:=' '+Det.fieldbyname('ZLBH').Value
                              +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+')';
                          end;
                      Det.Next;
                    end;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'......';
                  Det.Last;

                  {for i:=1 to 2   do
                    begin
                      Det.Prior;
                    end;
                  while not Det.Eof do
                    begin}
                      Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+Det.fieldbyname('ZLBH').Value+'('+Det.fieldbyname('Qty').asstring;
                      if not Det.fieldbyname('Article').isnull then
                        begin
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+')';
                        end;
                     { Det.Next;
                    end; }
                end;
          end;
        Mas.Next;
      end;
  end
  else
    begin
    if messagedlg('Print English or Chinese?',mtinformation,[mbYes,mbNo],0)=mrYes then
      QRDBtext14.Enabled:=false
    else
      QRDBtext1.Enabled:=false;
      while not Mas.Eof do
        begin
          if not Mas.fieldbyname('Memo').Isnull then
            begin
              Mas.Edit;
              // modify chinese
              Mas.FieldByName('ZWPM').asstring :=Mas.FieldByName('ZWPM').value+' //  '+Mas.fieldbyname('Memo').value;
              Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+' //  '+Mas.fieldbyname('Memo').value;

            end;
          Det.First;
          while not Det.Eof do
            begin
              if not Mas.FieldByName('ZLNO').isnull then
                begin
                  Mas.Edit;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').Value
                  +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+') ';
                end
                else
                  begin
                    Mas.Edit;
                    Mas.FieldByName('ZLNO').asstring:=' '+Det.fieldbyname('ZLBH').Value
                      +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+')';
                  end;
              Det.Next;
            end;
          Mas.Next;

        end;
    end;

end;

procedure TPurNoSize_Print.FormDestroy(Sender: TObject);
begin
PurNoSize_Print:=nil;
end;

procedure TPurNoSize_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
