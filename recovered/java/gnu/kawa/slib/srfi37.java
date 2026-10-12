package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.IsEqual;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Char;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.call_with_values;

/* loaded from: classes2.dex */
public class srfi37 extends ModuleBody {
    public static final srfi37 $instance;
    static final IntNum Lit0;
    static final Char Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final Char Lit2;
    static final IntNum Lit3;
    static final IntNum Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod args$Mnfold;
    public static final ModuleMethod option;
    public static final ModuleMethod option$Mnnames;
    public static final ModuleMethod option$Mnoptional$Mnarg$Qu;
    public static final ModuleMethod option$Mnprocessor;
    public static final ModuleMethod option$Mnrequired$Mnarg$Qu;
    static final Class option$Mntype;
    public static final ModuleMethod option$Qu;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("args-fold");
        Lit11 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("option-processor");
        Lit10 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("option-optional-arg?");
        Lit9 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("option-required-arg?");
        Lit8 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("option-names");
        Lit7 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("option");
        Lit6 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("option?");
        Lit5 = simpleSymbol7;
        Lit4 = IntNum.make(0);
        Lit3 = IntNum.make(3);
        Lit2 = Char.make(61);
        Lit1 = Char.make(45);
        Lit0 = IntNum.make(1);
        srfi37 srfi37Var = new srfi37();
        $instance = srfi37Var;
        option$Mntype = option$Mntype.class;
        option$Qu = new ModuleMethod(srfi37Var, 25, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        option = new ModuleMethod(srfi37Var, 26, simpleSymbol6, 16388);
        option$Mnnames = new ModuleMethod(srfi37Var, 27, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        option$Mnrequired$Mnarg$Qu = new ModuleMethod(srfi37Var, 28, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        option$Mnoptional$Mnarg$Qu = new ModuleMethod(srfi37Var, 29, simpleSymbol3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        option$Mnprocessor = new ModuleMethod(srfi37Var, 30, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        args$Mnfold = new ModuleMethod(srfi37Var, 31, simpleSymbol, -4092);
        srfi37Var.run();
    }

    public srfi37() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static boolean isOption(Object obj) {
        return obj instanceof option$Mntype;
    }

    public static Object isOptionOptionalArg(option$Mntype option_mntype) {
        return option_mntype.optional$Mnarg$Qu;
    }

    public static Object isOptionRequiredArg(option$Mntype option_mntype) {
        return option_mntype.required$Mnarg$Qu;
    }

    public static option$Mntype option(Object obj, Object obj2, Object obj3, Object obj4) {
        option$Mntype option_mntype = new option$Mntype();
        option_mntype.names = obj;
        option_mntype.required$Mnarg$Qu = obj2;
        option_mntype.optional$Mnarg$Qu = obj3;
        option_mntype.processor = obj4;
        return option_mntype;
    }

    public static Object optionNames(option$Mntype option_mntype) {
        return option_mntype.names;
    }

    public static Object optionProcessor(option$Mntype option_mntype) {
        return option_mntype.processor;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        return moduleMethod.selector == 26 ? option(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (moduleMethod.selector != 26) {
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
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 25:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 26:
            default:
                return super.match1(moduleMethod, obj, callContext);
            case 27:
                if (!(obj instanceof option$Mntype)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 28:
                if (!(obj instanceof option$Mntype)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 29:
                if (!(obj instanceof option$Mntype)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 30:
                if (!(obj instanceof option$Mntype)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        switch (moduleMethod.selector) {
            case 25:
                return isOption(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 26:
            default:
                return super.apply1(moduleMethod, obj);
            case 27:
                try {
                    return optionNames((option$Mntype) obj);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "option-names", 1, obj);
                }
            case 28:
                try {
                    return isOptionRequiredArg((option$Mntype) obj);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "option-required-arg?", 1, obj);
                }
            case 29:
                try {
                    return isOptionOptionalArg((option$Mntype) obj);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "option-optional-arg?", 1, obj);
                }
            case 30:
                try {
                    return optionProcessor((option$Mntype) obj);
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "option-processor", 1, obj);
                }
        }
    }

    public static Object argsFold$V(Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        frame frameVar = new frame();
        frameVar.options = obj2;
        frameVar.unrecognized$Mnoption$Mnproc = obj3;
        frameVar.operand$Mnproc = obj4;
        return frameVar.lambda5scanArgs(obj, LList.makeList(objArr, 0));
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        if (moduleMethod.selector != 31) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        Object obj3 = objArr[2];
        Object obj4 = objArr[3];
        int length = objArr.length - 4;
        Object[] objArr2 = new Object[length];
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return argsFold$V(obj, obj2, obj3, obj4, objArr2);
            }
            objArr2[i] = objArr[length + 3];
            length = i;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        if (moduleMethod.selector != 31) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public class frame extends ModuleBody {
        Object operand$Mnproc;
        Object options;
        Object unrecognized$Mnoption$Mnproc;

        public static Object lambda1find(Object obj, Object obj2) {
            if (lists.isNull(obj)) {
                return Boolean.FALSE;
            }
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            GenericProc genericProc = lists.car;
            return applyToArgs.apply2(obj2, genericProc.apply1(obj)) != Boolean.FALSE ? genericProc.apply1(obj) : lambda1find(lists.cdr.apply1(obj), obj2);
        }

        public Object lambda2findOption(Object obj) {
            frame0 frame0Var = new frame0();
            frame0Var.staticLink = this;
            frame0Var.name = obj;
            return lambda1find(this.options, frame0Var.lambda$Fn1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
        
            if (r5 != r6) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x009e, code lost:
        
            if (gnu.kawa.slib.srfi37.isOptionOptionalArg((gnu.kawa.slib.option$Mntype) r5) != r6) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b1, code lost:
        
            if (r5 != false) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00bb, code lost:
        
            return kawa.standard.call_with_values.callWithValues(r2.lambda$Fn3, r2.lambda$Fn4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
        
            r5 = r2.option;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00c0, code lost:
        
            r5 = gnu.kawa.slib.srfi37.isOptionRequiredArg((gnu.kawa.slib.option$Mntype) r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00c4, code lost:
        
            if (r5 == r6) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00cc, code lost:
        
            if (kawa.lib.lists.isPair(r2.args) == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
        
            if (r5 == r6) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00d9, code lost:
        
            return kawa.standard.call_with_values.callWithValues(r2.lambda$Fn5, r2.lambda$Fn6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00e2, code lost:
        
            return kawa.standard.call_with_values.callWithValues(r2.lambda$Fn7, r2.lambda$Fn8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00e3, code lost:
        
            r6 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00e9, code lost:
        
            throw new gnu.mapping.WrongType(r6, "option-required-arg?", 0, r5);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda3scanShortOptions(java.lang.Object r5, java.lang.Object r6, java.lang.Object r7, java.lang.Object r8) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 273
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi37.frame.lambda3scanShortOptions(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        public Object lambda4scanOperands(Object obj, Object obj2) {
            frame2 frame2Var = new frame2();
            frame2Var.staticLink = this;
            frame2Var.operands = obj;
            frame2Var.seeds = obj2;
            if (lists.isNull(obj)) {
                return Scheme.apply.apply2(misc.values, frame2Var.seeds);
            }
            return call_with_values.callWithValues(frame2Var.lambda$Fn9, frame2Var.lambda$Fn10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x013a, code lost:
        
            r9 = r1.arg;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0141, code lost:
        
            r9 = kawa.lib.strings.substring((java.lang.CharSequence) r9, 2, kawa.lib.strings.stringLength((java.lang.CharSequence) r9));
            r1.name = r9;
            r9 = lambda2findOption(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x014f, code lost:
        
            if (r9 == r5) goto L106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x0152, code lost:
        
            r9 = gnu.kawa.slib.srfi37.option(gnu.lists.LList.list1(r1.name), r5, r5, r8.unrecognized$Mnoption$Mnproc);
         */
        /* JADX WARN: Code restructure failed: missing block: B:107:0x015e, code lost:
        
            r1.option = r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0162, code lost:
        
            r9 = gnu.kawa.slib.srfi37.isOptionRequiredArg((gnu.kawa.slib.option$Mntype) r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0166, code lost:
        
            if (r9 == r5) goto L114;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x016e, code lost:
        
            if (kawa.lib.lists.isPair(r1.args) == false) goto L117;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x0171, code lost:
        
            if (r9 == r5) goto L117;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x017b, code lost:
        
            return kawa.standard.call_with_values.callWithValues(r1.lambda$Fn19, r1.lambda$Fn20);
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x0184, code lost:
        
            return kawa.standard.call_with_values.callWithValues(r1.lambda$Fn21, r1.lambda$Fn22);
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x0185, code lost:
        
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x018d, code lost:
        
            throw new gnu.mapping.WrongType(r10, "option-required-arg?", 0, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x018e, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:124:0x0194, code lost:
        
            throw new gnu.mapping.WrongType(r1, "string-length", 1, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x0195, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:127:0x019b, code lost:
        
            throw new gnu.mapping.WrongType(r0, "substring", 1, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:0x019c, code lost:
        
            r9 = r1.arg;
         */
        /* JADX WARN: Code restructure failed: missing block: B:131:0x01a4, code lost:
        
            if (kawa.lib.strings.stringLength((java.lang.CharSequence) r9) <= 1) goto L133;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:0x01a6, code lost:
        
            r9 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:133:0x01a8, code lost:
        
            r9 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x01a9, code lost:
        
            if (r9 == false) goto L143;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:0x01ab, code lost:
        
            r9 = gnu.kawa.slib.srfi37.Lit1;
            r2 = r1.arg;
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x01b5, code lost:
        
            if (com.google.youngandroid.a.l((java.lang.CharSequence) r2, 0, r9) == false) goto L155;
         */
        /* JADX WARN: Code restructure failed: missing block: B:140:0x01b8, code lost:
        
            r9 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:142:0x01be, code lost:
        
            throw new gnu.mapping.WrongType(r9, "string-ref", 1, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x01bf, code lost:
        
            if (r9 == false) goto L155;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x01c1, code lost:
        
            r9 = r1.arg;
         */
        /* JADX WARN: Code restructure failed: missing block: B:148:0x01da, code lost:
        
            return lambda3scanShortOptions(gnu.kawa.slib.srfi37.Lit4, kawa.lib.strings.substring((java.lang.CharSequence) r9, 1, kawa.lib.strings.stringLength((java.lang.CharSequence) r9)), r1.args, r1.seeds);
         */
        /* JADX WARN: Code restructure failed: missing block: B:149:0x01db, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x01e1, code lost:
        
            throw new gnu.mapping.WrongType(r1, "string-length", 1, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x01e2, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x01e8, code lost:
        
            throw new gnu.mapping.WrongType(r0, "substring", 1, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:156:0x01f1, code lost:
        
            return kawa.standard.call_with_values.callWithValues(r1.lambda$Fn23, r1.lambda$Fn24);
         */
        /* JADX WARN: Code restructure failed: missing block: B:157:0x01f2, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:159:0x01f8, code lost:
        
            throw new gnu.mapping.WrongType(r1, "string-length", 1, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0124, code lost:
        
            if (com.google.youngandroid.a.l((java.lang.CharSequence) r7, 1, r9) != false) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x012e, code lost:
        
            if (r7 != false) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0138, code lost:
        
            if (r9 != false) goto L100;
         */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00ed  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda5scanArgs(java.lang.Object r9, java.lang.Object r10) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 519
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi37.frame.lambda5scanArgs(java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }

    public class frame0 extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        final ModuleMethod lambda$Fn2;
        Object name;
        frame staticLink;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm:75");
            this.lambda$Fn2 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm:72");
            this.lambda$Fn1 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            int i = moduleMethod.selector;
            return i != 1 ? i != 2 ? super.apply1(moduleMethod, obj) : lambda6(obj) : lambda7(obj) ? Boolean.TRUE : Boolean.FALSE;
        }

        public Object lambda6(Object obj) {
            try {
                return frame.lambda1find(srfi37.optionNames((option$Mntype) obj), this.lambda$Fn2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "option-names", 0, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 1) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 2) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            return super.match1(moduleMethod, obj, callContext);
        }

        public boolean lambda7(Object obj) {
            return IsEqual.apply(this.name, obj);
        }
    }

    public class frame1 extends ModuleBody {
        Object args;
        Object index;
        final ModuleMethod lambda$Fn3 = new ModuleMethod(this, 3, null, 0);
        final ModuleMethod lambda$Fn4 = new ModuleMethod(this, 4, null, -4096);
        final ModuleMethod lambda$Fn5 = new ModuleMethod(this, 5, null, 0);
        final ModuleMethod lambda$Fn6 = new ModuleMethod(this, 6, null, -4096);
        final ModuleMethod lambda$Fn7 = new ModuleMethod(this, 7, null, 0);
        final ModuleMethod lambda$Fn8 = new ModuleMethod(this, 8, null, -4096);
        char name;
        Object option;
        Object seeds;
        Object shorts;
        frame staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            int i = moduleMethod.selector;
            return i != 3 ? i != 5 ? i != 7 ? super.apply0(moduleMethod) : lambda12() : lambda10() : lambda8();
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            int i = moduleMethod.selector;
            return i != 4 ? i != 6 ? i != 8 ? super.applyN(moduleMethod, objArr) : lambda13$V(objArr) : lambda11$V(objArr) : lambda9$V(objArr);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i != 3 && i != 5 && i != 7) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i != 4 && i != 6 && i != 8) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        public Object lambda9$V(Object[] objArr) {
            return this.staticLink.lambda5scanArgs(this.args, LList.makeList(objArr, 0));
        }

        public Object lambda8() throws Throwable {
            Apply apply = Scheme.apply;
            Object obj = this.option;
            try {
                Object objOptionProcessor = srfi37.optionProcessor((option$Mntype) obj);
                Object obj2 = this.option;
                Char charMake = Char.make(this.name);
                Object obj3 = this.shorts;
                try {
                    CharSequence charSequence = (CharSequence) obj3;
                    Object objApply2 = AddOp.$Pl.apply2(this.index, srfi37.Lit0);
                    try {
                        int iIntValue = ((Number) objApply2).intValue();
                        Object obj4 = this.shorts;
                        try {
                            return apply.applyN(new Object[]{objOptionProcessor, obj2, charMake, strings.substring(charSequence, iIntValue, strings.stringLength((CharSequence) obj4)), this.seeds});
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-length", 1, obj4);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "substring", 2, objApply2);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "substring", 1, obj3);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "option-processor", 0, obj);
            }
        }

        public Object lambda11$V(Object[] objArr) {
            return this.staticLink.lambda5scanArgs(lists.cdr.apply1(this.args), LList.makeList(objArr, 0));
        }

        public Object lambda10() {
            Apply apply = Scheme.apply;
            Object obj = this.option;
            try {
                return apply.applyN(new Object[]{srfi37.optionProcessor((option$Mntype) obj), this.option, Char.make(this.name), lists.car.apply1(this.args), this.seeds});
            } catch (ClassCastException e) {
                throw new WrongType(e, "option-processor", 0, obj);
            }
        }

        public Object lambda13$V(Object[] objArr) {
            return this.staticLink.lambda3scanShortOptions(AddOp.$Pl.apply2(this.index, srfi37.Lit0), this.shorts, this.args, LList.makeList(objArr, 0));
        }

        public Object lambda12() {
            Apply apply = Scheme.apply;
            Object obj = this.option;
            try {
                return apply.applyN(new Object[]{srfi37.optionProcessor((option$Mntype) obj), this.option, Char.make(this.name), Boolean.FALSE, this.seeds});
            } catch (ClassCastException e) {
                throw new WrongType(e, "option-processor", 0, obj);
            }
        }
    }

    public class frame2 extends ModuleBody {
        Object operands;
        Object seeds;
        frame staticLink;
        final ModuleMethod lambda$Fn9 = new ModuleMethod(this, 9, null, 0);
        final ModuleMethod lambda$Fn10 = new ModuleMethod(this, 10, null, -4096);

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 9 ? lambda14() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            return moduleMethod.selector == 10 ? lambda15$V(objArr) : super.applyN(moduleMethod, objArr);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 9) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        public Object lambda14() {
            return Scheme.apply.apply3(this.staticLink.operand$Mnproc, lists.car.apply1(this.operands), this.seeds);
        }

        public Object lambda15$V(Object[] objArr) {
            return this.staticLink.lambda4scanOperands(lists.cdr.apply1(this.operands), LList.makeList(objArr, 0));
        }
    }

    public class frame3 extends ModuleBody {
        Object arg;
        Object args;
        final ModuleMethod lambda$Fn11 = new ModuleMethod(this, 17, null, 0);
        final ModuleMethod lambda$Fn12 = new ModuleMethod(this, 18, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        final ModuleMethod lambda$Fn19 = new ModuleMethod(this, 19, null, 0);
        final ModuleMethod lambda$Fn20 = new ModuleMethod(this, 20, null, -4096);
        final ModuleMethod lambda$Fn21 = new ModuleMethod(this, 21, null, 0);
        final ModuleMethod lambda$Fn22 = new ModuleMethod(this, 22, null, -4096);
        final ModuleMethod lambda$Fn23 = new ModuleMethod(this, 23, null, 0);
        final ModuleMethod lambda$Fn24 = new ModuleMethod(this, 24, null, -4096);
        CharSequence name;
        Object option;
        Object seeds;
        frame staticLink;
        Object temp;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            int i = moduleMethod.selector;
            return i != 17 ? i != 19 ? i != 21 ? i != 23 ? super.apply0(moduleMethod) : lambda28() : lambda26() : lambda24() : lambda16();
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 18 ? lambda17(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            int i = moduleMethod.selector;
            return i != 20 ? i != 22 ? i != 24 ? super.applyN(moduleMethod, objArr) : lambda29$V(objArr) : lambda27$V(objArr) : lambda25$V(objArr);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i != 17 && i != 19 && i != 21 && i != 23) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 18) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i != 20 && i != 22 && i != 24) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        public Object lambda17(Object obj) {
            frame4 frame4Var = new frame4();
            frame4Var.staticLink = this;
            frame4Var.x = obj;
            return call_with_values.callWithValues(frame4Var.lambda$Fn13, frame4Var.lambda$Fn14);
        }

        public CharSequence lambda16() {
            Object obj = this.arg;
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object obj2 = this.temp;
                try {
                    return strings.substring(charSequence, 2, ((Number) obj2).intValue());
                } catch (ClassCastException e) {
                    throw new WrongType(e, "substring", 3, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "substring", 1, obj);
            }
        }

        public Object lambda25$V(Object[] objArr) {
            return this.staticLink.lambda5scanArgs(lists.cdr.apply1(this.args), LList.makeList(objArr, 0));
        }

        public Object lambda24() {
            Apply apply = Scheme.apply;
            Object obj = this.option;
            try {
                return apply.applyN(new Object[]{srfi37.optionProcessor((option$Mntype) obj), this.option, this.name, lists.car.apply1(this.args), this.seeds});
            } catch (ClassCastException e) {
                throw new WrongType(e, "option-processor", 0, obj);
            }
        }

        public Object lambda27$V(Object[] objArr) {
            return this.staticLink.lambda5scanArgs(this.args, LList.makeList(objArr, 0));
        }

        public Object lambda26() {
            Apply apply = Scheme.apply;
            Object obj = this.option;
            try {
                return apply.applyN(new Object[]{srfi37.optionProcessor((option$Mntype) obj), this.option, this.name, Boolean.FALSE, this.seeds});
            } catch (ClassCastException e) {
                throw new WrongType(e, "option-processor", 0, obj);
            }
        }

        public Object lambda28() {
            return Scheme.apply.apply3(this.staticLink.operand$Mnproc, this.arg, this.seeds);
        }

        public Object lambda29$V(Object[] objArr) {
            return this.staticLink.lambda5scanArgs(this.args, LList.makeList(objArr, 0));
        }
    }

    public class frame4 extends ModuleBody {
        final ModuleMethod lambda$Fn13 = new ModuleMethod(this, 15, null, 0);
        final ModuleMethod lambda$Fn14 = new ModuleMethod(this, 16, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        frame3 staticLink;
        Object x;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 15 ? lambda18() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 16 ? lambda19(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 15) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 16) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda19(Object obj) {
            frame5 frame5Var = new frame5();
            frame5Var.staticLink = this;
            frame5Var.x = obj;
            return call_with_values.callWithValues(frame5Var.lambda$Fn15, frame5Var.lambda$Fn16);
        }

        public CharSequence lambda18() throws Throwable {
            frame3 frame3Var = this.staticLink;
            Object obj = frame3Var.arg;
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object objApply2 = AddOp.$Pl.apply2(frame3Var.temp, srfi37.Lit0);
                try {
                    int iIntValue = ((Number) objApply2).intValue();
                    Object obj2 = this.staticLink.arg;
                    try {
                        return strings.substring(charSequence, iIntValue, strings.stringLength((CharSequence) obj2));
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-length", 1, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 2, objApply2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj);
            }
        }
    }

    public class frame5 extends ModuleBody {
        final ModuleMethod lambda$Fn15 = new ModuleMethod(this, 13, null, 0);
        final ModuleMethod lambda$Fn16 = new ModuleMethod(this, 14, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        frame4 staticLink;
        Object x;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 13 ? lambda20() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 14 ? lambda21(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 13) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 14) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda21(Object obj) {
            frame6 frame6Var = new frame6();
            frame6Var.staticLink = this;
            frame6Var.x = obj;
            return call_with_values.callWithValues(frame6Var.lambda$Fn17, frame6Var.lambda$Fn18);
        }

        public Object lambda20() {
            frame4 frame4Var = this.staticLink;
            Object objLambda2findOption = frame4Var.staticLink.staticLink.lambda2findOption(frame4Var.x);
            Boolean bool = Boolean.FALSE;
            return objLambda2findOption != bool ? objLambda2findOption : srfi37.option(LList.list1(this.staticLink.x), Boolean.TRUE, bool, this.staticLink.staticLink.staticLink.unrecognized$Mnoption$Mnproc);
        }
    }

    public class frame6 extends ModuleBody {
        final ModuleMethod lambda$Fn17 = new ModuleMethod(this, 11, null, 0);
        final ModuleMethod lambda$Fn18 = new ModuleMethod(this, 12, null, -4096);
        frame5 staticLink;
        Object x;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 11 ? lambda22() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            return moduleMethod.selector == 12 ? lambda23$V(objArr) : super.applyN(moduleMethod, objArr);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 11) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            if (moduleMethod.selector != 12) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        public Object lambda23$V(Object[] objArr) {
            LList lListMakeList = LList.makeList(objArr, 0);
            frame3 frame3Var = this.staticLink.staticLink.staticLink;
            return frame3Var.staticLink.lambda5scanArgs(frame3Var.args, lListMakeList);
        }

        public Object lambda22() {
            Apply apply = Scheme.apply;
            Object obj = this.x;
            try {
                Object objOptionProcessor = srfi37.optionProcessor((option$Mntype) obj);
                Object obj2 = this.x;
                frame5 frame5Var = this.staticLink;
                frame4 frame4Var = frame5Var.staticLink;
                return apply.applyN(new Object[]{objOptionProcessor, obj2, frame4Var.x, frame5Var.x, frame4Var.staticLink.seeds});
            } catch (ClassCastException e) {
                throw new WrongType(e, "option-processor", 0, obj);
            }
        }
    }
}
