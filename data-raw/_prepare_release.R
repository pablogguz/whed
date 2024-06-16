

# Documentation ----
devtools::document()

# Load ----
devtools::load_all()

# Install ----
devtools::install()

# Checks ----
devtools::check()

# Add data-raw to .Rbuildignore ----
usethis::use_data_raw()

# Website ----
#usethis::use_pkgdown()
#usethis::use_mit_license()
pkgdown::build_site()
#usethis::use_pkgdown_github_pages()

# system("R CMD build --resave-data .")

# Increment package version ----
# usethis::use_version()
