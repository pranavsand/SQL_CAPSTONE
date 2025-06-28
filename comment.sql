CREATE TABLE Comment (
    CommentID VARCHAR(255) PRIMARY KEY,
    Text TEXT,
    Comment_Date TIMESTAMP,
    PostID VARCHAR(255),
    UserID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);
