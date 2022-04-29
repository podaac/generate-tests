Feature: Combiner

    Combines downloaded files by date and time for a dataset and specific 
    processing type.

    Scenario Outline: Combines files for a dataset.
        Given A <dataset> and a <processing type>
            | dataset | processing type |
            | MODIS_A | QUICKLOOK       |
            | MODIS_A | REFINED         |
            | MODIS_T | QUICKLOOK       |
            | MODIS_T | REFINED         |
            | VIIRS   | QUICKLOOK       |
            | VIIRS   | REFINED         |
        When Execute the Combiner
        Then All of the files for that dataset and processing type are moved to a scratch directory
        And The files are combined by date and time into NetCDF files
        And The downloaded dataset files are deleted