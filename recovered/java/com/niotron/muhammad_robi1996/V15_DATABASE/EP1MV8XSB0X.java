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
import com.google.appinventor.components.runtime.Image;
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.LottieAnimation;
import com.google.appinventor.components.runtime.Spacer;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.RuntimeErrorAlert;
import com.google.youngandroid.a;
import com.google.youngandroid.runtime;
import com.puravidaapps.TaifunLockTask.TaifunLockTask;
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
import kawa.standard.require;

/* loaded from: classes2.dex */
public class EP1MV8XSB0X extends Form implements Runnable {
    public static final ModuleMethod A = null;
    public static final ModuleMethod B0 = null;
    public static final ModuleMethod E0 = null;
    public static EP1MV8XSB0X EP1MV8XSB0X;
    public static final ModuleMethod H0 = null;
    public static final ModuleMethod J0 = null;
    public static final ModuleMethod L = null;
    public static final ModuleMethod O0 = null;
    public static final ModuleMethod R0 = null;
    public static final ModuleMethod U = null;
    public static final ModuleMethod U0 = null;
    public static final ModuleMethod X = null;
    public static final ModuleMethod X0 = null;
    public static final ModuleMethod c0 = null;
    public static final ModuleMethod d = null;
    public static final ModuleMethod d1 = null;
    public static final ModuleMethod f0 = null;
    public static final ModuleMethod i0 = null;
    public static final ModuleMethod j1 = null;
    public static final ModuleMethod l0 = null;
    public static final ModuleMethod o1 = null;
    public static final ModuleMethod u0 = null;
    public static final ModuleMethod x0 = null;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public Button Button1;
    public final ModuleMethod Button1$Click;
    public Clock Clock1;
    public final ModuleMethod Clock1$Timer;
    public final ModuleMethod EP1MV8XSB0X$BackPressed;
    public final ModuleMethod EP1MV8XSB0X$Initialize;
    public Image Image1;
    public Label Label1;
    public Label Label2;
    public LottieAnimation Lottie_Animation1;
    public Spacer Spacer1;
    public Spacer Spacer2;
    public Spacer Spacer3;
    public TaifunLockTask TaifunLockTask1;
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
    public static final SimpleSymbol G1 = (SimpleSymbol) a.f("lookup-handler");
    public static final SimpleSymbol F1 = (SimpleSymbol) a.f("dispatchGenericEvent");
    public static final SimpleSymbol E1 = (SimpleSymbol) a.f("dispatchEvent");
    public static final SimpleSymbol D1 = (SimpleSymbol) a.f("send-error");
    public static final SimpleSymbol C1 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
    public static final SimpleSymbol B1 = (SimpleSymbol) a.f("add-to-global-vars");
    public static final SimpleSymbol A1 = (SimpleSymbol) a.f("add-to-components");
    public static final SimpleSymbol z1 = (SimpleSymbol) a.f("add-to-events");
    public static final SimpleSymbol y1 = (SimpleSymbol) a.f("add-to-global-var-environment");
    public static final SimpleSymbol x1 = (SimpleSymbol) a.f("is-bound-in-form-environment");
    public static final SimpleSymbol w1 = (SimpleSymbol) a.f("lookup-in-form-environment");
    public static final SimpleSymbol v1 = (SimpleSymbol) a.f("add-to-form-environment");
    public static final SimpleSymbol u1 = (SimpleSymbol) a.f("android-log-form");
    public static final SimpleSymbol t1 = (SimpleSymbol) a.f("get-simple-name");
    public static final FString s1 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
    public static final FString r1 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
    public static final SimpleSymbol q1 = (SimpleSymbol) a.f("Timer");
    public static final SimpleSymbol p1 = (SimpleSymbol) a.f("Clock1$Timer");
    public static final FString n1 = new FString("com.google.appinventor.components.runtime.Clock");
    public static final IntNum m1 = IntNum.make(2000);
    public static final SimpleSymbol l1 = (SimpleSymbol) a.f("TimerInterval");
    public static final SimpleSymbol k1 = (SimpleSymbol) a.f("TimerAlwaysFires");
    public static final FString i1 = new FString("com.google.appinventor.components.runtime.Clock");
    public static final SimpleSymbol h1 = (SimpleSymbol) a.f("Click");
    public static final SimpleSymbol g1 = (SimpleSymbol) a.f("Button1$Click");
    public static final SimpleSymbol f1 = (SimpleSymbol) a.f("Stop");
    public static final SimpleSymbol e1 = (SimpleSymbol) a.f("TaifunLockTask1");
    public static final FString c1 = new FString("com.google.appinventor.components.runtime.Button");
    public static final IntNum b1 = IntNum.make(-1040);
    public static final IntNum a1 = IntNum.make(new int[]{-1, 0});
    public static final SimpleSymbol Z0 = (SimpleSymbol) a.f("Shape");
    public static final IntNum Y0 = IntNum.make(new int[]{-16602892, 0});
    public static final SimpleSymbol W0 = (SimpleSymbol) a.f("Button1");
    public static final FString V0 = new FString("com.google.appinventor.components.runtime.Button");
    public static final FString T0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final IntNum S0 = IntNum.make(-1003);
    public static final SimpleSymbol Q0 = (SimpleSymbol) a.f("Spacer2");
    public static final FString P0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final FString N0 = new FString("com.google.appinventor.components.runtime.LottieAnimation");
    public static final IntNum M0 = IntNum.make(-1070);
    public static final SimpleSymbol L0 = (SimpleSymbol) a.f("Source");
    public static final IntNum K0 = IntNum.make(-1040);
    public static final FString I0 = new FString("com.google.appinventor.components.runtime.LottieAnimation");
    public static final FString G0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final IntNum F0 = IntNum.make(-1003);
    public static final SimpleSymbol D0 = (SimpleSymbol) a.f("Spacer1");
    public static final FString C0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final FString A0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final IntNum z0 = IntNum.make(new int[]{-769226, 0});
    public static final SimpleSymbol y0 = (SimpleSymbol) a.f("TextColor");
    public static final SimpleSymbol w0 = (SimpleSymbol) a.f("Label2");
    public static final FString v0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final FString t0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final IntNum s0 = IntNum.make(1);
    public static final SimpleSymbol r0 = (SimpleSymbol) a.f("TextAlignment");
    public static final SimpleSymbol q0 = (SimpleSymbol) a.f("Text");
    public static final SimpleSymbol p0 = (SimpleSymbol) a.f("FontTypeface");
    public static final IntNum o0 = IntNum.make(20);
    public static final SimpleSymbol n0 = (SimpleSymbol) a.f("FontSize");
    public static final SimpleSymbol m0 = (SimpleSymbol) a.f("FontBold");
    public static final SimpleSymbol k0 = (SimpleSymbol) a.f("Label1");
    public static final FString j0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final FString h0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final IntNum g0 = IntNum.make(-1003);
    public static final SimpleSymbol e0 = (SimpleSymbol) a.f("Spacer3");
    public static final FString d0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final FString b0 = new FString("com.google.appinventor.components.runtime.Image");
    public static final SimpleSymbol a0 = (SimpleSymbol) a.f("Visible");
    public static final SimpleSymbol Z = (SimpleSymbol) a.f("Picture");
    public static final IntNum Y = IntNum.make(100);
    public static final SimpleSymbol W = (SimpleSymbol) a.f("Image1");
    public static final FString V = new FString("com.google.appinventor.components.runtime.Image");
    public static final FString T = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
    public static final SimpleSymbol S = (SimpleSymbol) a.f("Width");
    public static final SimpleSymbol R = (SimpleSymbol) a.f("HeihPadding");
    public static final SimpleSymbol Q = (SimpleSymbol) a.f("HeihMargin");
    public static final IntNum P = IntNum.make(-2);
    public static final SimpleSymbol O = (SimpleSymbol) a.f("Height");
    public static final IntNum N = IntNum.make(new int[]{-1, 0});
    public static final SimpleSymbol M = (SimpleSymbol) a.f("BackgroundColor");
    public static final SimpleSymbol K = (SimpleSymbol) a.f("Vertical_Arrangement1");
    public static final FString J = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
    public static final SimpleSymbol I = (SimpleSymbol) a.f("Initialize");
    public static final SimpleSymbol H = (SimpleSymbol) a.f("EP1MV8XSB0X$Initialize");
    public static final SimpleSymbol G = (SimpleSymbol) a.f("StartAnimation");
    public static final SimpleSymbol F = (SimpleSymbol) a.f("Lottie_Animation1");
    public static final SimpleSymbol E = (SimpleSymbol) a.f("TimerEnabled");
    public static final SimpleSymbol D = (SimpleSymbol) a.f("Clock1");
    public static final SimpleSymbol C = (SimpleSymbol) a.f("BackPressed");
    public static final SimpleSymbol B = (SimpleSymbol) a.f("EP1MV8XSB0X$BackPressed");
    public static final SimpleSymbol z = (SimpleSymbol) a.f("TitleVisible");
    public static final SimpleSymbol y = (SimpleSymbol) a.f("Title");
    public static final SimpleSymbol x = (SimpleSymbol) a.f("Theme");
    public static final SimpleSymbol w = (SimpleSymbol) a.f("StatusBarLightIcons");
    public static final SimpleSymbol v = (SimpleSymbol) a.f("Sizing");
    public static final SimpleSymbol u = (SimpleSymbol) a.f("ShowStatusBar");
    public static final SimpleSymbol t = (SimpleSymbol) a.f("ShowOptionsMenu");
    public static final SimpleSymbol s = (SimpleSymbol) a.f("ShowNavigationBar");
    public static final SimpleSymbol r = (SimpleSymbol) a.f("ShowListsAsJson");
    public static final SimpleSymbol q = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
    public static final SimpleSymbol p = (SimpleSymbol) a.f("ShowAboutInMenu");
    public static final SimpleSymbol o = (SimpleSymbol) a.f("ScreenOrientation");
    public static final SimpleSymbol n = (SimpleSymbol) a.f("Icon");
    public static final SimpleSymbol m = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
    public static final SimpleSymbol l = (SimpleSymbol) a.f("AppName");
    public static final IntNum k = IntNum.make(2);
    public static final SimpleSymbol j = (SimpleSymbol) a.f("AlignVertical");
    public static final IntNum i = IntNum.make(3);
    public static final SimpleSymbol h = (SimpleSymbol) a.f("AlignHorizontal");

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5386g = (SimpleSymbol) a.f("number");
    public static final IntNum f = IntNum.make(new int[]{-14382849, 0});
    public static final SimpleSymbol e = (SimpleSymbol) a.f("AccentColor");
    public static final SimpleSymbol c = (SimpleSymbol) a.f("*the-null-value*");

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5385b = (SimpleSymbol) a.f("getMessage");

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5384a = (SimpleSymbol) a.f("EP1MV8XSB0X");

    public EP1MV8XSB0X() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, t1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, u1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, v1, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, w1, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, x1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, y1, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, z1, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, A1, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, B1, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, C1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, D1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, E1, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, F1, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, G1, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        A = new ModuleMethod(frameVar, 20, null, 0);
        this.EP1MV8XSB0X$BackPressed = new ModuleMethod(frameVar, 21, B, 0);
        this.EP1MV8XSB0X$Initialize = new ModuleMethod(frameVar, 22, H, 0);
        L = new ModuleMethod(frameVar, 23, null, 0);
        U = new ModuleMethod(frameVar, 24, null, 0);
        X = new ModuleMethod(frameVar, 25, null, 0);
        c0 = new ModuleMethod(frameVar, 26, null, 0);
        f0 = new ModuleMethod(frameVar, 27, null, 0);
        i0 = new ModuleMethod(frameVar, 28, null, 0);
        l0 = new ModuleMethod(frameVar, 29, null, 0);
        u0 = new ModuleMethod(frameVar, 30, null, 0);
        x0 = new ModuleMethod(frameVar, 31, null, 0);
        B0 = new ModuleMethod(frameVar, 32, null, 0);
        E0 = new ModuleMethod(frameVar, 33, null, 0);
        H0 = new ModuleMethod(frameVar, 34, null, 0);
        J0 = new ModuleMethod(frameVar, 35, null, 0);
        O0 = new ModuleMethod(frameVar, 36, null, 0);
        R0 = new ModuleMethod(frameVar, 37, null, 0);
        U0 = new ModuleMethod(frameVar, 38, null, 0);
        X0 = new ModuleMethod(frameVar, 39, null, 0);
        d1 = new ModuleMethod(frameVar, 40, null, 0);
        this.Button1$Click = new ModuleMethod(frameVar, 41, g1, 0);
        j1 = new ModuleMethod(frameVar, 42, null, 0);
        o1 = new ModuleMethod(frameVar, 43, null, 0);
        this.Clock1$Timer = new ModuleMethod(frameVar, 44, p1, 0);
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
        Object objFind = require.find("com.google.youngandroid.runtime");
        try {
            ((Runnable) objFind).run();
            Boolean bool = Boolean.FALSE;
            this.$Stdebug$Mnform$St = bool;
            SimpleSymbol simpleSymbol = f5384a;
            this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
            FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
            this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
            EP1MV8XSB0X = null;
            this.form$Mnname$Mnsymbol = simpleSymbol;
            LList lList = LList.Empty;
            this.events$Mnto$Mnregister = lList;
            this.components$Mnto$Mncreate = lList;
            this.global$Mnvars$Mnto$Mncreate = lList;
            this.form$Mndo$Mnafter$Mncreation = lList;
            Object objFind2 = require.find("com.google.youngandroid.runtime");
            try {
                ((Runnable) objFind2).run();
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
                    SimpleSymbol simpleSymbol2 = e;
                    IntNum intNum = f;
                    SimpleSymbol simpleSymbol3 = f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, h, i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, j, k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = l;
                    SimpleSymbol simpleSymbol5 = m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "V11DB_RDEVEXAM", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, n, "512.png", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, o, "portrait", simpleSymbol5);
                    SimpleSymbol simpleSymbol6 = p;
                    SimpleSymbol simpleSymbol7 = q;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, r, Boolean.TRUE, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, s, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, t, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, u, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, v, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, w, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, x, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, y, "EP1MV8XSB0X", simpleSymbol5);
                    Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, z, bool, simpleSymbol7), consumer);
                } else {
                    addToFormDoAfterCreation(new Promise(A));
                }
                Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Symbol symbol = B;
                if (obj != bool) {
                    runtime.addToCurrentFormEnvironment(symbol, this.EP1MV8XSB0X$BackPressed);
                } else {
                    addToFormEnvironment(symbol, this.EP1MV8XSB0X$BackPressed);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "EP1MV8XSB0X", "BackPressed");
                } else {
                    addToEvents(simpleSymbol, C);
                }
                Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Symbol symbol2 = H;
                if (obj2 != bool) {
                    runtime.addToCurrentFormEnvironment(symbol2, this.EP1MV8XSB0X$Initialize);
                } else {
                    addToFormEnvironment(symbol2, this.EP1MV8XSB0X$Initialize);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "EP1MV8XSB0X", "Initialize");
                } else {
                    addToEvents(simpleSymbol, I);
                }
                this.Vertical_Arrangement1 = null;
                Object obj3 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj4 = K;
                if (obj3 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, J, obj4, L), consumer);
                } else {
                    addToComponents(simpleSymbol, T, obj4, U);
                }
                this.Image1 = null;
                Object obj5 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj6 = W;
                if (obj5 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, V, obj6, X), consumer);
                } else {
                    addToComponents(obj4, b0, obj6, c0);
                }
                this.Spacer3 = null;
                Object obj7 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj8 = e0;
                if (obj7 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, d0, obj8, f0), consumer);
                } else {
                    addToComponents(obj4, h0, obj8, i0);
                }
                this.Label1 = null;
                Object obj9 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj10 = k0;
                if (obj9 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, j0, obj10, l0), consumer);
                } else {
                    addToComponents(obj4, t0, obj10, u0);
                }
                this.Label2 = null;
                Object obj11 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj12 = w0;
                if (obj11 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, v0, obj12, x0), consumer);
                } else {
                    addToComponents(obj4, A0, obj12, B0);
                }
                this.Spacer1 = null;
                Object obj13 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj14 = D0;
                if (obj13 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, C0, obj14, E0), consumer);
                } else {
                    addToComponents(obj4, G0, obj14, H0);
                }
                this.Lottie_Animation1 = null;
                Object obj15 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj16 = F;
                if (obj15 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, I0, obj16, J0), consumer);
                } else {
                    addToComponents(obj4, N0, obj16, O0);
                }
                this.Spacer2 = null;
                Object obj17 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj18 = Q0;
                if (obj17 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, P0, obj18, R0), consumer);
                } else {
                    addToComponents(obj4, T0, obj18, U0);
                }
                this.Button1 = null;
                Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj20 = W0;
                if (obj19 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(obj4, V0, obj20, X0), consumer);
                } else {
                    addToComponents(obj4, c1, obj20, d1);
                }
                Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Symbol symbol3 = g1;
                if (obj21 != bool) {
                    runtime.addToCurrentFormEnvironment(symbol3, this.Button1$Click);
                } else {
                    addToFormEnvironment(symbol3, this.Button1$Click);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Button1", "Click");
                } else {
                    addToEvents(obj20, h1);
                }
                this.Clock1 = null;
                Object obj22 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj23 = D;
                if (obj22 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, i1, obj23, j1), consumer);
                } else {
                    addToComponents(simpleSymbol, n1, obj23, o1);
                }
                Object obj24 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Symbol symbol4 = p1;
                if (obj24 != bool) {
                    runtime.addToCurrentFormEnvironment(symbol4, this.Clock1$Timer);
                } else {
                    addToFormEnvironment(symbol4, this.Clock1$Timer);
                }
                if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
                    EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock1", "Timer");
                } else {
                    addToEvents(obj23, q1);
                }
                this.TaifunLockTask1 = null;
                Object obj25 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
                Object obj26 = e1;
                if (obj25 != bool) {
                    Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, r1, obj26, bool), consumer);
                } else {
                    addToComponents(simpleSymbol, s1, obj26, bool);
                }
                runtime.initRuntime();
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "java.lang.Runnable.run()", 1, objFind2);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "java.lang.Runnable.run()", 1, objFind);
        }
    }

    public Object EP1MV8XSB0X$BackPressed() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.close$Mnapplication;
        LList lList = LList.Empty;
        return runtime.callYailPrimitive(moduleMethod, lList, lList, "close application");
    }

    public Object EP1MV8XSB0X$Initialize() {
        runtime.setThisForm();
        runtime.setAndCoerceProperty$Ex(D, E, Boolean.TRUE, q);
        SimpleSymbol simpleSymbol = G;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(F, simpleSymbol, lList, lList);
    }

    public Object Button1$Click() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        runtime.callComponentMethod(e1, f1, lList, lList);
        return runtime.callYailPrimitive(runtime.close$Mnapplication, lList, lList, "close application");
    }

    public Object Clock1$Timer() {
        runtime.setThisForm();
        runtime.setAndCoerceProperty$Ex(W0, a0, Boolean.TRUE, q);
        SimpleSymbol simpleSymbol = G;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(F, simpleSymbol, lList, lList);
    }

    public class frame extends ModuleBody {
        public EP1MV8XSB0X c;

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
                if (!(obj instanceof EP1MV8XSB0X)) {
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
                    if (!(obj instanceof EP1MV8XSB0X)) {
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
                if (!(obj instanceof EP1MV8XSB0X)) {
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
            if (!(obj instanceof EP1MV8XSB0X)) {
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
                    EP1MV8XSB0X ep1mv8xsb0x = EP1MV8XSB0X.EP1MV8XSB0X;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    SimpleSymbol simpleSymbol = EP1MV8XSB0X.f5384a;
                    SimpleSymbol simpleSymbol2 = EP1MV8XSB0X.e;
                    IntNum intNum = EP1MV8XSB0X.f;
                    SimpleSymbol simpleSymbol3 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.h, EP1MV8XSB0X.i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.j, EP1MV8XSB0X.k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = EP1MV8XSB0X.l;
                    SimpleSymbol simpleSymbol5 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "V11DB_RDEVEXAM", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.n, "512.png", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.o, "portrait", simpleSymbol5);
                    Boolean bool = Boolean.FALSE;
                    SimpleSymbol simpleSymbol6 = EP1MV8XSB0X.p;
                    SimpleSymbol simpleSymbol7 = EP1MV8XSB0X.q;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.r, Boolean.TRUE, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.s, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.t, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.u, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.v, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.w, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.x, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.y, "EP1MV8XSB0X", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, EP1MV8XSB0X.z, bool, simpleSymbol7);
                case 21:
                    return this.c.EP1MV8XSB0X$BackPressed();
                case 22:
                    return this.c.EP1MV8XSB0X$Initialize();
                case 23:
                    SimpleSymbol simpleSymbol8 = EP1MV8XSB0X.K;
                    SimpleSymbol simpleSymbol9 = EP1MV8XSB0X.h;
                    IntNum intNum2 = EP1MV8XSB0X.i;
                    SimpleSymbol simpleSymbol10 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, EP1MV8XSB0X.j, EP1MV8XSB0X.k, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, EP1MV8XSB0X.M, EP1MV8XSB0X.N, simpleSymbol10);
                    SimpleSymbol simpleSymbol11 = EP1MV8XSB0X.O;
                    IntNum intNum3 = EP1MV8XSB0X.P;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, intNum3, simpleSymbol10);
                    SimpleSymbol simpleSymbol12 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol13 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol12, "0,0,0,0", simpleSymbol13);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol13);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, EP1MV8XSB0X.S, intNum3, simpleSymbol10);
                case 24:
                    SimpleSymbol simpleSymbol14 = EP1MV8XSB0X.K;
                    SimpleSymbol simpleSymbol15 = EP1MV8XSB0X.h;
                    IntNum intNum4 = EP1MV8XSB0X.i;
                    SimpleSymbol simpleSymbol16 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol15, intNum4, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, EP1MV8XSB0X.j, EP1MV8XSB0X.k, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, EP1MV8XSB0X.M, EP1MV8XSB0X.N, simpleSymbol16);
                    SimpleSymbol simpleSymbol17 = EP1MV8XSB0X.O;
                    IntNum intNum5 = EP1MV8XSB0X.P;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol17, intNum5, simpleSymbol16);
                    SimpleSymbol simpleSymbol18 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol19 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol18, "0,0,0,0", simpleSymbol19);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol19);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol14, EP1MV8XSB0X.S, intNum5, simpleSymbol16);
                case 25:
                    SimpleSymbol simpleSymbol20 = EP1MV8XSB0X.W;
                    SimpleSymbol simpleSymbol21 = EP1MV8XSB0X.O;
                    IntNum intNum6 = EP1MV8XSB0X.Y;
                    SimpleSymbol simpleSymbol22 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, simpleSymbol21, intNum6, simpleSymbol22);
                    SimpleSymbol simpleSymbol23 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol24 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, simpleSymbol23, "0,0,0,0", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, EP1MV8XSB0X.Z, "pm05pr0(1).png", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, EP1MV8XSB0X.a0, Boolean.FALSE, EP1MV8XSB0X.q);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol20, EP1MV8XSB0X.S, intNum6, simpleSymbol22);
                case 26:
                    SimpleSymbol simpleSymbol25 = EP1MV8XSB0X.W;
                    SimpleSymbol simpleSymbol26 = EP1MV8XSB0X.O;
                    IntNum intNum7 = EP1MV8XSB0X.Y;
                    SimpleSymbol simpleSymbol27 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, simpleSymbol26, intNum7, simpleSymbol27);
                    SimpleSymbol simpleSymbol28 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol29 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, simpleSymbol28, "0,0,0,0", simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, EP1MV8XSB0X.Z, "pm05pr0(1).png", simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, EP1MV8XSB0X.a0, Boolean.FALSE, EP1MV8XSB0X.q);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol25, EP1MV8XSB0X.S, intNum7, simpleSymbol27);
                case 27:
                    SimpleSymbol simpleSymbol30 = EP1MV8XSB0X.e0;
                    SimpleSymbol simpleSymbol31 = EP1MV8XSB0X.O;
                    IntNum intNum8 = EP1MV8XSB0X.g0;
                    SimpleSymbol simpleSymbol32 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol30, simpleSymbol31, intNum8, simpleSymbol32);
                    SimpleSymbol simpleSymbol33 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol34 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol30, simpleSymbol33, "0,0,0,0", simpleSymbol34);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol30, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol34);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol30, EP1MV8XSB0X.S, EP1MV8XSB0X.P, simpleSymbol32);
                case 28:
                    SimpleSymbol simpleSymbol35 = EP1MV8XSB0X.e0;
                    SimpleSymbol simpleSymbol36 = EP1MV8XSB0X.O;
                    IntNum intNum9 = EP1MV8XSB0X.g0;
                    SimpleSymbol simpleSymbol37 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol36, intNum9, simpleSymbol37);
                    SimpleSymbol simpleSymbol38 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol39 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol38, "0,0,0,0", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol39);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol35, EP1MV8XSB0X.S, EP1MV8XSB0X.P, simpleSymbol37);
                case 29:
                    Boolean bool2 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol40 = EP1MV8XSB0X.q;
                    SimpleSymbol simpleSymbol41 = EP1MV8XSB0X.k0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, EP1MV8XSB0X.m0, bool2, simpleSymbol40);
                    SimpleSymbol simpleSymbol42 = EP1MV8XSB0X.n0;
                    IntNum intNum10 = EP1MV8XSB0X.o0;
                    SimpleSymbol simpleSymbol43 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, simpleSymbol42, intNum10, simpleSymbol43);
                    SimpleSymbol simpleSymbol44 = EP1MV8XSB0X.p0;
                    SimpleSymbol simpleSymbol45 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, simpleSymbol44, "1", simpleSymbol45);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, EP1MV8XSB0X.Q, "0,0,0,0", simpleSymbol45);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol45);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, EP1MV8XSB0X.q0, "MENDETEKSI VIRTUAL ANDROID", simpleSymbol45);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol41, EP1MV8XSB0X.r0, EP1MV8XSB0X.s0, simpleSymbol43);
                case 30:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol46 = EP1MV8XSB0X.q;
                    SimpleSymbol simpleSymbol47 = EP1MV8XSB0X.k0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, EP1MV8XSB0X.m0, bool3, simpleSymbol46);
                    SimpleSymbol simpleSymbol48 = EP1MV8XSB0X.n0;
                    IntNum intNum11 = EP1MV8XSB0X.o0;
                    SimpleSymbol simpleSymbol49 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, simpleSymbol48, intNum11, simpleSymbol49);
                    SimpleSymbol simpleSymbol50 = EP1MV8XSB0X.p0;
                    SimpleSymbol simpleSymbol51 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, simpleSymbol50, "1", simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, EP1MV8XSB0X.Q, "0,0,0,0", simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, EP1MV8XSB0X.q0, "MENDETEKSI VIRTUAL ANDROID", simpleSymbol51);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol47, EP1MV8XSB0X.r0, EP1MV8XSB0X.s0, simpleSymbol49);
                case 31:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol52 = EP1MV8XSB0X.w0;
                    SimpleSymbol simpleSymbol53 = EP1MV8XSB0X.m0;
                    SimpleSymbol simpleSymbol54 = EP1MV8XSB0X.q;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol53, bool4, simpleSymbol54);
                    SimpleSymbol simpleSymbol55 = EP1MV8XSB0X.n0;
                    IntNum intNum12 = EP1MV8XSB0X.o0;
                    SimpleSymbol simpleSymbol56 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol55, intNum12, simpleSymbol56);
                    SimpleSymbol simpleSymbol57 = EP1MV8XSB0X.p0;
                    SimpleSymbol simpleSymbol58 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol57, "1", simpleSymbol58);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, EP1MV8XSB0X.Q, "0,0,0,0", simpleSymbol58);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol58);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, EP1MV8XSB0X.q0, "VMOS PRO", simpleSymbol58);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, EP1MV8XSB0X.r0, EP1MV8XSB0X.s0, simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, EP1MV8XSB0X.y0, EP1MV8XSB0X.z0, simpleSymbol56);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol52, EP1MV8XSB0X.a0, Boolean.FALSE, simpleSymbol54);
                case 32:
                    Boolean bool5 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol59 = EP1MV8XSB0X.w0;
                    SimpleSymbol simpleSymbol60 = EP1MV8XSB0X.m0;
                    SimpleSymbol simpleSymbol61 = EP1MV8XSB0X.q;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol60, bool5, simpleSymbol61);
                    SimpleSymbol simpleSymbol62 = EP1MV8XSB0X.n0;
                    IntNum intNum13 = EP1MV8XSB0X.o0;
                    SimpleSymbol simpleSymbol63 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol62, intNum13, simpleSymbol63);
                    SimpleSymbol simpleSymbol64 = EP1MV8XSB0X.p0;
                    SimpleSymbol simpleSymbol65 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol64, "1", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, EP1MV8XSB0X.Q, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, EP1MV8XSB0X.q0, "VMOS PRO", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, EP1MV8XSB0X.r0, EP1MV8XSB0X.s0, simpleSymbol63);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, EP1MV8XSB0X.y0, EP1MV8XSB0X.z0, simpleSymbol63);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol59, EP1MV8XSB0X.a0, Boolean.FALSE, simpleSymbol61);
                case 33:
                    SimpleSymbol simpleSymbol66 = EP1MV8XSB0X.D0;
                    SimpleSymbol simpleSymbol67 = EP1MV8XSB0X.O;
                    IntNum intNum14 = EP1MV8XSB0X.F0;
                    SimpleSymbol simpleSymbol68 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol67, intNum14, simpleSymbol68);
                    SimpleSymbol simpleSymbol69 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol70 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol69, "0,0,0,0", simpleSymbol70);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol70);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol66, EP1MV8XSB0X.S, EP1MV8XSB0X.P, simpleSymbol68);
                case 34:
                    SimpleSymbol simpleSymbol71 = EP1MV8XSB0X.D0;
                    SimpleSymbol simpleSymbol72 = EP1MV8XSB0X.O;
                    IntNum intNum15 = EP1MV8XSB0X.F0;
                    SimpleSymbol simpleSymbol73 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol71, simpleSymbol72, intNum15, simpleSymbol73);
                    SimpleSymbol simpleSymbol74 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol75 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol71, simpleSymbol74, "0,0,0,0", simpleSymbol75);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol71, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol75);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol71, EP1MV8XSB0X.S, EP1MV8XSB0X.P, simpleSymbol73);
                case 35:
                    SimpleSymbol simpleSymbol76 = EP1MV8XSB0X.F;
                    SimpleSymbol simpleSymbol77 = EP1MV8XSB0X.O;
                    IntNum intNum16 = EP1MV8XSB0X.K0;
                    SimpleSymbol simpleSymbol78 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol76, simpleSymbol77, intNum16, simpleSymbol78);
                    SimpleSymbol simpleSymbol79 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol80 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol76, simpleSymbol79, "0,0,0,0", simpleSymbol80);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol76, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol80);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol76, EP1MV8XSB0X.L0, "Animation-1702967996652.json", simpleSymbol80);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol76, EP1MV8XSB0X.S, EP1MV8XSB0X.M0, simpleSymbol78);
                case 36:
                    SimpleSymbol simpleSymbol81 = EP1MV8XSB0X.F;
                    SimpleSymbol simpleSymbol82 = EP1MV8XSB0X.O;
                    IntNum intNum17 = EP1MV8XSB0X.K0;
                    SimpleSymbol simpleSymbol83 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, simpleSymbol82, intNum17, simpleSymbol83);
                    SimpleSymbol simpleSymbol84 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol85 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, simpleSymbol84, "0,0,0,0", simpleSymbol85);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol85);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, EP1MV8XSB0X.L0, "Animation-1702967996652.json", simpleSymbol85);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol81, EP1MV8XSB0X.S, EP1MV8XSB0X.M0, simpleSymbol83);
                case 37:
                    SimpleSymbol simpleSymbol86 = EP1MV8XSB0X.Q0;
                    SimpleSymbol simpleSymbol87 = EP1MV8XSB0X.O;
                    IntNum intNum18 = EP1MV8XSB0X.S0;
                    SimpleSymbol simpleSymbol88 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, simpleSymbol87, intNum18, simpleSymbol88);
                    SimpleSymbol simpleSymbol89 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol90 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, simpleSymbol89, "0,0,0,0", simpleSymbol90);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol90);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol86, EP1MV8XSB0X.S, EP1MV8XSB0X.P, simpleSymbol88);
                case 38:
                    SimpleSymbol simpleSymbol91 = EP1MV8XSB0X.Q0;
                    SimpleSymbol simpleSymbol92 = EP1MV8XSB0X.O;
                    IntNum intNum19 = EP1MV8XSB0X.S0;
                    SimpleSymbol simpleSymbol93 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol91, simpleSymbol92, intNum19, simpleSymbol93);
                    SimpleSymbol simpleSymbol94 = EP1MV8XSB0X.Q;
                    SimpleSymbol simpleSymbol95 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol91, simpleSymbol94, "0,0,0,0", simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol91, EP1MV8XSB0X.R, "0,0,0,0", simpleSymbol95);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol91, EP1MV8XSB0X.S, EP1MV8XSB0X.P, simpleSymbol93);
                case 39:
                    SimpleSymbol simpleSymbol96 = EP1MV8XSB0X.W0;
                    SimpleSymbol simpleSymbol97 = EP1MV8XSB0X.M;
                    IntNum intNum20 = EP1MV8XSB0X.Y0;
                    SimpleSymbol simpleSymbol98 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, simpleSymbol97, intNum20, simpleSymbol98);
                    Boolean bool6 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol99 = EP1MV8XSB0X.m0;
                    SimpleSymbol simpleSymbol100 = EP1MV8XSB0X.q;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, simpleSymbol99, bool6, simpleSymbol100);
                    SimpleSymbol simpleSymbol101 = EP1MV8XSB0X.p0;
                    SimpleSymbol simpleSymbol102 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, simpleSymbol101, "1", simpleSymbol102);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, EP1MV8XSB0X.Q, "0,0,0,0", simpleSymbol102);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, EP1MV8XSB0X.Z0, EP1MV8XSB0X.s0, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, EP1MV8XSB0X.q0, "KELUAR", simpleSymbol102);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, EP1MV8XSB0X.y0, EP1MV8XSB0X.a1, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, EP1MV8XSB0X.a0, Boolean.FALSE, simpleSymbol100);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol96, EP1MV8XSB0X.S, EP1MV8XSB0X.b1, simpleSymbol98);
                case 40:
                    SimpleSymbol simpleSymbol103 = EP1MV8XSB0X.W0;
                    SimpleSymbol simpleSymbol104 = EP1MV8XSB0X.M;
                    IntNum intNum21 = EP1MV8XSB0X.Y0;
                    SimpleSymbol simpleSymbol105 = EP1MV8XSB0X.f5386g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, simpleSymbol104, intNum21, simpleSymbol105);
                    Boolean bool7 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol106 = EP1MV8XSB0X.m0;
                    SimpleSymbol simpleSymbol107 = EP1MV8XSB0X.q;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, simpleSymbol106, bool7, simpleSymbol107);
                    SimpleSymbol simpleSymbol108 = EP1MV8XSB0X.p0;
                    SimpleSymbol simpleSymbol109 = EP1MV8XSB0X.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, simpleSymbol108, "1", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, EP1MV8XSB0X.Q, "0,0,0,0", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, EP1MV8XSB0X.Z0, EP1MV8XSB0X.s0, simpleSymbol105);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, EP1MV8XSB0X.q0, "KELUAR", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, EP1MV8XSB0X.y0, EP1MV8XSB0X.a1, simpleSymbol105);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, EP1MV8XSB0X.a0, Boolean.FALSE, simpleSymbol107);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol103, EP1MV8XSB0X.S, EP1MV8XSB0X.b1, simpleSymbol105);
                case 41:
                    return this.c.Button1$Click();
                case 42:
                    Boolean bool8 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol110 = EP1MV8XSB0X.q;
                    SimpleSymbol simpleSymbol111 = EP1MV8XSB0X.D;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, EP1MV8XSB0X.k1, bool8, simpleSymbol110);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol111, EP1MV8XSB0X.l1, EP1MV8XSB0X.m1, EP1MV8XSB0X.f5386g);
                case 43:
                    Boolean bool9 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol112 = EP1MV8XSB0X.q;
                    SimpleSymbol simpleSymbol113 = EP1MV8XSB0X.D;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol113, EP1MV8XSB0X.k1, bool9, simpleSymbol112);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol113, EP1MV8XSB0X.l1, EP1MV8XSB0X.m1, EP1MV8XSB0X.f5386g);
                case 44:
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5385b));
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
        EP1MV8XSB0X = this;
        addToFormEnvironment(f5384a, this);
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
