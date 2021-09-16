Program SqRoot(input, output); {find the square root by averages}
Uses crt, Math; {crt is a standard Pascal library, Math has standard Maths functions}
Var
  number: Real;
  decPlaces : Integer;
  minimum : Real;
  maximum : Real;
  middle : Real;
  accuracy : Real;
  rounded : Real;
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
          minimum := middle
        End;
      middle := (minimum + maximum) / 2
    End;
  rounded := Int(middle / accuracy) * accuracy ;            
  Writeln('The unformatted square root is ', rounded);                        
  {at the end of the next line, 0 is minimum total digits: decPlaces is what it says}
  Writeln('The formatted square root is ', rounded:0:decPlaces);
End .
