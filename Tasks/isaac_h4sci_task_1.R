set.seed(123)

assign <- function(students, groups) {
    groups_copy <- groups
    assigned_groups <- c()
    if (length(students) < 1) {
        stop("Number of students must be greater than zero!")
    }
    for (i in 1:length(students)) {
        if (length(groups_copy) == 0) {
            # Once we have used all the available groups,
            # we start again and reset the groups vector.
            groups_copy <- groups
        }
        group <- sample(groups_copy, size = 1)
        assigned_groups <- c(assigned_groups, group)
        # Remove the sampled group from the groups vector.
        groups_copy <- groups_copy[groups_copy != group]
    }
    return(assigned_groups)
}

students <- c("James", "Bob", "John", "Yoost", "Amy")

suits <- c("C", "S", "H", "D")
assigned_suits <- assign(students, suits)

numbers <- c(seq(1, 13))
assigned_numbers <- assign(students, numbers)

print(students)
print(assigned_suits)
print(assigned_numbers)
