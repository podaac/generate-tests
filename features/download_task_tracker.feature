Feature: Download Task Tracker

    The Download Task Tracker determines if any download processes have stalled
    by looking at the age of a file and creates a Significant Event if the age 
    is passed a certain threshold.

    Scenario Outline: Creates a Significant Event.
        Given A <input directory> and a <threshold>
            | input directory                               | threshold |
            | scratch/modis_aqua_level2_download_processes  | 120       |
            | scratch/modis_terra_level2_download_processes | 120       |
            | scratch/viirs_level2_download_processes       | 120       |
        When Execute the Download Task Tracker
        Then Input directory is crawled and a txt file is found
        And the age of the txt file is compared to the threshold
        And a Significant Event is created