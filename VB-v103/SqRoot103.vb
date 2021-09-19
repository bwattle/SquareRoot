Public Class SqRoot103
    '15/9/21 Nev Goodyer: created from pseudo at https://bwattle.github.io/SquareRoot/JS/Q23.html
    '19/9/21 Note the use of the "Byte" data type for "decPlaces" and infinite loops vary in severity 
    'depending on whether "loopNum" is 16 or 32 bit. (16 bit is approx 32,000. 32 bit approx 2 billion)
    'If the "restricted zone" error appears, see link below. None of these fixed it for me, but re-starting the computer did.:
    'https://stackoverflow.com/questions/51348919/couldnt-process-file-resx-due-to-its-being-in-the-internet-Or-restricted-zone-o
    Private Sub BtnRoot_Click(sender As Object, e As EventArgs) Handles btnCalc.Click
        Dim number, minimum, maximum, middle, accuracy As Single
        Dim decPlaces As Byte ' 8 bit unsigned 0-255
        Dim loopNum As Int16 ' Use Int32 if necessary for more decimal places
        Dim strLoopTotals As String
        number = txtNo1.Text
        decPlaces = txtNo2.Text
        minimum = 0
        maximum = number
        middle = (minimum + maximum) / 2
        accuracy = 10 ^ (-1 * decPlaces)
        loopNum = 1
        strLoopTotals = "Loop 1, middle = " & middle
        While Math.Abs((middle * middle) - number) > accuracy
            If middle * middle > number Then
                maximum = middle
            Else
                minimum = middle
            End If
            middle = (minimum + maximum) / 2
            loopNum += 1
            strLoopTotals = strLoopTotals & vbCrLf & "Loop " & loopNum & ", middle = " & middle
        End While
        middle = Int(middle / accuracy) * accuracy
        'txtResult.Text = Int(middle / accuracy) * accuracy
        txtResult.Text = "The square root of " & number & " correct to " & decPlaces & " decimal places is " & middle
        txtIterations.Text = strLoopTotals
    End Sub
End Class
