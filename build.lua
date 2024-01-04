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
unpackfiles = {}

-- Release a TDS-style zip
packtdszip  = true

-- Only need one test run
checkengines = {"pdftex"}

-- Detail how to set the version automatically
tagfiles = {"*.def", "*.sty", "*.tex"}
function update_tag(file,content,tagname,tagdate)
  local tagdate = string.gsub(tagdate,"%-","/")
  if string.match(file,"%.sty") or string.match(file,"%.def") then
    return string.gsub(content,
      "\n  %[%d%d%d%d/%d%d/%d%d v%d%.%d%w?",
      "\n  [" .. tagdate .. " v" .. tagname)
  elseif string.match(file,"%.tex") then
    content = string.gsub(content,
      "\n  date=%{%d%d%d%d/%d%d/%d%d%}",
      "\n  date={" .. tagdate .. "}")
    return string.gsub(content,
      "\n  revision=%{v%d%.%d%w?%}",
      "\n  revision={v" .. tagname .. "}")
  end
  return content
end

