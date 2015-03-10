#!/usr/bin/env texlua

-- Build script for "etoolbox" files

-- Identify the bundle and module
bundle = ""
module = "etoolbox"

-- Install .def files as well as .sty
-- These are also the sources
installfiles = {"*.def", "*.sty"}
sourcefiles  = installfiles

-- Documentation is standalone
typesetfiles = {"*.tex"}

-- No packed source files
unpackfiles = {""}

-- Release a TDS-style zip
packtdszip  = true

-- No tests for this bundle
testfildir = ""

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
