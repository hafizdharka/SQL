# Write your MySQL query statement below
SELECT machine_id, round(sum(if(activity_type='start', -1, 1)*timestamp)/count(distinct process_id),3) as processing_time
FROM Activity as a
GROUP BY machine_id
