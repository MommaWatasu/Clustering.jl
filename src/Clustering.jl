module Clustering
    using Distances
    using NearestNeighbors
    using StatsBase

    using Printf
    using LinearAlgebra
    using SparseArrays
    using Statistics
    using Random

    import Base: show
    import StatsBase: counts

    export
    # reexport from StatsBase
    sample, sample!,

    # common
    ClusteringResult,
    nclusters, counts, wcounts, assignments,

    # seeding
    SeedingAlgorithm,
    RandSeedAlg, KmppAlg, KmCentralityAlg,
    copyseeds, copyseeds!,
    initseeds, initseeds!,
    initseeds_by_costs, initseeds_by_costs!,
    kmpp, kmpp_by_costs,

    # kmeans
    kmeans, kmeans!, KmeansResult,

    # kmedoids
    kmedoids, kmedoids!, KmedoidsResult,

    # affprop
    AffinityPropResult, affinityprop,

    # dbscan
    DbscanResult, DbscanCluster, dbscan,

    # hdbscan
    HdbscanResult, HdbscanCluster, hdbscan, isnoise,

    # fuzzy_cmeans
    fuzzy_cmeans, FuzzyCMeansResult,

    # counts
    counts, # reexport StatsBase.counts

    # silhouette
    silhouettes,

    # quality indices
    clustering_quality,

    # varinfo
    varinfo,

    # randindex
    randindex,

    # V-measure
    vmeasure,

    # mutualinfo
    mutualinfo,

    # hclust
    Hclust, hclust, cutree,

    # MCL
    mcl, MCLResult,

    # pair confusion matrix
    confusion


    ## source files

    include("utils.jl")
    include("seeding.jl")
    include("unionfind.jl")

    include("kmeans.jl")
    include("kmedoids.jl")
    include("affprop.jl")
    include("dbscan.jl")
    include("hdbscan.jl")
    include("mcl.jl")
    include("fuzzycmeans.jl")

    include("counts.jl")
    include("cluster_distances.jl")

    include("silhouette.jl")
    include("clustering_quality.jl")

    include("randindex.jl")
    include("varinfo.jl")
    include("vmeasure.jl")
    include("mutualinfo.jl")
    include("confusion.jl")
    include("hclust.jl")

    include("deprecate.jl")
end
