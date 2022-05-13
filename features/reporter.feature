Feature: Reporter

    Reporter creates a report of all files that have been processed for a day. 
    An optional email of the report can be sent.

    Scenario Outline: Creates a report of processed files.
        Given A <dataset> and a <processing type>
            | dataset | processing type |
            | MODIS_A | QUICKLOOK       |
            | MODIS_A | REFINED         |
            | MODIS_T | QUICKLOOK       |
            | MODIS_T | REFINED         |
            | VIIRS   | QUICKLOOK       |
            | VIIRS   | REFINED         |
        When Execute the Reporter
        Then Input logs are searched to determine the number of files processed
        And A report on the number of files that has been processed is written
        And An email is sent if the email flag argument is present