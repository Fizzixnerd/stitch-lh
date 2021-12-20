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
(define-fun smt_set_sng ((x Elt)) LSet (store ((as const LSet) false) x true))
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
(declare-fun Language.Stitch.LH.Type.$36$fEqTy () Int)
(declare-fun cast_as_int () Int)
(declare-fun GHC.Real.$36$fIntegralInteger () Int)
(declare-fun GHC.Real.rem () Int)
(declare-fun GHC.Real.$36$fOrdRatio () Int)
(declare-fun GHC.List.init () Int)
(declare-fun GHC.Ptr.Ptr () Int)
(declare-fun addrLen () Int)
(declare-fun lit$36$funArgTy$32$$61$$32$ () Str)
(declare-fun papp5 () Int)
(declare-fun GHC.List.iterate () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun GHC.Generics.K1 () Int)
(declare-fun GHC.Generics.Par1 () Int)
(declare-fun GHC.Classes.$61$$61$ () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.List.drop () Int)
(declare-fun Data.Foldable.length () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun GHC.List.replicate () Int)
(declare-fun GHC.List.zipWith () Int)
(declare-fun Data.Hashable.Class.$36$dmhash () Int)
(declare-fun GHC.Classes.$62$$61$ () Int)
(declare-fun GHC.IO.Handle.Types.FileHandle () Int)
(declare-fun Language.Stitch.LH.Util.maybeParens () Int)
(declare-fun GHC.Generics.M1 () Int)
(declare-fun GHC.Types.F$35$ () Int)
(declare-fun GHC.Real.$36$fFractionalRatio () Int)
(declare-fun GHC.Num.fromInteger () Int)
(declare-fun papp3 () Int)
(declare-fun GHC.List.span () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSText () Int)
(declare-fun GHC.Classes.$62$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Text () Int)
(declare-fun GHC.IO.Handle.Types.$36$WDuplexHandle () Int)
(declare-fun GHC.Types.False () Bool)
(declare-fun GHC.List.scanr1 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.text () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun GHC.Real.div () Int)
(declare-fun GHC.List.scanl () Int)
(declare-fun Control.Exception.Base.recSelError () Int)
(declare-fun GHC.Types.krep$36$$42$ () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun Language.Stitch.LH.Type.isFunTy () Int)
(declare-fun GHC.List.zip () Int)
(declare-fun GHC.Show.showCommaSpace () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearityM1 () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Fail () Int)
(declare-fun GHC.Generics.R1 () Int)
(declare-fun GHC.CString.unpackCString$35$ () Int)
(declare-fun GHC.Types.KindRepFun () Int)
(declare-fun lit$36$$39$TInt () Str)
(declare-fun GHC.Types.KindRepTYPE () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.C$58$Pretty () Int)
(declare-fun GHC.List.dropWhile () Int)
(declare-fun autolen () Int)
(declare-fun Data.Foldable.null () Int)
(declare-fun lit$36$$125$ () Str)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Real.$94$ () Int)
(declare-fun head () Int)
(declare-fun GHC.Real.mod () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WNest () Int)
(declare-fun Data.Hashable.Class.$36$WHashed () Int)
(declare-fun lit$36$$39$TFun () Str)
(declare-fun GHC.Types.$36$WKindRepTYPE () Int)
(declare-fun GHC.Real.divMod () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearityK1 () Int)
(declare-fun GHC.Show.showsPrec () Int)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun GHC.Show.$36$dmshowList () Int)
(declare-fun Language.Stitch.LH.Type.funArgTy () Int)
(declare-fun GHC.Classes.compare () Int)
(declare-fun papp2 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Italicize () Int)
(declare-fun GHC.Real.toInteger () Int)
(declare-fun GHC.Real.quotRem () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearity$58$$42$$58$ () Int)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun GHC.Generics.Prefix () Int)
(declare-fun GHC.List.reverse () Int)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun GHC.List.filter () Int)
(declare-fun fromJust () Int)
(declare-fun GHC.Types.KindRepTyConApp () Int)
(declare-fun GHC.List.cycle () Int)
(declare-fun lit$36$Int () Str)
(declare-fun GHC.List.$33$$33$ () Int)
(declare-fun Language.Stitch.LH.Type.TFun () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGSumarityM1 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$dmprettyList () Int)
(declare-fun GHC.List.tail () Int)
(declare-fun lit$36$Use$32$of$32$partial$32$record$32$field$32$selector () Str)
(declare-fun lit$36$$45$$62$ () Str)
(declare-fun papp7 () Int)
(declare-fun GHC.Classes.$47$$61$ () Int)
(declare-fun GHC.Generics.C$58$Generic () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Cat () Int)
(declare-fun GHC.List.break () Int)
(declare-fun GHC.Types.True () Bool)
(declare-fun lit$36$funArgTy () Str)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Underline () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SEmpty () Int)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun GHC.List.splitAt () Int)
(declare-fun GHC.Base.$43$$43$ () Int)
(declare-fun GHC.Show.$36$dmshow () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun Language.Stitch.LH.Type.$36$fGenericTy () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.hsep () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SText () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun GHC.Real.quot () Int)
(declare-fun GHC.Real.$47$ () Int)
(declare-fun GHC.Classes.$38$$38$ () Int)
(declare-fun GHC.Generics.$58$$42$$58$ () Int)
(declare-fun GHC.IO.Handle.Types.$36$WFileHandle () Int)
(declare-fun lit$36$Language.Stitch.LH.Type () Str)
(declare-fun GHC.Types.GT () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun GHC.Classes.$124$$124$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.RestoreFormat () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Union () Int)
(declare-fun lit$36$funResTy$32$$61$$32$ () Str)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SChar () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun GHC.List.last () Int)
(declare-fun GHC.Classes.$36$fOrdInt () Int)
(declare-fun Language.Stitch.LH.Util.topPrec () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.List.scanl1 () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun lit$36$TFun$32$$123$ () Str)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Char () Int)
(declare-fun GHC.Num.$45$ () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun GHC.Base.. () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun Data.Hashable.Class.$36$dmhashWithSalt () Int)
(declare-fun lit$36$TBool () Str)
(declare-fun lit$36$stitch$45$lh$45$1.0$45$2C8HKZl54Kg1kRbXrghMF8 () Str)
(declare-fun GHC.Types.KindRepTypeLitS () Int)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun lit$36$TInt () Str)
(declare-fun GHC.Generics.U1 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Color () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SSGR () Int)
(declare-fun GHC.Real.fromRational () Int)
(declare-fun isJust () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearity$58$$43$$58$ () Int)
(declare-fun GHC.List.takeWhile () Int)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Intensify () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SLine () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Empty () Int)
(declare-fun GHC.Types.KindRepVar () Int)
(declare-fun GHC.Types.KindRepTypeLitD () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearityU1 () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun GHC.List.take () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun Language.Stitch.LH.Type.TBool () Int)
(declare-fun GHC.Classes.$60$$61$ () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun GHC.Base.map () Int)
(declare-fun GHC.Show.C$58$Show () Int)
(declare-fun GHC.Base.$36$ () Int)
(declare-fun papp1 () Int)
(declare-fun GHC.Classes.max () Int)
(declare-fun GHC.Types.D$35$ () Int)
(declare-fun lit$36$$39$TBool () Str)
(declare-fun GHC.Classes.$60$ () Int)
(declare-fun tail () Int)
(declare-fun lit$36$Ty () Str)
(declare-fun cast_as () Int)
(declare-fun GHC.Types.TyCon () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun Language.Stitch.LH.Type.TInt () Int)
(declare-fun Language.Stitch.LH.Type.$36$fHashableTy () Int)
(declare-fun GHC.Num.$42$ () Int)
(declare-fun GHC.Classes.$36$dm$47$$61$ () Int)
(declare-fun Language.Stitch.LH.Type.$36$fShowTy () Int)
(declare-fun GHC.Types.W$35$ () Int)
(declare-fun GHC.Generics.Rec1 () Int)
(declare-fun GHC.Real.recip () Int)
(declare-fun Data.Hashable.Class.Hashed () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Nest () Int)
(declare-fun GHC.Generics.L1 () Int)
(declare-fun Language.Stitch.LH.Type.funResTy () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun lit$36$Bool () Str)
(declare-fun GHC.Types.EQ () Int)
(declare-fun GHC.Real.$36$fNumRatio () Int)
(declare-fun GHC.List.scanr () Int)
(declare-fun totalityError () Int)
(declare-fun GHC.Num.negate () Int)
(declare-fun Language.Stitch.LH.Type.$36$fPrettyTy () Int)
(declare-fun GHC.Real.fromIntegral () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun GHC.Generics.Comp1 () Int)
(declare-fun GHC.Classes.min () Int)
(declare-fun GHC.List.head () Int)
(declare-fun GHC.Types.$36$WKindRepVar () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SFail () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun GHC.Generics.Infix () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WText () Int)
(declare-fun lit$36$funResTy () Str)
(declare-fun GHC.Classes.C$58$Eq () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSLine () Int)
(declare-fun GHC.List.repeat () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.FlatAlt () Int)
(declare-fun GHC.Classes.not () Int)
(declare-fun GHC.Show.showString () Int)
(declare-fun GHC.Num.$43$ () Int)
(declare-fun Data.Tuple.fst () Int)
(declare-fun GHC.Types.KindRepApp () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Line () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGSumarity$58$$43$$58$ () Int)
(declare-fun Data.Hashable.Class.C$58$Hashable () Int)
(declare-fun GHC.Err.error () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun GHC.IO.Handle.Types.DuplexHandle () Int)
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

(assert (distinct lit$36$funResTy lit$36$Bool lit$36$Ty lit$36$$39$TBool lit$36$TInt lit$36$stitch$45$lh$45$1.0$45$2C8HKZl54Kg1kRbXrghMF8 lit$36$TBool lit$36$TFun$32$$123$ lit$36$funResTy$32$$61$$32$ lit$36$Language.Stitch.LH.Type lit$36$funArgTy lit$36$$45$$62$ lit$36$Use$32$of$32$partial$32$record$32$field$32$selector lit$36$Int lit$36$$39$TFun lit$36$$125$ lit$36$$39$TInt lit$36$funArgTy$32$$61$$32$))


(assert (distinct GHC.Types.True GHC.Types.False))



(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$funArgTy$32$$61$$32$) 11))
(assert (= (strLen lit$36$$39$TInt) 5))
(assert (= (strLen lit$36$$125$) 1))
(assert (= (strLen lit$36$$39$TFun) 5))
(assert (= (strLen lit$36$Int) 3))
(assert (= (strLen lit$36$Use$32$of$32$partial$32$record$32$field$32$selector) 36))
(assert (= (strLen lit$36$$45$$62$) 2))
(assert (= (strLen lit$36$funArgTy) 8))
(assert (= (strLen lit$36$Language.Stitch.LH.Type) 23))
(assert (= (strLen lit$36$funResTy$32$$61$$32$) 11))
(assert (= (strLen lit$36$TFun$32$$123$) 6))
(assert (= (strLen lit$36$TBool) 5))
(assert (= (strLen lit$36$stitch$45$lh$45$1.0$45$2C8HKZl54Kg1kRbXrghMF8) 36))
(assert (= (strLen lit$36$TInt) 4))
(assert (= (strLen lit$36$$39$TBool) 6))
(assert (= (strLen lit$36$Ty) 2))
(assert (= (strLen lit$36$Bool) 4))
(assert (= (strLen lit$36$funResTy) 8))
(exit)
