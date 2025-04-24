SELECT * FROM support_data LIMIT 10;
DESCRIBE support_data;

SELECT * FROM support_data
WHERE category = 'Returns'
ORDER BY 'Issue_reported at' DESC;

SELECT agent_name, COUNT(*) AS tickets_handled
FROM support_data
GROUP BY agent_name
ORDER BY tickets_handled DESC;

SELECT * FROM support_data
WHERE agent_name = (
    SELECT agent_name
    FROM support_data
    GROUP BY agent_name
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

CREATE VIEW low_csat_tickets AS
SELECT * FROM support_data
WHERE 'CSAT score' < 3;
SELECT * FROM low_csat_tickets;

CREATE OR REPLACE VIEW agent_info AS
SELECT DISTINCT
  `Agent_name`    AS agent_name,
  `Supervisor`    AS supervisor,
  `Manager`       AS manager
FROM support_data;

SELECT
  s.`Unique id`,
  s.`Agent_name`,
  a.supervisor,
  a.manager,
  s.`CSAT Score`
FROM support_data AS s
INNER JOIN agent_info AS a
  ON s.`Agent_name` = a.agent_name;

SELECT
  s.`Unique id`,
  s.`Agent_name`,
  a.supervisor,
  a.manager,
  s.`CSAT Score`
FROM support_data AS s
LEFT JOIN agent_info AS a
  ON s.`Agent_name` = a.agent_name;

SELECT
  SUM( CAST(`Item_price` AS DECIMAL(10,2)) ) AS total_revenue
FROM support_data;

SELECT
  AVG(`CSAT Score`) AS avg_csat_score
FROM support_data;

CREATE INDEX idx_category ON support_data(`category`(255));
CREATE INDEX idx_agent_name ON support_data(`Agent_name`(255));


