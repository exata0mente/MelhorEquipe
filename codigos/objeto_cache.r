objeto_cache <- function(obj = NULL, dir=NULL, urlJSON=NULL){

  ambiente <- globalenv()
  nomeObjeto <- obj
  obj <- NULL
  
  obter_objeto <- function() obj
  
  definir_objeto <- function(novObj=nomeObjeto, novoDir=dir){
    dir <<- novoDir
    obj <<- novObj
    if(file.exists(paste0(novoDir,novObj,".RData"))){
      load(paste0(novoDir,novObj,".RData"), envir = ambiente)
      obj <<- objJSON
    }
    else
      return(NULL)    
  }
  criar_objeto <- function(novoDir=dir){
    require(jsonlite)
    objJSON <- fromJSON(urlJSON)
    obj <<- objJSON
    assign("objJSON", objJSON, envir=ambiente)
    save(objJSON, file=paste0(dir, nomeObjeto, ".RData"))
    rm(objJSON)
  }

  list(nomeObjeto = nomeObjeto,
    obter_objeto = obter_objeto,
    definir_objeto = definir_objeto,
    criar_objeto = criar_objeto
  )
  
}

