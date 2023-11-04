-- CRIME SCENE REPORT
SELECT *
FROM crime_scene_report
WHERE city = "SQL City" AND date = "20180115" AND type = "murder";

-- FINDING WITNESS 1: MORTY SHAPIRO ID 14887 / WITNESS 2: ANNABEL MILLER ID 16371
SELECT *
FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC;

SELECT *
FROM person
WHERE address_street_name = "Franklin Ave" AND name LIKE "Annabel%";

-- FINDING INTERVIEWS: MORTY - GET FIT NOW BAG, MEMBERSHIP Nº 48Z, CAR PLATE INCLUDES H42W
-- ANNABEL - SAME GYM JANUARY 9th
SELECT *
FROM interview
WHERE person_id = "14887" OR person_id = "16371";

-- GETTING WHO HAS A GOLD MEMBERSHIP
SELECT *
FROM get_fit_now_member 
WHERE membership_status = "gold"
ORDER BY id;

-- CHECK IN
SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = "20180109";