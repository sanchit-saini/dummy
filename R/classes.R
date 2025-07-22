## S7 class
ResourceBase = new_class(
    "ResourceBase",
    properties = list(
        uri = class_character,
        filename = class_character,
        elements = class_list
    )
)

## S7 method
method(`[[`, ResourceBase) <- function(x, i) {
    x@elements[[i]]
}

## S4 classes
setClass(
    "Student",
    slots = c(
        name = "character",
        age = "numeric"
    )
)

Student <- function(name, age, id) {
    new("Student", name = name, age = age)
}

setClass(
    "StudentList",
    slots = c(
        students = "list"
    )
)

StudentList <- function(...) {
    students <- list(...)
    new("StudentList", students = students)
}

## S4 method
setMethod("[[", c("StudentList", "numeric"),
    function(x, i, j, ...) {
        x@students[[i]]
    }
)
