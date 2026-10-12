package kawa.lib.rnrs;

import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Sequence;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import kawa.lib.srfi95;
import kawa.standard.append;

/* loaded from: classes2.dex */
public class sorting extends ModuleBody {
    public static final sorting $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit2;
    public static final ModuleMethod list$Mnsort;
    public static final ModuleMethod vector$Mnsort;
    public static final ModuleMethod vector$Mnsort$Ex;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("vector-sort!");
        Lit2 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("vector-sort");
        Lit1 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("list-sort");
        Lit0 = simpleSymbol3;
        sorting sortingVar = new sorting();
        $instance = sortingVar;
        list$Mnsort = new ModuleMethod(sortingVar, 1, simpleSymbol3, 8194);
        vector$Mnsort = new ModuleMethod(sortingVar, 2, simpleSymbol2, 8194);
        vector$Mnsort$Ex = new ModuleMethod(sortingVar, 3, simpleSymbol, 8194);
        sortingVar.run();
    }

    public sorting() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 2) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 3) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Object listSort(Object obj, Object obj2) {
        return srfi95.$PcSortList(append.append$V(new Object[]{obj2, LList.Empty}), obj, Boolean.FALSE);
    }

    public static void vectorSort(Object obj, Object obj2) throws Throwable {
        try {
            srfi95.$PcSortVector((Sequence) obj2, obj, Boolean.FALSE);
        } catch (ClassCastException e) {
            throw new WrongType(e, "%sort-vector", 0, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 1) {
            return listSort(obj, obj2);
        }
        if (i == 2) {
            vectorSort(obj, obj2);
            return Values.empty;
        }
        if (i != 3) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        vectorSort$Ex(obj, obj2);
        return Values.empty;
    }

    public static void vectorSort$Ex(Object obj, Object obj2) throws Throwable {
        try {
            srfi95.$PcVectorSort$Ex((Sequence) obj2, obj, Boolean.FALSE);
        } catch (ClassCastException e) {
            throw new WrongType(e, "%vector-sort!", 0, obj2);
        }
    }
}
