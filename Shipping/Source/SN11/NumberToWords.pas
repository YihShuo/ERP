unit NumberToWords;
{-----------------------------------------------------------------------------
 Unit Name: NumberToWords
 Author:    Dave Keighan
 Date:      29-Jan-2006
 Purpose:   Provide Number To Words functionality.
 History:   29 Jan 2006 originally written.

 **** IMPORTANT ****
 1) You are free to use this code within your own applications, but you are
 expressly forbidden from selling or otherwise distributing this source code
 including inclusion of the code in a unit, module or component where this code
 would reasonably be considered to be a defining element of the unit or
 component without prior written consent.
 2) You must include this header in all instances of the code.
 3) You must ensure that you have read, understand and have modified the code as
 required for your use. This code is provided "as is" and the author makes no
 representations or warranties, express or implied. The user is solely
 responsible for the use and all results of the code provided herein.
-----------------------------------------------------------------------------}
interface

uses
  Dialogs,
  SysUtils, Classes;

const
  Ones: array[0..9] of string = ('zero ', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ');
  Teens: array[10..19] of string = ('ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen ');
  Tens: array[2..9] of string = ('twenty ', 'thirty ', 'forty ', 'fifty ', 'sixty ', 'seventy ', 'eighty ', 'ninety ');
  Suffix: array[0..5] of string = ('hundred ', 'thousand and ', 'million and ', 'billion and ', 'trillion and ', 'quadrillion and ');

var
  fs : TFormatSettings;

function ConvertToWords(const Number: double; UseCurrency: Boolean = True):
  string;

implementation

{-----------------------------------------------------------------------------
  Procedure: ConvertToWords
  Author:    Dave Keighan
  Date:      24-Jan-2006
  Arguments: const Number: double UseCurrency: Boolean
  Result:    string
-----------------------------------------------------------------------------}
{Note: This function uses the American "Short Scale" format for Names of large
 numbers See: http://en.wikipedia.org/wiki/Names_of_large_numbers .
 It's very simple to edit the code to accommodate your locale and system.

 The program gets two variables from the user.
 The first is: Number a double that represents the number to be formatted.
 Second is: UseCurrency a boolean value to get Currency formatting output.
}

function ConvertToWords(const Number: double; UseCurrency: Boolean): string;
{
There is one inline routine that occur before the main processing code:
 DoHundreds - takes a three character shortstring and returns a value.
}

  function DoHundreds(const NumStr: string): string;
  var
    iCount: integer;
    iCurNum: integer;
    bFinished: Boolean;
    sLocNum: string;
  begin
    sLocNum := NumStr;
    bFinished := False;
    //buffer the string with 0s depending on length.
    case Length(sLocNum) of
      1: sLocNum := '00' + sLocNum;
      2: sLocNum := '0' + sLocNum;
    end;
    //Process the string.
    for iCount := 1 to 3 do
      begin
        iCurNum := StrToInt(sLocNum[iCount]);
        if iCurNum > 0 then // it needs to be processed.
          case iCount of
            1:
              begin
                Result := Result + Ones[iCurNum] + Suffix[0];
                //append "and" if the value of last to digits is greated than 0.
                if strtoint(copy(sLocNum, 2, 2)) > 0 then
                  Result := Result + 'and ';
              end;
            2:
              begin
                if iCurNum = 1 then
                  begin
                    iCurNum := strtoint(copy(sLocNum, 2, 2));
                    Result := Result + Teens[iCurNum];
                    bFinished := True;
                  end
                else
                  Result := Result + Tens[iCurNum];
              end;
            3: if (not bFinished) then
                Result := Result + Ones[iCurNum];
          end;
      end;
  end;

  // This is where the main routine actually starts.
var
  sIntValue: string; //to hold the integer value.
  sDecValue: string; //value of the decimal value.
  sSectionVal: string; //the hundreds section to be processed.
  slValSections: TStringList; //array of the hundreds sections.
  iCount: integer; //counter variable.
  bIsNegative: boolean;
begin
  //Process the integer section first.

  bIsNegative := False;
  if Number < 0 then
    bIsNegative := True;

  //Extract the integer and fractional parts of Number as strings.
  //Use Try because FormatFloat, as used, will blow up if Lenght(sIntValue) >= 19.
  try
    sIntValue := FormatFloat('#,###', trunc(abs(Number)));

    //sIntValue := floattostr(trunc(abs(Number)));

    //sDecValue := floattostr(frac(abs(Number)));

    sDecValue := copy(FormatFloat('.##', frac(abs(Number))),2,2);

    if (Pos('E', sIntValue) > 0) then //the number is too big.
    begin
      Result := 'ERROR:';
      exit;
    end;
  except
    Result := 'ERROR:';
    exit;
  end;

  if (Length(sIntValue) <= 3) and (Length(sIntValue) > 0) then Result := DoHundreds(sIntValue)
  else if Length(sIntValue) = 0 then Result := ''
  else
    begin
      slValSections := TStringList.Create;
      //load the values, in groups of 100 using the comma positions.
      //slValSections.CommaText := sIntValue;
      slValSections.Delimiter := fs.ThousandSeparator;
      slValSections.DelimitedText := sIntValue;

      //swap the order of the numbers in the StringList.
      for iCount := 1 to slValSections.Count - 1 do
        slValSections.Move(iCount, 0);
      //process all the Integer values.
      for iCount := 0 to slValSections.Count - 1 do
        begin
          sSectionVal := '';
          sSectionVal := DoHundreds(slValSections[iCount]);
          if iCount > 0 then
            Result := sSectionVal + Suffix[iCount] + Result
          else
            Result := sSectionVal
        end;
      FreeAndNil(slValSections);
    end;

  //Remove trailing commas if there are any.
  if LastDelimiter(fs.DecimalSeparator, Result) = (length(Result) - 1) then  Delete(Result, Length(Result) - 1, 1);

  //Process the decimal section of the Number.
  if (Length(sDecValue) > 0) and UseCurrency then
    begin
      if Result > '' then //there was an integer value.
        Result := Result + 'dollars and ';
      if (Length(sDecValue) = 1) then sDecValue := sDecValue + '0';
      Result := Result + DoHundreds(copy(sDecValue, 1, 2)) + 'cents.';
    end
  else if UseCurrency then
    begin
      if Result > '' then //there was an integer value.
        Result := Result + 'dollars'
    end
  else if (Length(sDecValue) > 0) then
    begin
      Result := Result + 'decimal ';
      for iCount := 1 to Length(sDecValue) do
        Result := Result + Ones[strtoint(sDecValue[iCount])];
    end;

  //Add the negative indicator if needed.
  if UseCurrency and bIsNegative then
    Result := 'minus ' + Result
  else if bIsNegative then
    Result := 'negative ' + Result;

  { TODO : Add result formatting at this point.
    This will require changing the function call to allow format selection. }
end;

initialization
  GetLocaleFormatSettings(0, fs);

finalization

end.

