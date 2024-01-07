module BayesBase

using TinyHugeNumbers
using StatsAPI, StatsBase, DomainSets, Statistics, Distributions, Random

import StatsAPI: params

export params

import Statistics: mean, median, std, var, cov

export mean, median, std, var, cov

import StatsBase: mode, entropy, weights

export mode, entropy, weights

import Distributions:
    failprob,
    succprob,
    insupport,
    support,
    shape,
    scale,
    location,
    rate,
    dof,
    invcov,
    pdf,
    pdf!,
    cdf,
    logpdf,
    logdetcov,
    VariateForm,
    ValueSupport,
    Distribution,
    Univariate,
    Multivariate,
    Matrixvariate,
    variate_form,
    value_support,
    component,
    components,
    kurtosis,
    skewness

export failprob,
    succprob,
    insupport,
    support,
    shape,
    scale,
    location,
    rate,
    dof,
    invcov,
    pdf,
    pdf!,
    cdf,
    logpdf,
    logdetcov,
    VariateForm,
    ValueSupport,
    Distribution,
    Univariate,
    Multivariate,
    Matrixvariate,
    variate_form,
    value_support,
    component,
    components,
    kurtosis,
    skewness

import DomainSets: dimension, Domain

export dimension, Domain

import Base: precision, prod, prod!

export precision, prod, prod!

import Random: rand, rand!

export rand, rand!

include("statsfuns.jl")
include("promotion.jl")
include("prod.jl")

include("densities/pointmass.jl")
include("densities/function.jl")
include("densities/samplelist.jl")
include("densities/mixture.jl")
include("densities/factorizedjoint.jl")
include("densities/contingency.jl")

end
