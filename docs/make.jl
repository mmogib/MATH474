using MATH474
using Documenter

DocMeta.setdocmeta!(MATH474, :DocTestSetup, :(using MATH474); recursive=true)

makedocs(;
    modules=[MATH474],
    authors="Mohammed Alshahrani <mmogib@gmail.com> and contributors",
    sitename="MATH474.jl",
    format=Documenter.HTML(;
        canonical="https://mmogib.github.io/MATH474.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mmogib/MATH474.jl",
    devbranch="master",
)
