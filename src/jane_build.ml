open Core.Std
module J = Jenga_lib

let root_markers =
  [ ".git"
  ; ".hg"
  ]
  |> List.map ~f:J.Path.Rel.create

let () =
  J.Cli.main () ~run:(fun config ->
    let root_dir =
      J.Special_paths.find_ancestor_directory_containing
        ~one_of:root_markers
      |> ok_exn
    in
    J.Run.main' ~root_dir (Env Jenga_rules.Root.setup) config)
;;
