
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Drawing
Imports System.Text.RegularExpressions
Imports System.Web.Configuration
Imports System.Data.OleDb
Public Class books
    Inherits System.Web.UI.Page

    Dim STR As String = WebConfigurationManager.ConnectionStrings("ACC_DB.My.MySettings.KANA").ConnectionString
    Dim mycon As New OleDbConnection(STR)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            NLB.Items.Add(New ListItem(".....SELECT BOOK ..... ", "0"))


            'LOADING RECORD FROM DATABASE ONTO A LISTBOX
            mycon.Open()
            Dim cm1 As New OleDbCommand("SELECT TITLE FROM BOOKS", mycon)
            Dim dr1 As OleDbDataReader = cm1.ExecuteReader

            While dr1.Read()
                NLB.Items.Add(dr1(0).ToString())
            End While
            dr1.Close()
            mycon.Close()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim LIX As ListItem = NLB.SelectedItem

        Dim sql5 As String
        Dim cmd5 As New OleDb.OleDbCommand
        Dim dt5 As New DataTable
        Dim da5 As New OleDb.OleDbDataAdapter

        mycon.Open()
        sql5 = "SELECT IDS, TITLE, AUTHOR, QUANTITY, REMARK FROM BOOKS WHERE  TITLE = '" & LIX.ToString & "'"
        cmd5.Connection = mycon
        cmd5.CommandText = sql5
        da5.SelectCommand = cmd5
        da5.Fill(dt5)

        Dim counta As New Integer
        counta = dt5.Rows.Count()

        If dt5.Rows.Count <> 0 Then
            PARENTGV0.DataSource = dt5
            PARENTGV0.DataBind()
            PARENTGV0.Visible = True
        End If

        ' Catch ex As Exception
        'MsgBox(ex.Message)
        ' Finally

        mycon.Close()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("inventory.ASPX")

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("book_admin.ASPX")

    End Sub

    Protected Sub NLB_SelectedIndexChanged(sender As Object, e As EventArgs) Handles NLB.SelectedIndexChanged
        'If NLB.SelectedItem = True Then

        '    Dim LIX As ListItem = NLB.SelectedItem

        '    Dim sql5 As String
        '    Dim cmd5 As New OleDb.OleDbCommand
        '    Dim dt5 As New DataTable
        '    Dim da5 As New OleDb.OleDbDataAdapter

        '    mycon.Open()
        '    sql5 = "SELECT ID, TITLE, AUTHOR, QUANTITY, REMARK FROM BOOKS WHERE  TITLE = '" & LIX.ToString & "'"
        '    cmd5.Connection = mycon
        '    cmd5.CommandText = sql5
        '    da5.SelectCommand = cmd5
        '    da5.Fill(dt5)

        '    Dim counta As New Integer
        '    counta = dt5.Rows.Count()

        '    If dt5.Rows.Count <> 0 Then
        '        GridView1.DataSource = dt5
        '        GridView1.DataBind()
        '        GridView1.Visible = True
        '    End If
        'End If
        'mycon.Close()

    End Sub
End Class