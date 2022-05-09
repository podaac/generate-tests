Feature: Processor

    Processes combined files to create a dataset for MODIS Aqua, MODIS Terra and
    VIIRS.

    Scenario Outline: Process files for a dataset and processing type.
        Given A <dataset> and a <processing type>
            | dataset | processing type |
            | MODIS_A | QUICKLOOK       |
            | MODIS_A | REFINED         |
            | MODIS_T | QUICKLOOK       |
            | MODIS_T | REFINED         |
            | VIIRS   | QUICKLOOK       |
            | VIIRS   | REFINED         |
        When Execute the Processor
        Then An error log and processing log are created
        And The combine input files are located for the dataset and processing type
        And The input files are moved to the scratch area
        And The combined files are processed to create the final dataset files
        And The final dataset files are moved to the output directory