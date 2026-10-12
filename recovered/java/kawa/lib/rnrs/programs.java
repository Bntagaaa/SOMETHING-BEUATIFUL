package kawa.lib.rnrs;

import androidx.core.app.NotificationCompat;
import com.google.youngandroid.a;
import gnu.expr.ApplicationMainSupport;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.lib.lists;
import kawa.lib.numbers;

/* loaded from: classes2.dex */
public class programs extends ModuleBody {
    public static final programs $instance;
    static final IntNum Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit2;
    public static final ModuleMethod command$Mnline;
    public static final ModuleMethod exit;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("exit");
        Lit2 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("command-line");
        Lit1 = simpleSymbol2;
        Lit0 = IntNum.make(0);
        programs programsVar = new programs();
        $instance = programsVar;
        command$Mnline = new ModuleMethod(programsVar, 1, simpleSymbol2, 0);
        exit = new ModuleMethod(programsVar, 2, simpleSymbol, 4096);
        programsVar.run();
    }

    public programs() {
        ModuleInfo.register(this);
    }

    public static void exit() {
        exit(Lit0);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i != 2) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static LList commandLine() {
        return lists.cons("kawa", LList.makeList(ApplicationMainSupport.commandLineArgArray, 0));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return commandLine();
        }
        if (i != 2) {
            return super.apply0(moduleMethod);
        }
        exit();
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        if (moduleMethod.selector != 2) {
            return super.apply1(moduleMethod, obj);
        }
        exit(obj);
        return Values.empty;
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

    public static void exit(Object obj) {
        int iIntValue;
        OutPort.runCleanups();
        if (numbers.isInteger(obj)) {
            try {
                iIntValue = ((Number) obj).intValue();
            } catch (ClassCastException e) {
                throw new WrongType(e, NotificationCompat.CATEGORY_STATUS, -2, obj);
            }
        } else {
            iIntValue = obj != Boolean.FALSE ? 0 : -1;
        }
        System.exit(iIntValue);
    }
}
