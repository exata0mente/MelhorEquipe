define_cache_local <- function(){
	
	if(!dir.exists("diretorio_cache"))
		dir.create("diretorio_cache")
		
	return(TRUE)
}
