(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *)
(*                                                                     *)
(*  Copyright 1996 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* $Id: printlambda.mli,v 1.1 2003/03/18 15:57:21 emmanuel Exp $ *)

open Lambda

open Format

val structured_constant: formatter -> structured_constant -> unit
val lambda: formatter -> lambda -> unit
val primitive: formatter -> primitive -> unit

