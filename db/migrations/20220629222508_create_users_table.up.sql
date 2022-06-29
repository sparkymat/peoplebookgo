CREATE TABLE users (
  id bigserial PRIMARY KEY,
  created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  deleted_at timestamp with time zone,
  email text not null UNIQUE,
  encrypted_password text not null
);
