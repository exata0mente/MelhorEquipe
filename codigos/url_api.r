urls_api <- function(obj="listaRecursosJSON", urlJSON="https://pokeapi.co/api/v2/?limit=999"){
  
  meu_diretorio <- diretorio_cache()
  meu_objeto <- objeto_cache(obj, urlJSON)
  
  rotina_cache(meu_diretorio, meu_objeto)
  
  listaRecursosJSON <- objJSON[sort(names(objJSON))]
  listaRecursosJSON <- data.frame(name=names(listaRecursosJSON), url=as.vector(unlist(listaRecursosJSON)), stringsAsFactors=FALSE)
  rm(objJSON, envir=globalenv())
  listaRecursosJSON
}


# 1 - Melhorado a ordenação da lista de recursos e efetuado a conversão de lista para data.frame