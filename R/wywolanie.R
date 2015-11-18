library(tuneR)
library(signal)

rm(list = ls())

source("wave2mfcc.R")

m1 <- wave2mfcc("sound.wav")
