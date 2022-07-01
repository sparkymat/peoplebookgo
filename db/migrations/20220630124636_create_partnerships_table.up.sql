CREATE TYPE date_resolution AS ENUM ('year', 'month', 'day');

CREATE TABLE partnerships (
  id bigserial PRIMARY KEY,
  created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  person1_id bigint references people(id),
  person2_id bigint references people(id),
  started_at date,
  ended_at date,
  started_at_resolution date_resolution DEFAULT 'day',
  ended_at_resolution date_resolution DEFAULT 'day'
);
