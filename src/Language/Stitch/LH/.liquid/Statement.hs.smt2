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
(declare-fun GHC.Show.showParen () Int)
(declare-fun GHC.Base.id () Int)
(declare-fun cast_as_int () Int)
(declare-fun lq_tmp$36$x$35$$35$1468 () Int)
(declare-fun GHC.Real.rem () Int)
(declare-fun GHC.List.init () Int)
(declare-fun addrLen () Int)
(declare-fun GHC.Types.$36$tcChar () Int)
(declare-fun lq_tmp$36$x$35$$35$1569 () Int)
(declare-fun papp5 () Int)
(declare-fun GHC.List.iterate () Int)
(declare-fun fix$36$$36$cprettyList$35$$35$ahFx () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun GHC.Classes.$61$$61$ () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.List.drop () Int)
(declare-fun VV$35$$35$F$35$$35$23 () Int)
(declare-fun Data.Foldable.length () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun GHC.List.replicate () Int)
(declare-fun GHC.List.zipWith () Int)
(declare-fun Language.Stitch.LH.Op.Equals () Int)
(declare-fun GHC.Classes.$62$$61$ () Int)
(declare-fun GHC.IO.Handle.Types.FileHandle () Int)
(declare-fun GHC.Types.F$35$ () Int)
(declare-fun GHC.Types.$36$tc$91$$93$ () Int)
(declare-fun GHC.Num.fromInteger () Int)
(declare-fun papp3 () Int)
(declare-fun GHC.List.span () Int)
(declare-fun Language.Stitch.LH.Op.Greater () Int)
(declare-fun lit$36$NewGlobal$32$ () Str)
(declare-fun Language.Stitch.LH.Op.Plus () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSText () Int)
(declare-fun GHC.Classes.$62$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Text () Int)
(declare-fun GHC.IO.Handle.Types.$36$WDuplexHandle () Int)
(declare-fun GHC.Types.False () Bool)
(declare-fun GHC.List.scanr1 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.text () Int)
(declare-fun lq_tmp$36$x$35$$35$1535 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun GHC.Real.div () Int)
(declare-fun GHC.List.scanl () Int)
(declare-fun GHC.Types.krep$36$$42$ () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861555$35$$35$dhG3 () Int)
(declare-fun Language.Stitch.LH.Unchecked.UBoolE () Int)
(declare-fun Language.Stitch.LH.Type.isFunTy () Int)
(declare-fun GHC.List.zip () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun Language.Stitch.LH.Statement.NewGlobal () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Fail () Int)
(declare-fun Language.Stitch.LH.Unchecked.UGlobal () Int)
(declare-fun GHC.CString.unpackCString$35$ () Int)
(declare-fun GHC.Types.KindRepFun () Int)
(declare-fun lit$36$$39$NewGlobal () Str)
(declare-fun lq_anf$36$$35$$35$7205759403792861592$35$$35$dhGE () Int)
(declare-fun GHC.Types.KindRepTYPE () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.C$58$Pretty () Int)
(declare-fun GHC.List.dropWhile () Int)
(declare-fun lq_tmp$36$x$35$$35$1723 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861606$35$$35$dhGS () Int)
(declare-fun Language.Stitch.LH.Unchecked.UIntE () Int)
(declare-fun autolen () Int)
(declare-fun lit$36$Statement () Str)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Real.$94$ () Int)
(declare-fun head () Int)
(declare-fun GHC.Real.mod () Int)
(declare-fun Language.Stitch.LH.Unchecked.prettyExp () Int)
(declare-fun e$35$$35$ahEa () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WNest () Int)
(declare-fun Language.Stitch.LH.Unchecked.UCond () Int)
(declare-fun fix$36$$36$krep_ahFK () Int)
(declare-fun GHC.Types.$36$WKindRepTYPE () Int)
(declare-fun GHC.Real.divMod () Int)
(declare-fun GHC.Show.showsPrec () Int)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun GHC.Show.$36$dmshowList () Int)
(declare-fun Language.Stitch.LH.Type.funArgTy () Int)
(declare-fun GHC.Classes.compare () Int)
(declare-fun v$35$$35$ahE9 () Str)
(declare-fun lq_tmp$36$x$35$$35$1481 () Int)
(declare-fun papp2 () Int)
(declare-fun Language.Stitch.LH.Op.Divide () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Italicize () Int)
(declare-fun Language.Stitch.LH.Unchecked.ULet () Int)
(declare-fun GHC.Real.toInteger () Int)
(declare-fun GHC.Real.quotRem () Int)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun fix$36$$36$cpretty$35$$35$ahFp () Int)
(declare-fun Language.Stitch.LH.Statement.$36$fShowStatement () Int)
(declare-fun GHC.List.reverse () Int)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun Language.Stitch.LH.Op.Times () Int)
(declare-fun lq_tmp$36$x$35$$35$1549 () Int)
(declare-fun GHC.List.filter () Int)
(declare-fun lq_tmp$36$x$35$$35$1448 () Int)
(declare-fun fromJust () Int)
(declare-fun GHC.Types.KindRepTyConApp () Int)
(declare-fun GHC.List.cycle () Int)
(declare-fun GHC.List.$33$$33$ () Int)
(declare-fun GHC.Show.$36$fShowChar () Int)
(declare-fun Language.Stitch.LH.Type.TFun () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$dmprettyList () Int)
(declare-fun GHC.List.tail () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$60$$43$$62$ () Int)
(declare-fun papp7 () Int)
(declare-fun GHC.Classes.$47$$61$ () Int)
(declare-fun GHC.Generics.C$58$Generic () Int)
(declare-fun lit$36$Language.Stitch.LH.Statement () Str)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Cat () Int)
(declare-fun GHC.List.break () Int)
(declare-fun GHC.Types.True () Bool)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Underline () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SEmpty () Int)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun GHC.List.splitAt () Int)
(declare-fun Language.Stitch.LH.Unchecked.UFix () Int)
(declare-fun GHC.Base.$43$$43$ () Int)
(declare-fun GHC.Show.$36$dmshow () Int)
(declare-fun Language.Stitch.LH.Unchecked.$36$fPrettyScopedUExp () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.pretty () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SText () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun GHC.Real.quot () Int)
(declare-fun GHC.Real.$47$ () Int)
(declare-fun Language.Stitch.LH.Op.LessE () Int)
(declare-fun GHC.Classes.$38$$38$ () Int)
(declare-fun lit$36$BareExp$32$ () Str)
(declare-fun GHC.IO.Handle.Types.$36$WFileHandle () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun VV$35$$35$F$35$$35$20 () Int)
(declare-fun GHC.Classes.$124$$124$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.RestoreFormat () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Union () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SChar () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun GHC.List.last () Int)
(declare-fun GHC.Classes.$36$fOrdInt () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861590$35$$35$dhGC () Int)
(declare-fun Language.Stitch.LH.Op.Minus () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.List.scanl1 () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Char () Int)
(declare-fun GHC.Num.$45$ () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.char () Int)
(declare-fun GHC.Base.. () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun Language.Stitch.LH.Op.GreaterE () Int)
(declare-fun Language.Stitch.LH.Unchecked.UApp () Int)
(declare-fun lit$36$stitch$45$lh$45$1.0$45$7VT9AU5w8fLFLZLV8dTTsH () Str)
(declare-fun Language.Stitch.LH.Unchecked.numFreeVars () Int)
(declare-fun lqdc$35$$35$$36$select$35$$35$Language.Stitch.LH.Unchecked.ScopedUExp$35$$35$1 () Int)
(declare-fun lq_tmp$36$x$35$$35$1620 () Int)
(declare-fun GHC.Types.KindRepTypeLitS () Int)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Color () Int)
(declare-fun Language.Stitch.LH.Unchecked.$36$fShowUExp () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SSGR () Int)
(declare-fun GHC.Real.fromRational () Int)
(declare-fun isJust () Int)
(declare-fun GHC.List.takeWhile () Int)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Intensify () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SLine () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Empty () Int)
(declare-fun GHC.Types.KindRepVar () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861558$35$$35$dhG6 () Int)
(declare-fun GHC.Types.KindRepTypeLitD () Int)
(declare-fun Language.Stitch.LH.Unchecked.ScopedUExp () Int)
(declare-fun lq_tmp$36$x$35$$35$1627 () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun lq_karg$36$VV$35$$35$1269$35$$35$k_$35$$35$1270 () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun Language.Stitch.LH.Unchecked.n () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861611$35$$35$dhGX () Int)
(declare-fun GHC.List.take () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun Language.Stitch.LH.Type.TBool () Int)
(declare-fun ds_dhFO () Int)
(declare-fun GHC.Classes.$60$$61$ () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun GHC.Base.map () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861559$35$$35$dhG7 () Int)
(declare-fun GHC.Show.C$58$Show () Int)
(declare-fun GHC.Base.$36$ () Int)
(declare-fun papp1 () Int)
(declare-fun GHC.Classes.max () Int)
(declare-fun GHC.Show.showSpace () Int)
(declare-fun VV$35$$35$F$35$$35$17 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861561$35$$35$dhG9 () Int)
(declare-fun lq_tmp$36$x$35$$35$1583 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861600$35$$35$dhGM () Int)
(declare-fun GHC.Types.D$35$ () Int)
(declare-fun Language.Stitch.LH.Unchecked.UArith () Int)
(declare-fun GHC.Classes.$60$ () Int)
(declare-fun tail () Int)
(declare-fun fix$36$$36$krep_ahFH () Int)
(declare-fun Language.Stitch.LH.Unchecked.$36$tcUExp () Int)
(declare-fun lq_tmp$36$x$35$$35$1709 () Int)
(declare-fun GHC.Types.TyCon () Int)
(declare-fun GHC.Show.$36$fShow$91$$93$ () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun Language.Stitch.LH.Type.TInt () Int)
(declare-fun lq_tmp$36$x$35$$35$1350 () Int)
(declare-fun GHC.Num.$42$ () Int)
(declare-fun lq_tmp$36$x$35$$35$1423 () Int)
(declare-fun lq_tmp$36$x$35$$35$1603 () Int)
(declare-fun fix$36$$36$cshowsPrec$35$$35$ahEL () Int)
(declare-fun GHC.Real.recip () Int)
(declare-fun Language.Stitch.LH.Statement.BareExp () Int)
(declare-fun Language.Stitch.LH.Unchecked.UVar () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Nest () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861562$35$$35$dhGa () Int)
(declare-fun lit$36$$39$BareExp () Str)
(declare-fun Language.Stitch.LH.Type.funResTy () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun Language.Stitch.LH.Statement.$36$fPrettyStatement () Int)
(declare-fun lq_tmp$36$x$35$$35$1647 () Int)
(declare-fun GHC.List.scanr () Int)
(declare-fun GHC.Num.negate () Int)
(declare-fun GHC.Real.fromIntegral () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun Language.Stitch.LH.Op.Mod () Int)
(declare-fun GHC.Classes.min () Int)
(declare-fun GHC.List.head () Int)
(declare-fun VV$35$$35$F$35$$35$19 () Int)
(declare-fun GHC.Types.$36$WKindRepVar () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SFail () Int)
(declare-fun VV$35$$35$F$35$$35$22 () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun Language.Stitch.LH.Unchecked.ULam () Int)
(declare-fun Language.Stitch.LH.Op.arithType () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WText () Int)
(declare-fun Language.Stitch.LH.Op.Less () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861552$35$$35$dhG0 () Int)
(declare-fun GHC.Classes.C$58$Eq () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSLine () Int)
(declare-fun GHC.List.repeat () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861557$35$$35$dhG5 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.FlatAlt () Int)
(declare-fun GHC.Classes.not () Int)
(declare-fun GHC.Show.showString () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ () Int)
(declare-fun GHC.Num.$43$ () Int)
(declare-fun Data.Tuple.fst () Int)
(declare-fun GHC.Types.KindRepApp () Int)
(declare-fun fix$36$$36$cshowList$35$$35$ahFh () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Line () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861553$35$$35$dhG1 () Int)
(declare-fun Data.Hashable.Class.C$58$Hashable () Int)
(declare-fun GHC.Err.error () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792861556$35$$35$dhG4 () Int)
(declare-fun GHC.IO.Handle.Types.DuplexHandle () Int)
(declare-fun fix$36$$36$cshow$35$$35$ahFb () Int)
(declare-fun e$35$$35$ahE8 () Int)
(declare-fun Data.Tuple.snd () Int)
(declare-fun apply$35$$35$21 (Int (_ BitVec 32)) Bool)
(declare-fun apply$35$$35$16 (Int Str) Bool)
(declare-fun apply$35$$35$8 (Int Bool) Str)
(declare-fun apply$35$$35$19 (Int Str) (_ BitVec 32))
(declare-fun apply$35$$35$12 (Int Real) Real)
(declare-fun apply$35$$35$24 (Int (_ BitVec 32)) (_ BitVec 32))
(declare-fun apply$35$$35$0 (Int Int) Int)
(declare-fun apply$35$$35$7 (Int Bool) Real)
(declare-fun apply$35$$35$15 (Int Str) Int)
(declare-fun apply$35$$35$1 (Int Int) Bool)
(declare-fun apply$35$$35$13 (Int Real) Str)
(declare-fun apply$35$$35$14 (Int Real) (_ BitVec 32))
(declare-fun apply$35$$35$22 (Int (_ BitVec 32)) Real)
(declare-fun apply$35$$35$9 (Int Bool) (_ BitVec 32))
(declare-fun apply$35$$35$2 (Int Int) Real)
(declare-fun apply$35$$35$10 (Int Real) Int)
(declare-fun apply$35$$35$23 (Int (_ BitVec 32)) Str)
(declare-fun apply$35$$35$18 (Int Str) Str)
(declare-fun apply$35$$35$6 (Int Bool) Bool)
(declare-fun apply$35$$35$11 (Int Real) Bool)
(declare-fun apply$35$$35$3 (Int Int) Str)
(declare-fun apply$35$$35$20 (Int (_ BitVec 32)) Int)
(declare-fun apply$35$$35$4 (Int Int) (_ BitVec 32))
(declare-fun apply$35$$35$5 (Int Bool) Int)
(declare-fun apply$35$$35$17 (Int Str) Real)
(declare-fun coerce$35$$35$21 ((_ BitVec 32)) Bool)
(declare-fun coerce$35$$35$16 (Str) Bool)
(declare-fun coerce$35$$35$8 (Bool) Str)
(declare-fun coerce$35$$35$19 (Str) (_ BitVec 32))
(declare-fun coerce$35$$35$12 (Real) Real)
(declare-fun coerce$35$$35$24 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun coerce$35$$35$0 (Int) Int)
(declare-fun coerce$35$$35$7 (Bool) Real)
(declare-fun coerce$35$$35$15 (Str) Int)
(declare-fun coerce$35$$35$1 (Int) Bool)
(declare-fun coerce$35$$35$13 (Real) Str)
(declare-fun coerce$35$$35$14 (Real) (_ BitVec 32))
(declare-fun coerce$35$$35$22 ((_ BitVec 32)) Real)
(declare-fun coerce$35$$35$9 (Bool) (_ BitVec 32))
(declare-fun coerce$35$$35$2 (Int) Real)
(declare-fun coerce$35$$35$10 (Real) Int)
(declare-fun coerce$35$$35$23 ((_ BitVec 32)) Str)
(declare-fun coerce$35$$35$18 (Str) Str)
(declare-fun coerce$35$$35$6 (Bool) Bool)
(declare-fun coerce$35$$35$11 (Real) Bool)
(declare-fun coerce$35$$35$3 (Int) Str)
(declare-fun coerce$35$$35$20 ((_ BitVec 32)) Int)
(declare-fun coerce$35$$35$4 (Int) (_ BitVec 32))
(declare-fun coerce$35$$35$5 (Bool) Int)
(declare-fun coerce$35$$35$17 (Str) Real)
(declare-fun smt_lambda$35$$35$21 ((_ BitVec 32) Bool) Int)
(declare-fun smt_lambda$35$$35$16 (Str Bool) Int)
(declare-fun smt_lambda$35$$35$8 (Bool Str) Int)
(declare-fun smt_lambda$35$$35$19 (Str (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$12 (Real Real) Int)
(declare-fun smt_lambda$35$$35$24 ((_ BitVec 32) (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$0 (Int Int) Int)
(declare-fun smt_lambda$35$$35$7 (Bool Real) Int)
(declare-fun smt_lambda$35$$35$15 (Str Int) Int)
(declare-fun smt_lambda$35$$35$1 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$13 (Real Str) Int)
(declare-fun smt_lambda$35$$35$14 (Real (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$22 ((_ BitVec 32) Real) Int)
(declare-fun smt_lambda$35$$35$9 (Bool (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$2 (Int Real) Int)
(declare-fun smt_lambda$35$$35$10 (Real Int) Int)
(declare-fun smt_lambda$35$$35$23 ((_ BitVec 32) Str) Int)
(declare-fun smt_lambda$35$$35$18 (Str Str) Int)
(declare-fun smt_lambda$35$$35$6 (Bool Bool) Int)
(declare-fun smt_lambda$35$$35$11 (Real Bool) Int)
(declare-fun smt_lambda$35$$35$3 (Int Str) Int)
(declare-fun smt_lambda$35$$35$20 ((_ BitVec 32) Int) Int)
(declare-fun smt_lambda$35$$35$4 (Int (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$5 (Bool Int) Int)
(declare-fun smt_lambda$35$$35$17 (Str Real) Int)
(declare-fun lam_arg$35$$35$1$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$2$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$3$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$4$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$5$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$6$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$7$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$1$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$2$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$3$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$4$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$5$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$6$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$7$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$1$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$2$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$3$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$4$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$5$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$6$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$7$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$1$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$2$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$3$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$4$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$5$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$6$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$7$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$1$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$2$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$3$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$4$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$5$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$6$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$7$35$$35$5 () Bool)




(assert (distinct Text.PrettyPrint.ANSI.Leijen.Internal.SFail Text.PrettyPrint.ANSI.Leijen.Internal.SEmpty))


(assert (distinct Text.PrettyPrint.ANSI.Leijen.Internal.Line Text.PrettyPrint.ANSI.Leijen.Internal.Empty Text.PrettyPrint.ANSI.Leijen.Internal.Fail))
(assert (distinct Language.Stitch.LH.Type.TInt Language.Stitch.LH.Type.TBool))
(assert (distinct lit$36$$39$BareExp lit$36$stitch$45$lh$45$1.0$45$7VT9AU5w8fLFLZLV8dTTsH lit$36$BareExp$32$ lit$36$Language.Stitch.LH.Statement lit$36$Statement lit$36$$39$NewGlobal lit$36$NewGlobal$32$))


(assert (distinct GHC.Types.True GHC.Types.False))
(assert (distinct Language.Stitch.LH.Op.Less Language.Stitch.LH.Op.Mod Language.Stitch.LH.Op.GreaterE Language.Stitch.LH.Op.Minus Language.Stitch.LH.Op.LessE Language.Stitch.LH.Op.Times Language.Stitch.LH.Op.Divide Language.Stitch.LH.Op.Plus Language.Stitch.LH.Op.Greater Language.Stitch.LH.Op.Equals))
(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$NewGlobal$32$) 10))
(assert (= (strLen lit$36$$39$NewGlobal) 10))
(assert (= (strLen lit$36$Statement) 9))
(assert (= (strLen lit$36$Language.Stitch.LH.Statement) 28))
(assert (= (strLen lit$36$BareExp$32$) 8))
(assert (= (strLen lit$36$stitch$45$lh$45$1.0$45$7VT9AU5w8fLFLZLV8dTTsH) 36))
(assert (= (strLen lit$36$$39$BareExp) 8))
(push 1)
(assert (and (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Plus) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Minus) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Times) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Divide) Language.Stitch.LH.Type.TInt) (not GHC.Types.False) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Mod) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Less) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.LessE) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Greater) Language.Stitch.LH.Type.TBool) GHC.Types.True (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.GreaterE) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Equals) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TInt) false) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TBool) false)))
(push 1)
(assert (not (= 0 1)))
(check-sat)
; SMT Says: Sat
(pop 1)
(pop 1)
(push 1)
(assert (and (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Plus) Language.Stitch.LH.Type.TInt) (>= (apply$35$$35$15 (as len Int) v$35$$35$ahE9) 0) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Minus) Language.Stitch.LH.Type.TInt) (and (= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahEa) 0) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahEa) 0)) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Times) Language.Stitch.LH.Type.TInt) (and (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ (apply$35$$35$0 (apply$35$$35$15 Language.Stitch.LH.Statement.NewGlobal v$35$$35$ahE9) e$35$$35$ahEa))) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Divide) Language.Stitch.LH.Type.TInt) (not GHC.Types.False) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Mod) Language.Stitch.LH.Type.TInt) (= lq_anf$36$$35$$35$7205759403792861556$35$$35$dhG4 61) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Less) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.LessE) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861558$35$$35$dhG6 0) (and (= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$19) 0) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$19) 0) (= VV$35$$35$F$35$$35$19 e$35$$35$ahEa) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$19) 0)) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Greater) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861559$35$$35$dhG7 lq_anf$36$$35$$35$7205759403792861558$35$$35$dhG6) GHC.Types.True (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.GreaterE) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Equals) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TInt) false) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TBool) false)))
(push 1)
(assert (not (<= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$19) lq_anf$36$$35$$35$7205759403792861559$35$$35$dhG7)))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(push 1)
(assert (and (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Plus) Language.Stitch.LH.Type.TInt) (>= (apply$35$$35$15 (as len Int) v$35$$35$ahE9) 0) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Minus) Language.Stitch.LH.Type.TInt) (and (= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahEa) 0) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahEa) 0)) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Times) Language.Stitch.LH.Type.TInt) (and (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ (apply$35$$35$0 (apply$35$$35$15 Language.Stitch.LH.Statement.NewGlobal v$35$$35$ahE9) e$35$$35$ahEa))) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Divide) Language.Stitch.LH.Type.TInt) (not GHC.Types.False) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Mod) Language.Stitch.LH.Type.TInt) (= lq_anf$36$$35$$35$7205759403792861556$35$$35$dhG4 61) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Less) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.LessE) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861558$35$$35$dhG6 0) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Greater) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861559$35$$35$dhG7 lq_anf$36$$35$$35$7205759403792861558$35$$35$dhG6) (and (= VV$35$$35$F$35$$35$20 lq_anf$36$$35$$35$7205759403792861558$35$$35$dhG6) (= VV$35$$35$F$35$$35$20 lq_anf$36$$35$$35$7205759403792861559$35$$35$dhG7)) GHC.Types.True (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.GreaterE) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Equals) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TInt) false) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TBool) false)))
(push 1)
(assert (not (>= VV$35$$35$F$35$$35$20 0)))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(push 1)
(assert (and (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Plus) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Minus) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Times) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Divide) Language.Stitch.LH.Type.TInt) (not GHC.Types.False) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Mod) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Less) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.LessE) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Greater) Language.Stitch.LH.Type.TBool) GHC.Types.True (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.GreaterE) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (and (= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$22) 0) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$22) 0) (= VV$35$$35$F$35$$35$22 e$35$$35$ahE8) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$22) 0)) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Equals) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (and (= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahE8) 0) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahE8) 0)) (and (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ (apply$35$$35$0 Language.Stitch.LH.Statement.BareExp e$35$$35$ahE8))) (= lq_anf$36$$35$$35$7205759403792861552$35$$35$dhG0 0) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TInt) false) (= lq_anf$36$$35$$35$7205759403792861553$35$$35$dhG1 lq_anf$36$$35$$35$7205759403792861552$35$$35$dhG0) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TBool) false)))
(push 1)
(assert (not (<= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars VV$35$$35$F$35$$35$22) lq_anf$36$$35$$35$7205759403792861553$35$$35$dhG1)))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(push 1)
(assert (and (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Plus) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Minus) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Times) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Divide) Language.Stitch.LH.Type.TInt) (not GHC.Types.False) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Mod) Language.Stitch.LH.Type.TInt) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Less) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.LessE) Language.Stitch.LH.Type.TBool) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Greater) Language.Stitch.LH.Type.TBool) GHC.Types.True (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.GreaterE) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= (apply$35$$35$0 Language.Stitch.LH.Op.arithType Language.Stitch.LH.Op.Equals) Language.Stitch.LH.Type.TBool) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (and (= VV$35$$35$F$35$$35$23 lq_anf$36$$35$$35$7205759403792861552$35$$35$dhG0) (= VV$35$$35$F$35$$35$23 lq_anf$36$$35$$35$7205759403792861553$35$$35$dhG1)) (and (= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahE8) 0) (>= (apply$35$$35$0 Language.Stitch.LH.Unchecked.numFreeVars e$35$$35$ahE8) 0)) (and (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ ds_dhFO) (= lq_anf$36$$35$$35$7205759403792861551$35$$35$dhFZ (apply$35$$35$0 Language.Stitch.LH.Statement.BareExp e$35$$35$ahE8))) (= lq_anf$36$$35$$35$7205759403792861552$35$$35$dhG0 0) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TInt) false) (= lq_anf$36$$35$$35$7205759403792861553$35$$35$dhG1 lq_anf$36$$35$$35$7205759403792861552$35$$35$dhG0) (= (apply$35$$35$1 Language.Stitch.LH.Type.isFunTy Language.Stitch.LH.Type.TBool) false)))
(push 1)
(assert (not (>= VV$35$$35$F$35$$35$23 0)))
(check-sat)
; SMT Says: Unsat
(pop 1)
(pop 1)
(exit)
