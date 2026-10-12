package com.niotron.muhammad_robi1996.V15_DATABASE;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Button;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.Spacer;
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
import me.aemo.floatingview.FloatingView;

/* loaded from: classes2.dex */
public class KONFIRMASIFLOAT extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final SimpleSymbol A0;
    public static final SimpleSymbol B;
    public static final ModuleMethod B0 = null;
    public static final SimpleSymbol C;
    public static final FString C0;
    public static final SimpleSymbol D;
    public static final ModuleMethod D0 = null;
    public static final SimpleSymbol E;
    public static final FString E0;
    public static final SimpleSymbol F;
    public static final SimpleSymbol F0;
    public static final SimpleSymbol G;
    public static final ModuleMethod G0 = null;
    public static final ModuleMethod H = null;
    public static final IntNum H0;
    public static final SimpleSymbol I;
    public static final FString I0;
    public static final SimpleSymbol J;
    public static final ModuleMethod J0 = null;
    public static final SimpleSymbol K;
    public static final FString K0;
    public static KONFIRMASIFLOAT KONFIRMASIFLOAT;
    public static final SimpleSymbol L;
    public static final SimpleSymbol L0;
    public static final FString M;
    public static final ModuleMethod M0 = null;
    public static final SimpleSymbol N;
    public static final IntNum N0;
    public static final ModuleMethod O = null;
    public static final FString O0;
    public static final SimpleSymbol P;
    public static final ModuleMethod P0 = null;
    public static final SimpleSymbol Q;
    public static final SimpleSymbol Q0;
    public static final SimpleSymbol R;
    public static final SimpleSymbol R0;
    public static final FString S;
    public static final SimpleSymbol S0;
    public static final ModuleMethod T = null;
    public static final SimpleSymbol T0;
    public static final FString U;
    public static final FString U0;
    public static final SimpleSymbol V;
    public static final ModuleMethod V0 = null;
    public static final ModuleMethod W = null;
    public static final SimpleSymbol W0;
    public static final SimpleSymbol X;
    public static final SimpleSymbol X0;
    public static final SimpleSymbol Y;
    public static final IntNum Y0;
    public static final SimpleSymbol Z;
    public static final FString Z0;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5400a;
    public static final IntNum a0;
    public static final ModuleMethod a1 = null;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5401b;
    public static final FString b0;
    public static final SimpleSymbol b1;
    public static final SimpleSymbol c;
    public static final ModuleMethod c0 = null;
    public static final PairWithPosition c1;
    public static final ModuleMethod d = null;
    public static final FString d0;
    public static final PairWithPosition d1;
    public static final SimpleSymbol e;
    public static final SimpleSymbol e0;
    public static final SimpleSymbol e1;
    public static final ModuleMethod f = null;
    public static final ModuleMethod f0 = null;
    public static final SimpleSymbol f1;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5402g;
    public static final SimpleSymbol g0;
    public static final FString g1;
    public static final SimpleSymbol h;
    public static final IntNum h0;
    public static final FString h1;
    public static final SimpleSymbol i;
    public static final SimpleSymbol i0;
    public static final SimpleSymbol i1;
    public static final ModuleMethod j = null;
    public static final IntNum j0;
    public static final SimpleSymbol j1;
    public static final ModuleMethod k = null;
    public static final FString k0;
    public static final SimpleSymbol k1;
    public static final SimpleSymbol l;
    public static final ModuleMethod l0 = null;
    public static final SimpleSymbol l1;
    public static final IntNum m;
    public static final FString m0;
    public static final SimpleSymbol m1;
    public static final SimpleSymbol n;
    public static final SimpleSymbol n0;
    public static final SimpleSymbol n1;
    public static final SimpleSymbol o;
    public static final ModuleMethod o0 = null;
    public static final SimpleSymbol o1;
    public static final IntNum p;
    public static final SimpleSymbol p0;
    public static final SimpleSymbol p1;
    public static final SimpleSymbol q;
    public static final IntNum q0;
    public static final SimpleSymbol q1;
    public static final IntNum r;
    public static final FString r0;
    public static final SimpleSymbol r1;
    public static final SimpleSymbol s;
    public static final ModuleMethod s0 = null;
    public static final SimpleSymbol s1;
    public static final SimpleSymbol t;
    public static final FString t0;
    public static final SimpleSymbol t1;
    public static final SimpleSymbol u;
    public static final SimpleSymbol u0;
    public static final SimpleSymbol u1;
    public static final SimpleSymbol v;
    public static final ModuleMethod v0 = null;
    public static final SimpleSymbol v1;
    public static final SimpleSymbol w;
    public static final IntNum w0;
    public static final SimpleSymbol x;
    public static final FString x0;
    public static final SimpleSymbol y;
    public static final ModuleMethod y0 = null;
    public static final SimpleSymbol z;
    public static final FString z0;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public Button Button1;
    public final ModuleMethod Button1$TouchUp;
    public Clock Clock1;
    public final ModuleMethod Clock1$Timer;
    public Label DETEKSITEXT;
    public FloatingView FloatingView1;
    public final ModuleMethod KONFIRMASIFLOAT$BackPressed;
    public final ModuleMethod KONFIRMASIFLOAT$Initialize;
    public Label Label1;
    public Label Label2;
    public Label Label3;
    public Spacer Spacer1;
    public Spacer Spacer2;
    public Spacer Spacer3;
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

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("any");
        v1 = (SimpleSymbol) a.f("lookup-handler");
        u1 = (SimpleSymbol) a.f("dispatchGenericEvent");
        t1 = (SimpleSymbol) a.f("dispatchEvent");
        s1 = (SimpleSymbol) a.f("send-error");
        r1 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        q1 = (SimpleSymbol) a.f("add-to-global-vars");
        p1 = (SimpleSymbol) a.f("add-to-components");
        o1 = (SimpleSymbol) a.f("add-to-events");
        n1 = (SimpleSymbol) a.f("add-to-global-var-environment");
        m1 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        l1 = (SimpleSymbol) a.f("lookup-in-form-environment");
        k1 = (SimpleSymbol) a.f("add-to-form-environment");
        j1 = (SimpleSymbol) a.f("android-log-form");
        i1 = (SimpleSymbol) a.f("get-simple-name");
        h1 = new FString("me.aemo.floatingview.FloatingView");
        g1 = new FString("me.aemo.floatingview.FloatingView");
        f1 = (SimpleSymbol) a.f("Timer");
        e1 = (SimpleSymbol) a.f("Clock1$Timer");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        t = simpleSymbol2;
        LList lList = LList.Empty;
        d1 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT.yail", 647513);
        c1 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT.yail", 647421), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT.yail", 647416);
        b1 = (SimpleSymbol) a.f("CheckDrawOverlayPermission");
        Z0 = new FString("com.google.appinventor.components.runtime.Clock");
        Y0 = IntNum.make(500);
        X0 = (SimpleSymbol) a.f("TimerInterval");
        W0 = (SimpleSymbol) a.f("TimerAlwaysFires");
        U0 = new FString("com.google.appinventor.components.runtime.Clock");
        T0 = (SimpleSymbol) a.f("TouchUp");
        S0 = (SimpleSymbol) a.f("Button1$TouchUp");
        R0 = (SimpleSymbol) a.f("RequestDrawOverlayPermission");
        Q0 = (SimpleSymbol) a.f("FloatingView1");
        O0 = new FString("com.google.appinventor.components.runtime.Button");
        N0 = IntNum.make(-1040);
        L0 = (SimpleSymbol) a.f("Button1");
        K0 = new FString("com.google.appinventor.components.runtime.Button");
        I0 = new FString("com.google.appinventor.components.runtime.Spacer");
        H0 = IntNum.make(-1002);
        F0 = (SimpleSymbol) a.f("Spacer3");
        E0 = new FString("com.google.appinventor.components.runtime.Spacer");
        C0 = new FString("com.google.appinventor.components.runtime.Label");
        A0 = (SimpleSymbol) a.f("Label3");
        z0 = new FString("com.google.appinventor.components.runtime.Label");
        x0 = new FString("com.google.appinventor.components.runtime.Spacer");
        w0 = IntNum.make(-1002);
        u0 = (SimpleSymbol) a.f("Spacer2");
        t0 = new FString("com.google.appinventor.components.runtime.Spacer");
        r0 = new FString("com.google.appinventor.components.runtime.Label");
        q0 = IntNum.make(13);
        p0 = (SimpleSymbol) a.f("FontSize");
        n0 = (SimpleSymbol) a.f("Label2");
        m0 = new FString("com.google.appinventor.components.runtime.Label");
        k0 = new FString("com.google.appinventor.components.runtime.Spacer");
        j0 = IntNum.make(-2);
        i0 = (SimpleSymbol) a.f("Width");
        h0 = IntNum.make(-1004);
        g0 = (SimpleSymbol) a.f("Height");
        e0 = (SimpleSymbol) a.f("Spacer1");
        d0 = new FString("com.google.appinventor.components.runtime.Spacer");
        b0 = new FString("com.google.appinventor.components.runtime.Label");
        a0 = IntNum.make(1);
        Z = (SimpleSymbol) a.f("TextAlignment");
        Y = (SimpleSymbol) a.f("Text");
        X = (SimpleSymbol) a.f("FontBold");
        V = (SimpleSymbol) a.f("Label1");
        U = new FString("com.google.appinventor.components.runtime.Label");
        S = new FString("com.google.appinventor.components.runtime.Label");
        R = (SimpleSymbol) a.f("Visible");
        Q = (SimpleSymbol) a.f("HeihPadding");
        P = (SimpleSymbol) a.f("HeihMargin");
        N = (SimpleSymbol) a.f("DETEKSITEXT");
        M = new FString("com.google.appinventor.components.runtime.Label");
        L = (SimpleSymbol) a.f("BackPressed");
        K = (SimpleSymbol) a.f("KONFIRMASIFLOAT$BackPressed");
        J = (SimpleSymbol) a.f("Initialize");
        I = (SimpleSymbol) a.f("KONFIRMASIFLOAT$Initialize");
        G = (SimpleSymbol) a.f("TitleVisible");
        F = (SimpleSymbol) a.f("Title");
        E = (SimpleSymbol) a.f("Theme");
        D = (SimpleSymbol) a.f("StatusBarLightIcons");
        C = (SimpleSymbol) a.f("Sizing");
        B = (SimpleSymbol) a.f("ShowStatusBar");
        A = (SimpleSymbol) a.f("ShowOptionsMenu");
        z = (SimpleSymbol) a.f("ShowListsAsJson");
        y = (SimpleSymbol) a.f("ShowAboutInMenu");
        x = (SimpleSymbol) a.f("ScreenOrientation");
        w = (SimpleSymbol) a.f("OpenScreenAnimation");
        v = (SimpleSymbol) a.f("HighQualityImages");
        u = (SimpleSymbol) a.f("HighContrast");
        s = (SimpleSymbol) a.f("AppName");
        r = IntNum.make(2);
        q = (SimpleSymbol) a.f("AlignVertical");
        p = IntNum.make(3);
        o = (SimpleSymbol) a.f("AlignHorizontal");
        n = (SimpleSymbol) a.f("number");
        m = IntNum.make(new int[]{-14382849, 0});
        l = (SimpleSymbol) a.f("AccentColor");
        i = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        h = (SimpleSymbol) a.f("TimerEnabled");
        f5402g = (SimpleSymbol) a.f("Clock1");
        e = (SimpleSymbol) a.f("p$procedure");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5401b = (SimpleSymbol) a.f("getMessage");
        f5400a = (SimpleSymbol) a.f("KONFIRMASIFLOAT");
    }

    public KONFIRMASIFLOAT() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, i1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, j1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, k1, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, l1, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, m1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, n1, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, o1, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, p1, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, q1, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, r1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, s1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, t1, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, u1, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, v1, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        f = new ModuleMethod(frameVar, 20, null, 0);
        k = new ModuleMethod(frameVar, 21, null, 0);
        j = new ModuleMethod(frameVar, 22, null, 0);
        H = new ModuleMethod(frameVar, 23, null, 0);
        this.KONFIRMASIFLOAT$Initialize = new ModuleMethod(frameVar, 24, I, 0);
        this.KONFIRMASIFLOAT$BackPressed = new ModuleMethod(frameVar, 25, K, 0);
        O = new ModuleMethod(frameVar, 26, null, 0);
        T = new ModuleMethod(frameVar, 27, null, 0);
        W = new ModuleMethod(frameVar, 28, null, 0);
        c0 = new ModuleMethod(frameVar, 29, null, 0);
        f0 = new ModuleMethod(frameVar, 30, null, 0);
        l0 = new ModuleMethod(frameVar, 31, null, 0);
        o0 = new ModuleMethod(frameVar, 32, null, 0);
        s0 = new ModuleMethod(frameVar, 33, null, 0);
        v0 = new ModuleMethod(frameVar, 34, null, 0);
        y0 = new ModuleMethod(frameVar, 35, null, 0);
        B0 = new ModuleMethod(frameVar, 36, null, 0);
        D0 = new ModuleMethod(frameVar, 37, null, 0);
        G0 = new ModuleMethod(frameVar, 38, null, 0);
        J0 = new ModuleMethod(frameVar, 39, null, 0);
        M0 = new ModuleMethod(frameVar, 40, null, 0);
        P0 = new ModuleMethod(frameVar, 41, null, 0);
        this.Button1$TouchUp = new ModuleMethod(frameVar, 42, S0, 0);
        V0 = new ModuleMethod(frameVar, 43, null, 0);
        a1 = new ModuleMethod(frameVar, 44, null, 0);
        this.Clock1$Timer = new ModuleMethod(frameVar, 45, e1, 0);
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
        SimpleSymbol simpleSymbol = f5400a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        KONFIRMASIFLOAT = null;
        this.form$Mnname$Mnsymbol = simpleSymbol;
        LList lList = LList.Empty;
        this.events$Mnto$Mnregister = lList;
        this.components$Mnto$Mncreate = lList;
        this.global$Mnvars$Mnto$Mncreate = lList;
        this.form$Mndo$Mnafter$Mncreation = lList;
        runtimeVar.run();
        Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        SimpleSymbol simpleSymbol2 = e;
        if (obj != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol2, f), consumer);
        } else {
            addToGlobalVars(simpleSymbol2, j);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            SimpleSymbol simpleSymbol3 = l;
            IntNum intNum = m;
            SimpleSymbol simpleSymbol4 = n;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol3, intNum, simpleSymbol4);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, o, p, simpleSymbol4);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, q, r, simpleSymbol4);
            SimpleSymbol simpleSymbol5 = s;
            SimpleSymbol simpleSymbol6 = t;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, "RDEV_EXAM_V9", simpleSymbol6);
            Boolean bool2 = Boolean.TRUE;
            SimpleSymbol simpleSymbol7 = u;
            SimpleSymbol simpleSymbol8 = i;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol7, bool2, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, v, bool2, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, w, "fade", simpleSymbol6);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, x, "portrait", simpleSymbol6);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, y, bool, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, z, bool2, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, A, bool, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, B, bool, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, C, "Responsive", simpleSymbol6);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, D, bool, simpleSymbol8);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, E, "Classic", simpleSymbol6);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, F, "KONFIRMASIFLOAT", simpleSymbol6);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, G, bool, simpleSymbol8), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(H));
        }
        Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol = I;
        if (obj2 != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.KONFIRMASIFLOAT$Initialize);
        } else {
            addToFormEnvironment(symbol, this.KONFIRMASIFLOAT$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "KONFIRMASIFLOAT", "Initialize");
        } else {
            addToEvents(simpleSymbol, J);
        }
        Object obj3 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol2 = K;
        if (obj3 != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.KONFIRMASIFLOAT$BackPressed);
        } else {
            addToFormEnvironment(symbol2, this.KONFIRMASIFLOAT$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "KONFIRMASIFLOAT", "BackPressed");
        } else {
            addToEvents(simpleSymbol, L);
        }
        this.DETEKSITEXT = null;
        Object obj4 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj5 = N;
        if (obj4 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, M, obj5, O), consumer);
        } else {
            addToComponents(simpleSymbol, S, obj5, T);
        }
        this.Label1 = null;
        Object obj6 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj7 = V;
        if (obj6 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, U, obj7, W), consumer);
        } else {
            addToComponents(simpleSymbol, b0, obj7, c0);
        }
        this.Spacer1 = null;
        Object obj8 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj9 = e0;
        if (obj8 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, d0, obj9, f0), consumer);
        } else {
            addToComponents(simpleSymbol, k0, obj9, l0);
        }
        this.Label2 = null;
        Object obj10 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj11 = n0;
        if (obj10 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, m0, obj11, o0), consumer);
        } else {
            addToComponents(simpleSymbol, r0, obj11, s0);
        }
        this.Spacer2 = null;
        Object obj12 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj13 = u0;
        if (obj12 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, t0, obj13, v0), consumer);
        } else {
            addToComponents(simpleSymbol, x0, obj13, y0);
        }
        this.Label3 = null;
        Object obj14 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj15 = A0;
        if (obj14 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, z0, obj15, B0), consumer);
        } else {
            addToComponents(simpleSymbol, C0, obj15, D0);
        }
        this.Spacer3 = null;
        Object obj16 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj17 = F0;
        if (obj16 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, E0, obj17, G0), consumer);
        } else {
            addToComponents(simpleSymbol, I0, obj17, J0);
        }
        this.Button1 = null;
        Object obj18 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj19 = L0;
        if (obj18 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, K0, obj19, M0), consumer);
        } else {
            addToComponents(simpleSymbol, O0, obj19, P0);
        }
        Object obj20 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol3 = S0;
        if (obj20 != bool) {
            runtime.addToCurrentFormEnvironment(symbol3, this.Button1$TouchUp);
        } else {
            addToFormEnvironment(symbol3, this.Button1$TouchUp);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Button1", "TouchUp");
        } else {
            addToEvents(obj19, T0);
        }
        this.Clock1 = null;
        Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj22 = f5402g;
        if (obj21 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, U0, obj22, V0), consumer);
        } else {
            addToComponents(simpleSymbol, Z0, obj22, a1);
        }
        Object obj23 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol4 = e1;
        if (obj23 != bool) {
            runtime.addToCurrentFormEnvironment(symbol4, this.Clock1$Timer);
        } else {
            addToFormEnvironment(symbol4, this.Clock1$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock1", "Timer");
        } else {
            addToEvents(obj22, f1);
        }
        this.FloatingView1 = null;
        Object obj24 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj25 = Q0;
        if (obj24 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, g1, obj25, bool), consumer);
        } else {
            addToComponents(simpleSymbol, h1, obj25, bool);
        }
        runtime.initRuntime();
    }

    public class frame extends ModuleBody {
        public KONFIRMASIFLOAT c;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 18:
                    KONFIRMASIFLOAT konfirmasifloat = KONFIRMASIFLOAT.KONFIRMASIFLOAT;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    return runtime.setAndCoerceProperty$Ex(KONFIRMASIFLOAT.f5402g, KONFIRMASIFLOAT.h, Boolean.TRUE, KONFIRMASIFLOAT.i);
                case 21:
                    return runtime.setAndCoerceProperty$Ex(KONFIRMASIFLOAT.f5402g, KONFIRMASIFLOAT.h, Boolean.TRUE, KONFIRMASIFLOAT.i);
                case 22:
                    return KONFIRMASIFLOAT.k;
                case 23:
                    SimpleSymbol simpleSymbol = KONFIRMASIFLOAT.f5400a;
                    SimpleSymbol simpleSymbol2 = KONFIRMASIFLOAT.l;
                    IntNum intNum = KONFIRMASIFLOAT.m;
                    SimpleSymbol simpleSymbol3 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.o, KONFIRMASIFLOAT.p, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.q, KONFIRMASIFLOAT.r, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = KONFIRMASIFLOAT.s;
                    SimpleSymbol simpleSymbol5 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    Boolean bool = Boolean.TRUE;
                    SimpleSymbol simpleSymbol6 = KONFIRMASIFLOAT.u;
                    SimpleSymbol simpleSymbol7 = KONFIRMASIFLOAT.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.v, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.w, "fade", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.x, "portrait", simpleSymbol5);
                    Boolean bool2 = Boolean.FALSE;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.y, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.z, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.A, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.B, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.C, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.D, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.E, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.F, "KONFIRMASIFLOAT", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, KONFIRMASIFLOAT.G, bool2, simpleSymbol7);
                case 24:
                    return this.c.KONFIRMASIFLOAT$Initialize();
                case 25:
                    return this.c.KONFIRMASIFLOAT$BackPressed();
                case 26:
                    SimpleSymbol simpleSymbol8 = KONFIRMASIFLOAT.N;
                    SimpleSymbol simpleSymbol9 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol10 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, "0,0,0,0", simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol10);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, KONFIRMASIFLOAT.R, Boolean.FALSE, KONFIRMASIFLOAT.i);
                case 27:
                    SimpleSymbol simpleSymbol11 = KONFIRMASIFLOAT.N;
                    SimpleSymbol simpleSymbol12 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol13 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol11, simpleSymbol12, "0,0,0,0", simpleSymbol13);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol11, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol13);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol11, KONFIRMASIFLOAT.R, Boolean.FALSE, KONFIRMASIFLOAT.i);
                case 28:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol14 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol15 = KONFIRMASIFLOAT.V;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol15, KONFIRMASIFLOAT.X, bool3, simpleSymbol14);
                    SimpleSymbol simpleSymbol16 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol17 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol15, simpleSymbol16, "0,0,0,0", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol15, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol15, KONFIRMASIFLOAT.Y, "IZIN DIPERLUKAN!!", simpleSymbol17);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol15, KONFIRMASIFLOAT.Z, KONFIRMASIFLOAT.a0, KONFIRMASIFLOAT.n);
                case 29:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol18 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol19 = KONFIRMASIFLOAT.V;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol19, KONFIRMASIFLOAT.X, bool4, simpleSymbol18);
                    SimpleSymbol simpleSymbol20 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol21 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol19, simpleSymbol20, "0,0,0,0", simpleSymbol21);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol19, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol21);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol19, KONFIRMASIFLOAT.Y, "IZIN DIPERLUKAN!!", simpleSymbol21);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol19, KONFIRMASIFLOAT.Z, KONFIRMASIFLOAT.a0, KONFIRMASIFLOAT.n);
                case 30:
                    SimpleSymbol simpleSymbol22 = KONFIRMASIFLOAT.e0;
                    SimpleSymbol simpleSymbol23 = KONFIRMASIFLOAT.g0;
                    IntNum intNum2 = KONFIRMASIFLOAT.h0;
                    SimpleSymbol simpleSymbol24 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, simpleSymbol23, intNum2, simpleSymbol24);
                    SimpleSymbol simpleSymbol25 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol26 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, simpleSymbol25, "0,0,0,0", simpleSymbol26);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol26);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol22, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol24);
                case 31:
                    SimpleSymbol simpleSymbol27 = KONFIRMASIFLOAT.e0;
                    SimpleSymbol simpleSymbol28 = KONFIRMASIFLOAT.g0;
                    IntNum intNum3 = KONFIRMASIFLOAT.h0;
                    SimpleSymbol simpleSymbol29 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, simpleSymbol28, intNum3, simpleSymbol29);
                    SimpleSymbol simpleSymbol30 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol31 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, simpleSymbol30, "0,0,0,0", simpleSymbol31);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol31);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol27, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol29);
                case 32:
                    Boolean bool5 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol32 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol33 = KONFIRMASIFLOAT.n0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, KONFIRMASIFLOAT.X, bool5, simpleSymbol32);
                    SimpleSymbol simpleSymbol34 = KONFIRMASIFLOAT.p0;
                    IntNum intNum4 = KONFIRMASIFLOAT.q0;
                    SimpleSymbol simpleSymbol35 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol34, intNum4, simpleSymbol35);
                    SimpleSymbol simpleSymbol36 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol37 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol36, "0,0,0,0", simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, KONFIRMASIFLOAT.Y, "Aktifkan \"Tampil di atas aplikasi lain\"", simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, KONFIRMASIFLOAT.Z, KONFIRMASIFLOAT.a0, simpleSymbol35);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol33, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol35);
                case 33:
                    Boolean bool6 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol38 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol39 = KONFIRMASIFLOAT.n0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, KONFIRMASIFLOAT.X, bool6, simpleSymbol38);
                    SimpleSymbol simpleSymbol40 = KONFIRMASIFLOAT.p0;
                    IntNum intNum5 = KONFIRMASIFLOAT.q0;
                    SimpleSymbol simpleSymbol41 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, simpleSymbol40, intNum5, simpleSymbol41);
                    SimpleSymbol simpleSymbol42 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol43 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, simpleSymbol42, "0,0,0,0", simpleSymbol43);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol43);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, KONFIRMASIFLOAT.Y, "Aktifkan \"Tampil di atas aplikasi lain\"", simpleSymbol43);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, KONFIRMASIFLOAT.Z, KONFIRMASIFLOAT.a0, simpleSymbol41);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol39, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol41);
                case 34:
                    SimpleSymbol simpleSymbol44 = KONFIRMASIFLOAT.u0;
                    SimpleSymbol simpleSymbol45 = KONFIRMASIFLOAT.g0;
                    IntNum intNum6 = KONFIRMASIFLOAT.w0;
                    SimpleSymbol simpleSymbol46 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, simpleSymbol45, intNum6, simpleSymbol46);
                    SimpleSymbol simpleSymbol47 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol48 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, simpleSymbol47, "0,0,0,0", simpleSymbol48);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol48);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol44, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol46);
                case 35:
                    SimpleSymbol simpleSymbol49 = KONFIRMASIFLOAT.u0;
                    SimpleSymbol simpleSymbol50 = KONFIRMASIFLOAT.g0;
                    IntNum intNum7 = KONFIRMASIFLOAT.w0;
                    SimpleSymbol simpleSymbol51 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, simpleSymbol50, intNum7, simpleSymbol51);
                    SimpleSymbol simpleSymbol52 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol53 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, simpleSymbol52, "0,0,0,0", simpleSymbol53);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol53);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol49, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol51);
                case 36:
                    SimpleSymbol simpleSymbol54 = KONFIRMASIFLOAT.A0;
                    SimpleSymbol simpleSymbol55 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol56 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol55, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, KONFIRMASIFLOAT.Y, "(diperlukan izin untuk menampilkan jendela melayang)", simpleSymbol56);
                    SimpleSymbol simpleSymbol57 = KONFIRMASIFLOAT.Z;
                    IntNum intNum8 = KONFIRMASIFLOAT.a0;
                    SimpleSymbol simpleSymbol58 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol57, intNum8, simpleSymbol58);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol54, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol58);
                case 37:
                    SimpleSymbol simpleSymbol59 = KONFIRMASIFLOAT.A0;
                    SimpleSymbol simpleSymbol60 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol61 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol60, "0,0,0,0", simpleSymbol61);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol61);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, KONFIRMASIFLOAT.Y, "(diperlukan izin untuk menampilkan jendela melayang)", simpleSymbol61);
                    SimpleSymbol simpleSymbol62 = KONFIRMASIFLOAT.Z;
                    IntNum intNum9 = KONFIRMASIFLOAT.a0;
                    SimpleSymbol simpleSymbol63 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol62, intNum9, simpleSymbol63);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol59, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol63);
                case 38:
                    SimpleSymbol simpleSymbol64 = KONFIRMASIFLOAT.F0;
                    SimpleSymbol simpleSymbol65 = KONFIRMASIFLOAT.g0;
                    IntNum intNum10 = KONFIRMASIFLOAT.H0;
                    SimpleSymbol simpleSymbol66 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, simpleSymbol65, intNum10, simpleSymbol66);
                    SimpleSymbol simpleSymbol67 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol68 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, simpleSymbol67, "0,0,0,0", simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol68);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol64, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol66);
                case 39:
                    SimpleSymbol simpleSymbol69 = KONFIRMASIFLOAT.F0;
                    SimpleSymbol simpleSymbol70 = KONFIRMASIFLOAT.g0;
                    IntNum intNum11 = KONFIRMASIFLOAT.H0;
                    SimpleSymbol simpleSymbol71 = KONFIRMASIFLOAT.n;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol70, intNum11, simpleSymbol71);
                    SimpleSymbol simpleSymbol72 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol73 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol72, "0,0,0,0", simpleSymbol73);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, KONFIRMASIFLOAT.Q, "0,0,0,0", simpleSymbol73);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol69, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.j0, simpleSymbol71);
                case 40:
                    Boolean bool7 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol74 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol75 = KONFIRMASIFLOAT.L0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol75, KONFIRMASIFLOAT.X, bool7, simpleSymbol74);
                    SimpleSymbol simpleSymbol76 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol77 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol75, simpleSymbol76, "0,0,0,0", simpleSymbol77);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol75, KONFIRMASIFLOAT.Y, "AKTIFKAN", simpleSymbol77);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol75, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.N0, KONFIRMASIFLOAT.n);
                case 41:
                    Boolean bool8 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol78 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol79 = KONFIRMASIFLOAT.L0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, KONFIRMASIFLOAT.X, bool8, simpleSymbol78);
                    SimpleSymbol simpleSymbol80 = KONFIRMASIFLOAT.P;
                    SimpleSymbol simpleSymbol81 = KONFIRMASIFLOAT.t;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol80, "0,0,0,0", simpleSymbol81);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, KONFIRMASIFLOAT.Y, "AKTIFKAN", simpleSymbol81);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol79, KONFIRMASIFLOAT.i0, KONFIRMASIFLOAT.N0, KONFIRMASIFLOAT.n);
                case 42:
                    return this.c.Button1$TouchUp();
                case 43:
                    Boolean bool9 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol82 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol83 = KONFIRMASIFLOAT.f5402g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, KONFIRMASIFLOAT.W0, bool9, simpleSymbol82);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol83, KONFIRMASIFLOAT.X0, KONFIRMASIFLOAT.Y0, KONFIRMASIFLOAT.n);
                case 44:
                    Boolean bool10 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol84 = KONFIRMASIFLOAT.i;
                    SimpleSymbol simpleSymbol85 = KONFIRMASIFLOAT.f5402g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, KONFIRMASIFLOAT.W0, bool10, simpleSymbol84);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol85, KONFIRMASIFLOAT.X0, KONFIRMASIFLOAT.Y0, KONFIRMASIFLOAT.n);
                case 45:
                    return this.c.Clock1$Timer();
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
                case 24:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 25:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 26:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 27:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 28:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 29:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 30:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 31:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 32:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 33:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 34:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 35:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 36:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 37:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 38:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 39:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 40:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 41:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 42:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 43:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 44:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 45:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                default:
                    return super.match0(moduleMethod, callContext);
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
                if (!(obj instanceof KONFIRMASIFLOAT)) {
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
            if (i != 7) {
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
                        if (!(obj instanceof KONFIRMASIFLOAT)) {
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
            if (!(obj instanceof Symbol)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
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
                if (!(obj instanceof KONFIRMASIFLOAT)) {
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
            if (!(obj instanceof KONFIRMASIFLOAT)) {
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
    }

    public Object KONFIRMASIFLOAT$Initialize() {
        runtime.setThisForm();
        return Scheme.applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(e, runtime.$Stthe$Mnnull$Mnvalue$St));
    }

    public Object KONFIRMASIFLOAT$BackPressed() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.close$Mnapplication;
        LList lList = LList.Empty;
        return runtime.callYailPrimitive(moduleMethod, lList, lList, "close application");
    }

    public Object Button1$TouchUp() {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = R0;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(Q0, simpleSymbol, lList, lList);
    }

    public Object Clock1$Timer() throws Throwable {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = b1;
        LList lList = LList.Empty;
        Object objCallComponentMethod = runtime.callComponentMethod(Q0, simpleSymbol, lList, lList);
        SimpleSymbol simpleSymbol2 = t;
        SimpleSymbol simpleSymbol3 = N;
        SimpleSymbol simpleSymbol4 = Y;
        runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol4, objCallComponentMethod, simpleSymbol2);
        return runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.get$Mnproperty.apply2(simpleSymbol3, simpleSymbol4), "true"), c1, "=") != Boolean.FALSE ? runtime.callYailPrimitive(runtime.open$Mnanother$Mnscreen, LList.list1("Screen1"), d1, "open another screen") : Values.empty;
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5401b));
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
        KONFIRMASIFLOAT = this;
        addToFormEnvironment(f5400a, this);
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
