CREATE TABLE Example (
    Student_Name Text not null,
    Student_Id integer unique PRIMARY KEY,
    Class Text not null,
    Teacher Text not null,
    Marks Integer not null,
    Foreign Key (Class_id) REFERENCES Class(Class_id)
);
CREATE TABLE Class(
    Class_Name text not null,
    Class_id integer unique PRIMARY KEY,
    Teacher Text not null
);