diretorio_cache <- function(dir = NULL){
# Este objeto função conterá os métodos para validação da existência da pasta cache e criação se necessário.
  
  if(file.exists(paste0(getwd(),"/","data/jsonR/")))
    dir <- paste0(getwd(),"/","data/jsonR/")
  
  obter_diretorio <- function() dir
  # Método para obtenção do diretório que receberá a pasta cache
  
  definir_diretorio <- function(novoDir=dir){
  # Método para definição do diretório de trabalho que receberá os dados JSON
    setwd(novoDir)
    dir <<- novoDir
  }
 
  criar_diretorio <- function(){
  # Método para criação do diretório de cache
    dir.create("data/jsonR/", recursive = TRUE)
    dir <<- paste0(getwd(),"/","data/jsonR/")
  }
  
  list(definir_diretorio = definir_diretorio, 
    obter_diretorio = obter_diretorio,
    criar_diretorio = criar_diretorio
  )
  
}

