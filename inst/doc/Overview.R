## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo = FALSE------------------------------------------------------

library(RBNZ)


## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  library(RBNZ)
#  
#  ## Not evaluated in this vignette.
#  b1 <- getSeries('B1')
#  
#  plot(b1$data$Date, b1$data$UK_pound_sterling, type = 'l')

## ---- echo = FALSE, eval = TRUE, tidy = FALSE---------------------------------
x <- RBNZ:::availableData()
for (ii in 1:nrow(x)){
  if (nchar(x[ii, 3]) > 50)
    x[ii, 3] <- paste0(substring(x[ii, 3], 1, 47), '...')
}
print(x, row.names = FALSE)

