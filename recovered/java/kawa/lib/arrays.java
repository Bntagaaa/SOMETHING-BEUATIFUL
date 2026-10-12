package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Arrays;
import gnu.lists.Array;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class arrays extends ModuleBody {
    public static final Class $Lsarray$Gr;
    public static final arrays $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    public static final ModuleMethod array;
    public static final ModuleMethod array$Mnend;
    public static final ModuleMethod array$Mnrank;
    public static final ModuleMethod array$Mnstart;
    public static final ModuleMethod array$Qu;
    public static final ModuleMethod make$Mnarray;
    public static final ModuleMethod shape;
    public static final ModuleMethod share$Mnarray;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("share-array");
        Lit7 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("array-end");
        Lit6 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("array-start");
        Lit5 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("array-rank");
        Lit4 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("array");
        Lit3 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("make-array");
        Lit2 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("shape");
        Lit1 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("array?");
        Lit0 = simpleSymbol8;
        $Lsarray$Gr = Array.class;
        arrays arraysVar = new arrays();
        $instance = arraysVar;
        array$Qu = new ModuleMethod(arraysVar, 1, simpleSymbol8, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        shape = new ModuleMethod(arraysVar, 2, simpleSymbol7, -4096);
        make$Mnarray = new ModuleMethod(arraysVar, 3, simpleSymbol6, 8193);
        array = new ModuleMethod(arraysVar, 5, simpleSymbol5, -4095);
        array$Mnrank = new ModuleMethod(arraysVar, 6, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        array$Mnstart = new ModuleMethod(arraysVar, 7, simpleSymbol3, 8194);
        array$Mnend = new ModuleMethod(arraysVar, 8, simpleSymbol2, 8194);
        share$Mnarray = new ModuleMethod(arraysVar, 9, simpleSymbol, 12291);
        arraysVar.run();
    }

    public arrays() {
        ModuleInfo.register(this);
    }

    public static Array makeArray(Array array2) {
        return makeArray(array2, null);
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
        if (i == 3) {
            if (!(obj instanceof Array)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 6) {
            return super.match1(moduleMethod, obj, callContext);
        }
        if (!(obj instanceof Array)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static boolean isArray(Object obj) {
        return obj instanceof Array;
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 5) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Array shape(Object... objArr) {
        return Arrays.shape(objArr);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            if (!(obj instanceof Array)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 7) {
            if (!(obj instanceof Array)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 8) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof Array)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Array makeArray(Array array2, Object obj) {
        return Arrays.make(array2, obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 2) {
            return shape(objArr);
        }
        if (i != 5) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        try {
            Array array2 = (Array) obj;
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            while (true) {
                int i2 = length - 1;
                if (i2 < 0) {
                    return array(array2, objArr2);
                }
                objArr2[i2] = objArr[length];
                length = i2;
            }
        } catch (ClassCastException e) {
            throw new WrongType(e, "array", 1, obj);
        }
    }

    public static Array array(Array array2, Object... objArr) {
        return Arrays.makeSimple(array2, new FVector(objArr));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return isArray(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 3) {
            try {
                return makeArray((Array) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-array", 1, obj);
            }
        }
        if (i != 6) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            return Integer.valueOf(arrayRank((Array) obj));
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "array-rank", 1, obj);
        }
    }

    public static int arrayRank(Array array2) {
        return array2.rank();
    }

    public static int arrayStart(Array array2, int i) {
        return array2.getLowBound(i);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                return makeArray((Array) obj, obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-array", 1, obj);
            }
        }
        if (i == 7) {
            try {
                try {
                    return Integer.valueOf(arrayStart((Array) obj, ((Number) obj2).intValue()));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "array-start", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "array-start", 1, obj);
            }
        }
        if (i != 8) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                return Integer.valueOf(arrayEnd((Array) obj, ((Number) obj2).intValue()));
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "array-end", 2, obj2);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "array-end", 1, obj);
        }
    }

    public static int arrayEnd(Array array2, int i) {
        return array2.getSize(i) + array2.getLowBound(i);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        if (moduleMethod.selector != 9) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            try {
                try {
                    return shareArray((Array) obj, (Array) obj2, (Procedure) obj3);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "share-array", 3, obj3);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "share-array", 2, obj2);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "share-array", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (moduleMethod.selector != 9) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof Array)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Array)) {
            return -786430;
        }
        callContext.value2 = obj2;
        if (!(obj3 instanceof Procedure)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static Array shareArray(Array array2, Array array3, Procedure procedure) {
        return Arrays.shareArray(array2, array3, procedure);
    }
}
