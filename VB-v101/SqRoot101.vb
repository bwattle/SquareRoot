Public Class SqRoot101
    Private Sum As Integer
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
        maximum = Number
        middle = (minimum + maximum) / 2
        accuracy = 10 ^ (-1 * decPlaces)
        While Math.Abs((middle * middle) - number) > accuracy
            If middle * middle > Number Then
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
