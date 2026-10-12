package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.functions.MultiplyOp;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.Complex;
import gnu.math.IntNum;
import gnu.text.Char;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.ports;
import kawa.lib.rnrs.unicode;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.append;

/* loaded from: classes2.dex */
public class printf extends ModuleBody {
    public static final printf $instance;
    static final IntNum Lit0;
    static final IntNum Lit1;
    static final PairWithPosition Lit10;
    static final Char Lit11;
    static final Char Lit12;
    static final Char Lit13;
    static final IntNum Lit14;
    static final IntNum Lit15;
    static final IntNum Lit16;
    static final IntNum Lit17;
    static final Char Lit18;
    static final Char Lit19;
    static final PairWithPosition Lit2;
    static final Char Lit20;
    static final Char Lit21;
    static final Char Lit22;
    static final Char Lit23;
    static final Char Lit24;
    static final Char Lit25;
    static final Char Lit26;
    static final Char Lit27;
    static final Char Lit28;
    static final Char Lit29;
    static final Char Lit3;
    static final Char Lit30;
    static final Char Lit31;
    static final Char Lit32;
    static final PairWithPosition Lit33;
    static final SimpleSymbol Lit34;
    static final Char Lit35;
    static final Char Lit36;
    static final Char Lit37;
    static final Char Lit38;
    static final Char Lit39;
    static final Char Lit4;
    static final Char Lit40;
    static final Char Lit41;
    static final Char Lit42;
    static final Char Lit43;
    static final Char Lit44;
    static final IntNum Lit45;
    static final Char Lit46;
    static final Char Lit47;
    static final IntNum Lit48;
    static final Char Lit49;
    static final Char Lit5;
    static final IntNum Lit50;
    static final Char Lit51;
    static final Char Lit52;
    static final Char Lit53;
    static final Char Lit54;
    static final Char Lit55;
    static final Char Lit56;
    static final Char Lit57;
    static final Char Lit58;
    static final IntNum Lit59;
    static final Char Lit6;
    static final IntNum Lit60;
    static final IntNum Lit61;
    static final FVector Lit62;
    static final PairWithPosition Lit63;
    static final SimpleSymbol Lit64;
    static final Char Lit65;
    static final Char Lit66;
    static final SimpleSymbol Lit67;
    static final SimpleSymbol Lit68;
    static final SimpleSymbol Lit69;
    static final IntNum Lit7;
    static final SimpleSymbol Lit70;
    static final SimpleSymbol Lit71;
    static final SimpleSymbol Lit72;
    static final Char Lit8;
    static final Char Lit9;
    public static final ModuleMethod fprintf;
    public static final ModuleMethod printf;
    public static final ModuleMethod sprintf;
    public static final boolean stdio$Clhex$Mnupper$Mncase$Qu = false;
    public static final ModuleMethod stdio$Cliprintf;
    public static final ModuleMethod stdio$Clparse$Mnfloat;
    public static final ModuleMethod stdio$Clround$Mnstring;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("fprintf");
        Lit72 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("stdio:iprintf");
        Lit71 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("stdio:round-string");
        Lit70 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("stdio:parse-float");
        Lit69 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("sprintf");
        Lit68 = simpleSymbol5;
        Lit67 = (SimpleSymbol) a.f("pad");
        Lit66 = Char.make(42);
        Lit65 = Char.make(63);
        Lit64 = (SimpleSymbol) a.f("format-real");
        LList lList = LList.Empty;
        Lit63 = PairWithPosition.make("i", lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1634315);
        Lit62 = FVector.make("y", "z", "a", "f", "p", "n", "u", "m", "", "k", "M", "G", "T", "P", "E", "Z", "Y");
        Lit61 = IntNum.make(3);
        Lit60 = IntNum.make(-10);
        Lit59 = IntNum.make(6);
        Lit58 = Char.make(75);
        Char charMake = Char.make(107);
        Lit57 = charMake;
        Lit56 = Char.make(71);
        Char charMake2 = Char.make(103);
        Lit55 = charMake2;
        Char charMake3 = Char.make(69);
        Lit54 = charMake3;
        Lit53 = Char.make(66);
        Char charMake4 = Char.make(98);
        Lit52 = charMake4;
        Lit51 = Char.make(88);
        Lit50 = IntNum.make(16);
        Char charMake5 = Char.make(120);
        Lit49 = charMake5;
        Lit48 = IntNum.make(8);
        Lit47 = Char.make(79);
        Char charMake6 = Char.make(111);
        Lit46 = charMake6;
        Lit45 = IntNum.make(10);
        Lit44 = Char.make(85);
        Char charMake7 = Char.make(117);
        Lit43 = charMake7;
        Lit42 = Char.make(73);
        Char charMake8 = Char.make(68);
        Lit41 = charMake8;
        Lit40 = Char.make(65);
        Char charMake9 = Char.make(97);
        Lit39 = charMake9;
        Char charMake10 = Char.make(83);
        Lit38 = charMake10;
        Char charMake11 = Char.make(115);
        Lit37 = charMake11;
        Lit36 = Char.make(67);
        Char charMake12 = Char.make(99);
        Lit35 = charMake12;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("printf");
        Lit34 = simpleSymbol6;
        Char charMake13 = Char.make(100);
        Lit12 = charMake13;
        Char charMake14 = Char.make(105);
        Lit3 = charMake14;
        Char charMake15 = Char.make(102);
        Lit25 = charMake15;
        Char charMake16 = Char.make(101);
        Lit13 = charMake16;
        Lit33 = PairWithPosition.make(charMake12, PairWithPosition.make(charMake11, PairWithPosition.make(charMake9, PairWithPosition.make(charMake13, PairWithPosition.make(charMake14, PairWithPosition.make(charMake7, PairWithPosition.make(charMake6, PairWithPosition.make(charMake5, PairWithPosition.make(charMake4, PairWithPosition.make(charMake15, PairWithPosition.make(charMake16, PairWithPosition.make(charMake2, PairWithPosition.make(charMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781780), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781776), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781772), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781768), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777704), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777700), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777696), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777692), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777688), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777684), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777680), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777676), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777671);
        Lit32 = Char.make(104);
        Char charMake17 = Char.make(76);
        Lit31 = charMake17;
        Char charMake18 = Char.make(108);
        Lit30 = charMake18;
        Lit29 = Char.make(32);
        Lit28 = Char.make(37);
        Lit27 = Char.make(12);
        Char charMake19 = Char.make(70);
        Lit26 = charMake19;
        Lit24 = Char.make(9);
        Lit23 = Char.make(84);
        Lit22 = Char.make(116);
        Lit21 = Char.make(10);
        Lit20 = Char.make(78);
        Lit19 = Char.make(110);
        Lit18 = Char.make(92);
        Lit17 = IntNum.make(-1);
        Lit16 = IntNum.make(9);
        Lit15 = IntNum.make(5);
        Lit14 = IntNum.make(2);
        Lit11 = Char.make(46);
        Lit10 = PairWithPosition.make(charMake16, PairWithPosition.make(charMake11, PairWithPosition.make(charMake15, PairWithPosition.make(charMake13, PairWithPosition.make(charMake18, PairWithPosition.make(charMake3, PairWithPosition.make(charMake10, PairWithPosition.make(charMake19, PairWithPosition.make(charMake8, PairWithPosition.make(charMake17, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266284), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266280), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266276), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266272), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266268), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266264), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266260), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266256), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266252), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266247);
        Lit9 = Char.make(48);
        Lit8 = Char.make(35);
        Lit7 = IntNum.make(1);
        Char charMake20 = Char.make(43);
        Lit6 = charMake20;
        Char charMake21 = Char.make(45);
        Lit5 = charMake21;
        Lit4 = Char.make(64);
        Lit2 = PairWithPosition.make(charMake20, PairWithPosition.make(charMake21, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 446503), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 446498);
        Lit1 = IntNum.make(0);
        Lit0 = IntNum.make(-15);
        printf printfVar = new printf();
        $instance = printfVar;
        stdio$Clparse$Mnfloat = new ModuleMethod(printfVar, 22, simpleSymbol4, 8194);
        stdio$Clround$Mnstring = new ModuleMethod(printfVar, 23, simpleSymbol3, 12291);
        stdio$Cliprintf = new ModuleMethod(printfVar, 24, simpleSymbol2, -4094);
        fprintf = new ModuleMethod(printfVar, 25, simpleSymbol, -4094);
        printf = new ModuleMethod(printfVar, 26, simpleSymbol6, -4095);
        sprintf = new ModuleMethod(printfVar, 27, simpleSymbol5, -4094);
        printfVar.run();
    }

    public printf() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        stdio$Clhex$Mnupper$Mncase$Qu = strings.isString$Eq("-F", numbers.number$To$String(Lit0, 16));
    }

    public static Object stdio$ClParseFloat(Object obj, Object obj2) {
        frame frameVar = new frame();
        frameVar.str = obj;
        frameVar.proc = obj2;
        try {
            frameVar.n = strings.stringLength((CharSequence) obj);
            return frameVar.lambda4real(Lit1, frameVar.lambda$Fn1);
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        return moduleMethod.selector == 22 ? stdio$ClParseFloat(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        if (moduleMethod.selector != 22) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public class frame extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        int n;
        Object proc;
        Object str;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 12, null, 16388);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:106");
            this.lambda$Fn1 = moduleMethod;
        }

        public static Boolean lambda1parseError() {
            return Boolean.FALSE;
        }

        public Object lambda2sign(Object obj, Object obj2) {
            Object objApply2 = Scheme.numLss.apply2(obj, Integer.valueOf(this.n));
            Boolean bool = Boolean.FALSE;
            if (objApply2 != bool) {
                Object obj3 = this.str;
                try {
                    try {
                        char cStringRef = strings.stringRef((CharSequence) obj3, ((Number) obj).intValue());
                        IsEqv isEqv = Scheme.isEqv;
                        Object objApply22 = isEqv.apply2(Char.make(cStringRef), printf.Lit5);
                        if (objApply22 == bool ? isEqv.apply2(Char.make(cStringRef), printf.Lit6) != bool : objApply22 != bool) {
                            return Scheme.applyToArgs.apply3(obj2, AddOp.$Pl.apply2(obj, printf.Lit7), Char.make(cStringRef));
                        }
                        return Scheme.applyToArgs.apply3(obj2, obj, printf.Lit6);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, obj);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj3);
                }
            }
            return Values.empty;
        }

        public Object lambda3digits(Object obj, Object obj2) throws Throwable {
            Object objSubstring;
            Object objApply2 = obj;
            while (true) {
                Object objApply22 = Scheme.numGEq.apply2(objApply2, Integer.valueOf(this.n));
                try {
                    boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                    if (!zBooleanValue) {
                        Object obj3 = this.str;
                        try {
                            try {
                                boolean zIsCharNumeric = unicode.isCharNumeric(Char.make(strings.stringRef((CharSequence) obj3, ((Number) objApply2).intValue())));
                                if (!zIsCharNumeric) {
                                    Char r3 = printf.Lit8;
                                    Object obj4 = this.str;
                                    try {
                                        try {
                                            if (!a.l((CharSequence) obj4, ((Number) objApply2).intValue(), r3)) {
                                                break;
                                            }
                                            objApply2 = AddOp.$Pl.apply2(objApply2, printf.Lit7);
                                        } catch (ClassCastException e) {
                                            throw new WrongType(e, "string-ref", 2, objApply2);
                                        }
                                    } catch (ClassCastException e2) {
                                        throw new WrongType(e2, "string-ref", 1, obj4);
                                    }
                                } else {
                                    if (!zIsCharNumeric) {
                                        break;
                                    }
                                    objApply2 = AddOp.$Pl.apply2(objApply2, printf.Lit7);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "string-ref", 2, objApply2);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "string-ref", 1, obj3);
                        }
                    } else {
                        if (zBooleanValue) {
                            break;
                        }
                        objApply2 = AddOp.$Pl.apply2(objApply2, printf.Lit7);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "x", -2, objApply22);
                }
            }
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            if (Scheme.numEqu.apply2(obj, objApply2) != Boolean.FALSE) {
                objSubstring = "0";
            } else {
                Object obj5 = this.str;
                try {
                    try {
                        try {
                            objSubstring = strings.substring((CharSequence) obj5, ((Number) obj).intValue(), ((Number) objApply2).intValue());
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "substring", 3, objApply2);
                        }
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "substring", 2, obj);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "substring", 1, obj5);
                }
            }
            return applyToArgs.apply3(obj2, objApply2, objSubstring);
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c2, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r8, r7);
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0073  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda4real(java.lang.Object r7, java.lang.Object r8) throws java.lang.Throwable {
            /*
                r6 = this;
                gnu.kawa.slib.printf$frame2 r0 = new gnu.kawa.slib.printf$frame2
                r0.<init>()
                r0.staticLink = r6
                r0.cont = r8
                gnu.expr.ModuleMethod r8 = r0.lambda$Fn5
            Lb:
                gnu.kawa.functions.NumberCompare r0 = kawa.standard.Scheme.numLss
                int r1 = r6.n
                r2 = 1
                int r1 = r1 - r2
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.Object r0 = r0.apply2(r7, r1)
                r1 = r0
                java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.ClassCastException -> Lc3
                boolean r0 = r1.booleanValue()     // Catch: java.lang.ClassCastException -> Lc3
                r1 = 2
                java.lang.String r3 = "string-ref"
                if (r0 == 0) goto L47
                gnu.text.Char r0 = gnu.kawa.slib.printf.Lit8
                java.lang.Object r4 = r6.str
                java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.ClassCastException -> L40
                r5 = r7
                java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.ClassCastException -> L39
                int r5 = r5.intValue()     // Catch: java.lang.ClassCastException -> L39
                boolean r0 = com.google.youngandroid.a.l(r4, r5, r0)
                if (r0 == 0) goto Lbc
                goto L49
            L39:
                r8 = move-exception
                gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
                r0.<init>(r8, r3, r1, r7)
                throw r0
            L40:
                r7 = move-exception
                gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
                r8.<init>(r7, r3, r2, r4)
                throw r8
            L47:
                if (r0 == 0) goto Lbc
            L49:
                java.lang.Object r0 = r6.str
                java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.ClassCastException -> Lb5
                gnu.kawa.functions.AddOp r2 = gnu.kawa.functions.AddOp.$Pl
                gnu.math.IntNum r4 = gnu.kawa.slib.printf.Lit7
                java.lang.Object r4 = r2.apply2(r7, r4)
                r5 = r4
                java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.ClassCastException -> Lae
                int r1 = r5.intValue()     // Catch: java.lang.ClassCastException -> Lae
                char r0 = kawa.lib.strings.stringRef(r0, r1)
                gnu.kawa.functions.IsEqv r1 = kawa.standard.Scheme.isEqv
                gnu.text.Char r3 = gnu.text.Char.make(r0)
                gnu.text.Char r4 = gnu.kawa.slib.printf.Lit12
                java.lang.Object r3 = r1.apply2(r3, r4)
                java.lang.Boolean r4 = java.lang.Boolean.FALSE
                if (r3 == r4) goto L73
                if (r3 == r4) goto L96
                goto L8e
            L73:
                gnu.text.Char r3 = gnu.text.Char.make(r0)
                gnu.text.Char r5 = gnu.kawa.slib.printf.Lit3
                java.lang.Object r3 = r1.apply2(r3, r5)
                if (r3 == r4) goto L82
                if (r3 == r4) goto L96
                goto L8e
            L82:
                gnu.text.Char r3 = gnu.text.Char.make(r0)
                gnu.text.Char r5 = gnu.kawa.slib.printf.Lit13
                java.lang.Object r3 = r1.apply2(r3, r5)
                if (r3 == r4) goto L96
            L8e:
                gnu.math.IntNum r0 = gnu.kawa.slib.printf.Lit14
                java.lang.Object r7 = r2.apply2(r7, r0)
                goto Lb
            L96:
                gnu.text.Char r0 = gnu.text.Char.make(r0)
                gnu.text.Char r2 = gnu.kawa.slib.printf.Lit11
                java.lang.Object r0 = r1.apply2(r0, r2)
                if (r0 == r4) goto La9
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                java.lang.Object r7 = r0.apply2(r8, r7)
                return r7
            La9:
                java.lang.Boolean r7 = lambda1parseError()
                return r7
            Lae:
                r7 = move-exception
                gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
                r8.<init>(r7, r3, r1, r4)
                throw r8
            Lb5:
                r7 = move-exception
                gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
                r8.<init>(r7, r3, r2, r0)
                throw r8
            Lbc:
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                java.lang.Object r7 = r0.apply2(r8, r7)
                return r7
            Lc3:
                r7 = move-exception
                gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
                java.lang.String r1 = "x"
                r2 = -2
                r8.<init>(r7, r1, r2, r0)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame.lambda4real(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
            return moduleMethod.selector == 12 ? lambda5(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }

        public Object lambda5(Object obj, Object obj2, Object obj3, Object obj4) {
            frame0 frame0Var = new frame0();
            frame0Var.staticLink = this;
            frame0Var.sgn = obj2;
            frame0Var.digs = obj3;
            frame0Var.ex = obj4;
            Object objApply2 = Scheme.numEqu.apply2(obj, Integer.valueOf(this.n));
            Boolean bool = Boolean.FALSE;
            if (objApply2 != bool) {
                return Scheme.applyToArgs.apply4(this.proc, frame0Var.sgn, frame0Var.digs, frame0Var.ex);
            }
            Object obj5 = this.str;
            try {
                try {
                    if (lists.memv(Char.make(strings.stringRef((CharSequence) obj5, ((Number) obj).intValue())), printf.Lit2) != bool) {
                        return lambda4real(obj, frame0Var.lambda$Fn2);
                    }
                    IsEqv isEqv = Scheme.isEqv;
                    Object obj6 = this.str;
                    try {
                        try {
                            if (isEqv.apply2(Char.make(strings.stringRef((CharSequence) obj6, ((Number) obj).intValue())), printf.Lit4) == bool) {
                                return bool;
                            }
                            Object obj7 = this.str;
                            try {
                                Object objString$To$Number = numbers.string$To$Number((CharSequence) obj7);
                                frame0Var.num = objString$To$Number;
                                if (objString$To$Number != bool) {
                                    try {
                                        return printf.stdio$ClParseFloat(numbers.number$To$String(numbers.realPart((Complex) objString$To$Number)), frame0Var.lambda$Fn3);
                                    } catch (ClassCastException e) {
                                        throw new WrongType(e, "real-part", 1, objString$To$Number);
                                    }
                                }
                                return lambda1parseError();
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string->number", 1, obj7);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 2, obj);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-ref", 1, obj6);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-ref", 2, obj);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-ref", 1, obj5);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            if (moduleMethod.selector != 12) {
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
    }

    public class frame6 extends ModuleBody {
        Object cont;
        final ModuleMethod lambda$Fn11;
        frame staticLink;

        public frame6() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 5, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:67");
            this.lambda$Fn11 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 5 ? lambda15(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda15(Object obj, Object obj2) {
            frame7 frame7Var = new frame7();
            frame7Var.staticLink = this;
            frame7Var.sgn = obj2;
            return this.staticLink.lambda3digits(obj, frame7Var.lambda$Fn12);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 5) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame7 extends ModuleBody {
        final ModuleMethod lambda$Fn12;
        Object sgn;
        frame6 staticLink;

        public frame7() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:69");
            this.lambda$Fn12 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 4 ? lambda16(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 4) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda16(Object obj, Object obj2) throws Throwable {
            Object objString$To$Number;
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            Object obj3 = this.staticLink.cont;
            Char r2 = printf.Lit5;
            Object obj4 = this.sgn;
            try {
                if (characters.isChar$Eq(r2, (Char) obj4)) {
                    try {
                        objString$To$Number = AddOp.$Mn.apply1(numbers.string$To$Number((CharSequence) obj2));
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string->number", 1, obj2);
                    }
                } else {
                    try {
                        objString$To$Number = numbers.string$To$Number((CharSequence) obj2);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string->number", 1, obj2);
                    }
                }
                return applyToArgs.apply3(obj3, obj, objString$To$Number);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "char=?", 2, obj4);
            }
        }
    }

    public class frame2 extends ModuleBody {
        Object cont;
        final ModuleMethod lambda$Fn5;
        final ModuleMethod lambda$Fn6;
        frame staticLink;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 10, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:81");
            this.lambda$Fn6 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:78");
            this.lambda$Fn5 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 11 ? lambda9(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 11) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda9(Object obj) {
            return this.staticLink.lambda2sign(obj, this.lambda$Fn6);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 10 ? lambda10(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda10(Object obj, Object obj2) {
            frame3 frame3Var = new frame3();
            frame3Var.staticLink = this;
            frame3Var.sgn = obj2;
            return this.staticLink.lambda3digits(obj, frame3Var.lambda$Fn7);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame3 extends ModuleBody {
        final ModuleMethod lambda$Fn7;
        Object sgn;
        frame2 staticLink;

        public frame3() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 9, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:84");
            this.lambda$Fn7 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 9 ? lambda11(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        
            if (r1 != false) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r6, gnu.kawa.functions.AddOp.$Pl.apply2(r5, gnu.kawa.slib.printf.Lit7));
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0065, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r6, r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
        
            if (com.google.youngandroid.a.l((java.lang.CharSequence) r2, ((java.lang.Number) r5).intValue(), r1) != false) goto L18;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda11(java.lang.Object r5, java.lang.Object r6) {
            /*
                r4 = this;
                java.lang.String r0 = "string-ref"
                gnu.kawa.slib.printf$frame4 r1 = new gnu.kawa.slib.printf$frame4
                r1.<init>()
                r1.staticLink = r4
                r1.idigs = r6
                gnu.expr.ModuleMethod r6 = r1.lambda$Fn8
                gnu.kawa.functions.NumberCompare r1 = kawa.standard.Scheme.numLss
                gnu.kawa.slib.printf$frame2 r2 = r4.staticLink
                gnu.kawa.slib.printf$frame r2 = r2.staticLink
                int r2 = r2.n
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r1 = r1.apply2(r5, r2)
                r2 = r1
                java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.ClassCastException -> L66
                boolean r1 = r2.booleanValue()     // Catch: java.lang.ClassCastException -> L66
                if (r1 == 0) goto L4e
                gnu.text.Char r1 = gnu.kawa.slib.printf.Lit11
                gnu.kawa.slib.printf$frame2 r2 = r4.staticLink
                gnu.kawa.slib.printf$frame r2 = r2.staticLink
                java.lang.Object r2 = r2.str
                java.lang.CharSequence r2 = (java.lang.CharSequence) r2     // Catch: java.lang.ClassCastException -> L46
                r3 = r5
                java.lang.Number r3 = (java.lang.Number) r3     // Catch: java.lang.ClassCastException -> L3e
                int r0 = r3.intValue()     // Catch: java.lang.ClassCastException -> L3e
                boolean r0 = com.google.youngandroid.a.l(r2, r0, r1)
                if (r0 == 0) goto L5f
                goto L50
            L3e:
                r6 = move-exception
                gnu.mapping.WrongType r1 = new gnu.mapping.WrongType
                r2 = 2
                r1.<init>(r6, r0, r2, r5)
                throw r1
            L46:
                r5 = move-exception
                gnu.mapping.WrongType r6 = new gnu.mapping.WrongType
                r1 = 1
                r6.<init>(r5, r0, r1, r2)
                throw r6
            L4e:
                if (r1 == 0) goto L5f
            L50:
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                gnu.kawa.functions.AddOp r1 = gnu.kawa.functions.AddOp.$Pl
                gnu.math.IntNum r2 = gnu.kawa.slib.printf.Lit7
                java.lang.Object r5 = r1.apply2(r5, r2)
                java.lang.Object r5 = r0.apply2(r6, r5)
                return r5
            L5f:
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                java.lang.Object r5 = r0.apply2(r6, r5)
                return r5
            L66:
                r5 = move-exception
                gnu.mapping.WrongType r6 = new gnu.mapping.WrongType
                java.lang.String r0 = "x"
                r2 = -2
                r6.<init>(r5, r0, r2, r1)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame3.lambda11(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 9) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame4 extends ModuleBody {
        Object idigs;
        final ModuleMethod lambda$Fn8;
        final ModuleMethod lambda$Fn9;
        frame3 staticLink;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 7, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:90");
            this.lambda$Fn9 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 8, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:87");
            this.lambda$Fn8 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 8 ? lambda12(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 8) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda12(Object obj) {
            return this.staticLink.staticLink.staticLink.lambda3digits(obj, this.lambda$Fn9);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 7 ? lambda13(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda13(Object obj, Object obj2) {
            frame5 frame5Var = new frame5();
            frame5Var.staticLink = this;
            frame5Var.fdigs = obj2;
            ModuleMethod moduleMethod = frame5Var.lambda$Fn10;
            frame frameVar = this.staticLink.staticLink.staticLink;
            frame6 frame6Var = new frame6();
            frame6Var.staticLink = frameVar;
            frame6Var.cont = moduleMethod;
            Object objApply2 = Scheme.numGEq.apply2(obj, Integer.valueOf(this.staticLink.staticLink.staticLink.n));
            Boolean bool = Boolean.FALSE;
            if (objApply2 != bool) {
                return Scheme.applyToArgs.apply3(frame6Var.cont, obj, printf.Lit1);
            }
            Object obj3 = this.staticLink.staticLink.staticLink.str;
            try {
                try {
                    if (lists.memv(Char.make(strings.stringRef((CharSequence) obj3, ((Number) obj).intValue())), printf.Lit10) != bool) {
                        return this.staticLink.staticLink.staticLink.lambda2sign(AddOp.$Pl.apply2(obj, printf.Lit7), frame6Var.lambda$Fn11);
                    }
                    return Scheme.applyToArgs.apply3(frame6Var.cont, obj, printf.Lit1);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, obj);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj3);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 7) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame5 extends ModuleBody {
        Object fdigs;
        final ModuleMethod lambda$Fn10;
        frame4 staticLink;

        public frame5() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 6, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:92");
            this.lambda$Fn10 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 6 ? lambda14(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 6) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda14(Object obj, Object obj2) throws Throwable {
            FString fStringStringAppend = strings.stringAppend("0", this.staticLink.idigs, this.fdigs);
            int iStringLength = strings.stringLength(fStringStringAppend);
            Object objApply2 = printf.Lit7;
            AddOp addOp = AddOp.$Pl;
            Object obj3 = this.staticLink.idigs;
            try {
                Object objApply22 = addOp.apply2(obj2, Integer.valueOf(strings.stringLength((CharSequence) obj3)));
                while (Scheme.numGEq.apply2(objApply2, Integer.valueOf(iStringLength)) == Boolean.FALSE) {
                    try {
                        if (characters.isChar$Eq(printf.Lit9, Char.make(strings.stringRef(fStringStringAppend, ((Number) objApply2).intValue())))) {
                            AddOp addOp2 = AddOp.$Pl;
                            IntNum intNum = printf.Lit7;
                            objApply2 = addOp2.apply2(objApply2, intNum);
                            objApply22 = AddOp.$Mn.apply2(objApply22, intNum);
                        } else {
                            ApplyToArgs applyToArgs = Scheme.applyToArgs;
                            frame3 frame3Var = this.staticLink.staticLink;
                            Object obj4 = frame3Var.staticLink.cont;
                            Object obj5 = frame3Var.sgn;
                            Object objApply23 = AddOp.$Mn.apply2(objApply2, printf.Lit7);
                            try {
                                return applyToArgs.applyN(new Object[]{obj4, obj, obj5, strings.substring(fStringStringAppend, ((Number) objApply23).intValue(), iStringLength), objApply22});
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 2, objApply23);
                            }
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-ref", 2, objApply2);
                    }
                }
                ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                frame3 frame3Var2 = this.staticLink.staticLink;
                return applyToArgs2.applyN(new Object[]{frame3Var2.staticLink.cont, obj, frame3Var2.sgn, "0", printf.Lit7});
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-length", 1, obj3);
            }
        }
    }

    public class frame0 extends ModuleBody {
        Object digs;
        Object ex;
        final ModuleMethod lambda$Fn2;
        final ModuleMethod lambda$Fn3;
        Object num;
        Object sgn;
        frame staticLink;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, 16388);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:111");
            this.lambda$Fn2 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 3, null, 12291);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:123");
            this.lambda$Fn3 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
            return moduleMethod.selector == 2 ? lambda6(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            if (moduleMethod.selector != 2) {
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
        
            if (r2 != false) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
        
            return kawa.standard.Scheme.applyToArgs.applyN(new java.lang.Object[]{r8.staticLink.proc, r8.sgn, r8.digs, r8.ex, r10, r11, r12});
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0075, code lost:
        
            return gnu.kawa.slib.printf.frame.lambda1parseError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        
            if (kawa.lib.rnrs.unicode.isCharCi$Eq(r2, gnu.text.Char.make(kawa.lib.strings.stringRef((java.lang.CharSequence) r3, ((java.lang.Number) r9).intValue()))) != false) goto L18;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda6(java.lang.Object r9, java.lang.Object r10, java.lang.Object r11, java.lang.Object r12) {
            /*
                r8 = this;
                r0 = 2
                java.lang.String r1 = "string-ref"
                gnu.kawa.functions.NumberCompare r2 = kawa.standard.Scheme.numEqu
                gnu.kawa.slib.printf$frame r3 = r8.staticLink
                int r3 = r3.n
                r4 = 1
                int r3 = r3 - r4
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                java.lang.Object r2 = r2.apply2(r9, r3)
                r3 = r2
                java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.ClassCastException -> L76
                boolean r2 = r3.booleanValue()     // Catch: java.lang.ClassCastException -> L76
                if (r2 == 0) goto L48
                gnu.text.Char r2 = gnu.kawa.slib.printf.Lit3
                gnu.kawa.slib.printf$frame r3 = r8.staticLink
                java.lang.Object r3 = r3.str
                java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.ClassCastException -> L41
                r5 = r9
                java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.ClassCastException -> L3a
                int r9 = r5.intValue()     // Catch: java.lang.ClassCastException -> L3a
                char r9 = kawa.lib.strings.stringRef(r3, r9)
                gnu.text.Char r9 = gnu.text.Char.make(r9)
                boolean r9 = kawa.lib.rnrs.unicode.isCharCi$Eq(r2, r9)
                if (r9 == 0) goto L71
                goto L4a
            L3a:
                r10 = move-exception
                gnu.mapping.WrongType r11 = new gnu.mapping.WrongType
                r11.<init>(r10, r1, r0, r9)
                throw r11
            L41:
                r9 = move-exception
                gnu.mapping.WrongType r10 = new gnu.mapping.WrongType
                r10.<init>(r9, r1, r4, r3)
                throw r10
            L48:
                if (r2 == 0) goto L71
            L4a:
                gnu.kawa.functions.ApplyToArgs r9 = kawa.standard.Scheme.applyToArgs
                gnu.kawa.slib.printf$frame r1 = r8.staticLink
                java.lang.Object r1 = r1.proc
                java.lang.Object r2 = r8.sgn
                java.lang.Object r3 = r8.digs
                java.lang.Object r5 = r8.ex
                r6 = 7
                java.lang.Object[] r6 = new java.lang.Object[r6]
                r7 = 0
                r6[r7] = r1
                r6[r4] = r2
                r6[r0] = r3
                r0 = 3
                r6[r0] = r5
                r0 = 4
                r6[r0] = r10
                r10 = 5
                r6[r10] = r11
                r10 = 6
                r6[r10] = r12
                java.lang.Object r9 = r9.applyN(r6)
                return r9
            L71:
                java.lang.Boolean r9 = gnu.kawa.slib.printf.frame.lambda1parseError()
                return r9
            L76:
                r9 = move-exception
                gnu.mapping.WrongType r10 = new gnu.mapping.WrongType
                java.lang.String r11 = "x"
                r12 = -2
                r10.<init>(r9, r11, r12, r2)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame0.lambda6(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 3 ? lambda7(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        public Object lambda7(Object obj, Object obj2, Object obj3) {
            frame1 frame1Var = new frame1();
            frame1Var.staticLink = this;
            frame1Var.sgn = obj;
            frame1Var.digs = obj2;
            frame1Var.ex = obj3;
            Object obj4 = this.num;
            try {
                return printf.stdio$ClParseFloat(numbers.number$To$String(numbers.imagPart((Complex) obj4)), frame1Var.lambda$Fn4);
            } catch (ClassCastException e) {
                throw new WrongType(e, "imag-part", 1, obj4);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 3) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
    }

    public class frame1 extends ModuleBody {
        Object digs;
        Object ex;
        final ModuleMethod lambda$Fn4;
        Object sgn;
        frame0 staticLink;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, 12291);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:126");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 1 ? lambda8(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 1) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda8(Object obj, Object obj2, Object obj3) {
            return Scheme.applyToArgs.applyN(new Object[]{this.staticLink.staticLink.proc, this.sgn, this.digs, this.ex, obj, obj2, obj3});
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x013a A[EDGE_INSN: B:123:0x013a->B:59:0x013a BREAK  A[LOOP:1: B:57:0x0128->B:75:0x017b], EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0171 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0127 A[EDGE_INSN: B:151:0x0127->B:56:0x0127 BREAK  A[LOOP:2: B:42:0x00ed->B:51:0x0115]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stdio$ClRoundString(java.lang.CharSequence r18, java.lang.Object r19, java.lang.Object r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.stdio$ClRoundString(java.lang.CharSequence, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        if (moduleMethod.selector != 23) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            return stdio$ClRoundString((CharSequence) obj, obj2, obj3);
        } catch (ClassCastException e) {
            throw new WrongType(e, "stdio:round-string", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (moduleMethod.selector != 23) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof CharSequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public class frame8 extends ModuleBody {
        CharSequence str;

        public Object lambda17dig(Object obj) {
            try {
                char cStringRef = strings.stringRef(this.str, ((Number) obj).intValue());
                return unicode.isCharNumeric(Char.make(cStringRef)) ? numbers.string$To$Number(strings.$make$string$(Char.make(cStringRef))) : printf.Lit1;
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-ref", 2, obj);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:467:0x07b1, code lost:
    
        return r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x059e  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x064d  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x06e6  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x06eb  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x070e  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x072f  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x075a  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0766  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x02e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:529:0x071a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0279 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:553:0x038d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:554:0x0595 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:555:0x05c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0657 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:559:0x066f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:569:0x05d0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:573:0x0660 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0789 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:600:0x0770 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stdio$ClIprintf$V(java.lang.Object r19, java.lang.Object r20, java.lang.Object[] r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 2034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.stdio$ClIprintf$V(java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 24:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 25:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 26:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 27:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            default:
                return super.matchN(moduleMethod, objArr, callContext);
        }
    }

    public class frame9 extends ModuleBody {
        LList args;
        Object fc;
        int fl;
        Object format$Mnstring;
        Object out;
        Object pos;

        public Object lambda18mustAdvance() throws Throwable {
            Object objApply2 = AddOp.$Pl.apply2(printf.Lit7, this.pos);
            this.pos = objApply2;
            if (Scheme.numGEq.apply2(objApply2, Integer.valueOf(this.fl)) != Boolean.FALSE) {
                return lambda20incomplete();
            }
            Object obj = this.format$Mnstring;
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object obj2 = this.pos;
                try {
                    this.fc = Char.make(strings.stringRef(charSequence, ((Number) obj2).intValue()));
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj);
            }
        }

        public boolean lambda19isEndOfFormat() {
            return ((Boolean) Scheme.numGEq.apply2(this.pos, Integer.valueOf(this.fl))).booleanValue();
        }

        public Object lambda20incomplete() {
            return misc.error$V(printf.Lit34, new Object[]{"conversion specification incomplete", this.format$Mnstring});
        }

        public Object lambda21out$St(Object obj) throws Throwable {
            if (strings.isString(obj)) {
                return Scheme.applyToArgs.apply2(this.out, obj);
            }
            while (true) {
                boolean zIsNull = lists.isNull(obj);
                if (zIsNull) {
                    return zIsNull ? Boolean.TRUE : Boolean.FALSE;
                }
                Object objApply2 = Scheme.applyToArgs.apply2(this.out, lists.car.apply1(obj));
                if (objApply2 == Boolean.FALSE) {
                    return objApply2;
                }
                obj = lists.cdr.apply1(obj);
            }
        }
    }

    public class frame10 extends ModuleBody {
        Object alternate$Mnform;
        Object args;
        Object blank;
        final ModuleMethod lambda$Fn13;
        final ModuleMethod lambda$Fn14;
        final ModuleMethod lambda$Fn15;
        final ModuleMethod lambda$Fn16;
        Object leading$Mn0s;
        Object left$Mnadjust;
        Object os;
        Procedure pad = new ModuleMethod(this, 15, printf.Lit67, -4095);
        Object pr;
        Object precision;
        Object signed;
        frame9 staticLink;
        Object width;

        public frame10() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 16, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:472");
            this.lambda$Fn13 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 17, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:476");
            this.lambda$Fn14 = moduleMethod2;
            ModuleMethod moduleMethod3 = new ModuleMethod(this, 18, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:484");
            this.lambda$Fn15 = moduleMethod3;
            ModuleMethod moduleMethod4 = new ModuleMethod(this, 19, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod4.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:494");
            this.lambda$Fn16 = moduleMethod4;
        }

        public Object lambda22readFormatNumber() throws Throwable {
            if (Scheme.isEqv.apply2(printf.Lit66, this.staticLink.fc) != Boolean.FALSE) {
                this.staticLink.lambda18mustAdvance();
                Object objApply1 = lists.car.apply1(this.args);
                this.args = lists.cdr.apply1(this.args);
                return objApply1;
            }
            Object obj = this.staticLink.fc;
            Object objApply2 = printf.Lit1;
            while (true) {
                Object obj2 = this.staticLink.fc;
                try {
                    if (!unicode.isCharNumeric((Char) obj2)) {
                        return objApply2;
                    }
                    this.staticLink.lambda18mustAdvance();
                    Object obj3 = this.staticLink.fc;
                    objApply2 = AddOp.$Pl.apply2(MultiplyOp.$St.apply2(objApply2, printf.Lit45), numbers.string$To$Number(strings.$make$string$(obj instanceof Object[] ? (Object[]) obj : new Object[]{obj})));
                    obj = obj3;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "char-numeric?", 1, obj2);
                }
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            if (moduleMethod.selector != 15) {
                return super.applyN(moduleMethod, objArr);
            }
            Object obj = objArr[0];
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            while (true) {
                int i = length - 1;
                if (i < 0) {
                    return lambda23pad$V(obj, objArr2);
                }
                objArr2[i] = objArr[length];
                length = i;
            }
        }

        public Object lambda23pad$V(Object obj, Object[] objArr) throws Throwable {
            LList lListMakeList = LList.makeList(objArr, 0);
            try {
                Object objValueOf = Integer.valueOf(strings.stringLength((CharSequence) obj));
                Object objApply1 = lListMakeList;
                while (true) {
                    Object objApply2 = Scheme.numGEq.apply2(objValueOf, this.width);
                    Boolean bool = Boolean.FALSE;
                    if (objApply2 != bool) {
                        return lists.cons(obj, lListMakeList);
                    }
                    if (lists.isNull(objApply1)) {
                        if (this.left$Mnadjust != bool) {
                            Object objApply22 = AddOp.$Mn.apply2(this.width, objValueOf);
                            try {
                                return lists.cons(obj, append.append$V(new Object[]{lListMakeList, LList.list1(strings.makeString(((Number) objApply22).intValue(), printf.Lit29))}));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "make-string", 1, objApply22);
                            }
                        }
                        if (this.leading$Mn0s != bool) {
                            Object objApply23 = AddOp.$Mn.apply2(this.width, objValueOf);
                            try {
                                return lists.cons(obj, lists.cons(strings.makeString(((Number) objApply23).intValue(), printf.Lit9), lListMakeList));
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "make-string", 1, objApply23);
                            }
                        }
                        Object objApply24 = AddOp.$Mn.apply2(this.width, objValueOf);
                        try {
                            return lists.cons(strings.makeString(((Number) objApply24).intValue(), printf.Lit29), lists.cons(obj, lListMakeList));
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "make-string", 1, objApply24);
                        }
                    }
                    AddOp addOp = AddOp.$Pl;
                    Object objApply12 = lists.car.apply1(objApply1);
                    try {
                        objValueOf = addOp.apply2(objValueOf, Integer.valueOf(strings.stringLength((CharSequence) objApply12)));
                        objApply1 = lists.cdr.apply1(objApply1);
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-length", 1, objApply12);
                    }
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            if (moduleMethod.selector != 15) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x00a4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda24integerConvert(java.lang.Object r10, java.lang.Object r11, java.lang.Object r12) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 375
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame10.lambda24integerConvert(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 16:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 17:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 18:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 19:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        public Object lambda25(Object obj) {
            try {
                this.pr = AddOp.$Pl.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                return Scheme.applyToArgs.apply2(this.staticLink.out, obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, obj);
            }
        }

        public boolean lambda26(Object obj) throws Throwable {
            Object obj2;
            Special special = Special.undefined;
            try {
                Object objApply2 = AddOp.$Mn.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                try {
                    if (numbers.isNegative(LangObjType.coerceRealNum(objApply2))) {
                        ApplyToArgs applyToArgs = Scheme.applyToArgs;
                        Object obj3 = this.staticLink.out;
                        try {
                            CharSequence charSequence = (CharSequence) obj;
                            Object obj4 = this.pr;
                            try {
                                applyToArgs.apply2(obj3, strings.substring(charSequence, 0, ((Number) obj4).intValue()));
                                obj2 = printf.Lit1;
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 3, obj4);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 1, obj);
                        }
                    } else {
                        Scheme.applyToArgs.apply2(this.staticLink.out, obj);
                        obj2 = objApply2;
                    }
                    this.pr = obj2;
                    try {
                        return numbers.isPositive(LangObjType.coerceRealNum(objApply2));
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "positive?", 1, objApply2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "negative?", 1, objApply2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, obj);
            }
        }

        public Boolean lambda27(Object obj) throws Throwable {
            try {
                Object objApply2 = AddOp.$Mn.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                this.pr = objApply2;
                Object obj2 = this.os;
                Boolean bool = Boolean.FALSE;
                if (obj2 == bool) {
                    Scheme.applyToArgs.apply2(this.staticLink.out, obj);
                } else {
                    try {
                        if (numbers.isNegative(LangObjType.coerceRealNum(objApply2))) {
                            ApplyToArgs applyToArgs = Scheme.applyToArgs;
                            applyToArgs.apply2(this.staticLink.out, this.os);
                            this.os = bool;
                            applyToArgs.apply2(this.staticLink.out, obj);
                        } else {
                            this.os = strings.stringAppend(this.os, obj);
                        }
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "negative?", 1, objApply2);
                    }
                }
                return Boolean.TRUE;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-length", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 16:
                    return lambda25(obj);
                case 17:
                    return lambda26(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 18:
                    return lambda27(obj);
                case 19:
                    return lambda28(obj) ? Boolean.TRUE : Boolean.FALSE;
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        public boolean lambda28(Object obj) throws Throwable {
            Special special = Special.undefined;
            try {
                Object objApply2 = AddOp.$Mn.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                try {
                    if (numbers.isNegative(LangObjType.coerceRealNum(objApply2))) {
                        Object obj2 = this.os;
                        try {
                            CharSequence charSequence = (CharSequence) obj;
                            Object obj3 = this.pr;
                            try {
                                this.os = strings.stringAppend(obj2, strings.substring(charSequence, 0, ((Number) obj3).intValue()));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 3, obj3);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 1, obj);
                        }
                    } else {
                        this.os = strings.stringAppend(this.os, obj);
                    }
                    this.pr = objApply2;
                    try {
                        return numbers.isPositive(LangObjType.coerceRealNum(objApply2));
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "positive?", 1, objApply2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "negative?", 1, objApply2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, obj);
            }
        }
    }

    public class frame11 extends ModuleBody {
        Object fc;
        Procedure format$Mnreal = new ModuleMethod(this, 13, printf.Lit64, -4092);
        final ModuleMethod lambda$Fn17;
        frame10 staticLink;

        public frame11() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 14, null, -4093);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:401");
            this.lambda$Fn17 = moduleMethod;
        }

        public Object lambda29f(Object obj, Object obj2, Object obj3) throws Throwable {
            try {
                CharSequence charSequence = (CharSequence) obj;
                AddOp addOp = AddOp.$Pl;
                Object objApply2 = addOp.apply2(obj2, this.staticLink.precision);
                Boolean bool = Boolean.FALSE;
                Object objStdio$ClRoundString = printf.stdio$ClRoundString(charSequence, objApply2, obj3 != bool ? obj2 : obj3);
                NumberCompare numberCompare = Scheme.numGEq;
                IntNum intNum = printf.Lit1;
                if (numberCompare.apply2(obj2, intNum) == bool) {
                    Object obj4 = this.staticLink.precision;
                    try {
                        if (numbers.isZero((Number) obj4)) {
                            return LList.list1(this.staticLink.alternate$Mnform != bool ? "0." : "0");
                        }
                        if (obj3 != bool) {
                            boolean zIsString$Eq = strings.isString$Eq(objStdio$ClRoundString, "");
                            obj3 = zIsString$Eq ? LList.list1("0") : zIsString$Eq ? Boolean.TRUE : bool;
                        }
                        if (obj3 != bool) {
                            return obj3;
                        }
                        Object objMin = numbers.min(this.staticLink.precision, AddOp.$Mn.apply2(printf.Lit17, obj2));
                        try {
                            return LList.list3("0.", strings.makeString(((Number) objMin).intValue(), printf.Lit9), objStdio$ClRoundString);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "make-string", 1, objMin);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "zero?", 1, obj4);
                    }
                }
                try {
                    if (!numbers.isZero((Number) obj2)) {
                        try {
                            if (a.l((CharSequence) objStdio$ClRoundString, 0, printf.Lit9)) {
                                intNum = printf.Lit7;
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 1, objStdio$ClRoundString);
                        }
                    }
                    IntNum intNum2 = printf.Lit7;
                    Object objMax = numbers.max(intNum2, addOp.apply2(intNum2, obj2));
                    try {
                        try {
                            try {
                                CharSequence charSequenceSubstring = strings.substring((CharSequence) objStdio$ClRoundString, intNum.intValue(), ((Number) objMax).intValue());
                                try {
                                    try {
                                        try {
                                            CharSequence charSequenceSubstring2 = strings.substring((CharSequence) objStdio$ClRoundString, ((Number) objMax).intValue(), strings.stringLength((CharSequence) objStdio$ClRoundString));
                                            boolean zIsString$Eq2 = strings.isString$Eq(charSequenceSubstring2, "");
                                            return lists.cons(charSequenceSubstring, (!zIsString$Eq2 ? zIsString$Eq2 : this.staticLink.alternate$Mnform == bool) ? LList.list2(".", charSequenceSubstring2) : LList.Empty);
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "string-length", 1, objStdio$ClRoundString);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "substring", 2, objMax);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "substring", 1, objStdio$ClRoundString);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "substring", 3, objMax);
                            }
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "substring", 2, intNum);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "substring", 1, objStdio$ClRoundString);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "zero?", 1, obj2);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "stdio:round-string", 0, obj);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:107:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x022e  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x023a  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x024f  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0066 A[PHI: r16
          0x0066: PHI (r16v2 char) = (r16v1 char), (r16v3 char) binds: [B:22:0x005b, B:19:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01c3  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01d5  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01d7  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x01f4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda30formatReal$V(java.lang.Object r21, java.lang.Object r22, java.lang.Object r23, java.lang.Object r24, java.lang.Object[] r25) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 768
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame11.lambda30formatReal$V(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 13) {
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            }
            if (i != 14) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            int i = moduleMethod.selector;
            if (i == 13) {
                Object obj = objArr[0];
                Object obj2 = objArr[1];
                Object obj3 = objArr[2];
                Object obj4 = objArr[3];
                int length = objArr.length - 4;
                Object[] objArr2 = new Object[length];
                while (true) {
                    int i2 = length - 1;
                    if (i2 < 0) {
                        return lambda30formatReal$V(obj, obj2, obj3, obj4, objArr2);
                    }
                    objArr2[i2] = objArr[length + 3];
                    length = i2;
                }
            } else {
                if (i != 14) {
                    return super.applyN(moduleMethod, objArr);
                }
                Object obj5 = objArr[0];
                Object obj6 = objArr[1];
                Object obj7 = objArr[2];
                int length2 = objArr.length - 3;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    int i3 = length2 - 1;
                    if (i3 < 0) {
                        return lambda31$V(obj5, obj6, obj7, objArr3);
                    }
                    objArr3[i3] = objArr[length2 + 2];
                    length2 = i3;
                }
            }
        }

        public Object lambda31$V(Object obj, Object obj2, Object obj3, Object[] objArr) {
            LList lListMakeList = LList.makeList(objArr, 0);
            Apply apply = Scheme.apply;
            frame10 frame10Var = this.staticLink;
            return apply.apply2(frame10Var.pad, apply.applyN(new Object[]{this.format$Mnreal, frame10Var.signed, obj, obj2, obj3, lListMakeList}));
        }
    }

    public static Object fprintf$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame12 frame12Var = new frame12();
        frame12Var.port = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        frame12Var.cnt = Lit1;
        Scheme.apply.apply4(stdio$Cliprintf, frame12Var.lambda$Fn18, obj2, lListMakeList);
        return frame12Var.cnt;
    }

    public class frame12 extends ModuleBody {
        Object cnt;
        final ModuleMethod lambda$Fn18;
        Object port;

        public frame12() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 20, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:546");
            this.lambda$Fn18 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 20 ? lambda32(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 20) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Boolean lambda32(Object obj) {
            Boolean bool = Boolean.TRUE;
            if (strings.isString(obj)) {
                try {
                    this.cnt = AddOp.$Pl.apply2(Integer.valueOf(strings.stringLength((CharSequence) obj)), this.cnt);
                    ports.display(obj, this.port);
                    return bool;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-length", 1, obj);
                }
            }
            this.cnt = AddOp.$Pl.apply2(printf.Lit7, this.cnt);
            ports.display(obj, this.port);
            return bool;
        }
    }

    public static Object printf$V(Object obj, Object[] objArr) {
        return Scheme.apply.apply4(fprintf, ports.current$Mnoutput$Mnport.apply0(), obj, LList.makeList(objArr, 0));
    }

    public static Object sprintf$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        Object objError$V;
        frame13 frame13Var = new frame13();
        frame13Var.str = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        frame13Var.cnt = Lit1;
        if (strings.isString(frame13Var.str)) {
            objError$V = frame13Var.str;
        } else if (numbers.isNumber(frame13Var.str)) {
            Object obj3 = frame13Var.str;
            try {
                objError$V = strings.makeString(((Number) obj3).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-string", 1, obj3);
            }
        } else {
            Object obj4 = frame13Var.str;
            if (obj4 == Boolean.FALSE) {
                objError$V = strings.makeString(100);
            } else {
                objError$V = misc.error$V(Lit68, new Object[]{"first argument not understood", obj4});
            }
        }
        frame13Var.s = objError$V;
        try {
            frame13Var.end = Integer.valueOf(strings.stringLength((CharSequence) objError$V));
            Scheme.apply.apply4(stdio$Cliprintf, frame13Var.lambda$Fn19, obj2, lListMakeList);
            if (strings.isString(frame13Var.str)) {
                return frame13Var.cnt;
            }
            if (Scheme.isEqv.apply2(frame13Var.end, frame13Var.cnt) != Boolean.FALSE) {
                return frame13Var.s;
            }
            Object obj5 = frame13Var.s;
            try {
                CharSequence charSequence = (CharSequence) obj5;
                Object obj6 = frame13Var.cnt;
                try {
                    return strings.substring(charSequence, 0, ((Number) obj6).intValue());
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 3, obj6);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj5);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "string-length", 1, objError$V);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        switch (moduleMethod.selector) {
            case 24:
                Object obj = objArr[0];
                Object obj2 = objArr[1];
                int length = objArr.length - 2;
                Object[] objArr2 = new Object[length];
                while (true) {
                    int i = length - 1;
                    if (i < 0) {
                        return stdio$ClIprintf$V(obj, obj2, objArr2);
                    }
                    objArr2[i] = objArr[length + 1];
                    length = i;
                }
            case 25:
                Object obj3 = objArr[0];
                Object obj4 = objArr[1];
                int length2 = objArr.length - 2;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    int i2 = length2 - 1;
                    if (i2 < 0) {
                        return fprintf$V(obj3, obj4, objArr3);
                    }
                    objArr3[i2] = objArr[length2 + 1];
                    length2 = i2;
                }
            case 26:
                Object obj5 = objArr[0];
                int length3 = objArr.length - 1;
                Object[] objArr4 = new Object[length3];
                while (true) {
                    int i3 = length3 - 1;
                    if (i3 < 0) {
                        return printf$V(obj5, objArr4);
                    }
                    objArr4[i3] = objArr[length3];
                    length3 = i3;
                }
            case 27:
                Object obj6 = objArr[0];
                Object obj7 = objArr[1];
                int length4 = objArr.length - 2;
                Object[] objArr5 = new Object[length4];
                while (true) {
                    int i4 = length4 - 1;
                    if (i4 < 0) {
                        return sprintf$V(obj6, obj7, objArr5);
                    }
                    objArr5[i4] = objArr[length4 + 1];
                    length4 = i4;
                }
            default:
                return super.applyN(moduleMethod, objArr);
        }
    }

    public class frame13 extends ModuleBody {
        Object cnt;
        Object end;
        final ModuleMethod lambda$Fn19;
        Object s;
        Object str;

        public frame13() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 21, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:564");
            this.lambda$Fn19 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 21 ? lambda33(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 21) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:107:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean lambda33(java.lang.Object r14) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 429
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame13.lambda33(java.lang.Object):boolean");
        }
    }
}
