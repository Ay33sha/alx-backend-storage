-- lists all bands with 'Glam rock' as their main styles
-- ranked by their longevity
-- columns names are band_name and lifespan (in years)
-- lifespan is computed using the formed and split attributes

SELECT `band_name`, (ifnull(`split`, EXTRACT(YEAR FROM CURRENT_DATE)) - `formed`) AS `lifespan`
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
