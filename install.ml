#use "topfind";;
#require "js-build-tools.oasis2opam_install";;

open Oasis2opam_install;;

generate ~package:"jane-build"
  [ oasis_exe "jane-build" ~dest:"jane-build"
  ]
