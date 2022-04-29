Feature: Generate

    Generate is a program of multiple components that download data to process
    and create three L2P datasets.

    Scenario: Download data, process the data, and output a new dataset.
        Given A <dataset> and a <date>
            | dataset   | date          |
            | MODIS_A   | '2022-03-22'  |
            | MODIS_T   | '2022-03-22'  |
            | VIIRS     | '2022-03-22'  |
        When Execute the download list creator
        Then A download list is created
        When Execute the downloader
        Then The files in the download list are downloaded
        When Execute the combiner
        Then The downloaded files are combined by date and time into NetCDF files
