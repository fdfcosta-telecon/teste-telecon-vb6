VERSION 5.00
Object = "{4E6B00F6-69BE-11D2-885A-A1A33992992C}#2.5#0"; "ACTIVETEXT.OCX"
Begin VB.Form frmConsultaClientes 
   Caption         =   "Consulta de Clientes"
   ClientHeight    =   8910
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15960
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8910
   ScaleWidth      =   15960
   Begin VB.CommandButton cmdExcluir 
      Caption         =   "Excluir"
      Height          =   615
      Index           =   1
      Left            =   7560
      TabIndex        =   37
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdUltimoCliente 
      Caption         =   ">>"
      Height          =   615
      Index           =   0
      Left            =   12360
      TabIndex        =   36
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdProximoCliente 
      Caption         =   ">"
      Height          =   615
      Index           =   1
      Left            =   11160
      TabIndex        =   35
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      Height          =   615
      Index           =   0
      Left            =   9960
      TabIndex        =   34
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdNovoCliente 
      Caption         =   "Novo"
      Height          =   615
      Index           =   0
      Left            =   8760
      TabIndex        =   33
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdAlterar 
      Caption         =   "Alterar"
      Height          =   615
      Index           =   0
      Left            =   6360
      TabIndex        =   32
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdGravar 
      Caption         =   "Gravar"
      Height          =   615
      Index           =   0
      Left            =   5160
      TabIndex        =   31
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdClienteAnterior 
      Caption         =   "<"
      Height          =   615
      Index           =   0
      Left            =   3960
      TabIndex        =   30
      Top             =   4920
      Width           =   1035
   End
   Begin VB.CommandButton cmdPrimeiroCliente 
      Caption         =   "<<"
      Height          =   615
      Index           =   1
      Left            =   2760
      TabIndex        =   29
      Top             =   4920
      Width           =   1035
   End
   Begin rdActiveText.ActiveText txtCodigo 
      Height          =   315
      Left            =   180
      TabIndex        =   26
      Top             =   540
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   556
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      RawText         =   0
      FontName        =   "MS Sans Serif"
      FontSize        =   8,25
   End
   Begin VB.Frame frInformacoesFinanceiras 
      Caption         =   "Informa��es Financeiras"
      Height          =   2775
      Left            =   12180
      TabIndex        =   20
      Top             =   1020
      Width           =   3195
      Begin rdActiveText.ActiveText txtValorGasto 
         Height          =   315
         Left            =   180
         TabIndex        =   24
         Top             =   1560
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         RawText         =   0
         FontName        =   "MS Sans Serif"
         FontSize        =   8,25
      End
      Begin rdActiveText.ActiveText txtLimiteCredito 
         Height          =   315
         Left            =   180
         TabIndex        =   22
         Top             =   780
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   556
         Alignment       =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxLength       =   20
         Text            =   "0.00"
         TextMask        =   4
         RawText         =   4
         DecimalPoint    =   "."
         FontName        =   "MS Sans Serif"
         FontSize        =   8,25
      End
      Begin VB.Label lbValorGasto 
         Caption         =   "Valor Gasto"
         Height          =   315
         Left            =   180
         TabIndex        =   23
         Top             =   1260
         Width           =   1095
      End
      Begin VB.Label lbLimiteCredito 
         Caption         =   "Limite de Cr�dito"
         Height          =   315
         Left            =   180
         TabIndex        =   21
         Top             =   420
         Width           =   1515
      End
   End
   Begin VB.CommandButton cmdProcura 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   1920
      Picture         =   "frmConsultaClientes.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   540
      Width           =   375
   End
   Begin VB.Frame frDadosGerais 
      Caption         =   "Dados Gerais"
      Height          =   3855
      Left            =   120
      TabIndex        =   1
      Top             =   1020
      Width           =   12015
      Begin VB.OptionButton optFeminino 
         Caption         =   "Feminino"
         Height          =   315
         Left            =   9960
         TabIndex        =   28
         Top             =   840
         Width           =   1275
      End
      Begin VB.OptionButton optMasculino 
         Caption         =   "Masculino"
         Height          =   315
         Left            =   8340
         TabIndex        =   27
         Top             =   840
         Width           =   1275
      End
      Begin VB.CommandButton cmdBuscaEndereco 
         Caption         =   "Consultar CEP"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   3360
         TabIndex        =   18
         Top             =   1560
         Width           =   1575
      End
      Begin rdActiveText.ActiveText txtCpf 
         Height          =   315
         Left            =   5760
         TabIndex        =   2
         Top             =   720
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxLength       =   14
         TextMask        =   7
         RawText         =   7
         Mask            =   "###.###.###-##"
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtNome 
         Height          =   315
         Left            =   300
         TabIndex        =   3
         Top             =   720
         Width           =   5115
         _ExtentX        =   9022
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         RawText         =   0
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtTelefoneContato 
         Height          =   315
         Left            =   5760
         TabIndex        =   4
         Top             =   1560
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxLength       =   14
         TextMask        =   9
         RawText         =   9
         Mask            =   "(##)#####-####"
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtEndereco 
         Height          =   315
         Left            =   300
         TabIndex        =   5
         Top             =   2400
         Width           =   5055
         _ExtentX        =   8916
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxLength       =   55
         RawText         =   0
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtCep 
         Height          =   315
         Left            =   300
         TabIndex        =   6
         Top             =   1560
         Width           =   2835
         _ExtentX        =   5001
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxLength       =   9
         TextMask        =   6
         RawText         =   6
         Mask            =   "#####-###"
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtCidade 
         Height          =   315
         Left            =   300
         TabIndex        =   7
         Top             =   3240
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         RawText         =   0
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtNumero 
         Height          =   315
         Left            =   5760
         TabIndex        =   8
         Top             =   2400
         Width           =   1035
         _ExtentX        =   1826
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxLength       =   6
         RawText         =   0
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin rdActiveText.ActiveText txtBairro 
         Height          =   315
         Left            =   3060
         TabIndex        =   9
         Top             =   3240
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   556
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         RawText         =   0
         FontName        =   "MS Sans Serif"
         FontSize        =   9,75
      End
      Begin VB.Label lbSexo 
         Caption         =   "Sexo"
         Height          =   315
         Left            =   9420
         TabIndex        =   25
         Top             =   480
         Width           =   795
      End
      Begin VB.Label lbNome 
         Caption         =   "Nome Completo"
         Height          =   315
         Index           =   1
         Left            =   420
         TabIndex        =   17
         Top             =   420
         Width           =   1635
      End
      Begin VB.Label lbCpf 
         Caption         =   "CPF"
         Height          =   315
         Index           =   1
         Left            =   5820
         TabIndex        =   16
         Top             =   420
         Width           =   675
      End
      Begin VB.Label lbCidade 
         Caption         =   "Cidade"
         Height          =   315
         Index           =   1
         Left            =   360
         TabIndex        =   15
         Top             =   2940
         Width           =   675
      End
      Begin VB.Label lbBairro 
         Caption         =   "Bairro"
         Height          =   315
         Index           =   2
         Left            =   3180
         TabIndex        =   14
         Top             =   2940
         Width           =   675
      End
      Begin VB.Label lbNome 
         Caption         =   "Endere�o"
         Height          =   315
         Index           =   0
         Left            =   360
         TabIndex        =   13
         Top             =   2100
         Width           =   1635
      End
      Begin VB.Label lbCep 
         Caption         =   "CEP"
         Height          =   315
         Left            =   360
         TabIndex        =   12
         Top             =   1260
         Width           =   1155
      End
      Begin VB.Label lbNumero 
         Caption         =   "N�mero"
         Height          =   315
         Index           =   0
         Left            =   5820
         TabIndex        =   11
         Top             =   2100
         Width           =   795
      End
      Begin VB.Label lbTelefoneContato 
         Caption         =   "Telefone"
         Height          =   315
         Left            =   5820
         TabIndex        =   10
         Top             =   1260
         Width           =   855
      End
   End
   Begin VB.Label Label1 
      Caption         =   "C�digo"
      Height          =   315
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   675
   End
End
Attribute VB_Name = "frmConsultaClientes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim clsContexto As New clsContextoConsultaClientes

Dim clsTratamentoMascara As New clsTratamentoMascaras

'  ------------------------------LOAD DO FORMUL�RIO-----------------------------------------
Private Sub Form_Load()
On Error GoTo TrataErro

    sDefineContextoBusca
    sConfiguraContextoBusca
    sBuscarUltimoClienteCadastrado

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorrreu um erro ao carregar o formul�rio. " & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub

'  ------------------------------COMANDOS (BOT�ES)-----------------------------------------
'Os contextos s�o definidos a partir dos comandos
Private Sub cmdPrimeiroCliente_Click(Index As Integer)
    On Error GoTo TrataErro
    Dim iCodPrimeiroCliente As String
    iCodPrimeiroCliente = str(fObterPrimeiroCodigoCliente)
    iCodPrimeiroCliente = Trim(iCodPrimeiroCliente)
    sInserirDadosDoClienteNoForm str(iCodPrimeiroCliente)

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Erro ao buscar o primeiro cliente." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdClienteAnterior_Click(Index As Integer)
    On Error GoTo TrataErro

    Dim iCodigoClienteAnterior As String

    If txtCodigo.Text = Empty Then
        MsgBox "N�o � poss�vel ir para o anterior pois n�o h� informa��es de clientes no formul�rio", vbInformation, "Aten��o!"
        txtCodigo.SetFocus
        Exit Sub
    End If

    sBuscarClienteAnterior (txtCodigo.Text)

    If iCodigoClienteAnterior = Empty Then
        Exit Sub
    End If

    sInserirDadosDoClienteNoForm iCodigoClienteAnterior

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Erro ao buscar cliente anterior." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdGravar_Click(Index As Integer)
    On Error GoTo TrataErro

    If fVerificarCamposVaziosOuExcedentes = True Then
        If clsContexto.ContextoAtual = Cadastro Then
            sCadastrarCliente
            sDefineContextoBusca

        ElseIf clsContexto.ContextoAtual = Alteracao Then
            sAlterarCliente
            sDefineContextoBusca
        End If
    End If

    If Err.Number <> 0 Then
        MsgBox "Erro ao gravar cliente." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdAlterar_Click(Index As Integer)
    On Error GoTo TrataErro

    If txtCodigo.Text = Empty Then
        MsgBox "N�o h� cliente para alterar.", vbInformation, "Aten��o!"
        Exit Sub
    End If

    sDefineContextoAlteracao

    If Err.Number <> 0 Then
        MsgBox "Erro ao iniciar altera��o." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdExcluir_Click(Index As Integer)
    On Error GoTo TrataErro

    If MsgBox("Voc� tem certeza que deseja excluir este cadastro?", vbYesNo, "Aten��o!") Then
        sDeletarCliente txtCodigo.Text
        sBuscarUltimoClienteCadastrado
    Else
        Exit Sub
    End If

    If Err.Number <> 0 Then
        MsgBox "Erro ao excluir o cliente." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdNovoCliente_Click(Index As Integer)
    On Error GoTo TrataErro

    sDefineContextoCadastro
    sLimparCampos

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Erro ao iniciar novo cadastro." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
End Sub
Private Sub cmdCancelar_Click(Index As Integer)
    On Error GoTo TrataErro

    Dim sCodClienteAtual As String

    sCodClienteAtual = txtCodigo.Text

    If sCodClienteAtual = Empty Then
        sLimparCampos
        sDefineContextoBusca
        sBuscarUltimoClienteCadastrado
        Exit Sub
    Else
        If clsContexto.ContextoAtual = Alteracao Then
            If MsgBox("Tem certeza que deseja cancelar a altera��o do cliente?", vbYesNo, "Aten��o!") Then
                sLimparCampos
                sDefineContextoBusca
                'retorna aos dados j� registrados
                sInserirDadosDoClienteNoForm sCodClienteAtual
            End If
        ElseIf clsContexto.ContextoAtual = Cadastro Then
            If MsgBox("Tem certeza que deseja cancelar o cadastro do cliente?", vbYesNo, "Aten��o!") Then
                sLimparCampos
                sDefineContextoBusca
                'vai para o ultimo cliente cadastrado
                sInserirDadosDoClienteNoForm str(fObterProximoCodigoCliente - 1)
            End If
        End If
    End If
TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorrreu um erro ao cancelar. " & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub

Private Sub cmdProximoCliente_Click(Index As Integer)
    On Error GoTo TrataErro

    Dim iUltimoCliente As Integer

    If txtCodigo.Text = Empty Then
        MsgBox "N�o � poss�vel ir para pr�ximo pois n�o h� informa��es de clientes no formul�rio", vbInformation, "Aten��o!"
        txtCodigo.SetFocus
        Exit Sub
    End If

    sBuscarCodigoDoProximoCliente (txtCodigo.Text)

    If Err.Number <> 0 Then
        MsgBox "Erro ao buscar pr�ximo cliente." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdUltimoCliente_Click(Index As Integer)
    On Error GoTo TrataErro

    If Not clsContexto.ContextoAtual = Busca Then
        sDefineContextoBusca
    End If

    sBuscarUltimoClienteCadastrado

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorrreu um erro ao buscar o �ltimo cliente cadastrado. " & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdProcura_Click()
    On Error GoTo TrataErro

    FrmBuscaClientes.Show
TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorrreu um erro abrir a tabela de clientes cadastrados. " & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Sub cmdBuscaEndereco_Click()
    On Error GoTo TrataErro

    If Len(txtCep.Text) < 1 Then
        MsgBox "Campo CEP est� v�zio ou incompleto. Por favor, verifique.", vbInformation, "Aten��o!"
        Exit Sub
    End If

    Dim oCepCliente As Object
    Dim oJsonParse As Object
    Set oCepCliente = CreateObject("WinHttp.WinHttpRequest.5.1")

    oCepCliente.Open "GET", "https://viacep.com.br/ws/" & txtCep.Text & "/json/", False
    oCepCliente.Send


    If InStr(oCepCliente.ResponseText, "erro") Then
        MsgBox "CEP n�o localizado. Verifique o CEP ou insira os dados manualmente.", vbInformation, "Aten��o!"
        Exit Sub
    End If


    If oCepCliente.Status = 200 Then
        ' Parse da resposta para Json
        Set oJsonParse = fParsearJson(oCepCliente.ResponseText)

        ' Inserir as informa��es nos campos
        txtEndereco.Text = oJsonParse("logradouro")
        txtCidade.Text = oJsonParse("localidade")
        txtBairro.Text = oJsonParse("bairro")

        txtNumero.Text = ""
    Else
        MsgBox "N�o foi poss�vel localizar o endere�o. Por favor, insira os dados manualmente.", vbInformation, "Consulta CEP"
    End If

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao localizar o endere�o. Por favor, insira os dados manualmente.", vbInformation, "Aten��o!"
    End If
End Sub

'------------------------------PROCEDIMENTOS E FUN��ES PARA BUSCAS/CADASTRO NO BANCO -----------------------------------------

Public Sub sInserirDadosDoClienteNoForm(ByVal lCodCliente As String)
    On Error GoTo TrataErro

    If Not clsContexto.ContextoAtual = Busca Then
        sDefineContextoBusca
    End If

    'por alguma raz�o, algumas vezes o codigo vem com espa�os - VERIFICAR
    lCodCliente = Trim(lCodCliente)

    Dim rsRetornoBanco As ADODB.Recordset
    Dim sQuery As String
    Dim sEndereco As String
    Dim sNumeroEndereco As String
    Dim sTelefoneCompleto As String
    Dim arrEndereco() As String

    sQuery = "SELECT c.*, ct.CodigoArea, ct.Telefone, ct.Observacao FROM Clientes c "
    sQuery = sQuery & "LEFT JOIN ClienteTelefones ct on c.CodCliente = ct.CodCliente "
    sQuery = sQuery & "WHERE c.CodCliente = " & lCodCliente


    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco(sQuery)

    sTelefoneCompleto = rsRetornoBanco("CodigoArea") & rsRetornoBanco("Telefone")
    sTelefoneCompleto = Format(sTelefoneCompleto, "(##)#####-####")
    arrEndereco() = Split(rsRetornoBanco("Endereco"), ", ")    '(0) rua, (1) numero da casa

    txtCodigo.Text = rsRetornoBanco("CodCliente")
    txtNome.Text = rsRetornoBanco("Nome")
    txtCpf.Text = rsRetornoBanco("CPF")
    'inserir o cpf no campo, j� formatado
    txtCpf.Text = Mid(txtCpf.Text, 1, 3) & "." & Mid(txtCpf.Text, 4, 3) & "." & Mid(txtCpf.Text, 7, 3) & "-" & Mid(txtCpf.Text, 10, 2)
    txtEndereco.Text = arrEndereco(0)
    txtNumero.Text = arrEndereco(1)
    txtCidade.Text = rsRetornoBanco("Cidade")
    txtBairro.Text = rsRetornoBanco("Bairro")
    txtTelefoneContato.Text = sTelefoneCompleto
    txtLimiteCredito.Text = rsRetornoBanco("LimiteCredito")
    txtValorGasto.Text = rsRetornoBanco("ValorGasto")

    If rsRetornoBanco("Sexo") = True Then
        optMasculino.Value = True
        optFeminino.Value = False
    Else
        optFeminino.Value = True
        optMasculino.Value = False
    End If

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o cliente. " & Err.Description & " - " & Err.Number
    End If
End Sub
Private Sub sBuscarUltimoClienteCadastrado()
    On Error GoTo TrataErro

    Dim iCodUltimoCliente As Integer

    iCodUltimoCliente = fObterProximoCodigoCliente - 1    'esta funcao retorna o ultimo codigo cadastrado + 1

    sInserirDadosDoClienteNoForm str(iCodUltimoCliente)
TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o �ltimo cliente" & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
End Sub
Private Sub sBuscarCodigoDoProximoCliente(ByVal lCodClienteAtual As String)
    On Error GoTo TrataErro

    lCodClienteAtual = Trim(lCodClienteAtual)
    Dim rsRetornoBanco As ADODB.Recordset
    Dim sQuery As String
    Dim sCodigoProximoCliente As String

    sQuery = "SELECT TOP 1 CodCliente  FROM Clientes "
    sQuery = sQuery & "WHERE CodCliente > " & lCodClienteAtual
    sQuery = sQuery & " ORDER BY CodCliente ASC"


    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco(sQuery)

    If rsRetornoBanco.EOF Then
        MsgBox "N�o h� mais clientes para buscar.", vbInformation, "Aten��o!"
        Exit Sub
    Else
        sCodigoProximoCliente = rsRetornoBanco("CodCliente")
    End If

    sInserirDadosDoClienteNoForm sCodigoProximoCliente

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o cliente. " & Err.Description & " - " & Err.Number
    End If
End Sub
Private Sub sBuscarClienteAnterior(ByVal lCodClienteAtual As String)
    On Error GoTo TrataErro

    lCodClienteAtual = Trim(lCodClienteAtual)
    Dim rsRetornoBanco As ADODB.Recordset
    Dim sQuery As String
    Dim sCodigoClienteAnterior As String

    sQuery = "SELECT TOP 1 CodCliente  FROM Clientes "
    sQuery = sQuery & "WHERE CodCliente < " & lCodClienteAtual
    sQuery = sQuery & " ORDER BY CodCliente DESC"

    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco(sQuery)

    If rsRetornoBanco.EOF Then
        MsgBox "N�o h� mais clientes para buscar.", vbInformation, "Aten��o!"
        Exit Sub
    Else
        sCodigoClienteAnterior = rsRetornoBanco("CodCliente")
    End If

    sInserirDadosDoClienteNoForm sCodigoClienteAnterior

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o cliente: " & Err.Description & " - " & Err.Number
    End If

End Sub

Private Sub sCadastrarCliente()
    On Error GoTo TrataErro

    Dim sQuery As String
    Dim btSexo As Byte
    Dim sRemoveMascara As clsTratamentoMascaras
    Dim sCpfSemMascara As String
    Dim iProximoCodigo As Integer

    If optMasculino.Value = True Then
        btSexo = 1
    Else
        btSexo = 0
    End If

    Set sRemoveMascara = New clsTratamentoMascaras
    sCpfSemMascara = clsTratamentoMascara.fRemoveMascaraCpf(txtCpf.Text)

    iProximoCodigo = fObterProximoCodigoCliente

    Conexao.ConectarBanco

    sQuery = "INSERT INTO Clientes(CodCliente, Nome,Endereco,Cidade,Bairro,CPF,LimiteCredito,ValorGasto,Sexo) "
    sQuery = sQuery & "VALUES(" & iProximoCodigo & ",'" & txtNome.Text & "', '" & txtEndereco.Text & ", " & txtNumero.Text & "', '"
    sQuery = sQuery & txtCidade.Text & "', '" & txtBairro.Text & "','"
    sQuery = sQuery & sCpfSemMascara & "'," & txtLimiteCredito.Text & ", 0, " & btSexo & ")"

    mdlConexaoBanco.InserirOuDeletarNoBanco (sQuery)

    Conexao.DesconectarBanco

    sCadastrarTelefone txtTelefoneContato.Text, str(iProximoCodigo)

    MsgBox "Cliente cadastrado!", vbInformation, "Cadastro"

    sLimparCampos

    sBuscarUltimoClienteCadastrado

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao cadastrar o cliente: " & Err.Description & " - " & Err.Number
    End If

End Sub
Private Sub sAlterarCliente()
    On Error GoTo TrataErro

    Dim sQuery As String
    Dim sEnderecoCompleto As String
    Dim sCpfSemMascara As String
    Dim bSexo As Boolean
    'Dim sTelefoneCompleto As String
    Dim sCodArea As String
    Dim sNumeroTelefone As String
    Dim rsRetornoBanco As ADODB.Recordset

    'verifica sexo para facilitar compara��o com o banco
    If optMasculino = True Then
        bSexo = True
    Else
        bSexo = False
    End If

    'buscar dados cadastrados do cliente atual
    sQuery = "SELECT c.*, ct.CodigoArea, ct.Telefone, ct.Observacao FROM Clientes c "
    sQuery = sQuery & "LEFT JOIN ClienteTelefones ct on c.CodCliente = ct.CodCliente "
    sQuery = sQuery & "WHERE c.CodCliente = " & txtCodigo.Text

    Conexao.ConectarBanco
    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco(sQuery)

    sEnderecoCompleto = fFormataEnderecoCompleto(txtEndereco.Text, txtNumero.Text)
    sCpfSemMascara = clsTratamentoMascara.sRemoveMascaraCpf(txtCpf.Text)
    sCodArea = Mid(txtTelefoneContato.Text, 2, 2)
    sNumeroTelefone = Mid(txtTelefoneContato.Text, 5, 10)
    sNumeroTelefone = Replace(sNumeroTelefone, "-", "")

    'verifica campo a campo, o que estiver diferente sera alterado no banco
    If Not rsRetornoBanco("CodCliente") = txtCodigo.Text Then    'validar que n�o houve tentativa de alterar o c�digo
        MsgBox "N�o � poss�vel alterar o c�digo do cliente!", vbInformation, "Aten��o!"
        Exit Sub
    End If
    If Not rsRetornoBanco("Nome") = txtNome.Text Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET Nome = '" & txtNome.Text & "' WHERE CodCliente = " & txtCodigo.Text
    End If
    If Not rsRetornoBanco("Endereco") = sEnderecoCompleto Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET Endereco = '" & sEnderecoCompleto & "' WHERE CodCliente = " & txtCodigo.Text
    End If
    If Not rsRetornoBanco("Cidade") = txtCidade.Text Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET Cidade = '" & txtCidade.Text & "' WHERE CodCliente = " & txtCodigo.Text
    End If
    If Not rsRetornoBanco("Bairro") = txtBairro.Text Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET Bairro = '" & txtBairro.Text & "' WHERE CodCliente = " & txtCodigo.Text
    End If
    If Not rsRetornoBanco("Cpf") = sCpfSemMascara Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET CPF = '" & sCpfSemMascara & "' WHERE CodCliente = " & txtCodigo.Text
    End If
    If Not rsRetornoBanco("Sexo") = bSexo Then
        If bSexo Then
            mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET Sexo = 1 WHERE CodCliente = " & txtCodigo.Text
        Else
            mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET Sexo = 0 WHERE CodCliente = " & txtCodigo.Text
        End If
    End If
    If Not Replace(Format(rsRetornoBanco("LimiteCredito"), "0.00"), ",", ".") = txtLimiteCredito.Text Then
        If MsgBox("Voc� tem certeza que deseja aumentar o limite do cliente para R$" & txtLimiteCredito.Text & "?", vbYesNo, "Aten��o!") Then
            mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE Clientes SET LimiteCredito = " & txtLimiteCredito.Text & " WHERE CodCliente = " & txtCodigo.Text
        End If
    End If

    'telefone
    If Not rsRetornoBanco("CodigoArea") = sCodArea Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE ClienteTelefones SET CodigoArea = '" & sCodArea & "' WHERE CodCliente = " & txtCodigo.Text
    End If
    If Not rsRetornoBanco("Telefone") = sNumeroTelefone Then
        mdlConexaoBanco.InserirOuDeletarNoBanco "UPDATE ClienteTelefones SET Telefone = '" & sNumeroTelefone & "' WHERE CodCliente = " & txtCodigo.Text
    End If

    sInserirDadosDoClienteNoForm txtCodigo.Text

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao alterar o cliente: " & Err.Description & " - " & Err.Number
    End If

End Sub
Private Sub sDeletarCliente(ByVal sCodCliente As String)
    On Error GoTo TrataErro
    Dim sQuery As String

    'qualquer erro que ocorrer, dar� rollback e n�o atingir� os dados
    sQuery = " BEGIN TRY BEGIN TRANSACTION "
    sQuery = sQuery & " DELETE FROM ClienteTelefones WHERE CodCliente = " & sCodCliente
    sQuery = sQuery & " DELETE FROM Clientes WHERE CodCliente = " & sCodCliente
    sQuery = sQuery & "COMMIT TRANSACTION END TRY"
    sQuery = sQuery & " BEGIN CATCH "
    sQuery = sQuery & " IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION END CATCH"

    mdlConexaoBanco.InserirOuDeletarNoBanco (sQuery)

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao cadastrar o cliente: " & Err.Description & " - " & Err.Number
    End If

End Sub
Private Sub sCadastrarTelefone(ByVal sTelefoneCompleto As String, ByVal sCodCliente As String)
    On Error GoTo TrataErro

    Dim iProximoCodClienteTelefone As Integer
    Dim sCodArea As String
    Dim sTelefone As String
    Dim Observacao As String
    Dim sQuery As String

    iProximoCodClienteTelefone = fObterProximoCodigoClienteTelefone
    sCodArea = Mid(sTelefoneCompleto, 2, 2)
    sTelefone = Mid(sTelefoneCompleto, 5, 10)
    sTelefone = Replace(sTelefone, "-", "")

    Conexao.ConectarBanco

    sQuery = "INSERT INTO ClienteTelefones (CodClienteTelefone, CodCLiente, CodigoArea, Telefone, Observacao) "
    sQuery = sQuery & "VALUES(" & iProximoCodClienteTelefone & ", " & sCodCliente & ", " & sCodArea & ", "
    sQuery = sQuery & sTelefone & ", '-')"

    mdlConexaoBanco.InserirOuDeletarNoBanco (sQuery)

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao cadastrar o n�mero do cliente: " & Err.Description & " - " & Err.Number
    End If

End Sub
Private Function fObterPrimeiroCodigoCliente() As Integer
    On Error GoTo TrataErro

    Dim iPrimeiroCodigo As Integer
    Dim rsRetornoBanco As ADODB.Recordset

    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco("SELECT MIN(CodCliente) as Primeiro FROM CLIENTES")

    iPrimeiroCodigo = Val(rsRetornoBanco("Primeiro"))

    fObterPrimeiroCodigoCliente = iPrimeiroCodigo

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o c�digo do cliente." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Function
Private Function fObterProximoCodigoClienteTelefone() As Integer
    On Error GoTo TrataErro

    Dim iProxCodigoClienteTelefone As Integer
    Dim rsRetornoBanco As ADODB.Recordset

    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco("SELECT MAX(CodClienteTelefone) as Maior FROM ClienteTelefones")

    iProxCodigoClienteTelefone = Val(rsRetornoBanco("Maior"))

    fObterProximoCodigoClienteTelefone = iProxCodigoClienteTelefone + 1

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o c�digo do cliente (telefone)." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Function
Private Function fObterProximoCodigoCliente() As Integer
    On Error GoTo TrataErro

    Dim iProxCodigoCliente As Integer
    Dim rsRetornoBanco As ADODB.Recordset

    Set rsRetornoBanco = mdlConexaoBanco.fPesquisaBanco("SELECT MAX(CodCliente) as Maior FROM CLIENTES")

    iProxCodigoCliente = Val(rsRetornoBanco("maior"))

    fObterProximoCodigoCliente = iProxCodigoCliente + 1

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao buscar o c�digo do cliente." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Function

'------------------------------PROCEDIMENTOS E FUN��ES AUXILIARES -----------------------------------------

Private Function fParsearJson(ByVal sObjJson As String) As Object
    On Error GoTo TrataErro
    
    Dim obJson As Object
    Set obJson = JSON.parse(sObjJson)
    Set fParsearJson = obJson
TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao efetuar o parse do JSON." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Function

Private Function fVerificarCamposVaziosOuExcedentes() As Boolean
    On Error GoTo TrataErro

    If Len(txtNome.Text) < 1 Then
        MsgBox "Campo nome est� vazio ou incompleto.", vbInformation, "Aten��o!"
        txtNome.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtCpf.Text) < 1 Then
        MsgBox "Campo CPF est� vazio ou incompleto.", vbInformation, "Aten��o!"
        txtCpf.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtCep.Text) < 1 Then
        If Not clsContexto.ContextoAtual = Alteracao Then
            MsgBox "Campo CEP est� v�zio ou incompleto.", vbInformation, "Aten��o!"
            txtEndereco.SetFocus
            fVerificarCamposVaziosOuExcedentes = False
            Exit Function
        End If
    ElseIf Len(txtEndereco.Text) < 5 Then
        MsgBox "Campo Endere�o est� v�zio ou incompleto.", vbInformation, "Aten��o!"
        txtEndereco.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtEndereco.Text) > 60 Then
        MsgBox "Campo Endere�o excedeu o limite m�ximo de caracteres (60). Por favor, abrevie.", vbInformation, "Aten��o!"
        txtEndereco.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtNumero.Text) < 1 Then
        MsgBox "Campo N�mero est� v�zio ou incompleto.", vbInformation, "Aten��o!"
        txtNumero.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtCidade.Text) < 3 Then
        MsgBox "Campo Cidade est� v�zio ou incompleto.", vbInformation, "Aten��o!"
        txtCidade.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtCidade.Text) > 40 Then
        MsgBox "Campo Cidade excedeu o limite m�ximo de caracteres (40). Por favor, abrevie.", vbInformation, "Aten��o!"
        txtCidade.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtBairro.Text) < 3 Then
        MsgBox "Campo Bairro est� v�zio ou incompleto.", vbInformation, "Aten��o!"
        txtBairro.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf optMasculino.Value = False And optFeminino.Value = False Then
        MsgBox "Campo Sexo n�o foi definido. Por favor, verifique.", vbInformation, "Aten��o!"
        optMasculino.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtTelefoneContato.Text) < 14 Then
        MsgBox "Campo Telefone est� v�zio ou incompleto.", vbInformation, "Aten��o!"
        txtTelefoneContato.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    ElseIf Len(txtLimiteCredito.Text) < 1 Then
        MsgBox "Campo Limite de Cr�dito est� v�zio ou incompleto.", vbInformation, "Aten��o!"
        txtLimiteCredito.SetFocus
        fVerificarCamposVaziosOuExcedentes = False
        Exit Function
    End If

    fVerificarCamposVaziosOuExcedentes = True

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro verificar os campos vazios." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Function

Private Sub sLimparCampos()
    On Error GoTo TrataErro
    
    txtCodigo.Text = ""
    txtNome.Text = ""
    txtCpf.Text = ""
    txtCep.Text = ""
    txtEndereco.Text = ""
    txtCidade.Text = ""
    txtBairro.Text = ""
    txtNumero.Text = ""
    txtTelefoneContato.Text = ""
    txtLimiteCredito.Text = ""
    txtValorGasto.Text = ""
    optMasculino = False
    optFeminino = False

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao limpar os campos do formul�rio." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Sub

Private Sub sTrancarCampos()
On Error GoTo TrataErro
    
'como os elementos s�o trancados todos juntos, caso um j� esteja entende-se que todos estar�o
    If txtCodigo.Locked = True Then
        Exit Sub
    End If

    txtCodigo.Locked = True
    txtNome.Locked = True
    txtCpf.Locked = True
    txtCep.Locked = True
    txtEndereco.Locked = True
    txtCidade.Locked = True
    txtBairro.Locked = True
    txtNumero.Locked = True
    txtTelefoneContato.Locked = True
    txtLimiteCredito.Locked = True
    txtValorGasto.Locked = True
    optMasculino.Enabled = False
    optFeminino.Enabled = False
    cmdBuscaEndereco.Visible = False
    
TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao trancar os campos do formul�rio." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Sub

Private Sub sDestrancarCampos()
    On Error GoTo TrataErro
    
    txtCodigo.Locked = False
    txtNome.Locked = False
    txtCpf.Locked = False
    txtCep.Locked = False
    txtEndereco.Locked = False
    txtCidade.Locked = False
    txtBairro.Locked = False
    txtNumero.Locked = False
    txtTelefoneContato.Locked = False
    txtLimiteCredito.Locked = False
    txtValorGasto.Locked = False
    optMasculino.Enabled = True
    optFeminino.Enabled = True
    cmdBuscaEndereco.Visible = True

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao destrancar os campos do formul�rio." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Sub
'Definir os Contextos
Private Sub sDefineContextoBusca()
    On Error GoTo TrataErro

    clsContexto.DefineContexto = Busca
    sConfiguraContextoBusca

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao definir o contexto Busca." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Sub
Private Sub sDefineContextoAlteracao()
    On Error GoTo TrataErro
    
    clsContexto.DefineContexto = Alteracao
    sConfiguraContextoAlteracaoECadastro

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao definir o contexto Alteracao." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
End Sub
Private Sub sDefineContextoCadastro()
    On Error GoTo TrataErro
    
    clsContexto.DefineContexto = Cadastro
    sConfiguraContextoAlteracaoECadastro
    
TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao definir o contexto Cadastro." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Sub

'Definir os campos de texto e botoes que podem ser acessados pelo usuario no contexto
Private Sub sConfiguraContextoBusca()

    txtCodigo.Locked = True
    txtNome.Locked = True
    txtCpf.Locked = True
    lbCep.Visible = False
    txtCep.Visible = False
    txtEndereco.Locked = True
    txtCidade.Locked = True
    txtBairro.Locked = True
    txtNumero.Locked = True
    txtTelefoneContato.Locked = True
    txtLimiteCredito.Locked = True
    txtValorGasto.Locked = True
    optMasculino.Enabled = False
    optFeminino.Enabled = False
    cmdBuscaEndereco.Visible = False
    sAtivaBotao ("cmdPrimeiroCliente")
    sAtivaBotao ("cmdClienteAnterior")
    sAtivaBotao ("cmdNovoCliente")
    sAtivaBotao ("cmdAlterar")
    sAtivaBotao ("cmdProximoCliente")
    sAtivaBotao ("cmdUltimoCliente")
    sAtivaBotao ("cmdExcluir")
    sDesativaBotao ("cmdGravar")
    sDesativaBotao ("cmdCancelar")
    
End Sub
Private Sub sConfiguraContextoAlteracaoECadastro()

    txtCodigo.Locked = True
    txtNome.Locked = False
    txtCpf.Locked = False
    lbCep.Visible = True
    txtCep.Visible = True
    txtCep.Locked = False
    txtEndereco.Locked = False
    txtCidade.Locked = False
    txtBairro.Locked = False
    txtNumero.Locked = False
    txtTelefoneContato.Locked = False
    txtLimiteCredito.Locked = False
    txtValorGasto.Locked = True
    optMasculino.Enabled = True
    optFeminino.Enabled = True
    cmdBuscaEndereco.Visible = True
    sDesativaBotao ("cmdPrimeiroCliente")
    sDesativaBotao ("cmdClienteAnterior")
    sDesativaBotao ("cmdNovoCliente")
    sDesativaBotao ("cmdAlterar")
    sDesativaBotao ("cmdProximoCliente")
    sDesativaBotao ("cmdUltimoCliente")
    sDesativaBotao ("cmdExcluir")
    sAtivaBotao ("cmdGravar")
    sAtivaBotao ("cmdCancelar")

End Sub
Private Sub sAtivaBotao(ByVal sNomeBotao As String)
    On Error GoTo TrataErro
    
    Dim ctl As Control

    For Each ctl In Me.Controls
        If TypeName(ctl) = "CommandButton" Then
            If ctl.Name = sNomeBotao Then
                ctl.Enabled = True
            End If
        End If
    Next ctl

TrataErro:
      If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao ativar o bot�o " & sNomeBotao & "." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If
    
End Sub
Private Sub sDesativaBotao(ByVal sNomeBotao As String)
    On Error GoTo TrataErro
    Dim ctl As Control

    For Each ctl In Me.Controls
        If TypeName(ctl) = "CommandButton" Then
            If ctl.Name = sNomeBotao Then
                ctl.Enabled = False
            End If
        End If
    Next ctl
    
TrataErro:
      If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao desativar o bot�o " & sNomeBotao & "." & Err.Number & " - " & Err.Description, vbInformation, "Aten��o!"
    End If

End Sub
Private Function fFormataEnderecoCompleto(ByVal sEndereco As String, ByVal sNumero As String)

    Dim sEnderecoCompleto As String

    sEnderecoCompleto = sEndereco & ", " & sNumero
    fFormataEnderecoCompleto = sEnderecoCompleto

End Function

