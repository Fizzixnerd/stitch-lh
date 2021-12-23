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
(declare-fun lq_tmp$36$x$35$$35$865 () Int)
(declare-fun GHC.Base.id () Int)
(declare-fun cast_as_int () Int)
(declare-fun GHC.Real.$36$fIntegralInteger () Int)
(declare-fun GHC.Unicode.Control () Int)
(declare-fun GHC.Real.rem () Int)
(declare-fun GHC.List.init () Int)
(declare-fun lq_tmp$36$x$35$$35$946 () Int)
(declare-fun Language.Stitch.LH.Util.stripWhitespace () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.parens () Int)
(declare-fun addrLen () Int)
(declare-fun Data.OldList.dropWhileEnd () Int)
(declare-fun papp5 () Int)
(declare-fun lq_tmp$36$x$35$$35$748 () Int)
(declare-fun lq_tmp$36$x$35$$35$1376 () Int)
(declare-fun GHC.List.iterate () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun lq_tmp$36$x$35$$35$803 () Int)
(declare-fun x_Tuple65 () Int)
(declare-fun GHC.Classes.$61$$61$ () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.List.drop () Int)
(declare-fun Text.Parsec.Prim.Ok () Int)
(declare-fun x_Tuple55 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812096$35$$35$d4Ok () Int)
(declare-fun GHC.Unicode.Space () Int)
(declare-fun lq_tmp$36$x$35$$35$1067 () Int)
(declare-fun Data.Foldable.length () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun x_Tuple77 () Int)
(declare-fun GHC.List.replicate () Int)
(declare-fun GHC.List.zipWith () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812081$35$$35$d4O5 () Int)
(declare-fun GHC.Unicode.InitialQuote () Int)
(declare-fun GHC.Classes.$62$$61$ () Int)
(declare-fun GHC.IO.Handle.Types.FileHandle () Int)
(declare-fun Language.Stitch.LH.Util.maybeParens () Int)
(declare-fun lq_tmp$36$x$35$$35$1369 () Int)
(declare-fun GHC.Types.F$35$ () Int)
(declare-fun GHC.Num.fromInteger () Int)
(declare-fun papp3 () Int)
(declare-fun lq_tmp$36$x$35$$35$1370 () Int)
(declare-fun GHC.Unicode.ModifierSymbol () Int)
(declare-fun GHC.List.span () Int)
(declare-fun x_Tuple63 () Int)
(declare-fun GHC.Unicode.LowercaseLetter () Int)
(declare-fun x_Tuple41 () Int)
(declare-fun Language.Stitch.LH.Util.$36$fPrettyParseError () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSText () Int)
(declare-fun GHC.Classes.$62$ () Int)
(declare-fun Control.Monad.foldM () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Text () Int)
(declare-fun GHC.IO.Handle.Types.$36$WDuplexHandle () Int)
(declare-fun GHC.Types.False () Bool)
(declare-fun GHC.List.scanr1 () Int)
(declare-fun lq_tmp$36$x$35$$35$894 () Int)
(declare-fun lq_tmp$36$x$35$$35$1136 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.text () Int)
(declare-fun lq_tmp$36$x$35$$35$940 () Int)
(declare-fun Language.Stitch.LH.Util.foldl1M () Int)
(declare-fun lq_tmp$36$x$35$$35$1209 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun lq_tmp$36$x$35$$35$893 () Int)
(declare-fun lq_tmp$36$x$35$$35$1131 () Int)
(declare-fun GHC.Real.div () Int)
(declare-fun GHC.List.scanl () Int)
(declare-fun lq_tmp$36$x$35$$35$1333 () Int)
(declare-fun GHC.Unicode.FinalQuote () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun lq_tmp$36$x$35$$35$1377 () Int)
(declare-fun GHC.Unicode.PrivateUse () Int)
(declare-fun GHC.List.zip () Int)
(declare-fun x_Tuple64 () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$44$$44$$44$$44$$41$ () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Fail () Int)
(declare-fun fix$36$$36$cpretty$35$$35$a4Et () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812099$35$$35$d4On () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$44$$44$$41$ () Int)
(declare-fun GHC.Unicode.ParagraphSeparator () Int)
(declare-fun Text.Parsec.Error.ParseError () Int)
(declare-fun fix$36$$36$cprettyList$35$$35$a4EC () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.C$58$Pretty () Int)
(declare-fun lq_tmp$36$x$35$$35$1125 () Int)
(declare-fun GHC.List.dropWhile () Int)
(declare-fun f$35$$35$a4Ch () Int)
(declare-fun autolen () Int)
(declare-fun lq_tmp$36$x$35$$35$935 () Int)
(declare-fun lq_tmp$36$x$35$$35$1196 () Int)
(declare-fun x_Tuple52 () Int)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Real.$94$ () Int)
(declare-fun head () Int)
(declare-fun GHC.Real.mod () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WNest () Int)
(declare-fun lq_tmp$36$x$35$$35$1580 () Int)
(declare-fun GHC.Unicode.OtherPunctuation () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812101$35$$35$d4Op () Int)
(declare-fun GHC.Real.divMod () Int)
(declare-fun Language.Stitch.LH.Util.allPairs () Int)
(declare-fun GHC.Unicode.OpenPunctuation () Int)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$905 () Int)
(declare-fun Text.Parsec.Prim.Consumed () Int)
(declare-fun GHC.Classes.compare () Int)
(declare-fun lq_tmp$36$x$35$$35$963 () Int)
(declare-fun lq_tmp$36$x$35$$35$774 () Int)
(declare-fun lq_tmp$36$x$35$$35$1368 () Int)
(declare-fun GHC.Unicode.DecimalNumber () Int)
(declare-fun papp2 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Italicize () Int)
(declare-fun GHC.Real.toInteger () Int)
(declare-fun x_Tuple62 () Int)
(declare-fun GHC.Real.quotRem () Int)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun lq_tmp$36$x$35$$35$1514 () Int)
(declare-fun GHC.List.reverse () Int)
(declare-fun lq_tmp$36$x$35$$35$1176 () Int)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.displayS () Int)
(declare-fun GHC.Base.mzero () Int)
(declare-fun GHC.List.filter () Int)
(declare-fun fromJust () Int)
(declare-fun GHC.List.cycle () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812089$35$$35$d4Od () Int)
(declare-fun GHC.List.$33$$33$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$dmprettyList () Int)
(declare-fun GHC.List.tail () Int)
(declare-fun lq_tmp$36$x$35$$35$1686 () Int)
(declare-fun Text.Parsec.Prim.Empty () Int)
(declare-fun papp7 () Int)
(declare-fun lq_tmp$36$x$35$$35$991 () Int)
(declare-fun lq_tmp$36$x$35$$35$1055 () Int)
(declare-fun GHC.Classes.$47$$61$ () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$44$$44$$44$$41$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812093$35$$35$d4Oh () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Cat () Int)
(declare-fun Text.Parsec.Error.$36$fShowParseError () Int)
(declare-fun x_Tuple53 () Int)
(declare-fun GHC.Unicode.OtherLetter () Int)
(declare-fun GHC.List.break () Int)
(declare-fun GHC.Types.True () Bool)
(declare-fun Language.Stitch.LH.Util.render () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Underline () Int)
(declare-fun lq_tmp$36$x$35$$35$790 () Int)
(declare-fun Data.Functor.Identity.Identity () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SEmpty () Int)
(declare-fun lq_tmp$36$x$35$$35$1142 () Int)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun GHC.List.splitAt () Int)
(declare-fun lq_tmp$36$x$35$$35$1618 () Int)
(declare-fun GHC.Unicode.TitlecaseLetter () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$44$$41$ () Int)
(declare-fun GHC.Base.$43$$43$ () Int)
(declare-fun x_Tuple71 () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SText () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun lq_tmp$36$x$35$$35$1700 () Int)
(declare-fun GHC.Real.quot () Int)
(declare-fun GHC.Real.$47$ () Int)
(declare-fun fldList () Int)
(declare-fun GHC.Unicode.ConnectorPunctuation () Int)
(declare-fun GHC.Classes.$38$$38$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812086$35$$35$d4Oa () Int)
(declare-fun Text.Parsec.Prim.State () Int)
(declare-fun Text.Parsec.Prim.$36$WOk () Int)
(declare-fun GHC.IO.Handle.Types.$36$WFileHandle () Int)
(declare-fun Data.Foldable.$36$fFoldable$91$$93$ () Int)
(declare-fun GHC.Show.show () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun GHC.Classes.$124$$124$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.RestoreFormat () Int)
(declare-fun lq_tmp$36$x$35$$35$1147 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Union () Int)
(declare-fun GHC.Base.$36$p2MonadPlus () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SChar () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun GHC.List.last () Int)
(declare-fun x_Tuple74 () Int)
(declare-fun Language.Stitch.LH.Util.topPrec () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.List.scanl1 () Int)
(declare-fun GHC.Unicode.OtherNumber () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun lq_tmp$36$x$35$$35$769 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Char () Int)
(declare-fun lq_tmp$36$x$35$$35$1009 () Int)
(declare-fun fix$36$$36$dMonad_a4E1 () Int)
(declare-fun Text.Parsec.Prim.$36$WState () Int)
(declare-fun GHC.Num.$45$ () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun lq_tmp$36$x$35$$35$1375 () Int)
(declare-fun lq_tmp$36$x$35$$35$1687 () Int)
(declare-fun lq_tmp$36$x$35$$35$1054 () Int)
(declare-fun GHC.Base.. () Int)
(declare-fun x$35$$35$a4Ci () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun x_Tuple66 () Int)
(declare-fun x_Tuple44 () Int)
(declare-fun GHC.Unicode.CurrencySymbol () Int)
(declare-fun GHC.Unicode.ModifierLetter () Int)
(declare-fun lq_tmp$36$x$35$$35$1158 () Int)
(declare-fun x_Tuple72 () Int)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Color () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SSGR () Int)
(declare-fun GHC.Real.fromRational () Int)
(declare-fun isJust () Int)
(declare-fun lq_tmp$36$x$35$$35$1004 () Int)
(declare-fun lq_tmp$36$x$35$$35$1602 () Int)
(declare-fun GHC.Base.flip () Int)
(declare-fun lq_tmp$36$x$35$$35$1693 () Int)
(declare-fun ds_d4Nl () Bool)
(declare-fun lq_tmp$36$x$35$$35$1378 () Int)
(declare-fun GHC.List.takeWhile () Int)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Intensify () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SLine () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Empty () Int)
(declare-fun lq_tmp$36$x$35$$35$828 () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun lq_tmp$36$x$35$$35$983 () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$1218 () Int)
(declare-fun x_Tuple75 () Int)
(declare-fun Text.Parsec.Prim.$36$WEmpty () Int)
(declare-fun lq_tmp$36$x$35$$35$929 () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun GHC.List.take () Int)
(declare-fun GHC.Unicode.Surrogate () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun GHC.Classes.$60$$61$ () Int)
(declare-fun GHC.Unicode.MathSymbol () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun GHC.Unicode.isSpace () Int)
(declare-fun lq_tmp$36$x$35$$35$1366 () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun GHC.Base.map () Int)
(declare-fun GHC.Base.$36$ () Int)
(declare-fun papp1 () Int)
(declare-fun GHC.Classes.max () Int)
(declare-fun lit$36$Language.Stitch.LH.Util () Str)
(declare-fun GHC.Unicode.LineSeparator () Int)
(declare-fun x_Tuple61 () Int)
(declare-fun x_Tuple43 () Int)
(declare-fun lq_tmp$36$x$35$$35$861 () Int)
(declare-fun GHC.Types.D$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$1655 () Int)
(declare-fun lq_tmp$36$x$35$$35$1431 () Int)
(declare-fun GHC.Classes.$60$ () Int)
(declare-fun tail () Int)
(declare-fun lq_tmp$36$x$35$$35$1611 () Int)
(declare-fun GHC.Unicode.Format () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun Text.Parsec.Pos.SourcePos () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792812088$35$$35$d4Oc () Int)
(declare-fun GHC.Unicode.NonSpacingMark () Int)
(declare-fun GHC.Num.$42$ () Int)
(declare-fun lq_tmp$36$x$35$$35$1500 () Int)
(declare-fun lq_tmp$36$x$35$$35$1027 () Int)
(declare-fun lq_tmp$36$x$35$$35$848 () Int)
(declare-fun Language.Stitch.LH.Util.$36$$36$ () Int)
(declare-fun Text.Parsec.Prim.Error () Int)
(declare-fun GHC.Real.recip () Int)
(declare-fun fix$36$$36$dNum_a4Er () Int)
(declare-fun Text.Parsec.Error.$36$WParseError () Int)
(declare-fun x_Tuple51 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Nest () Int)
(declare-fun lq_tmp$36$x$35$$35$1519 () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun GHC.Unicode.UppercaseLetter () Int)
(declare-fun x_Tuple73 () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun GHC.Real.$36$fNumRatio () Int)
(declare-fun lq_tmp$36$x$35$$35$765 () Int)
(declare-fun fix$36$$36$dMonadPlus_a4DV () Int)
(declare-fun Text.Parsec.Pos.$36$WSourcePos () Int)
(declare-fun GHC.Unicode.SpacingCombiningMark () Int)
(declare-fun ds_d4M6 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.renderPretty () Int)
(declare-fun GHC.List.scanr () Int)
(declare-fun GHC.Unicode.LetterNumber () Int)
(declare-fun lq_tmp$36$x$35$$35$977 () Int)
(declare-fun GHC.Num.negate () Int)
(declare-fun lq_tmp$36$x$35$$35$1426 () Int)
(declare-fun lq_tmp$36$x$35$$35$1000 () Int)
(declare-fun lq_tmp$36$x$35$$35$1167 () Int)
(declare-fun GHC.Real.fromIntegral () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun lq_tmp$36$x$35$$35$1365 () Int)
(declare-fun GHC.Classes.min () Int)
(declare-fun GHC.List.head () Int)
(declare-fun x_Tuple54 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SFail () Int)
(declare-fun GHC.Unicode.NotAssigned () Int)
(declare-fun Language.Stitch.LH.Util.toSimpleDoc () Int)
(declare-fun GHC.Unicode.EnclosingMark () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun x_Tuple76 () Int)
(declare-fun lq_tmp$36$x$35$$35$1412 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WText () Int)
(declare-fun lq_tmp$36$x$35$$35$1153 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSLine () Int)
(declare-fun GHC.List.repeat () Int)
(declare-fun lq_tmp$36$x$35$$35$754 () Int)
(declare-fun GHC.Unicode.ClosePunctuation () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.FlatAlt () Int)
(declare-fun GHC.Classes.not () Int)
(declare-fun GHC.Unicode.OtherSymbol () Int)
(declare-fun GHC.Num.$43$ () Int)
(declare-fun Data.Tuple.fst () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Line () Int)
(declare-fun lq_tmp$36$x$35$$35$996 () Int)
(declare-fun lq_tmp$36$x$35$$35$1052 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$60$$36$$62$ () Int)
(declare-fun GHC.Err.error () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun GHC.IO.Handle.Types.DuplexHandle () Int)
(declare-fun x_Tuple42 () Int)
(declare-fun Data.Tuple.snd () Int)
(declare-fun GHC.Unicode.DashPunctuation () Int)
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
(assert (distinct lit$36$Language.Stitch.LH.Util lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF))
(assert (distinct GHC.Unicode.DashPunctuation GHC.Unicode.OtherSymbol GHC.Unicode.ClosePunctuation GHC.Unicode.EnclosingMark GHC.Unicode.NotAssigned GHC.Unicode.LetterNumber GHC.Unicode.SpacingCombiningMark GHC.Unicode.UppercaseLetter GHC.Unicode.NonSpacingMark GHC.Unicode.Format GHC.Unicode.LineSeparator GHC.Unicode.MathSymbol GHC.Unicode.Surrogate GHC.Unicode.ModifierLetter GHC.Unicode.CurrencySymbol GHC.Unicode.OtherNumber GHC.Unicode.ConnectorPunctuation GHC.Unicode.TitlecaseLetter GHC.Unicode.OtherLetter GHC.Unicode.DecimalNumber GHC.Unicode.OpenPunctuation GHC.Unicode.OtherPunctuation GHC.Unicode.ParagraphSeparator GHC.Unicode.PrivateUse GHC.Unicode.FinalQuote GHC.Unicode.LowercaseLetter GHC.Unicode.ModifierSymbol GHC.Unicode.InitialQuote GHC.Unicode.Space GHC.Unicode.Control))


(assert (distinct GHC.Types.True GHC.Types.False))

(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF) 36))
(assert (= (strLen lit$36$Language.Stitch.LH.Util) 23))
(exit)
