--User and Post Corelation
SELECT u.UserID, u.Username, COUNT(p.PostID) AS TotalPosts
FROM master_user u
LEFT JOIN Post p ON u.UserID = p.UserID
GROUP BY u.UserID, u.Username;

--User and Follower Correlation
SELECT f.FollowingUserID, u.Username AS FollowingUsername, COUNT(f.FollowerUserID) AS TotalFollowers
FROM Follower f
JOIN master_user u ON f.FollowingUserID = u.UserID
GROUP BY f.FollowingUserID, u.Username;

--User and Comment Correlation
SELECT u.UserID, u.Username, COUNT(c.CommentID) AS TotalComments
FROM master_user u
LEFT JOIN Comment c ON u.UserID = c.UserID
GROUP BY u.UserID, u.Username;

--Post and Like Correlation
SELECT p.PostID, COUNT(l.LikeID) AS TotalLikes
FROM Post p
LEFT JOIN User_Like l ON p.PostID = l.PostID
GROUP BY p.PostID;

--Post and Comment Correlation
SELECT p.PostID, COUNT(c.CommentID) AS TotalComments
FROM Post p
LEFT JOIN Comment c ON p.PostID = c.PostID
GROUP BY p.PostID;

--Post and Hashtag Correlation
SELECT p.PostID, COUNT(ph.HashtagID) AS TotalHashtags
FROM Post p
LEFT JOIN PostHashtag ph ON p.PostID = ph.PostID
GROUP BY p.PostID;

--User and Like Correlation
SELECT u.UserID, u.Username, COUNT(l.LikeID) AS TotalLikesGiven
FROM master_user u
LEFT JOIN User_Like l ON u.UserID = l.UserID
GROUP BY u.UserID, u.Username;
