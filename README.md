library(dummy)
x <- Foo(list(a=1, b=2, c=3))
## show value if explicitly typed however it not suggesting names for `x`
x$a
## calling correct method
sloop::s3_dispatch(.DollarNames(x))
