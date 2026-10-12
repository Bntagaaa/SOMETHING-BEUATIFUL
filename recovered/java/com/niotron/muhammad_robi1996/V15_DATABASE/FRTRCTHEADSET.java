package com.niotron.muhammad_robi1996.V15_DATABASE;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Button;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.Label;
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

/* loaded from: classes2.dex */
public class FRTRCTHEADSET extends Form implements Runnable {
    public static final ModuleMethod B = null;
    public static final ModuleMethod C0 = null;
    public static FRTRCTHEADSET FRTRCTHEADSET;
    public static final ModuleMethod G0 = null;
    public static final ModuleMethod I = null;
    public static final ModuleMethod J0 = null;
    public static final ModuleMethod M0 = null;
    public static final ModuleMethod P0 = null;
    public static final ModuleMethod R = null;
    public static final ModuleMethod U = null;
    public static final ModuleMethod U0 = null;
    public static final ModuleMethod d = null;
    public static final ModuleMethod g0 = null;
    public static final ModuleMethod j0 = null;
    public static final ModuleMethod m0 = null;
    public static final ModuleMethod p0 = null;
    public static final ModuleMethod t0 = null;
    public static final ModuleMethod w0 = null;
    public static final ModuleMethod z0 = null;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public Button Button1;
    public Button Button2;
    public final ModuleMethod Button2$Click;
    public final ModuleMethod FRTRCTHEADSET$BackPressed;
    public Label Label1;
    public Label Label2;
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
    public static final SimpleSymbol m1 = (SimpleSymbol) a.f("lookup-handler");
    public static final SimpleSymbol l1 = (SimpleSymbol) a.f("dispatchGenericEvent");
    public static final SimpleSymbol k1 = (SimpleSymbol) a.f("dispatchEvent");
    public static final SimpleSymbol j1 = (SimpleSymbol) a.f("send-error");
    public static final SimpleSymbol i1 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
    public static final SimpleSymbol h1 = (SimpleSymbol) a.f("add-to-global-vars");
    public static final SimpleSymbol g1 = (SimpleSymbol) a.f("add-to-components");
    public static final SimpleSymbol f1 = (SimpleSymbol) a.f("add-to-events");
    public static final SimpleSymbol e1 = (SimpleSymbol) a.f("add-to-global-var-environment");
    public static final SimpleSymbol d1 = (SimpleSymbol) a.f("is-bound-in-form-environment");
    public static final SimpleSymbol c1 = (SimpleSymbol) a.f("lookup-in-form-environment");
    public static final SimpleSymbol b1 = (SimpleSymbol) a.f("add-to-form-environment");
    public static final SimpleSymbol a1 = (SimpleSymbol) a.f("android-log-form");
    public static final SimpleSymbol Z0 = (SimpleSymbol) a.f("get-simple-name");
    public static final FString Y0 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
    public static final FString X0 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
    public static final SimpleSymbol W0 = (SimpleSymbol) a.f("Click");
    public static final SimpleSymbol V0 = (SimpleSymbol) a.f("Button2$Click");
    public static final FString T0 = new FString("com.google.appinventor.components.runtime.Button");
    public static final IntNum S0 = IntNum.make(-1040);
    public static final IntNum R0 = IntNum.make(new int[]{-1, 0});
    public static final IntNum Q0 = IntNum.make(new int[]{-16602892, 0});
    public static final SimpleSymbol O0 = (SimpleSymbol) a.f("Button2");
    public static final FString N0 = new FString("com.google.appinventor.components.runtime.Button");
    public static final FString L0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final IntNum K0 = IntNum.make(-1002);
    public static final SimpleSymbol I0 = (SimpleSymbol) a.f("Spacer3");
    public static final FString H0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final FString F0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final IntNum E0 = IntNum.make(1);
    public static final SimpleSymbol D0 = (SimpleSymbol) a.f("TextAlignment");
    public static final SimpleSymbol B0 = (SimpleSymbol) a.f("Label2");
    public static final FString A0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final FString y0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final IntNum x0 = IntNum.make(-1002);
    public static final SimpleSymbol v0 = (SimpleSymbol) a.f("Spacer2");
    public static final FString u0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final FString s0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final IntNum r0 = IntNum.make(20);
    public static final SimpleSymbol q0 = (SimpleSymbol) a.f("FontBold");
    public static final SimpleSymbol o0 = (SimpleSymbol) a.f("Label1");
    public static final FString n0 = new FString("com.google.appinventor.components.runtime.Label");
    public static final FString l0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final IntNum k0 = IntNum.make(-1003);
    public static final SimpleSymbol i0 = (SimpleSymbol) a.f("Spacer1");
    public static final FString h0 = new FString("com.google.appinventor.components.runtime.Spacer");
    public static final FString f0 = new FString("com.google.appinventor.components.runtime.Button");
    public static final IntNum e0 = IntNum.make(-1020);
    public static final IntNum d0 = IntNum.make(new int[]{-1, 0});
    public static final SimpleSymbol c0 = (SimpleSymbol) a.f("TextColor");
    public static final SimpleSymbol b0 = (SimpleSymbol) a.f("Text");
    public static final SimpleSymbol a0 = (SimpleSymbol) a.f("Shape");
    public static final IntNum Z = IntNum.make(-1010);
    public static final SimpleSymbol Y = (SimpleSymbol) a.f("FontTypeface");
    public static final IntNum X = IntNum.make(40);
    public static final SimpleSymbol W = (SimpleSymbol) a.f("FontSize");
    public static final IntNum V = IntNum.make(new int[]{-16602892, 0});
    public static final SimpleSymbol T = (SimpleSymbol) a.f("Button1");
    public static final FString S = new FString("com.google.appinventor.components.runtime.Button");
    public static final FString Q = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
    public static final SimpleSymbol P = (SimpleSymbol) a.f("Width");
    public static final SimpleSymbol O = (SimpleSymbol) a.f("HeihPadding");
    public static final SimpleSymbol N = (SimpleSymbol) a.f("HeihMargin");
    public static final IntNum M = IntNum.make(-2);
    public static final SimpleSymbol L = (SimpleSymbol) a.f("Height");
    public static final IntNum K = IntNum.make(new int[]{-1, 0});
    public static final SimpleSymbol J = (SimpleSymbol) a.f("BackgroundColor");
    public static final SimpleSymbol H = (SimpleSymbol) a.f("Vertical_Arrangement1");
    public static final FString G = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
    public static final SimpleSymbol F = (SimpleSymbol) a.f("BackPressed");
    public static final SimpleSymbol E = (SimpleSymbol) a.f("FRTRCTHEADSET$BackPressed");
    public static final SimpleSymbol D = (SimpleSymbol) a.f("Stop");
    public static final SimpleSymbol C = (SimpleSymbol) a.f("TaifunLockTask1");
    public static final SimpleSymbol A = (SimpleSymbol) a.f("TitleVisible");
    public static final SimpleSymbol z = (SimpleSymbol) a.f("Title");
    public static final SimpleSymbol y = (SimpleSymbol) a.f("Theme");
    public static final SimpleSymbol x = (SimpleSymbol) a.f("StatusBarLightIcons");
    public static final SimpleSymbol w = (SimpleSymbol) a.f("Sizing");
    public static final SimpleSymbol v = (SimpleSymbol) a.f("ShowStatusBar");
    public static final SimpleSymbol u = (SimpleSymbol) a.f("ShowOptionsMenu");
    public static final SimpleSymbol t = (SimpleSymbol) a.f("ShowNavigationBar");
    public static final SimpleSymbol s = (SimpleSymbol) a.f("ShowListsAsJson");
    public static final SimpleSymbol r = (SimpleSymbol) a.f("ShowAboutInMenu");
    public static final SimpleSymbol q = (SimpleSymbol) a.f("ScreenOrientation");
    public static final SimpleSymbol p = (SimpleSymbol) a.f("HighQualityImages");
    public static final SimpleSymbol o = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
    public static final SimpleSymbol n = (SimpleSymbol) a.f("HighContrast");
    public static final SimpleSymbol m = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
    public static final SimpleSymbol l = (SimpleSymbol) a.f("AppName");
    public static final IntNum k = IntNum.make(2);
    public static final SimpleSymbol j = (SimpleSymbol) a.f("AlignVertical");
    public static final IntNum i = IntNum.make(3);
    public static final SimpleSymbol h = (SimpleSymbol) a.f("AlignHorizontal");

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5389g = (SimpleSymbol) a.f("number");
    public static final IntNum f = IntNum.make(new int[]{-14382849, 0});
    public static final SimpleSymbol e = (SimpleSymbol) a.f("AccentColor");
    public static final SimpleSymbol c = (SimpleSymbol) a.f("*the-null-value*");

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5388b = (SimpleSymbol) a.f("getMessage");

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5387a = (SimpleSymbol) a.f("FRTRCTHEADSET");

    public FRTRCTHEADSET() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, Z0, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, a1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, b1, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, c1, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, d1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, e1, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, f1, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, g1, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, h1, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, i1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, j1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, k1, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, l1, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, m1, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        B = new ModuleMethod(frameVar, 20, null, 0);
        this.FRTRCTHEADSET$BackPressed = new ModuleMethod(frameVar, 21, E, 0);
        I = new ModuleMethod(frameVar, 22, null, 0);
        R = new ModuleMethod(frameVar, 23, null, 0);
        U = new ModuleMethod(frameVar, 24, null, 0);
        g0 = new ModuleMethod(frameVar, 25, null, 0);
        j0 = new ModuleMethod(frameVar, 26, null, 0);
        m0 = new ModuleMethod(frameVar, 27, null, 0);
        p0 = new ModuleMethod(frameVar, 28, null, 0);
        t0 = new ModuleMethod(frameVar, 29, null, 0);
        w0 = new ModuleMethod(frameVar, 30, null, 0);
        z0 = new ModuleMethod(frameVar, 31, null, 0);
        C0 = new ModuleMethod(frameVar, 32, null, 0);
        G0 = new ModuleMethod(frameVar, 33, null, 0);
        J0 = new ModuleMethod(frameVar, 34, null, 0);
        M0 = new ModuleMethod(frameVar, 35, null, 0);
        P0 = new ModuleMethod(frameVar, 36, null, 0);
        U0 = new ModuleMethod(frameVar, 37, null, 0);
        this.Button2$Click = new ModuleMethod(frameVar, 38, V0, 0);
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
        SimpleSymbol simpleSymbol = f5387a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        FRTRCTHEADSET = null;
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
            SimpleSymbol simpleSymbol3 = f5389g;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, h, i, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, j, k, simpleSymbol3);
            SimpleSymbol simpleSymbol4 = l;
            SimpleSymbol simpleSymbol5 = m;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
            Boolean bool2 = Boolean.TRUE;
            SimpleSymbol simpleSymbol6 = n;
            SimpleSymbol simpleSymbol7 = o;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, p, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, q, "unspecified", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, r, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, s, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, t, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, u, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, v, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, w, "Responsive", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, x, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, y, "Classic", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, z, "FRTRCTHEADSET", simpleSymbol5);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, A, bool, simpleSymbol7), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(B));
        }
        Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol = E;
        if (obj != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.FRTRCTHEADSET$BackPressed);
        } else {
            addToFormEnvironment(symbol, this.FRTRCTHEADSET$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "FRTRCTHEADSET", "BackPressed");
        } else {
            addToEvents(simpleSymbol, F);
        }
        this.Vertical_Arrangement1 = null;
        Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj3 = H;
        if (obj2 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, G, obj3, I), consumer);
        } else {
            addToComponents(simpleSymbol, Q, obj3, R);
        }
        this.Button1 = null;
        Object obj4 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj5 = T;
        if (obj4 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, S, obj5, U), consumer);
        } else {
            addToComponents(obj3, f0, obj5, g0);
        }
        this.Spacer1 = null;
        Object obj6 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj7 = i0;
        if (obj6 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, h0, obj7, j0), consumer);
        } else {
            addToComponents(obj3, l0, obj7, m0);
        }
        this.Label1 = null;
        Object obj8 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj9 = o0;
        if (obj8 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, n0, obj9, p0), consumer);
        } else {
            addToComponents(obj3, s0, obj9, t0);
        }
        this.Spacer2 = null;
        Object obj10 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj11 = v0;
        if (obj10 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, u0, obj11, w0), consumer);
        } else {
            addToComponents(obj3, y0, obj11, z0);
        }
        this.Label2 = null;
        Object obj12 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj13 = B0;
        if (obj12 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, A0, obj13, C0), consumer);
        } else {
            addToComponents(obj3, F0, obj13, G0);
        }
        this.Spacer3 = null;
        Object obj14 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj15 = I0;
        if (obj14 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, H0, obj15, J0), consumer);
        } else {
            addToComponents(obj3, L0, obj15, M0);
        }
        this.Button2 = null;
        Object obj16 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj17 = O0;
        if (obj16 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj3, N0, obj17, P0), consumer);
        } else {
            addToComponents(obj3, T0, obj17, U0);
        }
        Object obj18 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol2 = V0;
        if (obj18 != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.Button2$Click);
        } else {
            addToFormEnvironment(symbol2, this.Button2$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Button2", "Click");
        } else {
            addToEvents(obj17, W0);
        }
        this.TaifunLockTask1 = null;
        Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj20 = C;
        if (obj19 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, X0, obj20, bool), consumer);
        } else {
            addToComponents(simpleSymbol, Y0, obj20, bool);
        }
        runtime.initRuntime();
    }

    public Object FRTRCTHEADSET$BackPressed() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        runtime.callComponentMethod(C, D, lList, lList);
        return runtime.callYailPrimitive(runtime.close$Mnapplication, lList, lList, "close application");
    }

    public Object Button2$Click() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        runtime.callComponentMethod(C, D, lList, lList);
        return runtime.callYailPrimitive(runtime.close$Mnapplication, lList, lList, "close application");
    }

    public class frame extends ModuleBody {
        public FRTRCTHEADSET c;

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
                if (!(obj instanceof FRTRCTHEADSET)) {
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
                    if (!(obj instanceof FRTRCTHEADSET)) {
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
                if (!(obj instanceof FRTRCTHEADSET)) {
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
            if (!(obj instanceof FRTRCTHEADSET)) {
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
                    FRTRCTHEADSET frtrctheadset = FRTRCTHEADSET.FRTRCTHEADSET;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    SimpleSymbol simpleSymbol = FRTRCTHEADSET.f5387a;
                    SimpleSymbol simpleSymbol2 = FRTRCTHEADSET.e;
                    IntNum intNum = FRTRCTHEADSET.f;
                    SimpleSymbol simpleSymbol3 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.h, FRTRCTHEADSET.i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.j, FRTRCTHEADSET.k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = FRTRCTHEADSET.l;
                    SimpleSymbol simpleSymbol5 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    Boolean bool = Boolean.TRUE;
                    SimpleSymbol simpleSymbol6 = FRTRCTHEADSET.n;
                    SimpleSymbol simpleSymbol7 = FRTRCTHEADSET.o;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.p, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.q, "unspecified", simpleSymbol5);
                    Boolean bool2 = Boolean.FALSE;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.r, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.s, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.t, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.u, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.v, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.w, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.x, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.y, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.z, "FRTRCTHEADSET", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, FRTRCTHEADSET.A, bool2, simpleSymbol7);
                case 21:
                    return this.c.FRTRCTHEADSET$BackPressed();
                case 22:
                    SimpleSymbol simpleSymbol8 = FRTRCTHEADSET.H;
                    SimpleSymbol simpleSymbol9 = FRTRCTHEADSET.h;
                    IntNum intNum2 = FRTRCTHEADSET.i;
                    SimpleSymbol simpleSymbol10 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, FRTRCTHEADSET.j, FRTRCTHEADSET.k, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, FRTRCTHEADSET.J, FRTRCTHEADSET.K, simpleSymbol10);
                    SimpleSymbol simpleSymbol11 = FRTRCTHEADSET.L;
                    IntNum intNum3 = FRTRCTHEADSET.M;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, intNum3, simpleSymbol10);
                    SimpleSymbol simpleSymbol12 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol13 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol12, "0,0,0,0", simpleSymbol13);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol13);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, FRTRCTHEADSET.P, intNum3, simpleSymbol10);
                case 23:
                    SimpleSymbol simpleSymbol14 = FRTRCTHEADSET.H;
                    SimpleSymbol simpleSymbol15 = FRTRCTHEADSET.h;
                    IntNum intNum4 = FRTRCTHEADSET.i;
                    SimpleSymbol simpleSymbol16 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol15, intNum4, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, FRTRCTHEADSET.j, FRTRCTHEADSET.k, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, FRTRCTHEADSET.J, FRTRCTHEADSET.K, simpleSymbol16);
                    SimpleSymbol simpleSymbol17 = FRTRCTHEADSET.L;
                    IntNum intNum5 = FRTRCTHEADSET.M;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol17, intNum5, simpleSymbol16);
                    SimpleSymbol simpleSymbol18 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol19 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol18, "0,0,0,0", simpleSymbol19);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol19);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol14, FRTRCTHEADSET.P, intNum5, simpleSymbol16);
                case 24:
                    SimpleSymbol simpleSymbol20 = FRTRCTHEADSET.T;
                    SimpleSymbol simpleSymbol21 = FRTRCTHEADSET.J;
                    IntNum intNum6 = FRTRCTHEADSET.V;
                    SimpleSymbol simpleSymbol22 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, simpleSymbol21, intNum6, simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.W, FRTRCTHEADSET.X, simpleSymbol22);
                    SimpleSymbol simpleSymbol23 = FRTRCTHEADSET.Y;
                    SimpleSymbol simpleSymbol24 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, simpleSymbol23, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.L, FRTRCTHEADSET.Z, simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.N, "0,0,0,0", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.a0, FRTRCTHEADSET.i, simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.b0, "headset", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.c0, FRTRCTHEADSET.d0, simpleSymbol22);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol20, FRTRCTHEADSET.P, FRTRCTHEADSET.e0, simpleSymbol22);
                case 25:
                    SimpleSymbol simpleSymbol25 = FRTRCTHEADSET.T;
                    SimpleSymbol simpleSymbol26 = FRTRCTHEADSET.J;
                    IntNum intNum7 = FRTRCTHEADSET.V;
                    SimpleSymbol simpleSymbol27 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, simpleSymbol26, intNum7, simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.W, FRTRCTHEADSET.X, simpleSymbol27);
                    SimpleSymbol simpleSymbol28 = FRTRCTHEADSET.Y;
                    SimpleSymbol simpleSymbol29 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, simpleSymbol28, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.L, FRTRCTHEADSET.Z, simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.N, "0,0,0,0", simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.a0, FRTRCTHEADSET.i, simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.b0, "headset", simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.c0, FRTRCTHEADSET.d0, simpleSymbol27);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol25, FRTRCTHEADSET.P, FRTRCTHEADSET.e0, simpleSymbol27);
                case 26:
                    SimpleSymbol simpleSymbol30 = FRTRCTHEADSET.i0;
                    SimpleSymbol simpleSymbol31 = FRTRCTHEADSET.L;
                    IntNum intNum8 = FRTRCTHEADSET.k0;
                    SimpleSymbol simpleSymbol32 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol30, simpleSymbol31, intNum8, simpleSymbol32);
                    SimpleSymbol simpleSymbol33 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol34 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol30, simpleSymbol33, "0,0,0,0", simpleSymbol34);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol30, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol34);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol30, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol32);
                case 27:
                    SimpleSymbol simpleSymbol35 = FRTRCTHEADSET.i0;
                    SimpleSymbol simpleSymbol36 = FRTRCTHEADSET.L;
                    IntNum intNum9 = FRTRCTHEADSET.k0;
                    SimpleSymbol simpleSymbol37 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol36, intNum9, simpleSymbol37);
                    SimpleSymbol simpleSymbol38 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol39 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol38, "0,0,0,0", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol39);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol35, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol37);
                case 28:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol40 = FRTRCTHEADSET.o;
                    SimpleSymbol simpleSymbol41 = FRTRCTHEADSET.o0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, FRTRCTHEADSET.q0, bool3, simpleSymbol40);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, FRTRCTHEADSET.W, FRTRCTHEADSET.r0, FRTRCTHEADSET.f5389g);
                    SimpleSymbol simpleSymbol42 = FRTRCTHEADSET.Y;
                    SimpleSymbol simpleSymbol43 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, simpleSymbol42, "1", simpleSymbol43);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, FRTRCTHEADSET.N, "0,0,0,0", simpleSymbol43);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol41, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol43);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol41, FRTRCTHEADSET.b0, "HEADSET AKTIF!!", simpleSymbol43);
                case 29:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol44 = FRTRCTHEADSET.o;
                    SimpleSymbol simpleSymbol45 = FRTRCTHEADSET.o0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, FRTRCTHEADSET.q0, bool4, simpleSymbol44);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, FRTRCTHEADSET.W, FRTRCTHEADSET.r0, FRTRCTHEADSET.f5389g);
                    SimpleSymbol simpleSymbol46 = FRTRCTHEADSET.Y;
                    SimpleSymbol simpleSymbol47 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, simpleSymbol46, "1", simpleSymbol47);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, FRTRCTHEADSET.N, "0,0,0,0", simpleSymbol47);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol47);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol45, FRTRCTHEADSET.b0, "HEADSET AKTIF!!", simpleSymbol47);
                case 30:
                    SimpleSymbol simpleSymbol48 = FRTRCTHEADSET.v0;
                    SimpleSymbol simpleSymbol49 = FRTRCTHEADSET.L;
                    IntNum intNum10 = FRTRCTHEADSET.x0;
                    SimpleSymbol simpleSymbol50 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, simpleSymbol49, intNum10, simpleSymbol50);
                    SimpleSymbol simpleSymbol51 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol52 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, simpleSymbol51, "0,0,0,0", simpleSymbol52);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol52);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol48, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol50);
                case 31:
                    SimpleSymbol simpleSymbol53 = FRTRCTHEADSET.v0;
                    SimpleSymbol simpleSymbol54 = FRTRCTHEADSET.L;
                    IntNum intNum11 = FRTRCTHEADSET.x0;
                    SimpleSymbol simpleSymbol55 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol53, simpleSymbol54, intNum11, simpleSymbol55);
                    SimpleSymbol simpleSymbol56 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol57 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol53, simpleSymbol56, "0,0,0,0", simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol53, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol57);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol53, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol55);
                case 32:
                    SimpleSymbol simpleSymbol58 = FRTRCTHEADSET.B0;
                    SimpleSymbol simpleSymbol59 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol60 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, simpleSymbol59, "0,0,0,0", simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, FRTRCTHEADSET.b0, "Aplikasi mendeteksi Headset aktif. Harap matikan/putuskan Headset untuk menghindari kecurangan saat ujian sedang berlangsung!", simpleSymbol60);
                    SimpleSymbol simpleSymbol61 = FRTRCTHEADSET.D0;
                    IntNum intNum12 = FRTRCTHEADSET.E0;
                    SimpleSymbol simpleSymbol62 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, simpleSymbol61, intNum12, simpleSymbol62);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol58, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol62);
                case 33:
                    SimpleSymbol simpleSymbol63 = FRTRCTHEADSET.B0;
                    SimpleSymbol simpleSymbol64 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol65 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, simpleSymbol64, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, FRTRCTHEADSET.b0, "Aplikasi mendeteksi Headset aktif. Harap matikan/putuskan Headset untuk menghindari kecurangan saat ujian sedang berlangsung!", simpleSymbol65);
                    SimpleSymbol simpleSymbol66 = FRTRCTHEADSET.D0;
                    IntNum intNum13 = FRTRCTHEADSET.E0;
                    SimpleSymbol simpleSymbol67 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, simpleSymbol66, intNum13, simpleSymbol67);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol63, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol67);
                case 34:
                    SimpleSymbol simpleSymbol68 = FRTRCTHEADSET.I0;
                    SimpleSymbol simpleSymbol69 = FRTRCTHEADSET.L;
                    IntNum intNum14 = FRTRCTHEADSET.K0;
                    SimpleSymbol simpleSymbol70 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, simpleSymbol69, intNum14, simpleSymbol70);
                    SimpleSymbol simpleSymbol71 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol72 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, simpleSymbol71, "0,0,0,0", simpleSymbol72);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol72);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol68, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol70);
                case 35:
                    SimpleSymbol simpleSymbol73 = FRTRCTHEADSET.I0;
                    SimpleSymbol simpleSymbol74 = FRTRCTHEADSET.L;
                    IntNum intNum15 = FRTRCTHEADSET.K0;
                    SimpleSymbol simpleSymbol75 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol73, simpleSymbol74, intNum15, simpleSymbol75);
                    SimpleSymbol simpleSymbol76 = FRTRCTHEADSET.N;
                    SimpleSymbol simpleSymbol77 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol73, simpleSymbol76, "0,0,0,0", simpleSymbol77);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol73, FRTRCTHEADSET.O, "0,0,0,0", simpleSymbol77);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol73, FRTRCTHEADSET.P, FRTRCTHEADSET.M, simpleSymbol75);
                case 36:
                    SimpleSymbol simpleSymbol78 = FRTRCTHEADSET.O0;
                    SimpleSymbol simpleSymbol79 = FRTRCTHEADSET.J;
                    IntNum intNum16 = FRTRCTHEADSET.Q0;
                    SimpleSymbol simpleSymbol80 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol78, simpleSymbol79, intNum16, simpleSymbol80);
                    SimpleSymbol simpleSymbol81 = FRTRCTHEADSET.Y;
                    SimpleSymbol simpleSymbol82 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol78, simpleSymbol81, "1", simpleSymbol82);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol78, FRTRCTHEADSET.N, "0,0,0,0", simpleSymbol82);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol78, FRTRCTHEADSET.a0, FRTRCTHEADSET.E0, simpleSymbol80);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol78, FRTRCTHEADSET.b0, "MATIKAN", simpleSymbol82);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol78, FRTRCTHEADSET.c0, FRTRCTHEADSET.R0, simpleSymbol80);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol78, FRTRCTHEADSET.P, FRTRCTHEADSET.S0, simpleSymbol80);
                case 37:
                    SimpleSymbol simpleSymbol83 = FRTRCTHEADSET.O0;
                    SimpleSymbol simpleSymbol84 = FRTRCTHEADSET.J;
                    IntNum intNum17 = FRTRCTHEADSET.Q0;
                    SimpleSymbol simpleSymbol85 = FRTRCTHEADSET.f5389g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, simpleSymbol84, intNum17, simpleSymbol85);
                    SimpleSymbol simpleSymbol86 = FRTRCTHEADSET.Y;
                    SimpleSymbol simpleSymbol87 = FRTRCTHEADSET.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, simpleSymbol86, "1", simpleSymbol87);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, FRTRCTHEADSET.N, "0,0,0,0", simpleSymbol87);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, FRTRCTHEADSET.a0, FRTRCTHEADSET.E0, simpleSymbol85);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, FRTRCTHEADSET.b0, "MATIKAN", simpleSymbol87);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol83, FRTRCTHEADSET.c0, FRTRCTHEADSET.R0, simpleSymbol85);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol83, FRTRCTHEADSET.P, FRTRCTHEADSET.S0, simpleSymbol85);
                case 38:
                    return this.c.Button2$Click();
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5388b));
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
        FRTRCTHEADSET = this;
        addToFormEnvironment(f5387a, this);
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
