define modulo_de_exemplo_puppet::meu_primero_metodo ( 
  $meu_segundo_parametro = "Falaa Paiii! Aqui é seu SEGUNDOOO parametro! esse Campo é o valor default",
) {
  notify { "Exemplo de Notificação, lendo O meu Segundo parametro":
  }
  exec { "/usr/bin/printf \"Dados do meu SEGUNDO Parametro: ${meu_parametro}\"":
  }
 
}
