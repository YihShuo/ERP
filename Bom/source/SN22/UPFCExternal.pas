{
  This demo application accompanies the article
  "How to call Delphi code from scripts running in a TWebBrowser" at
  http://www.delphidabbler.com/articles?article=22.

  This unit defines a class that extends the TWebBrowser's external object.

  This code is copyright (c) P D Johnson (www.delphidabbler.com), 2005-2006.

  v1.0 of 2005/05/09 - original version
  v1.1 of 2006/02/11 - changed base URL of programs to reflect current use
}


{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$WARN UNSAFE_TYPE OFF}


unit UPFCExternal;

interface

uses
  Classes, ComObj, BOM_TLB, DiaLogs;

type

  TPFCExternal = class(TAutoIntfObject, IPFCExternal, IDispatch)
  private
    fData: TStringList; // info from data file
  protected
    { IMyExternal methods }
    function ShowERP(const Flag: WideString): WideString; safecall;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  SysUtils, ActiveX, StdActns,SOPDocu1;

{ TMyExternal }

constructor TPFCExternal.Create;
var
  TypeLib: ITypeLib;    // type library information
  ExeName: WideString;  // name of our program's exe file
begin
  // Get name of application
  ExeName := ParamStr(0);
  // Load type library from application's resources
  //Showmessage(ExeName);
  OleCheck(LoadTypeLib(PWideChar(ExeName), TypeLib));
  // Call inherited constructor
  inherited Create(TypeLib, IPFCExternal);
  // Create and load string list from file
  fData := TStringList.Create;
  //fData.LoadFromFile(ChangeFileExt(ExeName, '.dat'));
end;

destructor TPFCExternal.Destroy;
begin
  fData.Free;
  inherited;
end;

function TPFCExternal.ShowERP(const Flag: WideString): WideString;
begin
  //
  SOPDocu.ShowWebCallBack(Flag);
  Result :='S_OK';// fData.Values[ProgId];
  //
end;


end.
 