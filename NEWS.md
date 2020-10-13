# Changelog for cmsafvis package

## development

## 1.0.1

Published 2020-10-08

- Fix rare bug occuring when a required locale is not installed on the system
- Fix unit test failing on some systems on CRAN because of missing locale

## 1.0.0

Published 2020-09-25

- Split up old cmsaf package into cmsaf (containing only the toolbox) and cmsafops (containing plotting functionality)
- New operator set to monitor and analyze the climate (monitor_climate)
- Quicklook operator to create a visual preview of data obtained from the CM SAF (quicklook)
