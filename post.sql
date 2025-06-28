CREATE TABLE Post (
    PostID VARCHAR(255) PRIMARY KEY,
    Caption TEXT,
    Image_URL VARCHAR(512),
    Location VARCHAR(255),
    Post_Date TIMESTAMP,
    UserID VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Master_User(UserID)
);
