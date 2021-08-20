# This function is used anywhere the basename of the infile is required.
# Get the basename of the 'nc' object if not NULL, otherwise of the infile.
# This also handles the case of infile/nc being from a URL to ensure the basename ends in ".nc"
get_basename <- function(infile, nc = NULL) {
  if (!is.null(nc)) {
    # Get the basename of the filename of the nc object
    b <- basename(nc$filename)
  } else b <- basename(infile)
  # If the filename is a URL it may not end in ".nc" e.g. it may include a query at the end
  # If so, this extracts the part of the basename before ".nc"
  if (!endsWith(b, ".nc")) b <- paste0(sub(".nc.*", "", b), ".nc")
  return(b)
}
