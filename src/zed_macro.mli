(*
 * zed_macro.mli
 * -------------
 * Copyright : (c) 2011, Jeremie Dimino <jeremie@dimino.org>
 * Licence   : BSD3
 *
 * This file is a part of Zed, an editor engine.
 *)

(** Macro recorder *)

type 'a t
  (** Type of macro recorders. *)

val create : 'a list -> 'a t
  (** [create macro] create a new macro recorder, with initial
      contents [macro]. *)

val recording : 'a t -> bool React.signal
  (** Whether the recorder is recording a macro. *)

val get_recording : 'a t -> bool
  (** Returns the current state of the recorder. *)

val set_recording : 'a t -> bool -> unit
  (** Starts or stops the macro recorder. *)

val add : 'a t -> 'a -> unit
  (** [add recorder x] adds [x] to the recorder if it is recording a
      macro. *)

val contents : 'a t -> 'a list
  (** Returns the currently recorded macro. *)
