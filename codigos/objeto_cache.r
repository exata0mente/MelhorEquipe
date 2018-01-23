objeto_cache <- function(obj = NULL, dir=NULL, urlJSON=NULL){

  nomeObjeto <- obj
  obj <- NULL
    
  obter_objeto <- function() obj
  
  definir_objeto <- function(novObj=nomeObjeto, novoDir=dir){
    objExis <- NULL
    if(is.null(novObj) || is.null(novoDir))
    #Se passar NULL como parâmetro, o objeto é "limpado"
      return(NULL)
    if(file.exists(paste0(novoDir,novObj,".RData"))){
      message("Cache encontrado. Recuperando objeto")
      objExis <- load(paste0(novoDir,novObj,".RData"))
      obj <<- objExis
    }
    objExis
  }
  
  criar_objeto <- function(dir) {
    require(jsonlite)
    objJSON <- fromJSON(urlJSON)
    obj <<- objJSON
    save(file=paste0(dir, nomeObjeto, ".RData"))
    rm(objJSON)
  }

  list(nomeObjeto = nomeObjeto,
    obter_objeto = obter_objeto,
    definir_objeto = definir_objeto,
    criar_objeto = criar_objeto
  )
  
}