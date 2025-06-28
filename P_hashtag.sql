CREATE TABLE PostHashtag (
    PostHashtagID VARCHAR(255) PRIMARY KEY,
    PostID VARCHAR(255),
    HashtagID VARCHAR(255),
    FOREIGN KEY (PostID) REFERENCES Post(PostID),
    FOREIGN KEY (HashtagID) REFERENCES Hashtag(HashtagID)
);
