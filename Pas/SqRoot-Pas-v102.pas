Program SqRoot(input, output); {find the square root by averages}
{15/9/21 Nev Goodyer:  v1.01 created from pseudo at https://bwattle.github.io/SquareRoot/JS/Q23.html}
{19/9/21 v1.02 updated from v1.01 to write iterative lines}
{NOTE: if decPlaces=8, the integer 16 will cause an infinite loop, cycint through the 2's compliment int16's}
{CLOSE WINDOW TO STOP INFINITE LOOP}
Uses crt, Math; {crt is a standard Pascal library, Math has standard Maths functions for line 16}
Var
  number, minimum, maximum, middle, accuracy: single;  {16 bit integer - signed to approx 32,000}
  decPlaces, loopNum : SmallInt;                       {8 bit integer - unsigned 0-255}
Begin
  Writeln('Enter the number you want the square root of: ');
  Readln(number);
  Writeln('Enter the accuracy in number of decimal places: ');
  Readln(decPlaces);
  minimum := 0 ;
  maximum := Number ;
  middle := (minimum + maximum) / 2 ;
  accuracy := Power (10, (-1 * decPlaces)) ;       {needs the "Math" library for "Power" to work}
  loopNum := 1;
  Writeln('Loop 1, middle = ' , middle);
  While Abs((middle * middle) - number) > accuracy Do
    Begin
      If middle * middle > Number Then
        Begin
          maximum := middle ;
        End
      Else
        Begin
          minimum := middle ;
        End;
      middle := (minimum + maximum) / 2;
      loopNum := loopNum + 1;
      Writeln('Loop ', loopNum, ', middle = ', middle);
    End;
  middle:= Int(middle / accuracy) * accuracy ;
  Writeln('The unformatted square root is ', middle);
 {at the end of the next line, 0 is minimum total digits: decPlaces is what it says}
  Writeln('The formatted square root is ', middle:0:decPlaces);
End .