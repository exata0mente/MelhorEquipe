define_rota <- function(versaoJSON=NULL, criar_cache=TRUE){

	if(is.null(versaoJSON))
		stop("url da versao nao foi informado. Dica: utilize a função define_versao.r")
	
	regiaoJSON <- fromJSON(versaoJSON)
	
	if(criar_cache){
		define_cache_local()
		if(!file.exists("diretorio_cache/region.RData"))
			save(regiaoJSON, file="diretorio_cache/region.RData")
	}
	
	regiaoJSON$regions[1,1]
		
}