library(ggplot2)
library(tidyr)

simuler_sir <- function(init = c("t" = 0, "S" = 45400, "I" = 2100, "R" = 2500), 
                        T = 250, 
                        n.steps = 10000) {
  ## Initialisation
  cur.state <- init
  dt = T / n.steps
  ## Mise à jour 
  update <- function(state) {
    t <- state[1]
    S <- state[2]
    I <- state[3]
    R <- state[4]
    dS <- ( -1e-5 * S * I) * dt
    dI <- ( 1e-5 * S * I - I / 14) * dt 
    dR <- (I / 14) * dt
    return(c("t" = t + dt, 
             "S" = S + dS, 
             "I" = I + dI, 
             "R" = R + dR))
  }
  ## Calculer les trajectoires
  trajectoires <- matrix(NA, nrow = n.steps+1, ncol = 4)
  colnames(trajectoires) <- c("T", "S", "I", "R")
  trajectoires[1, ] <- cur.state
  for (i in seq(1, n.steps)) {
    trajectoires[i+1, ] <- update(trajectoires[i, ])
  }
  return(trajectoires)
}

epi <- simuler_sir(init = c("t" = 0, "S" = 45400, "I" = 2100, "R" = 2500), 
                   T = 250, 
                   n.steps = 25000)

epi <- gather(as.data.frame(epi), key = Population, value = Effectif, -T)
ggplot(epi, aes(x = T, y = Effectif, color = Population, group = Population)) + geom_line(size = 3) + geom_point()
