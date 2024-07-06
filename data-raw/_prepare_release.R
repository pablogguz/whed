

# Load ----
devtools::load_all()

# Documentation ----
devtools::document()

# Install ----
devtools::install()

# Checks ----
devtools::check()

# Website ----
#usethis::use_pkgdown()
#usethis::use_mit_license()
pkgdown::build_site()
#usethis::use_pkgdown_github_pages()

# system("R CMD build --resave-data .")

# Add data-raw to .Rbuildignore ----
# usethis::use_data_raw()

# Increment package version ----
usethis::use_version()

# Zip data ----
usethis::use_data(whed, overwrite = TRUE)
