load_all()
f2_boot <- testme()
save(f2_boot, file = "./tests/testthat/boot_result.Rdata")

test()
covr::package_coverage()

utils::install.packages(repos = NULL,
                            ".",
                            type = "source",
                            INSTALL_opts = c("--example",
                                             "--install-tests",
                                             "--with-keep.source",
                                             "--no-multiarch"), quiet = FALSE)

library(covrtest)
library(testthat)
test_package("covrtest")
