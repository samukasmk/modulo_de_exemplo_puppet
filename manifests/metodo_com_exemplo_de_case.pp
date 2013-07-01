define sample_mod::metodo_com_exemplo_de_case (
  $meu_parametro_type = 'LVM',
){
  
  # Aqui ta o exemplo de Case Seletor direto na variavel
  $cilinder_type = $meu_parametro_type ? {
    
    # Exemplo com Palavra fixa direta   
    'Ext3'             => "83",
    
    # Exemplo com Regexp em seu parametro type (Obs: aqui não pode ter Multiplas Palavras fixas)
    /^(Ext4|NTFS)$/     => "87",
    
    # Exemplo com Regexp em seu parametro type    
    /^(lvm|LVM|Lvm)$/  => "112",
    default            => "999999999"
  }
  
  
  # Aqui ta o exemplo de Case com campo para comandos
  case $meu_parametro_type {
    # Exemplo com Palavra fixa direta   
    'Ext3' : {
      notify { "TU Definiu o PAraMEtro Ext3 !!": }
      notify { "O CILINDRO SELECIONADO FOI O : ${cilinder_type}": }
    }

    # Exemplo com Multiplas Palavras fixas   
    'Ext4', 'NTFS' : {
      notify { "TU Definiu o PAraMEtro Ext4 ouu NTFS": }
      notify { "O CILINDRO SELECIONADO FOI O : ${cilinder_type}": }      
    }     
      
    # Exemplo com Regexp em seu parametro type
    /^(lvm|LVM|Lvm)$/ : {
      notify { "TU Definiu o PAraMEtro LVM !!": }
      notify { "O CILINDRO SELECIONADO FOI O : ${cilinder_type}": }      
    }
  
    default : {
      notify { "Voce mudou o variavel para em branco":} 
    }
  
  
  }   
}