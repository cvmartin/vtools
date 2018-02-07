htmlize_name <- function(name){
  tolower(
    gsub(" ","-",name)
  )
}
