SELECT row_to_json(r, true)
FROM (
    SELECT
        stages.stageid,   
        stages.stagename, 
        json_agg(deals_row) AS deals
    FROM stages
    INNER JOIN (
        SELECT  
            deals.dealid,       
            deals.dealname,     
            json_agg(tasks_row) AS tasks
        FROM deals
        INNER JOIN (
			SELECT
				taskid,
				taskname
			FROM
				tasks
		) AS tasks_row(id,name) ON (tasks.dealid = deals.dealid) 
        GROUP BY deals.dealid 
    ) deals_row(id, name, people) ON (deals_row.stageid = stages.stageid)
    -- WHERE stage.pipelineid = id
    GROUP BY stages.stageid
) r(id, name, deals);