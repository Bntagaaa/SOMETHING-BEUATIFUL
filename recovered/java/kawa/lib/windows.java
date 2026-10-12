package kawa.lib;

import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import kawa.GuiConsole;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class windows extends ModuleBody {
    public static final windows $instance;
    static final SimpleSymbol Lit0;
    public static final ModuleMethod scheme$Mnwindow;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("scheme-window");
        Lit0 = simpleSymbol;
        windows windowsVar = new windows();
        $instance = windowsVar;
        scheme$Mnwindow = new ModuleMethod(windowsVar, 1, simpleSymbol, 4096);
        windowsVar.run();
    }

    public windows() {
        ModuleInfo.register(this);
    }

    public static void schemeWindow() {
        schemeWindow(Boolean.FALSE);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        if (moduleMethod.selector != 1) {
            return super.apply0(moduleMethod);
        }
        schemeWindow();
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        if (moduleMethod.selector != 1) {
            return super.apply1(moduleMethod, obj);
        }
        schemeWindow(obj);
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
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

    public static void schemeWindow(Object obj) {
        Scheme scheme = Scheme.getInstance();
        Boolean bool = Boolean.FALSE;
        new GuiConsole(scheme, obj != bool ? misc.interactionEnvironment() : scheme.getNewEnvironment(), obj != bool);
    }
}
