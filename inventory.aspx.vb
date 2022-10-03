
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Drawing
Imports System.Text.RegularExpressions
Imports System.Web.Configuration
Imports System.Data.OleDb
Public Class inventory
    Inherits System.Web.UI.Page
    Dim STR As String = WebConfigurationManager.ConnectionStrings("ACC_DB.My.MySettings.KANA").ConnectionString
    Dim mycon As New OleDbConnection(STR)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            NLB.Items.Add(New ListItem(".....SELECT ITEMS ..... ", "0"))
            '    NLB.Items.Add(New ListItem("SYSTEM UNIT", "1"))
            '    NLB.Items.Add(New ListItem("MONITOR", "2"))
            '    NLB.Items.Add(New ListItem("KEYBOARD", "3"))
            '    NLB.Items.Add(New ListItem("MOUSE", "4"))
            '    NLB.Items.Add(New ListItem("IMAC", "5"))
            '    NLB.Items.Add(New ListItem("TELEVISION", "6"))
            '    NLB.Items.Add(New ListItem("AIR CONDITIONER", "7"))
            '    NLB.Items.Add(New ListItem("NETWORK SERVER", "8"))
            '    NLB.Items.Add(New ListItem("NETWORK SWITCH", "9"))
            '    NLB.Items.Add(New ListItem("NETWORK ROUTER", "10"))
            '    NLB.Items.Add(New ListItem("LAPTOP", "11"))
            '    NLB.Items.Add(New ListItem("NIC", "12"))
            '    NLB.Items.Add(New ListItem("SOUND BAR", "13"))
            '    NLB.Items.Add(New ListItem("PROJECTOR", "14"))
            '    NLB.Items.Add(New ListItem("PROJECTOR LAMP", "15"))
            '    NLB.Items.Add(New ListItem("ADAPTER", "16"))
            '    NLB.Items.Add(New ListItem("FACE PLATE", "17"))
            '    NLB.Items.Add(New ListItem("SOCKET", "18"))
            '    NLB.Items.Add(New ListItem("TABLE", "19"))
            '    NLB.Items.Add(New ListItem("CHAIR", "20"))
            '    NLB.Items.Add(New ListItem("BOOKS", "21"))


            'LOADING RECORD FROM DATABASE ONTO A LISTBOX

            mycon.Open()
            Dim cm1 As New OleDbCommand("SELECT DISTINCT Item_Name FROM ITEMS ORDER BY Item_Name", mycon)
            Dim dr1 As OleDbDataReader = cm1.ExecuteReader

            ' dr1.Read()

            ' Dim READA As SqlDataReader
            ''READA = cmdZ.ExecuteReader()
            'dr1.Read()
            'If dr1.HasRows() Then


            'NLB.Items.Clear()
            While dr1.Read()
                NLB.Items.Add(dr1(0).ToString())
            End While
            dr1.Close()
            mycon.Close()

            'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        ' Try
        Dim LIX As ListItem = NLB.SelectedItem
            If LIX.ToString = "BOOK" Then
            Response.Redirect("books.ASPX")
        End If


            Dim sql As String
                Dim cmd As New OleDb.OleDbCommand
                Dim dt As New DataTable
                Dim da As New OleDb.OleDbDataAdapter

                mycon.Open()
                sql = "SELECT Item_Name, Brand, Quantity, Condition FROM ITEMS WHERE  Item_Name = '" & LIX.ToString & "'"
                cmd.Connection = mycon
                cmd.CommandText = sql
                da.SelectCommand = cmd
                da.Fill(dt)

                Dim counta As New Integer
                counta = dt.Rows.Count()

                If dt.Rows.Count <> 0 Then
            PARENTGV0.DataSource = dt
            PARENTGV0.DataBind()
            PARENTGV0.Visible = True
        End If

        ' Catch ex As Exception
        'MsgBox(ex.Message)
        ' Finally

        mycon.Close()

        ' End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("dashboard.ASPX")
    End Sub



    Protected Sub NLB_SelectedIndexChanged(sender As Object, e As EventArgs) Handles NLB.SelectedIndexChanged
        'If NLB.SelectedIndex.ToString = "BOOK" Then
        '    Response.Redirect("dashboard.ASPX")

        'End If
    End Sub
End Class