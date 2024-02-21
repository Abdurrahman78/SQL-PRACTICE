CREATE INDEX "enrollment_info" ON "enrollments"
("course_id","student_id");

CREATE INDEX "course_info" ON "courses"
("deparment","semester","title");

CREATE INDEX "requirements_name" ON "requirements"
("name");

CREATE INDEX "student_name" ON "students"
("name");

CREATE INDEX "statsifies_info" ON "satisfies"
("course_id","requirement_id");

