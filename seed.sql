-- Seed data for Agave & Mesa

-- Insert a truck
INSERT INTO trucks (name, location_lat, location_lng, status)
VALUES ('El Toro Taco Truck', 34.0522, -118.2437, 'open');

-- Get the truck id (assuming it's the first one)
DO $$
DECLARE
    truck_id UUID;
BEGIN
    SELECT id INTO truck_id FROM trucks LIMIT 1;

    -- Insert menu items
    INSERT INTO menu_items (truck_id, name, description, price, category) VALUES
    (truck_id, 'Al Pastor Taco', 'Marinated pork with pineapple and cilantro', 3.50, 'Tacos'),
    (truck_id, 'Carne Asada Burrito', 'Grilled steak, rice, beans, and salsa', 9.00, 'Burritos'),
    (truck_id, 'Street Corn', 'Grilled corn with cotija cheese and lime', 4.50, 'Sides'),
    (truck_id, 'Horchata', 'Traditional rice milk drink', 3.00, 'Beverages');
END $$;
