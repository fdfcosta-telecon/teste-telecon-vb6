VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsTratamentoMascaras"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public Function fRemoveMascaraCpf(ByVal sCpf As String) As String
    On Error GoTo TrataErro

    sCpf = Replace(sCpf, ".", "")
    sCpf = Replace(sCpf, "-", "")

    fRemoveMascaraCpf = sCpf

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao remover a m�scara do CPF", vbInformation, "Aten��o!"
    End If

End Function

Public Function fRemoveMascaraTelefone(ByVal sTelefone As String) As String
    On Error GoTo TrataErro
    Dim sCodArea As String

    sCodArea = Mid(sTelefoneCompleto, 2, 2)
    sTelefone = Mid(sTelefoneCompleto, 5, 10)
    sTelefone = Replace(sTelefone, "-", "")

    fRemoveMascaraTelefone = sCodArea & sTelefone

TrataErro:
    If Err.Number <> 0 Then
        MsgBox "Ocorreu um erro ao remover a m�scara do Telefone.", vbInformation, "Aten��o!"
    End If
End Function
