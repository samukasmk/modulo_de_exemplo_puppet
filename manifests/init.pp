define modulo_de_exemplo_puppet ( 
  $meu_primeiro_parametro = "Falaa Paiii! Aqui é seu PRIMEIRO parametro! esse Campo é o valor default",
) {
  notify { "Exemplo de Notificação, lendo parametros":
  }
  exec { "/bin/echo \"Dados do meu Parametro: ${meu_parametro}\"":
  }
 
}
