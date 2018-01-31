urls_api <- function(){
  
  meu_diretorio <- diretorio_cache()
  meu_objeto <- objeto_cache(obj="listaRecursosJSON", urlJSON="https://pokeapi.co/api/v2/?limit=999")
  
  rotina_cache(meu_diretorio, meu_objeto)
  
  listaRecursosJSON <- objJSON
  tmp <- sort(names(listaRecursosJSON))
  rm(objJSON)
  listaRecursosJSON
}