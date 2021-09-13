############################################################
#                                                          #
#              Create Snapshot from examples               #
#                                                          #
############################################################

library("magick")
examples_name = list.files("examples/")
examples_path = paste0("examples/",examples_name,"/",examples_name,".pdf")
for(i in 1:length(examples_name)){
  pages <- magick::image_read_pdf(examples_path[i],density = 150)
  image_write(pages[1], path = paste0("man/figures/",examples_name[i],".png"), format = "png")
  image_write(pages[1], path = paste0("examples/",examples_name[i],"/",examples_name[i],".png"), format = "png")
  print(i)
}


