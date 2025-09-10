UPDATE [dbo].[Men_Tshirt]
SET original_price = TRIM(REPLACE(CAST(original_price AS VARCHAR(MAX)), '?', ' '))
WHERE original_price LIKE '%?%';

DELETE FROM [dbo].[Men_Tshirt]
WHERE original_price IS NULL OR original_price = '';

-- Add other cleaning steps as required
