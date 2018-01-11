base_url <- "https://pokeapi.co/api/v2/"
diretorio_trabalho <- getwd()

define_cache_local <- function(){
	if(!dir.exists("diretorio_cache"))
	dir.create("diretorio_cache")
}

define_versao <- function(id=1,criar_cache=TRUE){
	
	versoesJSON <- fromJSON(paste0(base_url, "version-group/"))
	
	if(id > nrow(versoesJSON$results) || id <= 0)
		stop("versao invalida, utilize a função versoes para ver as funções existentes")
			
	if(criar_cache){
		define_cache_local()
		if(!file.exists("diretorio_cache/version-group.RData")
			save(versoes_obterJSON, file="diretorio_cache/version-group.RData")
	}
	
	versoesJSON$results[id,1]
		
}

define_rota <- function(versaoJSON, criar_cache=TRUE){

	rotasV

	

}




















**** REFERENCIAS ****

https://github.com/lgreski/datasciencectacontent/blob/master/markdown/rprog-extractOperator.md
https://www.r-bloggers.com/gotta-catch-them-all/
https://github.com/veekun/pokedex
https://arxiv.org/pdf/1403.2805.pdf //Documetação pacote jsonlite