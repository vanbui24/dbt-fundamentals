select

    BIKEID as bike_id,
    BIRTH_YEAR,
    GENDER as sex,
    MEMBERSHIP_TYPE,
    USERTYPE as user_type,    
    STARTTIME as start_time, 
    START_STATION_ID,
    START_STATION_NAME,
    START_STATION_LATITUDE,
    START_STATION_LONGITUDE, 
    STOPTIME as end_time,
    END_STATION_ID,
    END_STATION_NAME,
    END_STATION_LATITUDE, 
    END_STATION_LONGITUDE, 
    TRIPDURATION as trip_duration

from citibike.public.trips