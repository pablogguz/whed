
#*******************************************************************************
#* This script: generates logo for package website
#*
#* Code by Pablo Garcia Guzman
#*******************************************************************************

packages_to_load <- c("ggplot2",
                      "dplyr",
                      "hexSticker",
                      "usethis")

package.check <- lapply(
  packages_to_load,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
    }
  }
)

lapply(packages_to_load, require, character=T)

# Script starts ----------------------------------------------------------------

# Create the hex sticker
sticker("inst/figures/dalle_logo.webp",
        white_around_sticker = T,
        package = "whed",
        p_size = 20,
        p_color = "#181C2D",
        s_x = 1,
        s_y = 0.75,
        s_width = 0.6,
        s_height = 0.6,
        h_fill = "#D9D6CE",
        h_color = "#181C2D",
        filename = "inst/figures/logo.png") %>% plot()

# Generate string to copy-paste into README
use_logo("inst/figures/logo.png", geometry = "480x556", retina = TRUE)
