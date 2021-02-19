test_that("locale is set to English", {
  set_time_locale("eng")
  expect_match(Sys.getlocale("LC_TIME"), "(English|en)")
})

test_that("locale is set to German", {
  set_time_locale("deu")
  expect_match(Sys.getlocale("LC_TIME"), "(German|de)")
})
