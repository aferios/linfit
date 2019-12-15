#preamble
rm(list = ls())

#let's do some line fitting
#import the data
path.atp <- "C:/Users/alexf/Documents/My Docs/Projects/linfit/timedata.csv"
timeinfo.atp <- read.csv(path.atp, header = F)

#set some vars
names(timeinfo.atp) = c('n', 'bub', 'sel', 'mer', 'qik', 'pyt')
x = timeinfo.atp$n # number of elements in a list

#plot the data
plot(x,
     y = timeinfo.atp$bub, #bubble sort
     type = 'p', 
     col = 'blue',
     main = 'Time Data for Various Sort Algos in Python',
     xlab = 'Elements in a List', 
     ylab = 'Time in Seconds')
lines(x,
      y = timeinfo.atp$sel, #selection sort
      type = 'p',
      col = 'orange')
lines(x,
      y = timeinfo.atp$mer, #mergesort
      type = 'p',
      col = 'green')
lines(x,
      y = timeinfo.atp$qik, #quicksort
      type = 'p',
      col = 'red')
lines(x,
      y = timeinfo.atp$pyt, #python's built-in
      type = 'p')

#let's monkey this
with(timeinfo.atp, abline(lm(bub~n), col = 'red', lwd = 2))
with(timeinfo.atp, abline(lm(sel~n), col = 'red', lwd = 2))
with(timeinfo.atp, abline(lm(mer~n), col = 'red', lwd = 2))
with(timeinfo.atp, abline(lm(qik~n), col = 'red', lwd = 2))
with(timeinfo.atp, abline(lm(pyt~n), col = 'red', lwd = 2))

#these best fit lines look like booty