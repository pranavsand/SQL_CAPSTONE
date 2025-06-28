CREATE TABLE Follower (
    FollowerID VARCHAR(255) PRIMARY KEY,
    Follow_Date TIMESTAMP,
    FollowingUserID VARCHAR(255),
    FollowerUserID VARCHAR(255),
    FOREIGN KEY (FollowingUserID) REFERENCES Master_User(UserID),
    FOREIGN KEY (FollowerUserID) REFERENCES Master_User(UserID)
);
