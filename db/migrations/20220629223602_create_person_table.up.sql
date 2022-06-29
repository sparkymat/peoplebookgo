CREATE TABLE people (
  id bigserial PRIMARY KEY,
  created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  user_id bigint references users(id),
  name text not null,
  other_names text[] not null DEFAULT array[]::text[]
);
