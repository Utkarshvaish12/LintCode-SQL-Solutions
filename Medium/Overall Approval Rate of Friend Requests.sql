SELECT IFNULL(ROUND(
    COUNT(DISTINCT ra.requester_id,ra.accepter_id)/
    COUNT(DISTINCT fr.sender_id,fr.send_to_id),2),0.0) AS `accept_rate`
FROM FriendRequest AS fr, RequestAccept AS ra;