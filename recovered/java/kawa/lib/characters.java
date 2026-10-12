package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.text.Char;

/* loaded from: classes2.dex */
public class characters extends ModuleBody {
    public static final characters $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    public static final ModuleMethod char$Eq$Qu;
    public static final ModuleMethod char$Gr$Eq$Qu;
    public static final ModuleMethod char$Gr$Qu;
    public static final ModuleMethod char$Ls$Eq$Qu;
    public static final ModuleMethod char$Ls$Qu;
    public static final ModuleMethod char$Mn$Grinteger;
    public static final ModuleMethod char$Qu;
    public static final ModuleMethod integer$Mn$Grchar;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("char>=?");
        Lit7 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("char<=?");
        Lit6 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("char>?");
        Lit5 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("char<?");
        Lit4 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("char=?");
        Lit3 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("integer->char");
        Lit2 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("char->integer");
        Lit1 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("char?");
        Lit0 = simpleSymbol8;
        characters charactersVar = new characters();
        $instance = charactersVar;
        char$Qu = new ModuleMethod(charactersVar, 1, simpleSymbol8, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mn$Grinteger = new ModuleMethod(charactersVar, 2, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        integer$Mn$Grchar = new ModuleMethod(charactersVar, 3, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Eq$Qu = new ModuleMethod(charactersVar, 4, simpleSymbol5, 8194);
        char$Ls$Qu = new ModuleMethod(charactersVar, 5, simpleSymbol4, 8194);
        char$Gr$Qu = new ModuleMethod(charactersVar, 6, simpleSymbol3, 8194);
        char$Ls$Eq$Qu = new ModuleMethod(charactersVar, 7, simpleSymbol2, 8194);
        char$Gr$Eq$Qu = new ModuleMethod(charactersVar, 8, simpleSymbol, 8194);
        charactersVar.run();
    }

    public characters() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
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
        if (i != 2) {
            if (i != 3) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (!(obj instanceof Char)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static boolean isChar(Object obj) {
        return obj instanceof Char;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return isChar(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 2) {
            try {
                return Integer.valueOf(((Char) obj).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "char->integer", 1, obj);
            }
        }
        if (i != 3) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            return Char.make(((Number) obj).intValue());
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "integer->char", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 4:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 5:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 6:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 7:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 8:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static boolean isChar$Eq(Char r0, Char r1) {
        return r0.intValue() == r1.intValue();
    }

    public static boolean isChar$Ls(Char r0, Char r1) {
        return r0.intValue() < r1.intValue();
    }

    public static boolean isChar$Gr(Char r0, Char r1) {
        return r0.intValue() > r1.intValue();
    }

    public static boolean isChar$Ls$Eq(Char r0, Char r1) {
        return r0.intValue() <= r1.intValue();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        switch (moduleMethod.selector) {
            case 4:
                try {
                    try {
                        return isChar$Eq((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "char=?", 2, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "char=?", 1, obj);
                }
            case 5:
                try {
                    try {
                        return isChar$Ls((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "char<?", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "char<?", 1, obj);
                }
            case 6:
                try {
                    try {
                        return isChar$Gr((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "char>?", 2, obj2);
                    }
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "char>?", 1, obj);
                }
            case 7:
                try {
                    try {
                        return isChar$Ls$Eq((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "char<=?", 2, obj2);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "char<=?", 1, obj);
                }
            case 8:
                try {
                    try {
                        return isChar$Gr$Eq((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "char>=?", 2, obj2);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "char>=?", 1, obj);
                }
            default:
                return super.apply2(moduleMethod, obj, obj2);
        }
    }

    public static boolean isChar$Gr$Eq(Char r0, Char r1) {
        return r0.intValue() >= r1.intValue();
    }
}
