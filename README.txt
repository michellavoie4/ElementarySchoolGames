# Procedure to run the game 'Guess_What' in R. Questions are asked first and the player must guess the answer of each question. The questions are for now very easy; they are for elementary school students (pre-school or first grade), but questions are of course customizable in the main program.

# This code has been tested using R v.3.6.0 and Python v.3.7.1 as well as the associated R packages (beepr, reticulate and magick) and the Python module (os and gtts)

1) If you do not have R yet, download and install the latest versions of R at https://cran.rstudio.com/

2) If you do not have RStudio yet, download and install the latest version of RStudio at https://www.rstudio.com/products/rstudio/download/

3) If you do not have Python yet, download and install the latest version of Python 3 at https://www.python.org/downloads/

4) Install the 'os' and 'gtts' Python modules with the command 'pip install' in the terminal on MAC.

5) Install a free command line mp3 player. To do so, on MAC, Press Command+Space and type Terminal and press enter/return key. Then, run in the Terminal :
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
# and press enter/return key.
# If the screen prompts you to enter a password, please enter your Mac's user password to continue. When you type the password, it won't be displayed on screen, but the system would accept it. So just type your password and press ENTER/RETURN key. Then wait for the command to finish.
# Execute the following command in the terminal : brew install mpg321
# Done! You can now use mpg321.

6) Copy the GitHub repository using the "git clone" command in the terminal (Mac or Linux) or in git bash (Windows) or by downloading it from GitHub.

7) In RStudio, set the new directory called "Guess_What" as your R working directory.

8) Open the main program file (called "mainGuessWhat.R") and, at the start of this file, set the system path in which all your images are stored on your computer. This will allow randomly selecting pictures on your computer while you play the game.

9) Set the Python path at the start of the "mainGuessWhat.R" file following the instructions in the R file.

9) Run (i.e., source) the "mainGuessWhat.R" file in RStudio, which launch the game.

10) The main program uses 3 other R functions (guessWhatFunc.R, pkgTest.R, random_files.R) and 1 other Python file ("textToSpeech.py").

11) Note that the script "Guess_What.R" first check if the required R packages are already installed on your computer. If they are not, they will be automatically installed  using your default CRAN mirror. If you do not have a default CRAN mirror, R will ask you to select one.

12) Enjoy !
