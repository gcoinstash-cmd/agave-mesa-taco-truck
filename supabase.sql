-- Agave & Mesa Storefront Database Schema

-- Trucks table
CREATE TABLE trucks (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  location_lat DOUBLE PRECISION,
  location_lng DOUBLE PRECISION,
  status TEXT DEFAULT 'closed',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Menu Items table
CREATE TABLE menu_items (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  truck_id UUID REFERENCES trucks(id),
  name TEXT NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  category TEXT,
  is_available BOOLEAN DEFAULT true,
  image_url TEXT
);

-- Orders table
CREATE TABLE orders (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  truck_id UUID REFERENCES trucks(id),
  customer_name TEXT,
  total_amount DECIMAL(10, 2) NOT NULL,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT NOW()
);
