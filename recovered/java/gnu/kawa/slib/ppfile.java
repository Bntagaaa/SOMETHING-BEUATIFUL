package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.text.Char;
import gnu.text.Path;
import gnu.text.SyntaxException;
import java.io.IOException;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.ports;
import kawa.lib.rnrs.unicode;
import kawa.standard.Scheme;
import kawa.standard.readchar;

/* loaded from: classes2.dex */
public class ppfile extends ModuleBody {
    public static final ppfile $instance;
    static final Char Lit0;
    static final Char Lit1;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit3;
    static final ModuleMethod lambda$Fn3;
    public static final ModuleMethod pprint$Mnfile;
    public static final ModuleMethod pprint$Mnfilter$Mnfile;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("pprint-file");
        Lit3 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("pprint-filter-file");
        Lit2 = simpleSymbol2;
        Lit1 = Char.make(10);
        Lit0 = Char.make(59);
        ppfile ppfileVar = new ppfile();
        $instance = ppfileVar;
        pprint$Mnfilter$Mnfile = new ModuleMethod(ppfileVar, 3, simpleSymbol2, -4094);
        ModuleMethod moduleMethod = new ModuleMethod(ppfileVar, 4, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:70");
        lambda$Fn3 = moduleMethod;
        pprint$Mnfile = new ModuleMethod(ppfileVar, 5, simpleSymbol, 8193);
        ppfileVar.run();
    }

    public ppfile() {
        ModuleInfo.register(this);
    }

    public static Object lambda3(Object obj) {
        return obj;
    }

    public static Object pprintFile(Object obj) {
        return pprintFile(obj, ports.current$Mnoutput$Mnport.apply0());
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object pprintFilterFile$V(Object obj, Object obj2, Object[] objArr) {
        frame frameVar = new frame();
        frameVar.filter = obj2;
        frameVar.optarg = LList.makeList(objArr, 0);
        ModuleMethod moduleMethod = frameVar.lambda$Fn1;
        if (ports.isInputPort(obj)) {
            return frameVar.lambda1(obj);
        }
        try {
            return ports.callWithInputFile(Path.valueOf(obj), moduleMethod);
        } catch (ClassCastException e) {
            throw new WrongType(e, "call-with-input-file", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        if (moduleMethod.selector != 3) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        int length = objArr.length - 2;
        Object[] objArr2 = new Object[length];
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return pprintFilterFile$V(obj, obj2, objArr2);
            }
            objArr2[i] = objArr[length + 1];
            length = i;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        if (moduleMethod.selector != 3) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public class frame extends ModuleBody {
        Object filter;
        final ModuleMethod lambda$Fn1;
        LList optarg;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:27");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 2 ? lambda1(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda1(Object obj) {
            frame0 frame0Var = new frame0();
            frame0Var.staticLink = this;
            frame0Var.port = obj;
            ModuleMethod moduleMethod = frame0Var.lambda$Fn2;
            Object objApply0 = lists.isNull(this.optarg) ? ports.current$Mnoutput$Mnport.apply0() : lists.car.apply1(this.optarg);
            if (ports.isOutputPort(objApply0)) {
                return frame0Var.lambda2(objApply0);
            }
            try {
                return ports.callWithOutputFile(Path.valueOf(objApply0), moduleMethod);
            } catch (ClassCastException e) {
                throw new WrongType(e, "call-with-output-file", 1, objApply0);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 2) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame0 extends ModuleBody {
        final ModuleMethod lambda$Fn2;
        Object port;
        frame staticLink;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:34");
            this.lambda$Fn2 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 1 ? lambda2(obj) : super.apply1(moduleMethod, obj);
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

        public Object lambda2(Object obj) throws SyntaxException, IOException {
            Object objApply1 = readchar.peekChar.apply1(this.port);
            while (true) {
                boolean zIsEofObject = ports.isEofObject(objApply1);
                if (zIsEofObject) {
                    return zIsEofObject ? Boolean.TRUE : Boolean.FALSE;
                }
                try {
                    if (unicode.isCharWhitespace((Char) objApply1)) {
                        ports.display(readchar.readChar.apply1(this.port), obj);
                        objApply1 = readchar.peekChar.apply1(this.port);
                    } else {
                        try {
                            if (characters.isChar$Eq(ppfile.Lit0, (Char) objApply1)) {
                                while (true) {
                                    boolean zIsEofObject2 = ports.isEofObject(objApply1);
                                    if (zIsEofObject2) {
                                        return zIsEofObject2 ? Boolean.TRUE : Boolean.FALSE;
                                    }
                                    try {
                                        if (characters.isChar$Eq(ppfile.Lit1, (Char) objApply1)) {
                                            ports.display(readchar.readChar.apply1(this.port), obj);
                                            objApply1 = readchar.peekChar.apply1(this.port);
                                            break;
                                        }
                                        ports.display(readchar.readChar.apply1(this.port), obj);
                                        objApply1 = readchar.peekChar.apply1(this.port);
                                    } catch (ClassCastException e) {
                                        throw new WrongType(e, "char=?", 2, objApply1);
                                    }
                                }
                            } else {
                                Object obj2 = this.port;
                                try {
                                    Object obj3 = ports.read((InPort) obj2);
                                    boolean zIsEofObject3 = ports.isEofObject(obj3);
                                    if (zIsEofObject3) {
                                        return zIsEofObject3 ? Boolean.TRUE : Boolean.FALSE;
                                    }
                                    pp.prettyPrint(Scheme.applyToArgs.apply2(this.staticLink.filter, obj3), obj);
                                    readchar readcharVar = readchar.peekChar;
                                    Object objApply12 = readcharVar.apply1(this.port);
                                    if (Scheme.isEqv.apply2(ppfile.Lit1, objApply12) != Boolean.FALSE) {
                                        readchar.readChar.apply1(this.port);
                                        objApply1 = readcharVar.apply1(this.port);
                                    } else {
                                        objApply1 = objApply12;
                                    }
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "read", 1, obj2);
                                }
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 2, objApply1);
                        }
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "char-whitespace?", 1, objApply1);
                }
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i != 4) {
            return i != 5 ? super.apply1(moduleMethod, obj) : pprintFile(obj);
        }
        return lambda3(obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        return moduleMethod.selector == 5 ? pprintFile(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

    public static Object pprintFile(Object obj, Object obj2) {
        return pprintFilterFile$V(obj, lambda$Fn3, new Object[]{obj2});
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 4) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 5) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        return super.match1(moduleMethod, obj, callContext);
    }
}
