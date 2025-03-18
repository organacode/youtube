// Bibliotecas necessárias
#Include "TOTVS.ch"

/*/{Protheus.doc} OC001
    Função para demonstração de criação de ponto de entrada.
    @type Function
    @version 12.1.2310
    @author Guilherme Bigois
    @since 18/03/2025
    @return Variant, Retorno nulo fixado
/*/
User Function OC001() As Variant
    // Variáveis locais
    Local cTime As Character // Hora atual
    Local cUser As Character // Nome do usuário
    Local cMsg  As Character // Mensagem de boas vindas

    // Inicialização de variáveis
    cTime := Time()
    cUser := "Guilherme Bigois"
    cMsg  := "Bem-vindo, " + cUser + "!"

    // Realiza a preparação do ambiente sem GUI
    RPCSetEnv("99", "01")

    If (Existblock("OC002"))
        cMsg := ExecBlock("OC002", .F., .F., {cTime, cUser, cMsg})
    EndIf

    // Exibe a mensagem de boas vindas
    FwAlertInfo(cMsg, "ORGANA CODE")

    // Encerra a conexão com o ambiente
    RPCClearEnv()
Return (NIL)
