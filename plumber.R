library(plumber)


#* @apiTitle Plumbers

#* @apiDescription Plumber with logging

#* Simulate a long running process and log
#* @param max_s Maximum number of seconds a process will sleep for
#* @get /delay
delay <- function(max_s = 1, fail = 0, req, res) {
  max_s <- as.numeric(max_s)
  #s <- runif(1, max = max_s)
  s  <- max_s 
  print(paste0("Requested to wait for ", s, " seconds ..."))
  Sys.sleep(s)
  print("Finished, ready to handle new request ...")

  list(msg = paste0("Slept for ", s, " seconds"))
}



#' Echo the parameter that was sent in
#' @param msg The message to echo back.
#' @get /echo
#' @post /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}