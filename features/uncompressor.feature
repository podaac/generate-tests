Feature: Uncompressor

    Decompresses downloaded files and moves them to dataset-specific directories
    for either "QUICKLOOK" or "REFINED" processing types.

    Scenario Outline: Moves files to "QUICKLOOK" or "REFINED" directories.
        Given A <dataset>
            | dataset |
            | MODIS_A | 
            | MODIS_T | 
            | VIIRS   |
        When Execute the Uncompressor
        Then All of the files for that dataset will be moved to a new directory
        And Either "QUICKLOOK" or "REFINED" appended to the end of the directory's name