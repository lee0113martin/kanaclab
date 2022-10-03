
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Drawing
Imports System.Text.RegularExpressions
Imports System.Web.Configuration
Imports System.Data.OleDb


Public Class db
    Inherits System.Web.UI.Page

    Dim STR As String = WebConfigurationManager.ConnectionStrings("ACC_DB.My.MySettings.KANA").ConnectionString
    Dim mycon As New OleDbConnection(STR)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim sql As String
            Dim cmd As New OleDb.OleDbCommand
            mycon.Open()

            sql = "INSERT INTO ITEMS(ID, Item_Name, Brand, Quantity, Condition ) values ('" & TextBox7.Text & "', '" & TextBox6.Text & "', '" & TextBox4.Text & "','" & TextBox5.Text & "', '" & TextBox2.Text & "')"
            cmd.Connection = mycon
            cmd.CommandText = sql
            Dim i As Integer = cmd.ExecuteNonQuery
            If i > 0 Then
                Label8.Text = "NEW RECORD INSERTED"
                Label8.Visible = True

            Else
                Label8.Text = "NO RECORD UPDATED!!! TRY AGAIN"
                Label8.BackColor = Color.Red
                Label8.Visible = True

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            mycon.Close()
        End Try
        '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click


        ''0000000000000000000000000000000000000000000000000000000000000000000000000
        'Dim LIX As ListItem = NLB0.SelectedItem

        'If LIX.Selected = True Then
        '    TextBox7.Text = LIX.ToString
        '    Label2.Text = PTBOX.Text + " " + "DEPARTMENT"

        'End If

        'Dim mycon As SqlConnection
        'Dim sqlstring As String

        'Dim STR As String
        'STR = WebConfigurationManager.ConnectionStrings("myConString").ConnectionString
        'mycon = New SqlConnection(STR)
        'mycon.Open()


        'sqlstring = " Select  O.filepath, C.INTEREST, C.CONDUCT, C.ATTITUDE, C.REMARKS, C.ATTENDANCE FROM PHOTO O, PERSONAL C  WHERE O.NAME = '" & TextBox7.Text & "' AND O.ADMNO = '" & SID.Text & "'"
        ''sqlstring = " SELECT ADMNO, NAME, filePath FROM PHOTO   WHERE NAME = '" & TextBox7.Text & "' AND ADMNO = '" & SID.Text & "'"
        'Dim Adpt3 As New SqlDataAdapter(sqlstring, mycon)
        'Dim ds3 As New DataSet()


        'Adpt3.Fill(ds3, "PHOTO")

        'If ds3.Tables(0).Rows.Count > 0 Then

        '    PARENTGV0.DataSource = ds3.Tables(0)
        '    PARENTGV0.DataBind()
        '    PARENTGV0.Visible = True
        '    mycon.Close()

        '    Button3.Visible = False
        '    NLB0.Visible = False
        '    Label6.Visible = False

        '    Button9.Visible = True
        '    NLB3.Visible = True
        '    Label7.Visible = True
        '    Label14.Text = TextBox7.Text
        '    Label14.Visible = True

        'Else

        '    Label6.Text = "NO PICTURE FOUND !!! AND YOU ARE NOT A MEMBER OF THIS DEPARTMENT"
        'End If

        ''0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000


        Try
            Dim sql4 As String
            Dim cmd4 As New OleDb.OleDbCommand

            sql4 = " DELETE * FROM ITEMS WHERE ID = '" & TextBox7.Text & "'"
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

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("dashboard.ASPX")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Dim sql3 As String
            Dim cmd3 As New OleDb.OleDbCommand

            sql3 = " UPDATE ITEMS SET Item_Name = '" & TextBox6.Text & "', Brand = '" & TextBox4.Text & "', Quantity = '" & TextBox5.Text & "', Condition = '" & TextBox2.Text & "'  WHERE ID = '" & TextBox7.Text & "'"
            mycon.Open()

            cmd3.Connection = mycon
            cmd3.CommandText = sql3
            Dim i As Integer = cmd3.ExecuteNonQuery
            If i > 0 Then
                Label8.Text = "NEW RECORD UPDATED"
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
End Class