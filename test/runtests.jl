using Clustering
using Test
using Random
using LinearAlgebra
using SparseArrays
using StableRNGs
using Statistics

tests = ["seeding",
         "kmeans",
         "kmedoids",
         "affprop",
         "dbscan",
         "hdbscan",
         "fuzzycmeans",
         "counts",
         "silhouette",
         "clustering_quality",
         "varinfo",
         "randindex",
         "hclust",
         "mcl",
         "vmeasure",
         "mutualinfo",
         "confusion"]

println("Runing tests:")
for t in tests
    fp = "$(t).jl"
    println("* $fp ...")
    include(fp)
end
