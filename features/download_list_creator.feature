Feature: Download List Creator

    Creates a list of downloads available from OBPG for a date range and a 
    specific dataset.

    Scenario Outline: Create a download list for a range of days.
        Given A <date range> and a <dataset>
        When Execute the download list creator command
        Then <number files> are created with a total number of <downloads>

        Examples: Date Ranges and Datasets
            | date range                | dataset   | number files  | downloads |
            | '2022-03-22 2022-03-23'   | MODIS_A   | 4             | 1143      |
            | '2022-03-22 2022-03-23'   | MODIS_T   | 4             | 1243      |
            | '2022-03-22 2022-03-23'   | VIIRS     | 2             | 761       |
        
    Scenario Outline: Create a download list for a dataset.
        Given A <dataset> and a specific <number> of days
        When Execute the download list creator command
        Then A list of files to download are created from today through the number of days

        Examples: Datasets
            | dataset | number |
            | MODIS_A | 1      |
            | MODIS_T | 1      |
            | VIIRS   | 1      |