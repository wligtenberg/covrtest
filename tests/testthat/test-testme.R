context("testme")

test_that("testme should produce an issue", {
  tmp <- testme()
  load(file = "boot_result.Rdata")
  print(f2_boot$statistic)
  print(tmp$statistic)
  expect_equal(
    tmp,
    f2_boot)
})
