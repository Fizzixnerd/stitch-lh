(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)

(set-option :smt.mbqi false)

(define-sort Str () Int)
(declare-fun strLen (Str) Int)
(declare-fun subString (Str Int Int) Str)
(declare-fun concatString (Str Str) Str)
(define-sort Elt () Int)
(define-sort LSet () (Array Elt Bool))
(define-fun smt_set_emp () LSet ((as const LSet) false))
(define-fun smt_set_mem ((x Elt) (s LSet)) Bool (select s x))
(define-fun smt_set_add ((s LSet) (x Elt)) LSet (store s x true))
(define-fun smt_set_cup ((s1 LSet) (s2 LSet)) LSet ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 LSet) (s2 LSet)) LSet ((_ map and) s1 s2))
(define-fun smt_set_com ((s LSet)) LSet ((_ map not) s))
(define-fun smt_set_dif ((s1 LSet) (s2 LSet)) LSet (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 LSet) (s2 LSet)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(define-sort Map () (Array Elt Elt))
(define-fun smt_map_sel ((m Map) (k Elt)) Elt (select m k))
(define-fun smt_map_sto ((m Map) (k Elt) (v Elt)) Map (store m k v))
(define-fun smt_map_cup ((m1 Map) (m2 Map)) Map ((_ map (+ (Elt Elt) Elt)) m1 m2))
(define-fun smt_map_def ((v Elt)) Map ((as const (Map)) v))
(define-fun bool_to_int ((b Bool)) Int (ite b 1 0))
(define-fun Z3_OP_MUL ((x Int) (y Int)) Int (* x y))
(define-fun Z3_OP_DIV ((x Int) (y Int)) Int (div x y))
(declare-fun lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF () Str)
(declare-fun GHC.Base.id () Int)
(declare-fun cast_as_int () Int)
(declare-fun lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 () Int)
(declare-fun GHC.Real.rem () Int)
(declare-fun GHC.List.init () Int)
(declare-fun lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 () Int)
(declare-fun addrLen () Int)
(declare-fun papp5 () Int)
(declare-fun GHC.List.iterate () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun GHC.Classes.$61$$61$ () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.List.drop () Int)
(declare-fun VV$35$$35$F$35$$35$1 () Int)
(declare-fun Data.Foldable.length () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun GHC.List.replicate () Int)
(declare-fun GHC.List.zipWith () Int)
(declare-fun GHC.Classes.$62$$61$ () Int)
(declare-fun GHC.Num.fromInteger () Int)
(declare-fun papp3 () Int)
(declare-fun GHC.List.span () Int)
(declare-fun fix$36$$36$dOrd_a1xD () Int)
(declare-fun GHC.Classes.$62$ () Int)
(declare-fun GHC.Types.False () Bool)
(declare-fun GHC.List.scanr1 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun GHC.Real.div () Int)
(declare-fun GHC.List.scanl () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun GHC.List.zip () Int)
(declare-fun b$35$$35$a1x7 () Int)
(declare-fun a$35$$35$a1x4 () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun GHC.Num.$36$fNumInt () Int)
(declare-fun GHC.List.dropWhile () Int)
(declare-fun autolen () Int)
(declare-fun lq_tmp$36$x$35$$35$421 () Int)
(declare-fun VV$35$$35$F$35$$35$6 () Int)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Real.$94$ () Int)
(declare-fun head () Int)
(declare-fun GHC.Real.mod () Int)
(declare-fun lq_tmp$36$x$35$$35$499 () Int)
(declare-fun GHC.Real.divMod () Int)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun GHC.Classes.compare () Int)
(declare-fun papp2 () Int)
(declare-fun GHC.Real.toInteger () Int)
(declare-fun GHC.Real.quotRem () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7 () Int)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun GHC.List.reverse () Int)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun GHC.List.filter () Int)
(declare-fun fromJust () Int)
(declare-fun Language.Stitch.LH.Data.Nat.max () Int)
(declare-fun Language.Stitch.LH.Data.Nat.minus () Int)
(declare-fun GHC.List.cycle () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803278$35$$35$d2w6 () Int)
(declare-fun lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 () Int)
(declare-fun GHC.List.$33$$33$ () Int)
(declare-fun GHC.List.tail () Int)
(declare-fun papp7 () Int)
(declare-fun GHC.Classes.$47$$61$ () Int)
(declare-fun lq_tmp$36$x$35$$35$420 () Int)
(declare-fun GHC.List.break () Int)
(declare-fun GHC.Types.True () Bool)
(declare-fun lit$36$Language.Stitch.LH.Data.Nat () Str)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun GHC.List.splitAt () Int)
(declare-fun GHC.Base.$43$$43$ () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun GHC.Real.quot () Int)
(declare-fun GHC.Real.$47$ () Int)
(declare-fun lq_karg$36$VV$35$$35$424$35$$35$k_$35$$35$425 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 () Int)
(declare-fun GHC.Classes.$38$$38$ () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 () Int)
(declare-fun VV$35$$35$F$35$$35$2 () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun GHC.Classes.$124$$124$ () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun GHC.List.last () Int)
(declare-fun GHC.Classes.$36$fOrdInt () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.List.scanl1 () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9 () Int)
(declare-fun GHC.Num.$45$ () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun GHC.Base.. () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun b$35$$35$a1x5 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8 () Int)
(declare-fun a$35$$35$a1x6 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803277$35$$35$d2w5 () Str)
(declare-fun lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1 () Bool)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun Language.Stitch.LH.Data.Nat.$36$trModule () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803276$35$$35$d2w4 () Int)
(declare-fun GHC.Real.fromRational () Int)
(declare-fun isJust () Int)
(declare-fun VV$35$$35$F$35$$35$4 () Int)
(declare-fun GHC.List.takeWhile () Int)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun GHC.List.take () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun GHC.Classes.$60$$61$ () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun GHC.Base.map () Int)
(declare-fun VV$35$$35$F$35$$35$3 () Int)
(declare-fun GHC.Base.$36$ () Int)
(declare-fun papp1 () Int)
(declare-fun GHC.Classes.$60$ () Int)
(declare-fun tail () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun GHC.Num.$42$ () Int)
(declare-fun GHC.Real.recip () Int)
(declare-fun lq_tmp$36$x$35$$35$422 () Int)
(declare-fun VV$35$$35$F$35$$35$5 () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun GHC.List.scanr () Int)
(declare-fun GHC.Num.negate () Int)
(declare-fun GHC.Real.fromIntegral () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun GHC.Classes.min () Int)
(declare-fun GHC.List.head () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803275$35$$35$d2w3 () Str)
(declare-fun lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 () Bool)
(declare-fun x_Tuple32 () Int)
(declare-fun GHC.List.repeat () Int)
(declare-fun GHC.Classes.not () Int)
(declare-fun GHC.Num.$43$ () Int)
(declare-fun Data.Tuple.fst () Int)
(declare-fun GHC.Err.error () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun Data.Tuple.snd () Int)
(declare-fun apply$35$$35$13 (Int (_ BitVec 32)) Bool)
(declare-fun apply$35$$35$9 (Int Str) Bool)
(declare-fun apply$35$$35$6 (Int Bool) Str)
(declare-fun apply$35$$35$11 (Int Str) (_ BitVec 32))
(declare-fun apply$35$$35$15 (Int (_ BitVec 32)) (_ BitVec 32))
(declare-fun apply$35$$35$0 (Int Int) Int)
(declare-fun apply$35$$35$8 (Int Str) Int)
(declare-fun apply$35$$35$1 (Int Int) Bool)
(declare-fun apply$35$$35$7 (Int Bool) (_ BitVec 32))
(declare-fun apply$35$$35$14 (Int (_ BitVec 32)) Str)
(declare-fun apply$35$$35$10 (Int Str) Str)
(declare-fun apply$35$$35$5 (Int Bool) Bool)
(declare-fun apply$35$$35$2 (Int Int) Str)
(declare-fun apply$35$$35$12 (Int (_ BitVec 32)) Int)
(declare-fun apply$35$$35$3 (Int Int) (_ BitVec 32))
(declare-fun apply$35$$35$4 (Int Bool) Int)
(declare-fun coerce$35$$35$13 ((_ BitVec 32)) Bool)
(declare-fun coerce$35$$35$9 (Str) Bool)
(declare-fun coerce$35$$35$6 (Bool) Str)
(declare-fun coerce$35$$35$11 (Str) (_ BitVec 32))
(declare-fun coerce$35$$35$15 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun coerce$35$$35$0 (Int) Int)
(declare-fun coerce$35$$35$8 (Str) Int)
(declare-fun coerce$35$$35$1 (Int) Bool)
(declare-fun coerce$35$$35$7 (Bool) (_ BitVec 32))
(declare-fun coerce$35$$35$14 ((_ BitVec 32)) Str)
(declare-fun coerce$35$$35$10 (Str) Str)
(declare-fun coerce$35$$35$5 (Bool) Bool)
(declare-fun coerce$35$$35$2 (Int) Str)
(declare-fun coerce$35$$35$12 ((_ BitVec 32)) Int)
(declare-fun coerce$35$$35$3 (Int) (_ BitVec 32))
(declare-fun coerce$35$$35$4 (Bool) Int)
(declare-fun smt_lambda$35$$35$13 ((_ BitVec 32) Bool) Int)
(declare-fun smt_lambda$35$$35$9 (Str Bool) Int)
(declare-fun smt_lambda$35$$35$6 (Bool Str) Int)
(declare-fun smt_lambda$35$$35$11 (Str (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$15 ((_ BitVec 32) (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$0 (Int Int) Int)
(declare-fun smt_lambda$35$$35$8 (Str Int) Int)
(declare-fun smt_lambda$35$$35$1 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$7 (Bool (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$14 ((_ BitVec 32) Str) Int)
(declare-fun smt_lambda$35$$35$10 (Str Str) Int)
(declare-fun smt_lambda$35$$35$5 (Bool Bool) Int)
(declare-fun smt_lambda$35$$35$2 (Int Str) Int)
(declare-fun smt_lambda$35$$35$12 ((_ BitVec 32) Int) Int)
(declare-fun smt_lambda$35$$35$3 (Int (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$4 (Bool Int) Int)
(declare-fun lam_arg$35$$35$1$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$2$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$3$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$4$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$5$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$6$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$7$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$1$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$2$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$3$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$4$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$5$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$6$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$7$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$1$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$2$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$3$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$4$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$5$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$6$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$7$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$1$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$2$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$3$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$4$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$5$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$6$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$7$35$$35$4 () Bool)



(assert (distinct lit$36$Language.Stitch.LH.Data.Nat lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF))

(assert (distinct GHC.Types.True GHC.Types.False))
(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF) 36))
(assert (= (strLen lit$36$Language.Stitch.LH.Data.Nat) 27))
(push 1)
(assert (and (= lq_anf$36$$35$$35$7205759403792803275$35$$35$d2w3 lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF) (not GHC.Types.False) (= lq_anf$36$$35$$35$7205759403792803277$35$$35$d2w5 lit$36$Language.Stitch.LH.Data.Nat) GHC.Types.True))
(push 1)
(assert (not (= 0 1)))
(check-sat)
; SMT Says: Sat
(pop 1)
(pop 1)
(push 1)
(assert (and (or  (exists ((lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 Int) (lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 Int) (lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 Int) (lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 Int) (lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 Int) (lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 Int)) (and (and (= lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 VV$35$$35$F$35$$35$1) (= lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 a$35$$35$a1x6) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7) (= lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 b$35$$35$a1x7) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9)) (exists ((VV$35$$35$F$35$$35$3 Int)) (and (and (= VV$35$$35$F$35$$35$3 lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7) (= VV$35$$35$F$35$$35$3 lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8)) (and (= lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 VV$35$$35$F$35$$35$3) (= lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 a$35$$35$a1x6) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7) (= lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 b$35$$35$a1x7) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9)))))) (exists ((lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 Int) (lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 Int) (lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 Int) (lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 Int) (lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 Int) (lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 Int)) (and (and (= lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 VV$35$$35$F$35$$35$1) (= lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 a$35$$35$a1x6) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7) (= lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 b$35$$35$a1x7) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9)) (exists ((VV$35$$35$F$35$$35$2 Int)) (and (and (= VV$35$$35$F$35$$35$2 (- a$35$$35$a1x6 b$35$$35$a1x7)) (= VV$35$$35$F$35$$35$2 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9)) (and (= lq_karg$36$VV$35$$35$492$35$$35$k_$35$$35$493 VV$35$$35$F$35$$35$2) (= lq_karg$36$a$35$$35$a1x6$35$$35$k_$35$$35$493 a$35$$35$a1x6) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7) (= lq_karg$36$b$35$$35$a1x7$35$$35$k_$35$$35$493 b$35$$35$a1x7) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8) (= lq_karg$36$lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9$35$$35$k_$35$$35$493 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9))))))) (not GHC.Types.False) (= VV$35$$35$F$35$$35$1 (ite (> lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9) lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8 lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9)) GHC.Types.True (= lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7 0) (= lq_anf$36$$35$$35$7205759403792803280$35$$35$d2w8 lq_anf$36$$35$$35$7205759403792803279$35$$35$d2w7) (= lq_anf$36$$35$$35$7205759403792803281$35$$35$d2w9 (- a$35$$35$a1x6 b$35$$35$a1x7))))
(push 1)
(assert (not (= VV$35$$35$F$35$$35$1 (ite (> 0 (- a$35$$35$a1x6 b$35$$35$a1x7)) 0 (- a$35$$35$a1x6 b$35$$35$a1x7)))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(push 1)
(assert (and (not GHC.Types.False) GHC.Types.True (= VV$35$$35$F$35$$35$5 a$35$$35$a1x4) (= lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1 (> a$35$$35$a1x4 b$35$$35$a1x5)) (and (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1)) (and (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1)) (and (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1) lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2)))
(push 1)
(assert (not (= VV$35$$35$F$35$$35$5 (ite (> a$35$$35$a1x4 b$35$$35$a1x5) a$35$$35$a1x4 b$35$$35$a1x5))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(push 1)
(assert (and (not GHC.Types.False) GHC.Types.True (= lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= VV$35$$35$F$35$$35$6 b$35$$35$a1x5) (and (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1)) (and (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1)) (and (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 (> a$35$$35$a1x4 b$35$$35$a1x5)) (= lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2 lq_anf$36$$35$$35$7205759403792803273$35$$35$d2w1) (not lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2) (not lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2) (not lq_anf$36$$35$$35$7205759403792803274$35$$35$d2w2))))
(push 1)
(assert (not (= VV$35$$35$F$35$$35$6 (ite (> a$35$$35$a1x4 b$35$$35$a1x5) a$35$$35$a1x4 b$35$$35$a1x5))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(exit)
