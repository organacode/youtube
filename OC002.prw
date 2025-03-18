// Bibliotecas necessárias
#Include "TOTVS.ch"

/*/{Protheus.doc} OC002
    Ponto de entrada para alteração da mensagem de boas vindas da função OC001.
    @type Function
    @version 12.1.2310
    @author Guilherme Bigois
    @since 18/03/2025
    @return Character, Mensagem de boas vindas alterada
/*/
User Function OC002() As Character
    // Variáveis locais
    Local cTime As Character // Hora atual
    Local cUser As Character // Nome do usuário
    Local cMsg  As Character // Mensagem de boas vindas
    Local cAux  As Character // Auxiliar de montagem da nova mensagem

    // Inicialização de variáveis
    cTime := PARAMIXB[1]
    cUser := PARAMIXB[2]
    cMsg  := PARAMIXB[3]
    cAux  := ""

    // Define a saudação com base no horário atual
    If (cTime >= "00:00:00" .And. cTime < "12:00:00")
        cAux := "Bom dia"
    ElseIf (cTime >= "12:00:00" .And. cTime < "18:00:00")
        cAux := "Boa tarde"
    Else
        cAux := "Boa noite"
    EndIf

    // Complementa com o nome do usuário
    cAux += ", " + cUser + "!"
Return (cAux)
