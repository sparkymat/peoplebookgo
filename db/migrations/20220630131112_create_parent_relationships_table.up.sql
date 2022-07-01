CREATE TYPE parent_relation_type AS ENUM ('regular', 'biological', 'adopted');

CREATE TABLE parent_relationships (
  id bigserial PRIMARY KEY,
  created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
  person_id bigint references people(id),
  partnership_id bigint references partnerships(id),
  parent_relation_type parent_relation_type DEFAULT 'regular'
);
