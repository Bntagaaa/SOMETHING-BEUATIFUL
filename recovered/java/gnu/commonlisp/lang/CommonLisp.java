package gnu.commonlisp.lang;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.Access;
import gnu.bytecode.Type;
import gnu.expr.Language;
import gnu.kawa.functions.DisplayFormat;
import gnu.kawa.functions.IsEq;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.functions.Not;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LangPrimType;
import gnu.kawa.reflect.InstanceOf;
import gnu.lists.AbstractFormat;
import gnu.mapping.Environment;
import gnu.mapping.LocationEnumeration;
import gnu.mapping.SimpleEnvironment;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.text.Char;
import kawa.lang.Lambda;
import kawa.standard.Scheme;
import kawa.standard.begin;

/* loaded from: classes2.dex */
public class CommonLisp extends Lisp2 {

    /* renamed from: b, reason: collision with root package name */
    public static final DisplayFormat f5456b;
    public static final DisplayFormat c;
    public static final Environment clispEnvironment;
    public static final CommonLisp instance;
    public static final NumberCompare numEqu;
    public static final NumberCompare numGEq;
    public static final NumberCompare numGrt;
    public static final NumberCompare numLEq;
    public static final NumberCompare numLss;

    /* renamed from: a, reason: collision with root package name */
    public LangPrimType f5457a;

    public static Object getCharacter(int i) {
        return Char.make((char) i);
    }

    public static Numeric asNumber(Object obj) {
        if (obj instanceof Char) {
            return IntNum.make(((Char) obj).intValue());
        }
        return (Numeric) obj;
    }

    public static char asChar(Object obj) {
        if (obj instanceof Char) {
            return ((Char) obj).charValue();
        }
        int iIntValue = obj instanceof Numeric ? ((Numeric) obj).intValue() : -1;
        if (iIntValue < 0 || iIntValue > 65535) {
            throw new ClassCastException("not a character value");
        }
        return (char) iIntValue;
    }

    @Override // gnu.expr.Language
    public String getName() {
        return "CommonLisp";
    }

    static {
        SimpleEnvironment simpleEnvironmentMake = Environment.make("clisp-environment");
        clispEnvironment = simpleEnvironmentMake;
        CommonLisp commonLisp = new CommonLisp();
        instance = commonLisp;
        commonLisp.define("t", Lisp2.TRUE);
        commonLisp.define("nil", Lisp2.FALSE);
        numEqu = NumberCompare.make(commonLisp, "=", 8);
        numGrt = NumberCompare.make(commonLisp, ">", 16);
        numGEq = NumberCompare.make(commonLisp, ">=", 24);
        numLss = NumberCompare.make(commonLisp, "<", 4);
        numLEq = NumberCompare.make(commonLisp, "<=", 12);
        Environment saveCurrent = Environment.setSaveCurrent(simpleEnvironmentMake);
        try {
            commonLisp.a();
            Environment.restoreCurrent(saveCurrent);
            f5456b = new DisplayFormat(true, Access.CLASS_CONTEXT);
            c = new DisplayFormat(false, Access.CLASS_CONTEXT);
        } catch (Throwable th) {
            Environment.restoreCurrent(saveCurrent);
            throw th;
        }
    }

    public CommonLisp() {
        this.environ = clispEnvironment;
    }

    public final void a() throws IllegalAccessException, InstantiationException {
        LocationEnumeration locationEnumerationEnumerateAllLocations = Scheme.builtin().enumerateAllLocations();
        while (locationEnumerationEnumerateAllLocations.hasMoreElements()) {
            importLocation(locationEnumerationEnumerateAllLocations.nextLocation());
        }
        try {
            loadClass("kawa.lib.prim_syntax");
            loadClass("kawa.lib.std_syntax");
            loadClass("kawa.lib.lists");
            loadClass("kawa.lib.strings");
            loadClass("gnu.commonlisp.lisp.PrimOps");
        } catch (ClassNotFoundException unused) {
        }
        Lambda lambda = new Lambda();
        lambda.setKeywords(Lisp2.asSymbol("&optional"), Lisp2.asSymbol("&rest"), Lisp2.asSymbol("&key"));
        lambda.defaultDefault = Lisp2.nilExpr;
        defun("lambda", lambda);
        defun("defun", new defun(lambda));
        defun("defvar", new defvar(false));
        defun("defconst", new defvar(true));
        defun("defsubst", new defun(lambda));
        defun("function", new function(lambda));
        defun("setq", new setq());
        defun("prog1", new prog1("prog1", 1));
        defun("prog2", prog1.prog2);
        defun("progn", new begin());
        defun("unwind-protect", new UnwindProtect());
        Object not = new Not(this);
        defun("not", not);
        defun("null", not);
        defun("eq", new IsEq(this, "eq"));
        defun("equal", new IsEqual(this, "equal"));
        defun("typep", new InstanceOf(this));
        defun("princ", c);
        defun("prin1", f5456b);
        defProcStFld("=", "gnu.commonlisp.lang.CommonLisp", "numEqu");
        defProcStFld("<", "gnu.commonlisp.lang.CommonLisp", "numLss");
        defProcStFld(">", "gnu.commonlisp.lang.CommonLisp", "numGrt");
        defProcStFld("<=", "gnu.commonlisp.lang.CommonLisp", "numLEq");
        defProcStFld(">=", "gnu.commonlisp.lang.CommonLisp", "numGEq");
        defProcStFld("functionp", "gnu.commonlisp.lisp.PrimOps");
    }

    public static CommonLisp getInstance() {
        return instance;
    }

    public static void registerEnvironment() {
        Language.setDefaults(instance);
    }

    @Override // gnu.expr.Language
    public AbstractFormat getFormat(boolean z) {
        return z ? f5456b : c;
    }

    @Override // gnu.expr.Language
    public Type getTypeFor(String str) {
        if (str == "t") {
            str = "java.lang.Object";
        }
        return Scheme.string2Type(str);
    }

    @Override // gnu.expr.Language
    public Type getTypeFor(Class cls) {
        if (cls.isPrimitive()) {
            String name = cls.getName();
            if (name.equals(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)) {
                if (this.f5457a == null) {
                    this.f5457a = new LangPrimType(Type.booleanType, this);
                }
                return this.f5457a;
            }
            return Scheme.getNamedType(name);
        }
        return Type.make(cls);
    }
}
