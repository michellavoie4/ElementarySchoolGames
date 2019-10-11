###########################################################################################################
# This is a game in which we must guess the answer to the questions
# 
# Main program that uses other functions
#
# Author: Michel Lavoie
###########################################################################################################

######################################################################################################
# Check directory and necessary paths. Install and import packages if needed.
#
# Make sure you are in the right directory
wd <- getwd()

# Set the path of the image folders on your computer if you want to see a random sample of images for each question of the game
# If you do not want to see images during the game, just remove from the main script this line and all other lines calling the function 'random_file'
path <- "/Users/mlavoie/Documents/images"

# Test if required packages are installed. If not, they will be installed from the mirror CRAN repository
pkgList <- c("beepr", "reticulate", "magick")
source(paste0(wd,"/pkgTest.R"))
pkgTest(pkgList)

# # Load necessary packages if needed
# When we load each required packageswith the "::" notation, we do not need the library() call
# i = 0
# for (i in 1:length(pkgList)) {
#   library(pkgList[i], character.only=T)
# }
######################################################################################################


######################################################################################################
# Make the .mp3 sound file using a Python 3 function called from R
# The .mp3 sound files are questions that the user must add

# To load Python modules in R using 'reticulate
# 1- type in the terminal "which python3", which gives the python path on your computer
# 2- copy paste the python path below and verify if the Python version printed in R (see sys$version) is the right one (as mentioned in the terminal)

reticulate::use_python(python = '/anaconda3/bin/python3', required = T)
sys <- reticulate::import("sys")
sys$version

reticulate::source_python("textToSpeech.py") 

# Here are the questions of the game that should be added. These are onlu some examples.
#contents <- c("Hi. What is the colour of the pjmask, owlet?", "One plus two?", "two plus two?", "How many legs do you have?", "What is the colour of the snow?", "What is the colour of your car?", "What is the colour of your hair?")
contents <- c("Hi. How are you?. I am fine. How old are you", "How many brothers do you have?", "Do you like pizza?", "In which city you live in?", "What is the colour of the 'Good Dinosaur'?")

if ( (file.exists(paste0(wd, "/text_1.mp3"))) == F ) {
  for ( i in (1:length(contents)) ) {
    textToSpeech(text=contents[i], language="en", slow=F)
    file.rename("text.mp3", paste0("text_", i, ".mp3"))
  }
}
########################################################################################


########################################################################################
# Loading game functions

# Load function that randomly select images
source(paste0(wd,"/random_files.R"))

# Define and load a function that can stop the game
stopfun <- function() {
  random_files(path)
  beepr::beep(sound=9)
  Sys.sleep(4)
  # rm(list=ls()) # If needed, you can refresh the global environment.
  stop("Time to stop the game, it' so sad")
}

# Load the main function of the game, which uses all other function and commands above.
source(paste0(wd, "/guessWhatFunc.R"))
guessWhat()
########################################################################################

