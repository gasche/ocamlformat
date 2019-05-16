let _ = Some_module.Submodule.(a + b)

let _ = A.(a, b)

let _ =
  let open Some_module.Submodule in
  AAAAAAAAAAAAAAAAAAAAAAAAAAAA.(a + b)

let _ =
  let open Some_module.Submodule in
  let module A = MMMMMM in
  a + b + c

let _ =
  let open Some_module.Submodule in
  let exception A of int in
  a + b

let _ =
  let open Some_module.Submodule in
  [%except {| result |}]

let _ =
  let open Some_module.Submodule in
  [%except {| loooooooooooooooooooooooooong result |}]

let _ =
  let open Some_module.Submodule in
  let x = a + b in
  let y = f x in
  y

let () =
  ( (let open Term in
    term_result
      ( const Phases.phase1 $ arch $ hub_id $ build_dir $ logs_dir
      $ setup_logs ))
  , Term.info "phase1" ~doc ~sdocs:Manpage.s_common_options ~exits ~man )

let () =
  (let open Arg in
  let doc = "Output all." in
  value & flag & info ["all"] ~doc)
  $
  let open Arg in
  let doc = "Commit to git." in
  value & flag & info ["commit"; "c"] ~doc

let () =
  Arg.(
    let doc = "Output all." in
    value & flag & info ["all"] ~doc)
  $ Arg.(
      let doc = "Commit to git." in
      value & flag & info ["commit"; "c"] ~doc)

let () = X.(f y i)

let () = X.(i)

let () =
  let open X in
  f y i

let () =
  let open X in
  i

let () =
  let open! K in
  x y z

let x =
  let Cstruct.{buffer= bigstring; off= offset; len= length} =
    Cstruct.{toto= foooo}
  in
  fooooooooo

open A
open A.B

open A (B)

open struct
  type t
end

open (
  struct
      type t
    end :
    T )

open (
  struct
      type t
    end :
    sig
      type t
    end )

open (val x)

open (val x)

open [%extension]

open functor (A : T) -> T'

module type T = sig
  open A
  open A.B
  open A(B)
end