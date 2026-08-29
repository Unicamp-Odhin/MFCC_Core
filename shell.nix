{ pkgs ? import <nixpkgs> {} }:

let
  python = pkgs.python313;

  pythonPackages = python.withPackages (ps: with ps; [
    audioop-lts
    audioread
    babel
    backrefs
    certifi
    cffi
    charset-normalizer
    click
    colorama
    contourpy
    cycler
    decorator
    fonttools
    ghp-import
    idna
    jinja2
    joblib
    kiwisolver
    lazy-loader
    librosa
    llvmlite
    markdown
    markupsafe
    matplotlib
    mergedeep
    mkdocs
    mkdocs-get-deps
    mkdocs-material
    mkdocs-material-extensions
    msgpack
    numba
    numpy
    packaging
    paginate
    pathspec
    pillow
    platformdirs
    pooch
    pycparser
    pygments
    pymdown-extensions
    pyparsing
    python-dateutil
    pyyaml
    pyyaml-env-tag
    requests
    scikit-learn
    scipy
    six
    soundfile
    soxr
    standard-aifc
    standard-chunk
    standard-sunau
    threadpoolctl
    typing-extensions
    urllib3
    watchdog
  ]);

in
pkgs.mkShell {
  packages = with pkgs; [
    verilator
    zlib
    gcc
    gnumake
    iverilog
    gtkwave
    pythonPackages
  ];

  C_INCLUDE_PATH = "${pkgs.zlib}/include";
  LIBRARY_PATH = "${pkgs.zlib}/lib";
}
