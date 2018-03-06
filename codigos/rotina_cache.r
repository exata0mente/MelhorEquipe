rotina_cache <- function(d, o){

  diretorio <- d$obter_diretorio()
#   objeto <- o$obter_objeto()
  
  # Pasta
  if(is.null(diretorio)){
    message("Criamos um diretorio de cache ...")
    d$criar_diretorio()
  }
  else
    message("Pasta em cache. Utilizando-a")

    if(is.null(o$definir_objeto(o$nomeObj, d$obter_diretorio()))){
      message("Objeto nao existe localmente. Vamos cria-lo")
      o$criar_objeto()
    }
    else
      message("Objeto encontrado localmente. Carregando-o")
      
  message("Pronto!")
}

# retirado o tratamento de objeto em cache. Mantido apenas o tratamento local (save / load)