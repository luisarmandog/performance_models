% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r2_nagelkerke.R
\name{r2_nagelkerke}
\alias{r2_nagelkerke}
\title{Nagelkerke's R2}
\usage{
r2_nagelkerke(model, ...)
}
\arguments{
\item{model}{A generalized linear model, including cumulative links resp.
multinomial models.}

\item{...}{Currently not used.}
}
\value{
A named vector with the R2 value.
}
\description{
Calculate Nagelkerke's pseudo-R2.
}
\examples{
model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
r2_nagelkerke(model)
}
\references{
Nagelkerke, N. J. (1991). A note on a general definition of the coefficient
of determination. Biometrika, 78(3), 691-692.
}
