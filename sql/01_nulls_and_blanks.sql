-- Normalize blank text values in the source tables.
DROP VIEW IF EXISTS _deliveries_clean;
CREATE VIEW _deliveries_clean AS
SELECT *,
	NULLIF(TRIM(bowler_type), '') AS bowler_type_clean
FROM deliveries;

DROP VIEW IF EXISTS _PLAYERS_clean;
CREATE VIEW
_PLAYERS_clean AS
SELECT *,
	NULLIF(TRIM(field_pos), '') AS field_pos_clean
FROM players;

DROP VIEW IF EXISTS V_matchespom;
CREATE VIEW v_matchespom AS
SELECT *,
	NULLIF(TRIM(player_of_match), '') AS pom_clean
FROM matches;