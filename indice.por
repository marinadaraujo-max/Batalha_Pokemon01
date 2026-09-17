programa {
   inclua biblioteca Graficos --> g
    inclua biblioteca Util --> u
    const inteiro LARGURA = 800
    const inteiro ALTURA = 500
    funcao inicio() {
        // informações do meu pokemon 
        cadeia meu_nome = "Pikachu"
        inteiro meu_hp = 100
        inteiro meu_hp_max = 100
        
        // informações do pokemon adversario
        cadeia inimigo_nome = "Gengar"
        inteiro inimigo_hp = 120
        inteiro inimigo_hp_max = 120

        inteiro dano = u.sorteia(22,35)
        inimigo_hp = inimigo_hp - dano
        // - = subtração
        // + = adição 
        // * = multiplicação
        // / = divisão
        // % = resto da divisão

        escreva("=== FICHA DA BATALHA ===\n")
        escreva(meu_nome, " - HP: ", meu_hp, "/",  meu_hp_max, "\n")
        escreva(inimigo_nome, " - HP: ", inimigo_hp, "/",  inimigo_hp_max, " (sofreu ", dano , " de dano)", "\n")

         g.iniciar_modo_grafico(verdadeiro) 
         g.definir_dimensoes_janela(LARGURA, ALTURA)
         g.definir_titulo_janela("Pokémon Batalha RPG")
         // desenho do céu do cenário
         g.definir_cor(g.criar_cor(150, 216, 250))
         g.desenhar_retangulo(0, 0, 800, 260, falso, verdadeiro)
         //desenho dagrama do cenário
         g.definir_cor(g.criar_cor(150, 190, 100))
         g.desenhar_retangulo(0, 260, 800, 240, falso, verdadeiro)
         // desenho da plataforma do meu pokemon inimigo
         g.definir_cor(g.criar_cor(90, 130, 80))
         g.desenhar_eclipse(475, 165, 250, 65, verdadeiro)
         // desenho da plataforma do meu pokemon
         g.definir_cor(g.criar_cor(80, 120, 70))
         g.desenhar_eclipse(90, 365, 290, 75, verdadeiro)
         // sprite pokemon inimigo
         g.definir_cor(g.criar_cor(110, 60,150))
         g.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro) 
         // sprite pokemon 
         g.definir_cor(g.criar_cor(225, 215, 0))
         g.desenhar_retangulo(180, 280, 110, 100, falso, verdadeiro) 

        g.renderizar()

        escreva("Janela gráfica aberta! Utilizando a biblioteca de gráficos de portugol")

        u.aguarde(5000)
    }
}