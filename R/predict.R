library(tidyverse)
classify_penguin <- function(bill_length, flipper_length) {
  
  stopifnot(is_numeric(bill_length) && is_numeric(flipper_length))
  stopifnot(bill_length>0 && flipper_length>0)
  
  if (flipper_length>205) {
    return("Gentoo")
  } else {
    if (bill_length>45) {
      return("Chinstrap")
    } else {
      return("Adelle")
    }
  }
}
testthat::expect_equal(classify_penguin(40,210), "Gentoo")
testthat::expect_equal(classify_penguin(40,200), "Adelle")
testthat::expect_error(classify_penguin("zzz",10))
testthat::expect_error(classify_penguin(0,-5))