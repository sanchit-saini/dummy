Foo = new_class("Foo",
                properties = list(
                    items = class_list
                ))

`$.dummy::Foo` <- function(x, name) {
    x@items[[name]]
}

`.DollarNames.dummy::Foo` <- function(x, pattern = "") {
    grep(pattern, names(x@items), value = TRUE, fixed = TRUE)
}
