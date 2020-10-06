#'cmsafvis: A 'cmsaf' package extension for visualization of CM SAF NetCDF data.
#'
#'The 'cmsafvis' plotting routines are designed to analyze climate files
#'by generating graphics and videos. The functions were designed
#'and tested for daily valued CM SAF NetCDF data. As interface to NetCDF 
#'data the \link[ncdf4:ncdf4-package]{ncdf4 package} is used.
#'
#'@section Absolute:
#'  \code{\link{absolute_map}}
#'
#'@section Anomaly:
#'  \code{\link{anomaly_map}}
#'
#'@section Climatology:
#'  \code{\link{climatology_map}}
#'
#'@section Fieldmean:
#'  \code{\link{fieldmean_plot}}
#'
#'@section Fieldmean and anomaly plots:
#'  \code{\link{fieldmean_and_anomaly_map}}
#'
#'@docType package
#'@name cmsafvis
#'
#'@author Maintainer: Steffen Kothe \email{Steffen.Kothe@dwd.de}
#'
#'  Contact: CM SAF Team \email{contact.cmsaf@dwd.de}
#'
#'@references \url{http://www.cmsaf.eu/R_toolbox}
#'
#'  Kothe, S.; Hollmann, R.; Pfeifroth, U.; Träger-Chatterjee, C.; Trentmann, J.
#'  The CM SAF R Toolbox—A Tool for the Easy Usage of Satellite-Based Climate Data
#'  in NetCDF Format. ISPRS Int. J. Geo-Inf. 2019, 8, 109.
#'  \url{https://doi.org/10.3390/ijgi8030109}
#'
#'@keywords datagen manip package spatial ts univar
NULL
