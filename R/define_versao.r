define_versao <- function(id=1,cache=FALSE){
	
	arquivo_cache <- "diretorio_cache/version-group.RData"
	
	if(cache){
		if(file.exists(arquivo_cache))
			load(file=arquivo_cache)
		else
			stop("nao existe o arquivo correspondente em cache, tente novamente")
		
	}
	else{
		versoesJSON <- fromJSON(paste0(base_url, "version-group/"))
		
		if(id > nrow(versoesJSON$results) || id <= 0)
			stop("versao invalida, utilize a função versoes para ver as funções existentes")
	
		save(versoesJSON, file=arquivo_cache)
	}

	versoesJSON$results[id,1]
		
}