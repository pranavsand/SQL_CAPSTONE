CREATE TABLE User_Like (
    LikeID VARCHAR(255) PRIMARY KEY,
    Like_Date TIMESTAMP,
    PostID VARCHAR(255),
    UserID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);
