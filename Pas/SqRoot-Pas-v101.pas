Program SqRoot(input, output); {find the square root by averages}
{15/9/21 Nev Goodyer: created from pseudo at https://bwattle.github.io/SquareRoot/JS/Q23.html}
{NOTE: int16, int8, single & double are types discussed in the NSW Software Design & Development course}
{v1.02 with decPlaces=8 is a great demo of int16 2's compliment and single precision limitations}
{CLOSE WINDOW TO STOP INFINITE LOOP}
Uses crt, Math; {crt is a standard Pascal library, Math has standard Maths functions}
Var
  number: single;             {16 bit integer - signed to approx 32,000}
  decPlaces : SmallInt;       {8 bit integer - unsigned 0-255}
  minimum : single;
  maximum : single;
  middle : single;
  accuracy : single;
Begin
  Writeln('Enter the number you want the square root of: ');
  Readln(number);
  Writeln('Enter the accuracy in number of decimal places: ');
  Readln(decPlaces);
  minimum := 0 ;
  maximum := Number ;
  middle := (minimum + maximum) / 2 ;
  accuracy := Power (10, (-1 * decPlaces)) ;
  While Abs((middle * middle) - number) > accuracy Do
    Begin
      If middle * middle > Number Then
        Begin
          maximum := middle ;
        End
      Else
        Begin
          minimum := middle;
        End;
      middle := (minimum + maximum) / 2;
    End;
  middle := Int(middle / accuracy) * accuracy ;
  Writeln('The unformatted square root is ', middle);
 {at the end of the next line, 0 is minimum total digits: decPlaces is what it says}
  Writeln('The formatted square root is ', middle:0:decPlaces);
End .