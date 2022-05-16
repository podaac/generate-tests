Feature: Purger

    Purger deletes files from the holding tank that are older than a certain 
    number of minutes and deletes downloaded file that are older than a certain
    number of days.

    Scenario Outline: Deletes holding tank and downloaded files.
        Given A <operation type> and a <time unit>
            | operation type | time unit |
            | download       | 7         |
            | holding        | 1440      |
            | holding        | 1440      |
        When Execute the Purger
        Then Files are deleted
        And A log is written that tracks the files that were deleted