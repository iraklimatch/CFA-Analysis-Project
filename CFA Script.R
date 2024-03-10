library(lavaan)
library(semTools)
library(psych)

describe(assign4)

#CFA model specification
HSmodel <- "HAL   =~ x2 + x5 + x15
            CPL   =~ x3 + x9 + x11 + x14 + x16
            EWL   =~ x7 + x8 + x10 +x13 + x17
            PWL   =~ x1 + x4 + x6 + x12"

# Model Estimation ----
fit1 <- cfa(model = HSmodel, data = assign4)

##Model Fit and Parameter Estimate Interpretation

#Summary of output, including fit indices 
#and standardized parameter estimates ("std.all" column)
summary(fit1, fit.measures=TRUE, standardized = TRUE, rsquare = TRUE)

# Looking at just the fit indices
fitMeasures(fit1)

##Paremeter Estimates
standardizedSolution(fit1, zstat = FALSE, pvalue = FALSE)


