unit UWAITFM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ComCtrls,MsgManager;

type
  Tfm_Waitform = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure LoadCaptionMap;dynamic;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_Waitform: Tfm_Waitform;

implementation

{$R *.DFM}

procedure Tfm_Waitform.FormCreate;
begin
  LoadCaptionMap;
end;

procedure Tfm_Waitform.LoadCaptionMap;
begin
  self.caption:=cloadstr(804,self.caption);   //self
  Label1.caption:=cloadstr(805,Label1.caption);   //Label1
end;

end.
