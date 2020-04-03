DO $$ BEGIN ALTER TABLE audit_openings DROP COLUMN created_date; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_openings DROP COLUMN operation; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_openings DROP COLUMN orig_id; EXCEPTION WHEN OTHERS THEN END; $$;

DO $$ BEGIN ALTER TABLE audit_regular_hours	DROP COLUMN created_date; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_regular_hours DROP COLUMN operation; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_regular_hours DROP COLUMN orig_id; EXCEPTION WHEN OTHERS THEN END; $$;

DO $$ BEGIN ALTER TABLE audit_exceptions DROP COLUMN created_date; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_exceptions DROP COLUMN operation; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_exceptions DROP COLUMN orig_id; EXCEPTION WHEN OTHERS THEN END; $$;

DO $$ BEGIN ALTER TABLE audit_exceptional_hours DROP COLUMN created_date; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_exceptional_hours DROP COLUMN operation; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_exceptional_hours DROP COLUMN orig_id; EXCEPTION WHEN OTHERS THEN END; $$;

DO $$ BEGIN ALTER TABLE audit_actual_opening_hours DROP COLUMN created_date; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_actual_opening_hours DROP COLUMN operation; EXCEPTION WHEN OTHERS THEN END; $$;
DO $$ BEGIN ALTER TABLE audit_actual_opening_hours DROP COLUMN orig_id; EXCEPTION WHEN OTHERS THEN END; $$;

DO $$ BEGIN TRUNCATE audit_openings, audit_regular_hours, audit_exceptions, audit_exceptional_hours, audit_actual_opening_hours; EXCEPTION WHEN OTHERS THEN END; $$;