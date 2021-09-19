Public Class SqRoot101
    '15/9/21 Nev Goodyer: created from pseudo at https://bwattle.github.io/SquareRoot/JS/Q23.html
    Private Sub BtnRoot_Click(sender As Object, e As EventArgs) Handles btnCalc.Click
        Dim number As Single
        Dim decPlaces As Int16
        Dim minimum As Single
        Dim maximum As Single
        Dim middle As Single
        Dim accuracy As Single

        number = txtNo1.Text
        decPlaces = txtNo2.Text
        minimum = 0
        maximum = number
        middle = (minimum + maximum) / 2
        accuracy = 10 ^ (-1 * decPlaces)
        While Math.Abs((middle * middle) - number) > accuracy
            If middle * middle > number Then
                maximum = middle
            Else
                minimum = middle
            End If
            middle = (minimum + maximum) / 2
        End While
        txtResult.Text = Int(middle / accuracy) * accuracy
        txtIterations.Text = "The square root of " & number & " correct to " & decPlaces & " decimal places is " & middle
    End Sub
End Class
