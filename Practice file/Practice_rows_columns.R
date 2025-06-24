# Rows and columns
Study_hours = c(18, 19, 20, 17, 16)
Subject_marks = c(79, 80, 82, 84, 90)

hours_marks = c(Study_hours, Subject_marks)
hours_marks
hours_marks_mat = matrix (hours_marks, byrow = FALSE, ncol = 2)
hours_marks_mat
colnames(hours_marks_mat) = c("study_hours", "subject_marks")
rownames(hours_marks_mat) = 1:5
hours_marks_mat

# Rows and columns in pigeons
Beak = c(2.2, 2.3, 2.1, 2.5, 2.8)
Tarsus = c(4.2, 4.3, 4.1, 4.5, 4.8)
Beak_Tarsus = c(Beak, Tarsus)
Beak_Tarsus
Beak_Tarsus_mat = matrix(Beak_Tarsus, byrow = FALSE, ncol =2)
Beak_Tarsus_mat
colnames(Beak_Tarsus_mat) = c("Beak", "Tarsus")
rownames(Beak_Tarsus_mat) = 1:5
Beak_Tarsus_mat
