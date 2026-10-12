package com.niotron.muhammad_robi1996.V15_DATABASE;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.NiotronColorUtils;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.RuntimeErrorAlert;
import com.google.youngandroid.a;
import com.google.youngandroid.runtime;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.reflect.SlotSet;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.lang.Promise;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.strings;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class test extends Form implements Runnable {
    public static final ModuleMethod C = null;
    public static final ModuleMethod J = null;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5435a;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5436b;
    public static final SimpleSymbol c;
    public static final ModuleMethod d = null;
    public static final SimpleSymbol e;
    public static final IntNum f;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5437g;
    public static final SimpleSymbol h;
    public static final IntNum i;
    public static final SimpleSymbol j;
    public static final IntNum k;
    public static final SimpleSymbol l;
    public static final SimpleSymbol m;
    public static final SimpleSymbol n;
    public static final SimpleSymbol o;
    public static final SimpleSymbol p;
    public static final SimpleSymbol q;
    public static final SimpleSymbol r;
    public static final SimpleSymbol s;
    public static final ModuleMethod t = null;
    public static test test;
    public static final SimpleSymbol u;
    public static final SimpleSymbol v;
    public static final SimpleSymbol w;
    public static final SimpleSymbol x;
    public static final PairWithPosition y;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public NiotronColorUtils Color_Utils1;
    public VerticalArrangement Vertical_Arrangement1;
    public final ModuleMethod add$Mnto$Mncomponents;
    public final ModuleMethod add$Mnto$Mnevents;
    public final ModuleMethod add$Mnto$Mnform$Mndo$Mnafter$Mncreation;
    public final ModuleMethod add$Mnto$Mnform$Mnenvironment;
    public final ModuleMethod add$Mnto$Mnglobal$Mnvar$Mnenvironment;
    public final ModuleMethod add$Mnto$Mnglobal$Mnvars;
    public final ModuleMethod android$Mnlog$Mnform;
    public LList components$Mnto$Mncreate;
    public final ModuleMethod dispatchEvent;
    public final ModuleMethod dispatchGenericEvent;
    public LList events$Mnto$Mnregister;
    public LList form$Mndo$Mnafter$Mncreation;
    public Environment form$Mnenvironment;
    public Symbol form$Mnname$Mnsymbol;
    public final ModuleMethod get$Mnsimple$Mnname;
    public Environment global$Mnvar$Mnenvironment;
    public LList global$Mnvars$Mnto$Mncreate;
    public final ModuleMethod is$Mnbound$Mnin$Mnform$Mnenvironment;
    public final ModuleMethod lookup$Mnhandler;
    public final ModuleMethod lookup$Mnin$Mnform$Mnenvironment;
    public final ModuleMethod onCreate;
    public final ModuleMethod process$Mnexception;
    public final ModuleMethod send$Mnerror;
    public final ModuleMethod test$Initialize;
    public static final SimpleSymbol Z = (SimpleSymbol) a.f("lookup-handler");
    public static final SimpleSymbol Y = (SimpleSymbol) a.f("dispatchGenericEvent");
    public static final SimpleSymbol X = (SimpleSymbol) a.f("dispatchEvent");
    public static final SimpleSymbol W = (SimpleSymbol) a.f("send-error");
    public static final SimpleSymbol V = (SimpleSymbol) a.f("add-to-form-do-after-creation");
    public static final SimpleSymbol U = (SimpleSymbol) a.f("add-to-global-vars");
    public static final SimpleSymbol T = (SimpleSymbol) a.f("add-to-components");
    public static final SimpleSymbol S = (SimpleSymbol) a.f("add-to-events");
    public static final SimpleSymbol R = (SimpleSymbol) a.f("add-to-global-var-environment");
    public static final SimpleSymbol Q = (SimpleSymbol) a.f("is-bound-in-form-environment");
    public static final SimpleSymbol P = (SimpleSymbol) a.f("lookup-in-form-environment");
    public static final SimpleSymbol O = (SimpleSymbol) a.f("add-to-form-environment");
    public static final SimpleSymbol N = (SimpleSymbol) a.f("android-log-form");
    public static final SimpleSymbol M = (SimpleSymbol) a.f("get-simple-name");
    public static final FString L = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
    public static final FString K = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
    public static final FString I = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
    public static final SimpleSymbol H = (SimpleSymbol) a.f("Width");
    public static final SimpleSymbol G = (SimpleSymbol) a.f("HeihPadding");
    public static final SimpleSymbol F = (SimpleSymbol) a.f("HeihMargin");
    public static final IntNum E = IntNum.make(-2);
    public static final SimpleSymbol D = (SimpleSymbol) a.f("Height");
    public static final FString B = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
    public static final SimpleSymbol A = (SimpleSymbol) a.f("Initialize");
    public static final SimpleSymbol z = (SimpleSymbol) a.f("test$Initialize");

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        m = simpleSymbol;
        y = PairWithPosition.make(simpleSymbol, LList.Empty, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/test.yail", 90264);
        x = (SimpleSymbol) a.f("HexToColor");
        w = (SimpleSymbol) a.f("Color_Utils1");
        v = (SimpleSymbol) a.f("BackgroundColor");
        u = (SimpleSymbol) a.f("Vertical_Arrangement1");
        s = (SimpleSymbol) a.f("Title");
        r = (SimpleSymbol) a.f("Theme");
        q = (SimpleSymbol) a.f("Sizing");
        p = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        o = (SimpleSymbol) a.f("ShowListsAsJson");
        n = (SimpleSymbol) a.f("ScreenOrientation");
        l = (SimpleSymbol) a.f("AppName");
        k = IntNum.make(2);
        j = (SimpleSymbol) a.f("AlignVertical");
        i = IntNum.make(3);
        h = (SimpleSymbol) a.f("AlignHorizontal");
        f5437g = (SimpleSymbol) a.f("number");
        f = IntNum.make(new int[]{-14382849, 0});
        e = (SimpleSymbol) a.f("AccentColor");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5436b = (SimpleSymbol) a.f("getMessage");
        f5435a = (SimpleSymbol) a.f("test");
    }

    public test() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, M, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, N, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, O, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, P, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, Q, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, R, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, S, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, T, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, U, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, V, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, W, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, X, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, Y, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, Z, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        t = new ModuleMethod(frameVar, 20, null, 0);
        this.test$Initialize = new ModuleMethod(frameVar, 21, z, 0);
        C = new ModuleMethod(frameVar, 22, null, 0);
        J = new ModuleMethod(frameVar, 23, null, 0);
    }

    public void androidLogForm(Object obj) {
    }

    public Object lookupInFormEnvironment(Symbol symbol) {
        return lookupInFormEnvironment(symbol, Boolean.FALSE);
    }

    @Override // java.lang.Runnable
    public void run() {
        CallContext callContext = CallContext.getInstance();
        Consumer consumer = callContext.consumer;
        callContext.consumer = VoidConsumer.instance;
        try {
            run(callContext);
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        ModuleBody.runCleanup(callContext, th, consumer);
    }

    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        runtime runtimeVar = runtime.$instance;
        runtimeVar.run();
        Boolean bool = Boolean.FALSE;
        this.$Stdebug$Mnform$St = bool;
        SimpleSymbol simpleSymbol = f5435a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        test = null;
        this.form$Mnname$Mnsymbol = simpleSymbol;
        LList lList = LList.Empty;
        this.events$Mnto$Mnregister = lList;
        this.components$Mnto$Mncreate = lList;
        this.global$Mnvars$Mnto$Mncreate = lList;
        this.form$Mndo$Mnafter$Mncreation = lList;
        runtimeVar.run();
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            SimpleSymbol simpleSymbol2 = e;
            IntNum intNum = f;
            SimpleSymbol simpleSymbol3 = f5437g;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, h, i, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, j, k, simpleSymbol3);
            SimpleSymbol simpleSymbol4 = l;
            SimpleSymbol simpleSymbol5 = m;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, n, "unspecified", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, o, Boolean.TRUE, p);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, q, "Responsive", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, r, "Classic", simpleSymbol5);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, s, "test", simpleSymbol5), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(t));
        }
        Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol = z;
        if (obj != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.test$Initialize);
        } else {
            addToFormEnvironment(symbol, this.test$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "test", "Initialize");
        } else {
            addToEvents(simpleSymbol, A);
        }
        this.Vertical_Arrangement1 = null;
        Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj3 = u;
        if (obj2 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, B, obj3, C), consumer);
        } else {
            addToComponents(simpleSymbol, I, obj3, J);
        }
        this.Color_Utils1 = null;
        Object obj4 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj5 = w;
        if (obj4 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, K, obj5, bool), consumer);
        } else {
            addToComponents(simpleSymbol, L, obj5, bool);
        }
        runtime.initRuntime();
    }

    public Object test$Initialize() throws Throwable {
        runtime.setThisForm();
        return runtime.setAndCoerceProperty$Ex(u, v, runtime.callComponentMethod(w, x, LList.list1("#e61010"), y), f5437g);
    }

    public class frame extends ModuleBody {
        public test c;

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
                if (!(obj instanceof test)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 3) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 5) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 7) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            switch (i) {
                case 12:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 13:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 14:
                    if (!(obj instanceof test)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 4) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 5) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 8) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 9) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 11) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i != 17) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 10) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            }
            if (i != 15) {
                if (i != 16) {
                    return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
                }
                if (!(obj instanceof test)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Component)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                if (!(obj3 instanceof String)) {
                    return -786429;
                }
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            }
            if (!(obj instanceof test)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Component)) {
                return -786430;
            }
            callContext.value2 = obj2;
            if (!(obj3 instanceof String)) {
                return -786429;
            }
            callContext.value3 = obj3;
            if (!(obj4 instanceof String)) {
                return -786428;
            }
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) throws Throwable {
            int i = moduleMethod.selector;
            if (i == 1) {
                return this.c.getSimpleName(obj);
            }
            if (i == 2) {
                try {
                    this.c.onCreate((Bundle) obj);
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "onCreate", 1, obj);
                }
            }
            if (i == 3) {
                this.c.androidLogForm(obj);
                return Values.empty;
            }
            if (i == 5) {
                try {
                    return this.c.lookupInFormEnvironment((Symbol) obj);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                }
            }
            if (i == 7) {
                try {
                    return this.c.isBoundInFormEnvironment((Symbol) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "is-bound-in-form-environment", 1, obj);
                }
            }
            switch (i) {
                case 12:
                    this.c.addToFormDoAfterCreation(obj);
                    return Values.empty;
                case 13:
                    this.c.sendError(obj);
                    return Values.empty;
                case 14:
                    this.c.processException(obj);
                    return Values.empty;
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            int i = moduleMethod.selector;
            if (i == 10) {
                this.c.addToComponents(obj, obj2, obj3, obj4);
                return Values.empty;
            }
            if (i == 15) {
                try {
                    try {
                        try {
                            try {
                                return this.c.dispatchEvent((Component) obj, (String) obj2, (String) obj3, (Object[]) obj4) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "dispatchEvent", 4, obj4);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "dispatchEvent", 3, obj3);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "dispatchEvent", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "dispatchEvent", 1, obj);
                }
            }
            if (i != 16) {
                return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
            }
            try {
                try {
                    try {
                        try {
                            this.c.dispatchGenericEvent((Component) obj, (String) obj2, obj3 != Boolean.FALSE, (Object[]) obj4);
                            return Values.empty;
                        } catch (ClassCastException e5) {
                            throw new WrongType(e5, "dispatchGenericEvent", 4, obj4);
                        }
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "dispatchGenericEvent", 3, obj3);
                    }
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "dispatchGenericEvent", 2, obj2);
                }
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "dispatchGenericEvent", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            int i = moduleMethod.selector;
            if (i == 4) {
                try {
                    this.c.addToFormEnvironment((Symbol) obj, obj2);
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "add-to-form-environment", 1, obj);
                }
            }
            if (i == 5) {
                try {
                    return this.c.lookupInFormEnvironment((Symbol) obj, obj2);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                }
            }
            if (i == 8) {
                try {
                    this.c.addToGlobalVarEnvironment((Symbol) obj, obj2);
                    return Values.empty;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "add-to-global-var-environment", 1, obj);
                }
            }
            if (i == 9) {
                this.c.addToEvents(obj, obj2);
                return Values.empty;
            }
            if (i != 11) {
                return i != 17 ? super.apply2(moduleMethod, obj, obj2) : this.c.lookupHandler(obj, obj2);
            }
            this.c.addToGlobalVars(obj, obj2);
            return Values.empty;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 18:
                    test testVar = test.test;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    SimpleSymbol simpleSymbol = test.f5435a;
                    SimpleSymbol simpleSymbol2 = test.e;
                    IntNum intNum = test.f;
                    SimpleSymbol simpleSymbol3 = test.f5437g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, test.h, test.i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, test.j, test.k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = test.l;
                    SimpleSymbol simpleSymbol5 = test.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, test.n, "unspecified", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, test.o, Boolean.TRUE, test.p);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, test.q, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, test.r, "Classic", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, test.s, "test", simpleSymbol5);
                case 21:
                    return this.c.test$Initialize();
                case 22:
                    SimpleSymbol simpleSymbol6 = test.u;
                    SimpleSymbol simpleSymbol7 = test.D;
                    IntNum intNum2 = test.E;
                    SimpleSymbol simpleSymbol8 = test.f5437g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol6, simpleSymbol7, intNum2, simpleSymbol8);
                    SimpleSymbol simpleSymbol9 = test.F;
                    SimpleSymbol simpleSymbol10 = test.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol6, simpleSymbol9, "0,0,0,0", simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol6, test.G, "0,0,0,0", simpleSymbol10);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol6, test.H, intNum2, simpleSymbol8);
                case 23:
                    SimpleSymbol simpleSymbol11 = test.u;
                    SimpleSymbol simpleSymbol12 = test.D;
                    IntNum intNum3 = test.E;
                    SimpleSymbol simpleSymbol13 = test.f5437g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol11, simpleSymbol12, intNum3, simpleSymbol13);
                    SimpleSymbol simpleSymbol14 = test.F;
                    SimpleSymbol simpleSymbol15 = test.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol11, simpleSymbol14, "0,0,0,0", simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol11, test.G, "0,0,0,0", simpleSymbol15);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol11, test.H, intNum3, simpleSymbol13);
                default:
                    return super.apply0(moduleMethod);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 18:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 19:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 20:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 21:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 22:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 23:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                default:
                    return super.match0(moduleMethod, callContext);
            }
        }
    }

    public String getSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws NoSuchMethodException, PackageManager.NameNotFoundException, SecurityException {
        AppInventorCompatActivity.setClassicModeFromYail(true);
        super.onCreate(bundle);
    }

    public void addToFormEnvironment(Symbol symbol, Object obj) {
        androidLogForm(Format.formatToString(0, "Adding ~A to env ~A with value ~A", symbol, this.form$Mnenvironment, obj));
        this.form$Mnenvironment.put(symbol, obj);
    }

    public Object lookupInFormEnvironment(Symbol symbol, Object obj) {
        Environment environment = this.form$Mnenvironment;
        int i2 = 1 & ((environment == null ? 1 : 0) + 1);
        return (i2 == 0 ? i2 == 0 : !environment.isBound(symbol)) ? obj : this.form$Mnenvironment.get(symbol);
    }

    public boolean isBoundInFormEnvironment(Symbol symbol) {
        return this.form$Mnenvironment.isBound(symbol);
    }

    public void addToGlobalVarEnvironment(Symbol symbol, Object obj) {
        androidLogForm(Format.formatToString(0, "Adding ~A to env ~A with value ~A", symbol, this.global$Mnvar$Mnenvironment, obj));
        this.global$Mnvar$Mnenvironment.put(symbol, obj);
    }

    public void addToEvents(Object obj, Object obj2) {
        this.events$Mnto$Mnregister = lists.cons(lists.cons(obj, obj2), this.events$Mnto$Mnregister);
    }

    public void addToComponents(Object obj, Object obj2, Object obj3, Object obj4) {
        this.components$Mnto$Mncreate = lists.cons(LList.list4(obj, obj2, obj3, obj4), this.components$Mnto$Mncreate);
    }

    public void addToGlobalVars(Object obj, Object obj2) {
        this.global$Mnvars$Mnto$Mncreate = lists.cons(LList.list2(obj, obj2), this.global$Mnvars$Mnto$Mncreate);
    }

    public void addToFormDoAfterCreation(Object obj) {
        this.form$Mndo$Mnafter$Mncreation = lists.cons(obj, this.form$Mndo$Mnafter$Mncreation);
    }

    public void sendError(Object obj) {
        RetValManager.sendError(obj == null ? null : obj.toString());
    }

    public void processException(Object obj) throws Throwable {
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5436b));
        RuntimeErrorAlert.alert(this, objApply1 == null ? null : objApply1.toString(), obj instanceof YailRuntimeError ? ((YailRuntimeError) obj).getErrorType() : "Runtime Error", "End Application");
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.HandlesEventDispatching
    public boolean dispatchEvent(Component component, String str, String str2, Object[] objArr) throws Throwable {
        Symbol symbolString$To$Symbol = misc.string$To$Symbol(str);
        if (isBoundInFormEnvironment(symbolString$To$Symbol)) {
            if (lookupInFormEnvironment(symbolString$To$Symbol) != component) {
                return false;
            }
            try {
                Scheme.apply.apply2(lookupHandler(str, str2), LList.makeList(objArr, 0));
                return true;
            } catch (PermissionException e2) {
                e2.printStackTrace();
                boolean z2 = this == component;
                if (!z2 ? z2 : IsEqual.apply(str2, "PermissionNeeded")) {
                    processException(e2);
                    return false;
                }
                PermissionDenied(component, str2, e2.getPermissionNeeded());
                return false;
            } catch (StopBlocksExecution unused) {
                return false;
            } catch (Throwable th) {
                androidLogForm(th.getMessage());
                th.printStackTrace();
                processException(th);
                return false;
            }
        }
        EventDispatcher.unregisterEventForDelegation(this, str, str2);
        return false;
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.HandlesEventDispatching
    public void dispatchGenericEvent(Component component, String str, boolean z2, Object[] objArr) throws Throwable {
        Object objLookupInFormEnvironment = lookupInFormEnvironment(misc.string$To$Symbol(strings.stringAppend("any$", getSimpleName(component), "$", str)));
        Object obj = Boolean.FALSE;
        if (objLookupInFormEnvironment != obj) {
            try {
                Apply apply = Scheme.apply;
                if (z2) {
                    obj = Boolean.TRUE;
                }
                apply.apply2(objLookupInFormEnvironment, lists.cons(component, lists.cons(obj, LList.makeList(objArr, 0))));
            } catch (PermissionException e2) {
                e2.printStackTrace();
                boolean z3 = this == component;
                if (!z3 ? z3 : IsEqual.apply(str, "PermissionNeeded")) {
                    processException(e2);
                } else {
                    PermissionDenied(component, str, e2.getPermissionNeeded());
                }
            } catch (StopBlocksExecution unused) {
            } catch (Throwable th) {
                androidLogForm(th.getMessage());
                th.printStackTrace();
                processException(th);
            }
        }
    }

    public Object lookupHandler(Object obj, Object obj2) {
        return lookupInFormEnvironment(misc.string$To$Symbol(EventDispatcher.makeFullEventName(obj == null ? null : obj.toString(), obj2 != null ? obj2.toString() : null)));
    }

    public static SimpleSymbol lambda1symbolAppend$V(Object[] objArr) throws Throwable {
        Object objMakeList = LList.makeList(objArr, 0);
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = strings.string$Mnappend;
        Object objMake = LList.Empty;
        while (objMakeList != LList.Empty) {
            try {
                Pair pair = (Pair) objMakeList;
                Object cdr = pair.getCdr();
                Object car = pair.getCar();
                try {
                    objMake = Pair.make(((Symbol) car).toString(), objMake);
                    objMakeList = cdr;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "symbol->string", 1, car);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "arg0", -2, objMakeList);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "string->symbol", 1, objApply2);
        }
    }

    @Override // com.google.appinventor.components.runtime.Form
    public void $define() throws Throwable {
        Language.setDefaults(Scheme.getInstance());
        try {
            run();
        } catch (Exception e2) {
            androidLogForm(e2.getMessage());
            processException(e2);
        }
        test = this;
        addToFormEnvironment(f5435a, this);
        Object cdr = this.events$Mnto$Mnregister;
        while (cdr != LList.Empty) {
            try {
                Pair pair = (Pair) cdr;
                Object car = pair.getCar();
                Object objApply1 = lists.car.apply1(car);
                String string = null;
                String string2 = objApply1 == null ? null : objApply1.toString();
                Object objApply12 = lists.cdr.apply1(car);
                if (objApply12 != null) {
                    string = objApply12.toString();
                }
                EventDispatcher.registerEventForDelegation(this, string2, string);
                cdr = pair.getCdr();
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "arg0", -2, cdr);
            }
        }
        try {
            Object objReverse = lists.reverse(this.components$Mnto$Mncreate);
            addToGlobalVars(c, d);
            Object objReverse2 = lists.reverse(this.form$Mndo$Mnafter$Mncreation);
            while (objReverse2 != LList.Empty) {
                try {
                    Pair pair2 = (Pair) objReverse2;
                    misc.force(pair2.getCar());
                    objReverse2 = pair2.getCdr();
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "arg0", -2, objReverse2);
                }
            }
            Object cdr2 = objReverse;
            while (cdr2 != LList.Empty) {
                try {
                    Pair pair3 = (Pair) cdr2;
                    Object car2 = pair3.getCar();
                    Object objApply13 = lists.caddr.apply1(car2);
                    lists.cadddr.apply1(car2);
                    Object objApply14 = lists.cadr.apply1(car2);
                    Object objApply15 = lists.car.apply1(car2);
                    try {
                        Object objApply2 = Invoke.make.apply2(objApply14, lookupInFormEnvironment((Symbol) objApply15));
                        SlotSet.set$Mnfield$Ex.apply3(this, objApply13, objApply2);
                        try {
                            addToFormEnvironment((Symbol) objApply13, objApply2);
                            cdr2 = pair3.getCdr();
                        } catch (ClassCastException e5) {
                            throw new WrongType(e5, "add-to-form-environment", 0, objApply13);
                        }
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "lookup-in-form-environment", 0, objApply15);
                    }
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "arg0", -2, cdr2);
                }
            }
            Object objReverse3 = lists.reverse(this.global$Mnvars$Mnto$Mncreate);
            while (objReverse3 != LList.Empty) {
                try {
                    Pair pair4 = (Pair) objReverse3;
                    Object car3 = pair4.getCar();
                    Object objApply16 = lists.car.apply1(car3);
                    try {
                        addToGlobalVarEnvironment((Symbol) objApply16, Scheme.applyToArgs.apply1(lists.cadr.apply1(car3)));
                        objReverse3 = pair4.getCdr();
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "add-to-global-var-environment", 0, objApply16);
                    }
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "arg0", -2, objReverse3);
                }
            }
            Object cdr3 = objReverse;
            while (cdr3 != LList.Empty) {
                try {
                    Pair pair5 = (Pair) cdr3;
                    Object car4 = pair5.getCar();
                    lists.caddr.apply1(car4);
                    Object objApply17 = lists.cadddr.apply1(car4);
                    if (objApply17 != Boolean.FALSE) {
                        Scheme.applyToArgs.apply1(objApply17);
                    }
                    cdr3 = pair5.getCdr();
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "arg0", -2, cdr3);
                }
            }
            while (objReverse != LList.Empty) {
                try {
                    Pair pair6 = (Pair) objReverse;
                    Object car5 = pair6.getCar();
                    Object objApply18 = lists.caddr.apply1(car5);
                    lists.cadddr.apply1(car5);
                    callInitialize(SlotGet.field.apply2(this, objApply18));
                    objReverse = pair6.getCdr();
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "arg0", -2, objReverse);
                }
            }
        } catch (YailRuntimeError e12) {
            processException(e12);
        }
    }
}
