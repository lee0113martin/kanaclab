
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Drawing
Imports System.Text.RegularExpressions
Imports System.Web.Configuration
Imports System.Data.OleDb

Public Class index
    Inherits System.Web.UI.Page
    Dim STR As String = WebConfigurationManager.ConnectionStrings("ACC_DB.My.MySettings.KANA").ConnectionString
    Dim mycon As New OleDbConnection(STR)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim sql As String
        Dim cmd As New OleDb.OleDbCommand
        Dim dt As New DataTable
        Dim da As New OleDb.OleDbDataAdapter
        mycon.Open()
        sql = "SELECT USERNAME, PASSWORD FROM LOGIN WHERE USERNAME = '" & TextBox1.Text & "' AND PASSWORD = '" & TextBox2.Text & "'"
        cmd.Connection = mycon
        cmd.CommandText = sql
        da.SelectCommand = cmd
        da.Fill(dt)
        Dim counta As New Integer
        counta = dt.Rows.Count()
        If dt.Rows.Count <> 0 Then
            Response.Redirect("dashboard.ASPX")
            Label4.Visible = False
        Else
            Label4.Text = "WRONG LOGIN CREDENTIALS"
            Label4.Visible = True
            Label4.BackColor = Color.Red
        End If

        If TextBox1.Text = Nothing Then
            Label4.Text = "ENTER USERNAME"
            Label4.Visible = True
            Label4.BackColor = Color.Red
        End If

        If TextBox2.Text = Nothing Then
            Label4.Text = "ENTER PASSWOED"
            Label4.Visible = True
            Label4.BackColor = Color.Red
        End If
        mycon.Close()
    End Sub
End Class