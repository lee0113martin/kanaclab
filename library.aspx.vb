
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Drawing
Imports System.Text.RegularExpressions
Imports System.Web.Configuration
Imports System.Data.OleDb
Public Class library
    Inherits System.Web.UI.Page
    Dim STR As String = WebConfigurationManager.ConnectionStrings("ACC_DB.My.MySettings.KANA").ConnectionString
    Dim mycon As New OleDbConnection(STR)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            'ID
            'If TextBox7.Text = Nothing Then
            '    Label9.Text = "ENTER ID"
            '    Label9.Visible = True
            '    Label9.BackColor = Color.Red

            '    'TITLE
            'ElseIf TextBox6.Text = Nothing Then
            '    Label10.Text = "ENTER TITLE"
            '    Label10.Visible = True
            '    Label10.BackColor = Color.Red

            '    'BRAND
            'ElseIf TextBox4.Text = Nothing Then
            '    Label11.Text = "ENTER BRAND"
            '    Label11.Visible = True
            '    Label11.BackColor = Color.Red

            '    'QUANTITY
            'ElseIf TextBox5.Text = Nothing Then
            '    Label12.Text = "ENTER QUANTITY"
            '    Label12.Visible = True
            '    Label12.BackColor = Color.Red

            '    'REMARK
            'ElseIf TextBox2.Text = Nothing Then
            '    Label13.Text = "ENTER REMARK"
            '    Label13.Visible = True
            '    Label13.BackColor = Color.Red
            'Else
            Dim acc_str As String
            Dim cmd As New OleDb.OleDbCommand
            mycon.Open()
            acc_str = "INSERT INTO BOOKS (IDS, TITLE, AUTHOR, QUANTITY, REMARK) VALUES ('" & TextBox7.Text & "', '" & TextBox6.Text & "', '" & TextBox4.Text & "', '" & Val(TextBox5.Text) & "', '" & TextBox2.Text & "')"
            cmd.Connection = mycon
            cmd.CommandText = acc_str
            'cmd.ExecuteNonQuery()

            Dim MARLLOW As Integer = 0
            MARLLOW = cmd.ExecuteNonQuery()

            If MARLLOW > 0 Then
                Label8.Text = "NEW BOOK" + "(" + TextBox6.Text + ")" + " " + "INSERTED"
                Label8.BackColor = Color.OrangeRed
                Label8.Visible = True
                TextBox7.Text = ""
                TextBox6.Text = ""
                TextBox4.Text = ""
                TextBox5.Text = ""
                TextBox2.Text = ""

            Else
                Label8.Text = "NO BOOK INSERT!!! TRY AGAIN"
                Label8.BackColor = Color.Red
                Label8.Visible = True
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            mycon.Close()
            'End If
        End Try
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("dashboard.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Dim sql3 As String
            Dim cmd3 As New OleDb.OleDbCommand

            sql3 = " UPDATE BOOKS SET  IDS = '" & TextBox7.Text & "', TITLE = '" & TextBox6.Text & "', AUTHOR = '" & TextBox4.Text & "', QUANTITY = '" & Val(TextBox5.Text) & "', REMARK = '" & TextBox2.Text & "'  WHERE IDS = '" & TextBox7.Text & "'"
            mycon.Open()

            cmd3.Connection = mycon
            cmd3.CommandText = sql3
            'cmd.ExecuteNonQuery()

            Dim MARLLOW As Integer = 0
            MARLLOW = cmd3.ExecuteNonQuery()

            If MARLLOW > 0 Then
                Label8.Text = "1 RECORD UPDATED"
                Label8.Visible = True

            Else
                Label8.Text = "NO RECORD UPDATED"
                Label8.BackColor = Color.Red
                Label8.Visible = True

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            mycon.Close()
        End Try
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Try
            Dim sql4 As String
            Dim cmd4 As New OleDb.OleDbCommand

            sql4 = " DELETE * FROM BOOKS WHERE IDS = '" & TextBox7.Text & "'"
            mycon.Open()

            cmd4.Connection = mycon
            cmd4.CommandText = sql4
            Dim i As Integer = cmd4.ExecuteNonQuery
            If i > 0 Then
                Label8.Text = "1 RECORD DELETED"
                Label8.Visible = True

            Else
                Label8.Text = "NO RECORD DELETED"
                Label8.BackColor = Color.Red
                Label8.Visible = True

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            mycon.Close()
        End Try
    End Sub
End Class