Feature: Downloader

    Downloads files referenced in a list created by the Download List Creator 
    from the OBPG.

    Scenario Outline: Downloads all files for a dataset.
        Given A <download list> and a <dataset>
            | download list                                                                                 | dataset |
            | modis_aqua_filelist.txt.daily_2022_081_date_2022_03_22                                        | MODIS_A |
            | modis_aqua_filelist.txt.daily_2022_081_date_2022_03_22_created_time_08_28_59_1649345339761    | MODIS_A |
            | modis_terra_filelist.txt.daily_2022_081_date_2022_03_22                                       | MODIS_T |
            | modis_terra_filelist.txt.daily_2022_081_date_2022_03_22_created_time_08_30_59_1649345459349   | MODIS_T |
            | viirs_filelist.txt.daily_2022_081_date_2022_03_22                                             | VIIRS |
        When Execute the Downloader
        Then All of the files in the list are downloaded