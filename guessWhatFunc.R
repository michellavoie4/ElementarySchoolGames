###################################################################################################
# Main function allowing to play the game
###################################################################################################

guessWhat <- function() {
  
  random_files(path)
  
  cat("-----------------------------------------------------------------------------------------------\n\n\n")
  cat("HELLO GUYS! Welcome to the 'Guess What' game.\n\n\n")
  cat("-----------------------------------------------------------------------------------------------\n")
  beepr::beep(sound=5)
  Sys.sleep(4)
  
  # Enter the answers to the questions above
  answers <- c(5, 3, "yes", "Quebec", "green")
  #answers <- c("red", 3, 4, 2, "white", "blue", "red")
  i = 0
  for (i in 1:length(contents)) {
    
    play(tune=paste0("text_", i, ".mp3"))
    guess = readline(prompt="Your guess is (type '911' to stop the game): ")
    
    while (guess != answers[i]) {
      if (guess == 911) {
        stopfun()
      } else  {
        play(tune=paste0("text_", i, ".mp3"))
        guess = readline(prompt="Your guess is (type '911' to stop the game): ")
        random_files(path)
      }
    }  
    
    if (guess == answers[i]) {
      cat("Congratulations, you are right.\n")
      beepr::beep(sound=8)
      Sys.sleep(7)
      random_files(path)
    }
  } # end for loop
  
  # Part asking if we want to play again
  play = ""
  while (play != "yes" & play != "no") {
    play <- readline(prompt="Do you want to play again? (yes or no) ")
    
    if (play == "yes") {
      guessWhat()
    } else if (play == "no") {
      beepr::beep(sound=9)
      Sys.sleep(3)
      rm(list=ls())
      stop("Time to stop the game. Thanks for playing.\n")
    }
  } # end while loop
  
}
