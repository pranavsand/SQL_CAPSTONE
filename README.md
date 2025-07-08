SQL_Capstone Project_Instagram Case Study
ER Diagram:

Lets Create tables one by one:
Table: master_user
CREATE TABLE Master_User (
    UserID VARCHAR(255) PRIMARY KEY,
    Username VARCHAR(255),
    Email VARCHAR(255),
    Full_Name VARCHAR(255),
    Bio TEXT,
    Registration_Date TIMESTAMP
);

Table: user_like
CREATE TABLE User_Like (
    LikeID VARCHAR(255) PRIMARY KEY,
    Like_Date TIMESTAMP,
    PostID VARCHAR(255),
    UserID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);
Table: PostHashtag
CREATE TABLE PostHashtag (
    PostHashtagID VARCHAR(255) PRIMARY KEY,
    PostID VARCHAR(255),
    HashtagID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (HashtagID) REFERENCES Hashtag(HashtagID)
);
Table: User_Like
CREATE TABLE User_Like (
    LikeID VARCHAR(255) PRIMARY KEY,
    Like_Date TIMESTAMP,
    PostID VARCHAR(255),
    UserID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);
Table: Comment
CREATE TABLE Comment (
    CommentID VARCHAR(255) PRIMARY KEY,
    Text TEXT,
    Comment_Date TIMESTAMP,
    PostID VARCHAR(255),
    UserID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);
Table: Follower
CREATE TABLE Follower (
    FollowerID VARCHAR(255) PRIMARY KEY,
    Follow_Date TIMESTAMP,
    FollowingUserID VARCHAR(255),
    FollowerUserID VARCHAR(255),
    FOREIGN KEY (FollowingUserID) REFERENCES Master_User(UserID),
    FOREIGN KEY (FollowerUserID) REFERENCES Master_User(UserID)
);
Table: Hashtag
CREATE TABLE Hashtag (
    HashtagID VARCHAR(255) PRIMARY KEY,
    Tag VARCHAR(255)
);


Table: Post
CREATE TABLE Post (
    PostID VARCHAR(255) PRIMARY KEY,
    Caption TEXT,
    Image_URL VARCHAR(512),
    Location VARCHAR(255),
    Post_Date TIMESTAMP,
    UserID VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);

Now Insert the records to the tables created. For the project purpose, I will insert 15 records in each table.
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('48ce4068', 'user1', 'user1@example.com', 'User 1', 'Bio of user 1', '2025-06-20 09:44:13');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('473c9fa9', 'user2', 'user2@example.com', 'User 2', 'Bio of user 2', '2025-05-12 21:39:12');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('598fa8c3', 'user3', 'user3@example.com', 'User 3', 'Bio of user 3', '2024-12-25 09:58:52');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('d1e3d170', 'user4', 'user4@example.com', 'User 4', 'Bio of user 4', '2025-05-03 06:29:55');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('7e26cddb', 'user5', 'user5@example.com', 'User 5', 'Bio of user 5', '2025-05-18 05:09:17');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('58a8cbfc', 'user6', 'user6@example.com', 'User 6', 'Bio of user 6', '2024-10-16 18:52:47');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('eee5ff84', 'user7', 'user7@example.com', 'User 7', 'Bio of user 7', '2025-04-05 01:48:22');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('3556869a', 'user8', 'user8@example.com', 'User 8', 'Bio of user 8', '2025-04-20 00:13:50');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('e746f404', 'user9', 'user9@example.com', 'User 9', 'Bio of user 9', '2025-02-14 20:52:03');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('dba9a4ea', 'user10', 'user10@example.com', 'User 10', 'Bio of user 10', '2024-12-23 01:17:35');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('eeacbdec', 'user11', 'user11@example.com', 'User 11', 'Bio of user 11', '2024-11-19 23:35:26');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('c4782534', 'user12', 'user12@example.com', 'User 12', 'Bio of user 12', '2025-02-16 07:32:44');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('f87ea39d', 'user13', 'user13@example.com', 'User 13', 'Bio of user 13', '2025-03-16 07:53:09');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('f9c80b56', 'user14', 'user14@example.com', 'User 14', 'Bio of user 14', '2025-04-07 11:48:50');
INSERT INTO Master_User (UserID, Username, Email, Full_Name, Bio, Registration_Date) VALUES ('2e59d94a', 'user15', 'user15@example.com', 'User 15', 'Bio of user 15', '2025-04-16 11:27:20');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('bef16bb6', '2024-08-12 05:34:15', '3556869a', 'd1e3d170');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('5461915b', '2024-11-10 02:52:37', '2e59d94a', 'c4782534');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('76e2d53e', '2025-06-26 21:19:18', 'd1e3d170', 'eee5ff84');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('85c5657c', '2024-11-08 09:53:44', '598fa8c3', 'f87ea39d');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('c4d06723', '2025-06-14 17:40:29', '473c9fa9', '7e26cddb');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('40fb062c', '2024-12-09 06:44:30', 'f9c80b56', 'eeacbdec');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('bc149538', '2025-04-08 20:29:23', 'e746f404', 'eee5ff84');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('2d3d573d', '2024-09-02 05:39:29', 'dba9a4ea', 'f9c80b56');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('a54ac35c', '2024-09-06 19:47:05', '3556869a', '7e26cddb');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('64856765', '2024-08-14 20:17:25', '2e59d94a', '473c9fa9');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('df90f6f2', '2025-02-08 16:26:15', '48ce4068', '2e59d94a');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('88438b36', '2024-06-30 13:28:42', 'e746f404', '598fa8c3');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('f5d3c530', '2025-02-26 15:47:17', '598fa8c3', 'e746f404');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('5cff874a', '2024-07-09 16:44:00', 'dba9a4ea', '48ce4068');
INSERT INTO Follower (FollowerID, Follow_Date, FollowingUserID, FollowerUserID) VALUES ('edce9afc', '2025-03-13 12:39:36', 'd1e3d170', 'dba9a4ea');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('c3367de9', 'Caption 0', 'https://example.com/image0.jpg', 'Location 0', '2024-09-28 16:21:51', '598fa8c3');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('aed8f5c3', 'Caption 1', 'https://example.com/image1.jpg', 'Location 1', '2024-10-22 12:57:05', '2e59d94a');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('6480ad6d', 'Caption 2', 'https://example.com/image2.jpg', 'Location 2', '2024-08-03 08:24:03', '58a8cbfc');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('22fee220', 'Caption 3', 'https://example.com/image3.jpg', 'Location 3', '2024-11-07 15:11:47', 'eeacbdec');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('146d1eb3', 'Caption 4', 'https://example.com/image4.jpg', 'Location 4', '2024-10-24 13:08:12', '473c9fa9');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('d16f7f27', 'Caption 5', 'https://example.com/image5.jpg', 'Location 5', '2025-04-03 02:50:25', 'd1e3d170');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('1ad4589b', 'Caption 6', 'https://example.com/image6.jpg', 'Location 6', '2025-06-12 07:48:52', 'd1e3d170');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('73eff917', 'Caption 7', 'https://example.com/image7.jpg', 'Location 7', '2024-10-16 17:23:30', '7e26cddb');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('28f574db', 'Caption 8', 'https://example.com/image8.jpg', 'Location 8', '2024-09-18 16:27:20', '473c9fa9');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('3609488f', 'Caption 9', 'https://example.com/image9.jpg', 'Location 9', '2025-04-26 18:23:05', 'f9c80b56');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('5ddd6ec9', 'Caption 10', 'https://example.com/image10.jpg', 'Location 10', '2024-12-09 04:28:31', 'eee5ff84');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('45e55f11', 'Caption 11', 'https://example.com/image11.jpg', 'Location 11', '2024-07-14 10:45:58', 'f87ea39d');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('64f6c364', 'Caption 12', 'https://example.com/image12.jpg', 'Location 12', '2024-12-31 21:25:14', '598fa8c3');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('b116aad2', 'Caption 13', 'https://example.com/image13.jpg', 'Location 13', '2025-01-15 07:03:36', 'eeacbdec');
INSERT INTO Post (PostID, Caption, Image_URL, Location, Post_Date, UserID) VALUES ('f4f83117', 'Caption 14', 'https://example.com/image14.jpg', 'Location 14', '2025-03-15 02:46:14', 'f87ea39d');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('243146aa', '2025-04-04 05:23:56', '3609488f', 'c4782534');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('7cdaac5f', '2024-08-31 23:41:35', '3609488f', '598fa8c3');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('978aaae2', '2024-08-17 06:15:11', '28f574db', 'dba9a4ea');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('14b5095b', '2025-06-19 18:13:59', '1ad4589b', '3556869a');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('2fdcdcff', '2024-09-10 23:56:51', '22fee220', '3556869a');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('8baf2b47', '2025-04-03 05:30:01', '146d1eb3', 'eeacbdec');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('ba7705db', '2024-09-11 11:27:07', 'aed8f5c3', 'eee5ff84');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('699f1ddc', '2025-01-11 11:51:36', '45e55f11', 'e746f404');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('58156717', '2024-12-01 12:20:02', 'f4f83117', 'eeacbdec');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('5d5a6d7c', '2024-09-24 14:41:12', '5ddd6ec9', '2e59d94a');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('4f7284f3', '2025-04-16 07:43:36', 'f4f83117', '7e26cddb');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('c1ca84a3', '2024-09-14 13:34:35', 'b116aad2', '598fa8c3');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('f3bf7b9e', '2025-04-12 21:52:07', '1ad4589b', '58a8cbfc');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('ea21ee7d', '2025-01-07 00:25:08', 'c3367de9', '473c9fa9');
INSERT INTO user_Like (LikeID, Like_Date, PostID, UserID) VALUES ('178bc4ee', '2024-07-30 21:21:37', 'd16f7f27', '473c9fa9');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('991199d4', 'This is comment 0', '2025-02-01 15:25:34', 'c3367de9', '598fa8c3');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('2e508bb1', 'This is comment 1', '2024-08-29 08:08:34', '45e55f11', '2e59d94a');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('573b255a', 'This is comment 2', '2025-04-13 20:51:52', 'f4f83117', '48ce4068');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('e8ef5c62', 'This is comment 3', '2025-03-13 08:33:49', '146d1eb3', 'f9c80b56');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('80047330', 'This is comment 4', '2025-03-07 23:17:28', 'aed8f5c3', '7e26cddb');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('ac8b0916', 'This is comment 5', '2024-08-18 07:38:18', '146d1eb3', '48ce4068');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('900631b9', 'This is comment 6', '2025-02-06 12:13:14', '3609488f', 'd1e3d170');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('29ca113e', 'This is comment 7', '2025-03-12 01:41:45', '1ad4589b', '2e59d94a');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('5edccdec', 'This is comment 8', '2025-06-20 16:58:22', 'b116aad2', 'e746f404');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('bb1cae7c', 'This is comment 9', '2025-06-27 06:55:17', '5ddd6ec9', 'c4782534');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('cbb90ae1', 'This is comment 10', '2024-09-27 19:37:07', '22fee220', 'e746f404');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('d7e6b6c8', 'This is comment 11', '2024-09-01 15:45:55', '28f574db', '48ce4068');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('61885c3d', 'This is comment 12', '2025-04-26 05:25:20', '22fee220', '58a8cbfc');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('4bc73493', 'This is comment 13', '2025-03-02 05:29:10', '6480ad6d', 'f87ea39d');
INSERT INTO Comment (CommentID, Text, Comment_Date, PostID, UserID) VALUES ('90e1b1e5', 'This is comment 14', '2024-08-14 10:01:07', '45e55f11', 'e746f404');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('34e4781a', '#Tag0');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('7f84857f', '#Tag1');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('8fde4d4f', '#Tag2');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('42b64ddf', '#Tag3');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('4de446fb', '#Tag4');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('27d7fcce', '#Tag5');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('a36ad255', '#Tag6');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('e44b55d2', '#Tag7');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('d0575260', '#Tag8');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('d28ae930', '#Tag9');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('f56db032', '#Tag10');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('41a4249b', '#Tag11');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('7669d8eb', '#Tag12');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('d68b1557', '#Tag13');
INSERT INTO Hashtag (HashtagID, Tag) VALUES ('3a9816e4', '#Tag14');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('f777dce1', '22fee220', 'a36ad255');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('a5aeda63', 'd16f7f27', 'f56db032');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('7d71d7ef', '3609488f', '4de446fb');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('12164347', 'c3367de9', 'd28ae930');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('8fb17140', '64f6c364', '7f84857f');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('5d16138c', '146d1eb3', '7f84857f');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('ed108ad5', 'f4f83117', '41a4249b');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('4c3c7549', 'aed8f5c3', 'd28ae930');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('067e64fc', '6480ad6d', 'd68b1557');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('ea075798', 'd16f7f27', '3a9816e4');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('0be7d505', 'd16f7f27', '3a9816e4');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('a57eef2a', '3609488f', 'f56db032');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('0ea61317', '73eff917', '34e4781a');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('a3bd984c', '22fee220', 'd28ae930');
INSERT INTO PostHashtag (PostHashtagID, PostID, HashtagID) VALUES ('9414a3b1', 'f4f83117', '7669d8eb');




Now the records are inserted. Let’s have a look.
#T1:
select * from master_user












#T2:
select * from user_like













#T3:
select * from posthashtag













#T4:
select * from comment













#T5:
select * from follower













#T6:
select * from hashtag













#T7:
select * from post













Testing the Co relation between the tables as per the er Diagram:
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


GIT LINK: https://github.com/pranavsand/SQL_CAPSTONE


