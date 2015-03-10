# `etoolbox`: e-TeX tools for LaTeX

## About

The `etoolbox` package is a toolbox of programming facilities geared
primarily towards LaTeX class and package authors. It provides LaTeX
frontends to some of the new primitives provided by e-TeX as well as
some generic tools which are not related to e-TeX but match the
profile of this package. The package is work in progress. Note that
previous versions of this package were released under the name
`elatex`.

## License

Copyright (c) 2007-2010 Philipp Lehman, 2015 Joseph Wright.
Permission is granted to copy, distribute and/or modify this
software under the terms of the LaTeX Project Public License (LPPL),
version 1.3c or any later version. This software is provided 'as
is', without warranty of any kind, either expressed or implied,
including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose.

## Requirements

 - e-TeX
 - `etex.sty` (for LaTeX kernel releases prior to 2015)

## Automatic installation

TeX Live: The `etoolbox` package is included in TeX Live.
          Use the TeX Live package manager to install it.

MiKTeX:   The `etoolbox` package is included in MiKTeX.
          Use the MiKTeX package manager to install it.

#Semi-automatic installation

1. Download the file

   http://mirror.ctan.org/install/macros/latex/contrib/etoolbox.tds.zip

2. Unpack the archive in the root directory of the local TeX
   installation tree, for example

        /usr/local/share/texmf/
    
   or

        /usr/share/texmf-local/

   or

        C:\Local TeX Files\

3. Update the file hash tables (also known as the file name
   database).
   
   On teTeX and TeX Live systems, run `texhash` as root (`sudo
   texhash`). On MiKTeX, run `initexmf --update-fndb` in a command
   window or use the 'Refresh FNDB' button of the MiKTeX Options
   window.

## Manual installation

1. Copy the files `etoolbox.sty` and `etoolbox.def` to

        <TEXMFLOCAL>/tex/latex/etoolbox/

   where `<TEXMFLOCAL>` denotes the root of the local TeX installation
   tree, for example

        /usr/local/share/texmf/

   or

        /usr/share/texmf-local/

   or

        C:\Local TeX Files\

2. The file `etoolbox.pdf` goes to

        <TEXMFLOCAL>/doc/latex/etoolbox/

3. Update the file hash tables (also known as the file name
   database).

   On teTeX and TeX Live systems, run `texhash` as root (`sudo
   texhash`). On MiKTeX, run `initexmf --update-fndb` in a command
   window or use the 'Refresh FNDB' button of the MiKTeX Options
   window.
