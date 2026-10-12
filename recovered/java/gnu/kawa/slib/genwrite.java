package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.CharSeq;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Char;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.strings;
import kawa.lib.vectors;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class genwrite extends ModuleBody {
    public static final genwrite $instance;
    static final Char Lit0;
    static final IntNum Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit14;
    static final IntNum Lit15;
    static final IntNum Lit16;
    static final IntNum Lit17;
    static final IntNum Lit18;
    static final IntNum Lit19;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit29;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit31;
    static final SimpleSymbol Lit32;
    static final SimpleSymbol Lit33;
    static final SimpleSymbol Lit34;
    static final SimpleSymbol Lit35;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod generic$Mnwrite;
    public static final ModuleMethod reverse$Mnstring$Mnappend;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("reverse-string-append");
        Lit35 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("generic-write");
        Lit34 = simpleSymbol2;
        Lit33 = (SimpleSymbol) a.f(LispLanguage.unquotesplicing_sym);
        Lit32 = (SimpleSymbol) a.f(LispLanguage.unquote_sym);
        Lit31 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit30 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit29 = (SimpleSymbol) a.f("pp-DO");
        Lit28 = (SimpleSymbol) a.f("pp-BEGIN");
        Lit27 = (SimpleSymbol) a.f("pp-LET");
        Lit26 = (SimpleSymbol) a.f("pp-AND");
        Lit25 = (SimpleSymbol) a.f("pp-CASE");
        Lit24 = (SimpleSymbol) a.f("pp-COND");
        Lit23 = (SimpleSymbol) a.f("pp-IF");
        Lit22 = (SimpleSymbol) a.f("pp-LAMBDA");
        Lit21 = (SimpleSymbol) a.f("pp-expr-list");
        Lit20 = (SimpleSymbol) a.f("pp-expr");
        Lit19 = IntNum.make(2);
        Lit18 = IntNum.make(50);
        Lit17 = IntNum.make(1);
        Lit16 = IntNum.make(8);
        Lit15 = IntNum.make(7);
        Lit14 = (SimpleSymbol) a.f("do");
        Lit13 = (SimpleSymbol) a.f("begin");
        Lit12 = (SimpleSymbol) a.f("let");
        Lit11 = (SimpleSymbol) a.f("or");
        Lit10 = (SimpleSymbol) a.f("and");
        Lit9 = (SimpleSymbol) a.f("case");
        Lit8 = (SimpleSymbol) a.f("cond");
        Lit7 = (SimpleSymbol) a.f("set!");
        Lit6 = (SimpleSymbol) a.f("if");
        Lit5 = (SimpleSymbol) a.f("define");
        Lit4 = (SimpleSymbol) a.f("letrec");
        Lit3 = (SimpleSymbol) a.f("let*");
        Lit2 = (SimpleSymbol) a.f("lambda");
        Lit1 = IntNum.make(0);
        Lit0 = Char.make(10);
        genwrite genwriteVar = new genwrite();
        $instance = genwriteVar;
        generic$Mnwrite = new ModuleMethod(genwriteVar, 12, simpleSymbol2, 16388);
        reverse$Mnstring$Mnappend = new ModuleMethod(genwriteVar, 13, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        genwriteVar.run();
    }

    public genwrite() {
        ModuleInfo.register(this);
    }

    public static Object genericWrite(Object obj, Object obj2, Object obj3, Object obj4) {
        frame frameVar = new frame();
        frameVar.display$Qu = obj2;
        frameVar.width = obj3;
        frameVar.output = obj4;
        if (obj3 != Boolean.FALSE) {
            CharSequence charSequenceMakeString = strings.makeString(1, Lit0);
            IntNum intNum = Lit1;
            frame0 frame0Var = new frame0();
            frame0Var.staticLink = frameVar;
            Procedure procedure = frame0Var.pp$Mnexpr;
            Procedure procedure2 = frame0Var.pp$Mnexpr$Mnlist;
            Procedure procedure3 = frame0Var.pp$MnLAMBDA;
            Procedure procedure4 = frame0Var.pp$MnIF;
            Procedure procedure5 = frame0Var.pp$MnCOND;
            Procedure procedure6 = frame0Var.pp$MnCASE;
            Procedure procedure7 = frame0Var.pp$MnAND;
            Procedure procedure8 = frame0Var.pp$MnLET;
            Procedure procedure9 = frame0Var.pp$MnBEGIN;
            frame0Var.pp$MnDO = frame0Var.pp$MnDO;
            frame0Var.pp$MnBEGIN = procedure9;
            frame0Var.pp$MnLET = procedure8;
            frame0Var.pp$MnAND = procedure7;
            frame0Var.pp$MnCASE = procedure6;
            frame0Var.pp$MnCOND = procedure5;
            frame0Var.pp$MnIF = procedure4;
            frame0Var.pp$MnLAMBDA = procedure3;
            frame0Var.pp$Mnexpr$Mnlist = procedure2;
            frame0Var.pp$Mnexpr = procedure;
            return frameVar.lambda4out(charSequenceMakeString, frame0Var.lambda7pr(obj, intNum, intNum, procedure));
        }
        return frameVar.lambda5wr(obj, Lit1);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        return moduleMethod.selector == 12 ? genericWrite(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
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

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public class frame extends ModuleBody {
        Object display$Qu;
        Object output;
        Object width;

        public static Object lambda1isReadMacro(Object obj) throws Throwable {
            Object objApply2;
            Object objApply22;
            Object objApply1 = lists.car.apply1(obj);
            GenericProc genericProc = lists.cdr;
            Object objApply12 = genericProc.apply1(obj);
            IsEqv isEqv = Scheme.isEqv;
            Object objApply23 = isEqv.apply2(objApply1, genwrite.Lit30);
            Boolean bool = Boolean.FALSE;
            if (objApply23 == bool ? !((objApply2 = isEqv.apply2(objApply1, genwrite.Lit31)) == bool ? (objApply22 = isEqv.apply2(objApply1, genwrite.Lit32)) == bool ? isEqv.apply2(objApply1, genwrite.Lit33) == bool : objApply22 == bool : objApply2 == bool) : objApply23 != bool) {
                boolean zIsPair = lists.isPair(objApply12);
                if (zIsPair) {
                    return lists.isNull(genericProc.apply1(objApply12)) ? Boolean.TRUE : bool;
                }
                if (zIsPair) {
                    return Boolean.TRUE;
                }
            }
            return bool;
        }

        public static Object lambda2readMacroBody(Object obj) {
            return lists.cadr.apply1(obj);
        }

        public static Object lambda3readMacroPrefix(Object obj) throws Throwable {
            Object objApply1 = lists.car.apply1(obj);
            lists.cdr.apply1(obj);
            IsEqv isEqv = Scheme.isEqv;
            Object objApply2 = isEqv.apply2(objApply1, genwrite.Lit30);
            Boolean bool = Boolean.FALSE;
            return objApply2 != bool ? "'" : isEqv.apply2(objApply1, genwrite.Lit31) != bool ? "`" : isEqv.apply2(objApply1, genwrite.Lit32) != bool ? "," : isEqv.apply2(objApply1, genwrite.Lit33) != bool ? ",@" : Values.empty;
        }

        public Object lambda4out(Object obj, Object obj2) throws Throwable {
            Boolean bool = Boolean.FALSE;
            if (obj2 == bool) {
                return obj2;
            }
            Object objApply2 = Scheme.applyToArgs.apply2(this.output, obj);
            if (objApply2 == bool) {
                return objApply2;
            }
            try {
                return AddOp.$Pl.apply2(obj2, Integer.valueOf(strings.stringLength((CharSequence) obj)));
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, obj);
            }
        }

        public Object lambda5wr(Object obj, Object obj2) throws Throwable {
            if (lists.isPair(obj)) {
                if (lambda1isReadMacro(obj) != Boolean.FALSE) {
                    return lambda5wr(lambda2readMacroBody(obj), lambda4out(lambda3readMacroPrefix(obj), obj2));
                }
            } else if (!lists.isNull(obj)) {
                if (!vectors.isVector(obj)) {
                    return lambda4out(Format.formatToString(0, this.display$Qu != Boolean.FALSE ? "~a" : "~s", obj), obj2);
                }
                try {
                    obj = vectors.vector$To$List((FVector) obj);
                    obj2 = lambda4out("#", obj2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "vector->list", 1, obj);
                }
            }
            if (lists.isPair(obj)) {
                Object objApply1 = lists.cdr.apply1(obj);
                if (obj2 != Boolean.FALSE) {
                    obj2 = lambda5wr(lists.car.apply1(obj), lambda4out("(", obj2));
                }
                while (obj2 != Boolean.FALSE) {
                    if (!lists.isPair(objApply1)) {
                        if (lists.isNull(objApply1)) {
                            return lambda4out(")", obj2);
                        }
                        return lambda4out(")", lambda5wr(objApply1, lambda4out(" . ", obj2)));
                    }
                    Object objApply12 = lists.cdr.apply1(objApply1);
                    obj2 = lambda5wr(lists.car.apply1(objApply1), lambda4out(" ", obj2));
                    objApply1 = objApply12;
                }
                return obj2;
            }
            return lambda4out("()", obj2);
        }
    }

    public class frame0 extends ModuleBody {
        frame staticLink;
        Procedure pp$Mnexpr = new ModuleMethod(this, 2, genwrite.Lit20, 12291);
        Procedure pp$Mnexpr$Mnlist = new ModuleMethod(this, 3, genwrite.Lit21, 12291);
        Procedure pp$MnLAMBDA = new ModuleMethod(this, 4, genwrite.Lit22, 12291);
        Procedure pp$MnIF = new ModuleMethod(this, 5, genwrite.Lit23, 12291);
        Procedure pp$MnCOND = new ModuleMethod(this, 6, genwrite.Lit24, 12291);
        Procedure pp$MnCASE = new ModuleMethod(this, 7, genwrite.Lit25, 12291);
        Procedure pp$MnAND = new ModuleMethod(this, 8, genwrite.Lit26, 12291);
        Procedure pp$MnLET = new ModuleMethod(this, 9, genwrite.Lit27, 12291);
        Procedure pp$MnBEGIN = new ModuleMethod(this, 10, genwrite.Lit28, 12291);
        Procedure pp$MnDO = new ModuleMethod(this, 11, genwrite.Lit29, 12291);

        public Object lambda6indent(Object obj, Object obj2) throws Throwable {
            Boolean bool = Boolean.FALSE;
            if (obj2 != bool) {
                if (Scheme.numLss.apply2(obj, obj2) != bool) {
                    Object objLambda4out = this.staticLink.lambda4out(strings.makeString(1, genwrite.Lit0), obj2);
                    if (objLambda4out == bool) {
                        return objLambda4out;
                    }
                    obj2 = genwrite.Lit1;
                } else {
                    obj = AddOp.$Mn.apply2(obj, obj2);
                }
                while (true) {
                    NumberCompare numberCompare = Scheme.numGrt;
                    Object objApply2 = numberCompare.apply2(obj, genwrite.Lit1);
                    Boolean bool2 = Boolean.FALSE;
                    if (objApply2 == bool2) {
                        break;
                    }
                    if (numberCompare.apply2(obj, genwrite.Lit15) != bool2) {
                        obj = AddOp.$Mn.apply2(obj, genwrite.Lit16);
                        obj2 = this.staticLink.lambda4out("        ", obj2);
                    } else {
                        try {
                            return this.staticLink.lambda4out(strings.substring("        ", 0, ((Number) obj).intValue()), obj2);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "substring", 3, obj);
                        }
                    }
                }
            }
            return obj2;
        }

        public Object lambda7pr(Object obj, Object obj2, Object obj3, Object obj4) {
            frame1 frame1Var = new frame1();
            frame1Var.staticLink = this;
            boolean zIsPair = lists.isPair(obj);
            if (!zIsPair ? vectors.isVector(obj) : zIsPair) {
                LList lList = LList.Empty;
                AddOp addOp = AddOp.$Pl;
                AddOp addOp2 = AddOp.$Mn;
                frame1Var.left = numbers.min(addOp.apply2(addOp2.apply2(addOp2.apply2(this.staticLink.width, obj2), obj3), genwrite.Lit17), genwrite.Lit18);
                frame1Var.result = lList;
                Object obj5 = this.staticLink.display$Qu;
                Boolean bool = Boolean.FALSE;
                genwrite.genericWrite(obj, obj5, bool, frame1Var.lambda$Fn1);
                if (Scheme.numGrt.apply2(frame1Var.left, genwrite.Lit1) != bool) {
                    return this.staticLink.lambda4out(genwrite.reverseStringAppend(frame1Var.result), obj2);
                }
                if (lists.isPair(obj)) {
                    return Scheme.applyToArgs.apply4(obj4, obj, obj2, obj3);
                }
                try {
                    return lambda10ppList(vectors.vector$To$List((FVector) obj), this.staticLink.lambda4out("#", obj2), obj3, this.pp$Mnexpr);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "vector->list", 1, obj);
                }
            }
            return this.staticLink.lambda5wr(obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 2:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 3:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 4:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 5:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 6:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 7:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 8:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 9:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 10:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 11:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                default:
                    return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
        }

        public Object lambda8ppExpr(Object obj, Object obj2, Object obj3) throws Throwable {
            Object objApply2;
            Object objApply22;
            Object obj4;
            Object objLambda1isReadMacro = frame.lambda1isReadMacro(obj);
            Boolean bool = Boolean.FALSE;
            if (objLambda1isReadMacro != bool) {
                return lambda7pr(frame.lambda2readMacroBody(obj), this.staticLink.lambda4out(frame.lambda3readMacroPrefix(obj), obj2), obj3, this.pp$Mnexpr);
            }
            Object objApply1 = lists.car.apply1(obj);
            if (!misc.isSymbol(objApply1)) {
                return lambda10ppList(obj, obj2, obj3, this.pp$Mnexpr);
            }
            IsEqv isEqv = Scheme.isEqv;
            Object objApply23 = isEqv.apply2(objApply1, genwrite.Lit2);
            if (objApply23 == bool ? (objApply2 = isEqv.apply2(objApply1, genwrite.Lit3)) == bool ? (objApply22 = isEqv.apply2(objApply1, genwrite.Lit4)) == bool ? isEqv.apply2(objApply1, genwrite.Lit5) == bool : objApply22 == bool : objApply2 == bool : objApply23 == bool) {
                Object objApply24 = isEqv.apply2(objApply1, genwrite.Lit6);
                if (objApply24 == bool ? isEqv.apply2(objApply1, genwrite.Lit7) != bool : objApply24 != bool) {
                    obj4 = this.pp$MnIF;
                } else if (isEqv.apply2(objApply1, genwrite.Lit8) != bool) {
                    obj4 = this.pp$MnCOND;
                } else if (isEqv.apply2(objApply1, genwrite.Lit9) != bool) {
                    obj4 = this.pp$MnCASE;
                } else {
                    Object objApply25 = isEqv.apply2(objApply1, genwrite.Lit10);
                    obj4 = (objApply25 == bool ? isEqv.apply2(objApply1, genwrite.Lit11) == bool : objApply25 == bool) ? isEqv.apply2(objApply1, genwrite.Lit12) != bool ? this.pp$MnLET : isEqv.apply2(objApply1, genwrite.Lit13) != bool ? this.pp$MnBEGIN : isEqv.apply2(objApply1, genwrite.Lit14) != bool ? this.pp$MnDO : bool : this.pp$MnAND;
                }
            } else {
                obj4 = this.pp$MnLAMBDA;
            }
            if (obj4 != bool) {
                return Scheme.applyToArgs.apply4(obj4, obj, obj2, obj3);
            }
            try {
                return strings.stringLength(((Symbol) objApply1).toString()) > 5 ? lambda12ppGeneral(obj, obj2, obj3, bool, bool, bool, this.pp$Mnexpr) : lambda9ppCall(obj, obj2, obj3, this.pp$Mnexpr);
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, objApply1);
            }
        }

        public Object lambda9ppCall(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            Object objLambda5wr = this.staticLink.lambda5wr(lists.car.apply1(obj), this.staticLink.lambda4out("(", obj2));
            return obj2 != Boolean.FALSE ? lambda11ppDown(lists.cdr.apply1(obj), objLambda5wr, AddOp.$Pl.apply2(objLambda5wr, genwrite.Lit17), obj3, obj4) : obj2;
        }

        public Object lambda10ppList(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            Object objLambda4out = this.staticLink.lambda4out("(", obj2);
            return lambda11ppDown(obj, objLambda4out, objLambda4out, obj3, obj4);
        }

        public Object lambda11ppDown(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) throws Throwable {
            while (obj2 != Boolean.FALSE) {
                if (!lists.isPair(obj)) {
                    if (lists.isNull(obj)) {
                        return this.staticLink.lambda4out(")", obj2);
                    }
                    frame frameVar = this.staticLink;
                    return frameVar.lambda4out(")", lambda7pr(obj, lambda6indent(obj3, frameVar.lambda4out(".", lambda6indent(obj3, obj2))), AddOp.$Pl.apply2(obj4, genwrite.Lit17), obj5));
                }
                Object objApply1 = lists.cdr.apply1(obj);
                obj2 = lambda7pr(lists.car.apply1(obj), lambda6indent(obj3, obj2), lists.isNull(objApply1) ? AddOp.$Pl.apply2(obj4, genwrite.Lit17) : genwrite.Lit1, obj5);
                obj = objApply1;
            }
            return obj2;
        }

        public Object lambda12ppGeneral(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) throws Throwable {
            Object objApply2;
            Object objApply22;
            GenericProc genericProc = lists.car;
            Object objApply1 = genericProc.apply1(obj);
            GenericProc genericProc2 = lists.cdr;
            Object objApply12 = genericProc2.apply1(obj);
            frame frameVar = this.staticLink;
            Object objLambda5wr = frameVar.lambda5wr(objApply1, frameVar.lambda4out("(", obj2));
            Boolean bool = Boolean.FALSE;
            if (obj4 == bool ? obj4 != bool : lists.isPair(objApply12)) {
                Object objApply13 = genericProc.apply1(objApply12);
                objApply12 = genericProc2.apply1(objApply12);
                frame frameVar2 = this.staticLink;
                objLambda5wr = frameVar2.lambda5wr(objApply13, frameVar2.lambda4out(" ", objLambda5wr));
                AddOp addOp = AddOp.$Pl;
                objApply2 = addOp.apply2(obj2, genwrite.Lit19);
                objApply22 = addOp.apply2(objLambda5wr, genwrite.Lit17);
            } else {
                AddOp addOp2 = AddOp.$Pl;
                objApply2 = addOp2.apply2(obj2, genwrite.Lit19);
                objApply22 = addOp2.apply2(objLambda5wr, genwrite.Lit17);
            }
            if (obj5 == bool ? obj5 != bool : lists.isPair(objApply12)) {
                Object objApply14 = genericProc.apply1(objApply12);
                objApply12 = genericProc2.apply1(objApply12);
                objLambda5wr = lambda7pr(objApply14, lambda6indent(objApply22, objLambda5wr), lists.isNull(objApply12) ? AddOp.$Pl.apply2(obj3, genwrite.Lit17) : genwrite.Lit1, obj5);
            }
            if (obj6 == bool ? obj6 != bool : lists.isPair(objApply12)) {
                Object objApply15 = genericProc.apply1(objApply12);
                objApply12 = genericProc2.apply1(objApply12);
                objLambda5wr = lambda7pr(objApply15, lambda6indent(objApply22, objLambda5wr), lists.isNull(objApply12) ? AddOp.$Pl.apply2(obj3, genwrite.Lit17) : genwrite.Lit1, obj6);
            }
            return lambda11ppDown(objApply12, objLambda5wr, objApply2, obj3, obj7);
        }

        public Object lambda13ppExprList(Object obj, Object obj2, Object obj3) {
            return lambda10ppList(obj, obj2, obj3, this.pp$Mnexpr);
        }

        public Object lambda14pp$MnLAMBDA(Object obj, Object obj2, Object obj3) {
            Boolean bool = Boolean.FALSE;
            return lambda12ppGeneral(obj, obj2, obj3, bool, this.pp$Mnexpr$Mnlist, bool, this.pp$Mnexpr);
        }

        public Object lambda15pp$MnIF(Object obj, Object obj2, Object obj3) {
            Boolean bool = Boolean.FALSE;
            Procedure procedure = this.pp$Mnexpr;
            return lambda12ppGeneral(obj, obj2, obj3, bool, procedure, bool, procedure);
        }

        public Object lambda16pp$MnCOND(Object obj, Object obj2, Object obj3) {
            return lambda9ppCall(obj, obj2, obj3, this.pp$Mnexpr$Mnlist);
        }

        public Object lambda17pp$MnCASE(Object obj, Object obj2, Object obj3) {
            Boolean bool = Boolean.FALSE;
            return lambda12ppGeneral(obj, obj2, obj3, bool, this.pp$Mnexpr, bool, this.pp$Mnexpr$Mnlist);
        }

        public Object lambda18pp$MnAND(Object obj, Object obj2, Object obj3) {
            return lambda9ppCall(obj, obj2, obj3, this.pp$Mnexpr);
        }

        public Object lambda19pp$MnLET(Object obj, Object obj2, Object obj3) throws Throwable {
            Object objApply1 = lists.cdr.apply1(obj);
            boolean zIsPair = lists.isPair(objApply1);
            if (zIsPair) {
                zIsPair = misc.isSymbol(lists.car.apply1(objApply1));
            }
            return lambda12ppGeneral(obj, obj2, obj3, zIsPair ? Boolean.TRUE : Boolean.FALSE, this.pp$Mnexpr$Mnlist, Boolean.FALSE, this.pp$Mnexpr);
        }

        public Object lambda20pp$MnBEGIN(Object obj, Object obj2, Object obj3) {
            Boolean bool = Boolean.FALSE;
            return lambda12ppGeneral(obj, obj2, obj3, bool, bool, bool, this.pp$Mnexpr);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            switch (moduleMethod.selector) {
                case 2:
                    return lambda8ppExpr(obj, obj2, obj3);
                case 3:
                    return lambda13ppExprList(obj, obj2, obj3);
                case 4:
                    return lambda14pp$MnLAMBDA(obj, obj2, obj3);
                case 5:
                    return lambda15pp$MnIF(obj, obj2, obj3);
                case 6:
                    return lambda16pp$MnCOND(obj, obj2, obj3);
                case 7:
                    return lambda17pp$MnCASE(obj, obj2, obj3);
                case 8:
                    return lambda18pp$MnAND(obj, obj2, obj3);
                case 9:
                    return lambda19pp$MnLET(obj, obj2, obj3);
                case 10:
                    return lambda20pp$MnBEGIN(obj, obj2, obj3);
                case 11:
                    return lambda21pp$MnDO(obj, obj2, obj3);
                default:
                    return super.apply3(moduleMethod, obj, obj2, obj3);
            }
        }

        public Object lambda21pp$MnDO(Object obj, Object obj2, Object obj3) {
            Boolean bool = Boolean.FALSE;
            Procedure procedure = this.pp$Mnexpr$Mnlist;
            return lambda12ppGeneral(obj, obj2, obj3, bool, procedure, procedure, this.pp$Mnexpr);
        }
    }

    public class frame1 extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        Object left;
        Object result;
        frame0 staticLink;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/genwrite.scm:72");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 1 ? lambda22(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 1) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public boolean lambda22(Object obj) throws Throwable {
            this.result = lists.cons(obj, this.result);
            try {
                Object objApply2 = AddOp.$Mn.apply2(this.left, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                this.left = objApply2;
                return ((Boolean) Scheme.numGrt.apply2(objApply2, genwrite.Lit1)).booleanValue();
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, obj);
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        return moduleMethod.selector == 13 ? reverseStringAppend(obj) : super.apply1(moduleMethod, obj);
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        if (moduleMethod.selector != 13) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static Object lambda23revStringAppend(Object obj, Object obj2) throws Throwable {
        if (lists.isPair(obj)) {
            Object objApply1 = lists.car.apply1(obj);
            try {
                int iStringLength = strings.stringLength((CharSequence) objApply1);
                Object objLambda23revStringAppend = lambda23revStringAppend(lists.cdr.apply1(obj), AddOp.$Pl.apply2(obj2, Integer.valueOf(iStringLength)));
                Object objApply2 = Lit1;
                AddOp addOp = AddOp.$Mn;
                try {
                    Object objApply22 = addOp.apply2(addOp.apply2(Integer.valueOf(strings.stringLength((CharSequence) objLambda23revStringAppend)), obj2), Integer.valueOf(iStringLength));
                    while (Scheme.numLss.apply2(objApply2, Integer.valueOf(iStringLength)) != Boolean.FALSE) {
                        try {
                            try {
                                try {
                                    try {
                                        ((CharSeq) objLambda23revStringAppend).setCharAt(((Number) objApply22).intValue(), strings.stringRef((CharSequence) objApply1, ((Number) objApply2).intValue()));
                                        AddOp addOp2 = AddOp.$Pl;
                                        IntNum intNum = Lit17;
                                        objApply2 = addOp2.apply2(objApply2, intNum);
                                        objApply22 = addOp2.apply2(objApply22, intNum);
                                    } catch (ClassCastException e) {
                                        throw new WrongType(e, "string-ref", 2, objApply2);
                                    }
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "string-ref", 1, objApply1);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "string-set!", 2, objApply22);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "string-set!", 1, objLambda23revStringAppend);
                        }
                    }
                    return objLambda23revStringAppend;
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-length", 1, objLambda23revStringAppend);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-length", 1, objApply1);
            }
        }
        try {
            return strings.makeString(((Number) obj2).intValue());
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "make-string", 1, obj2);
        }
    }

    public static Object reverseStringAppend(Object obj) {
        return lambda23revStringAppend(obj, Lit1);
    }
}
