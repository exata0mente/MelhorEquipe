lista_versao <- function(obj, urlJSON){
  
  meu_diretorio <- diretorio_cache()
  meu_objeto <- objeto_cache(obj=obj, urlJSON=urlJSON)
  
  meu_objeto$ambiente <- environment(lista_versao)
  rotina_cache(meu_diretorio, meu_objeto)
  
  versoesJSON <- objJSON

  df_versoes <- versoesJSON$results 
  df_versoes <- cbind(id=rownames(df_versoes), df_versoes) 
  df_versoes
  
}