rotina_cache <- function(d, o, ...){

  diretorio <- d$obter_diretorio()
  objeto <- o$obter_objeto()
  
  # Pasta
  if(is.null(diretorio)){
    message("Criamos um diretorio de cache ...")
    d$criar_diretorio()
  }
  else
    message("Pasta em cache. Utilizando-a")

  # Objeto
  if(is.null(objeto)){
    message("Objeto nao esta em cache, vamos procura-lo localmente")
    if(is.null(o$definir_objeto(o$nomeObj, d$obter_diretorio()))){
      message("Objeto nao existe localmente. Vamos cria-lo")
      o$criar_objeto()
    }
    else
      message("Objeto encontrado localmente. Carregando-o")
  }
  else
    message("Objeto existe em cache. Carregando-o")
    
  message("Pronto!")
}
