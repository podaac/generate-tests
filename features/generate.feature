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
        When Execute the uncompressor
        Then The downloaded files are moved to a new directory based on whether they are quicklook or refined
        When Execute the combiner
        Then The downloaded files are combined by date and time into NetCDF files
        When Execute the processor
        Then The final dataset files are created and moved to the output directory
        When Execute the reporter
        Then A report is written on the total number of files processed for the day
