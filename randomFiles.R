######################################################################################
# This function randomly select an image in a given folder and then print the image
#
# INPUT : path : a string describing the folder path
#         pattern: the selected file extension. By default it selects wav files. For   
#                 other type of files replace wav and WAV by the desired extension      
# OUTPUT : an image is printed.
######################################################################################

random_files <- function(path, pattern = "jpg$|JPG$") {
  
  # Get file list with full path and file names
  files <- list.files(path, full.names = TRUE, pattern = pattern, recursive=TRUE) # list path + photo names
  
  image1 <- magick::image_read(sample(files, 1)) # Randomly sample a file
  image1 <- magick::image_scale(image1, "600") # Reduce image size so that it fits in RStudio
  image1 <- magick::image_rotate(image1, 0)
  
  return(plot(as.raster(image1))) # "plot(as.raster)" does not print details about picture size...
}
