unit BOM_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 15/11/2025 ¤W¤È 10:59:51 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\ERP SOURCE CODE\Bom\BOM.tlb (1)
// LIBID: {10624A08-C1ED-4458-9472-299EEC19BE7D}
// LCID: 0
// Helpfile: 
// HelpString: BOM Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  BOMMajorVersion = 1;
  BOMMinorVersion = 0;

  LIBID_BOM: TGUID = '{10624A08-C1ED-4458-9472-299EEC19BE7D}';

  IID_IPFCExternal: TGUID = '{1E57CDBB-75EC-478F-856A-F6D30FD1DBA0}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPFCExternal = interface;
  IPFCExternalDisp = dispinterface;

// *********************************************************************//
// Interface: IPFCExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E57CDBB-75EC-478F-856A-F6D30FD1DBA0}
// *********************************************************************//
  IPFCExternal = interface(IDispatch)
    ['{1E57CDBB-75EC-478F-856A-F6D30FD1DBA0}']
    function ShowERP(const Flag: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPFCExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E57CDBB-75EC-478F-856A-F6D30FD1DBA0}
// *********************************************************************//
  IPFCExternalDisp = dispinterface
    ['{1E57CDBB-75EC-478F-856A-F6D30FD1DBA0}']
    function ShowERP(const Flag: WideString): WideString; dispid 201;
  end;

implementation

uses ComObj;

end.
