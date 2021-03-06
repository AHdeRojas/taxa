% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxmap--docs.R
\name{arrange_obs}
\alias{arrange_obs}
\title{Sort user data in \code{\link[=taxmap]{taxmap()}} objects}
\arguments{
\item{obj}{An object of type \code{\link[=taxmap]{taxmap()}}.}

\item{data}{Dataset names, indexes, or a logical vector that indicates which datasets in
\code{obj$data} to sort If multiple datasets are sorted at once, then they must be the same
length.}

\item{...}{One or more expressions (e.g. column names) to sort on.}

\item{target}{DEPRECIATED. use "data" instead.}
}
\value{
An object of type \code{\link[=taxmap]{taxmap()}}
}
\description{
Sort rows of tables  or the elements of lists/vectors in the \code{obj$data} list
in \code{\link[=taxmap]{taxmap()}} objects. Any variable name that appears in \code{\link[=all_names]{all_names()}} can be
used as if it was a vector on its own. See \code{\link[dplyr:arrange]{dplyr::arrange()}} for the
inspiration for this function and more information. Calling the function
using the \code{obj$arrange_obs(...)} style edits "obj" in place, unlike most R
functions. However, calling the function using the \code{arrange_obs(obj, ...)}
imitates R's traditional copy-on-modify semantics, so "obj" would not be
changed; instead a changed version would be returned, like most R functions.
\preformatted{
obj$arrange_obs(data, ...)
arrange_obs(obj, data, ...)}
}
\examples{
# Sort in ascending order
arrange_obs(ex_taxmap, "info", n_legs)
arrange_obs(ex_taxmap, "foods", name)

# Sort in decending order
arrange_obs(ex_taxmap, "info", desc(n_legs))

# Sort multiple datasets at once
arrange_obs(ex_taxmap, c("info", "phylopic_ids", "foods"), n_legs)

}
\seealso{
Other taxmap manipulation functions: 
\code{\link{arrange_taxa}()},
\code{\link{filter_obs}()},
\code{\link{filter_taxa}()},
\code{\link{mutate_obs}()},
\code{\link{sample_frac_obs}()},
\code{\link{sample_frac_taxa}()},
\code{\link{sample_n_obs}()},
\code{\link{sample_n_taxa}()},
\code{\link{select_obs}()},
\code{\link{transmute_obs}()}
}
\concept{taxmap manipulation functions}
