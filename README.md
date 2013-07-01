Fala Pai!

Eae Blz? conforme o prometido ta ae seu exemplo de modulo do puppet!!

 1 - Só Clonar esse projeto na sua pasta de modulos de seu puppet (master/server)

```bash
# cd /etc/puppet/modules
# git clone https://github.com/samukasmk/sample_mod.git
```

2 - Declarar em seu inventário (site.pp) o modulo que será usado na maquina cliente:
```puppet
node 'NOME_DA_MAQUINA_CLIENTE' {
 
   sample_mod { "Modulo de Exemplo":
     meu_primeiro_parametro => "Aqui é seu 1. parametro!!! Definido por Você!",
   }
     
   sample_mod::meu_primero_metodo { "Modulo de Exemplo Chamando o Parametro":
     meu_segundo_parametro => "Aqui é seu 2nd. parametro!!! Definido por Você Tabém!",
   }
   
   sample_mod::metodo_com_exemplo_de_case { "Modulo de Exemplo Chamando o Parametro com Seletor":
     meu_parametro_type => "Ext3",
   }
} 
```

Forte Abraço Pai!

Qualquer coisa avisa ae!

Samuka~SMk
