meu_diretorio <- diretorio_cache()
meu_objeto <- objeto_cache()

rotina_cache(meu_diretorio, meu_objeto)


lista_versao <- function(){
  
  meu_diretorio <- diretorio_cache()
  meu_objeto <- objeto_cache(obj="versoesJSON", urlJSON = "https://pokeapi.co/api/v2/version/?limit=99")
    
  # importa os dados JSON do API
  versoesJSON <- fromJSON("https://pokeapi.co/api/v2/version/?limit=20") 
  # mantem apenas os dados relevantes
  df_versoes <- versoesJSON$results 
  df_versoes <- cbind(1:nrows(df_versoes), df_versoes) #aqui eu crio uma coluna para usar como identificação
  
  #limpa os objetos que não serão mais utilizados
  rm(versoesJSON)
}