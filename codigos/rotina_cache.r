rotina_cache <- function(d, o, ...){

  diretorio_cache <- d$obter_diretorio()
  objeto_cache <- o$obter_objeto()
  
  # Pasta
  if(is.null(diretorio_cache)){
    message("Criamos um diretorio de cache ...")
    d$criar_diretorio()
  }
  else
    message("Pasta em cache. Utilizando-a")

  # Objeto
  if(is.null(objeto_cache)){
    if(is.null(o$definir_objeto(o$nomeObj, d$obter_diretorio()))){
      message("Objeto ainda nao existe. Chamando rotina de criação")
        novoObjeto <- o$criar_objeto(dir=d$obter_diretorio())
    }
  }
}
