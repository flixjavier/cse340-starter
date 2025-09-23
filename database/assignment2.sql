-- Insert
INSERT INTO public.account (
  account_firstname,
  account_lastname,
  account_email,
  account_password
) VALUES (
  'Tony',
  'Stark',
  'tony@starkent.com',
  'Iam1ronM@n'
);

-- Update using primary key
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;

-- Delete using primary key
DELETE FROM public.account
WHERE account_id = 1;

-- Update with REPLACE
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Simple inner join
SELECT 
  i.inv_make, 
  i.inv_model, 
  c.classification_name
FROM 
  public.inventory i
INNER JOIN 
  public.classification c
ON 
  i.classification_id = c.classification_id
WHERE 
  c.classification_name = 'Sport';

-- Update with REPLACE on multiple columns
UPDATE public.inventory
SET 
  inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
  inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');