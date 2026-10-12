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
import com.google.appinventor.components.runtime.HorizontalArrangement;
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.NiotronCardView;
import com.google.appinventor.components.runtime.NiotronColorUtils;
import com.google.appinventor.components.runtime.NiotronLinearProgressBar;
import com.google.appinventor.components.runtime.NiotronSecurity;
import com.google.appinventor.components.runtime.TinyDB;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.WebViewer;
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
public class WEB extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final SimpleSymbol A0;
    public static final FString A1;
    public static final SimpleSymbol B;
    public static final IntNum B0;
    public static final ModuleMethod B1 = null;
    public static final SimpleSymbol C;
    public static final SimpleSymbol C0;
    public static final FString C1;
    public static final SimpleSymbol D;
    public static final IntNum D0;
    public static final ModuleMethod D1 = null;
    public static final SimpleSymbol E;
    public static final SimpleSymbol E0;
    public static final FString E1;
    public static final SimpleSymbol F;
    public static final IntNum F0;
    public static final FString F1;
    public static final ModuleMethod G = null;
    public static final FString G0;
    public static final SimpleSymbol G1;
    public static final SimpleSymbol H;
    public static final ModuleMethod H0 = null;
    public static final SimpleSymbol I;
    public static final FString I0;
    public static final SimpleSymbol I1;
    public static final SimpleSymbol J;
    public static final SimpleSymbol J0;
    public static final SimpleSymbol J1;
    public static final SimpleSymbol K;
    public static final ModuleMethod K0 = null;
    public static final SimpleSymbol K1;
    public static final PairWithPosition L;
    public static final SimpleSymbol L0;
    public static final SimpleSymbol L1;
    public static final PairWithPosition M;
    public static final SimpleSymbol M0;
    public static final SimpleSymbol M1;
    public static final PairWithPosition N;
    public static final FString N0;
    public static final SimpleSymbol N1;
    public static final PairWithPosition O;
    public static final ModuleMethod O0 = null;
    public static final SimpleSymbol O1;
    public static final SimpleSymbol P;
    public static final FString P0;
    public static final SimpleSymbol P1;
    public static final SimpleSymbol Q;
    public static final SimpleSymbol Q0;
    public static final SimpleSymbol Q1;
    public static final SimpleSymbol R;
    public static final ModuleMethod R0 = null;
    public static final SimpleSymbol R1;
    public static final SimpleSymbol S;
    public static final FString S0;
    public static final SimpleSymbol S1;
    public static final SimpleSymbol T;
    public static final ModuleMethod T0 = null;
    public static final SimpleSymbol T1;
    public static final PairWithPosition U;
    public static final FString U0;
    public static final SimpleSymbol U1;
    public static final PairWithPosition V;
    public static final ModuleMethod V0 = null;
    public static final PairWithPosition W;
    public static final SimpleSymbol W0;
    public static WEB WEB;
    public static final SimpleSymbol X;
    public static final FString X0;
    public static final SimpleSymbol Y;
    public static final ModuleMethod Y0 = null;
    public static final SimpleSymbol Z;
    public static final SimpleSymbol Z0;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5432a;
    public static final SimpleSymbol a0;
    public static final IntNum a1;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5433b;
    public static final FString b0;
    public static final PairWithPosition b1;
    public static final SimpleSymbol c;
    public static final SimpleSymbol c0;
    public static final SimpleSymbol c1;
    public static final ModuleMethod d = null;
    public static final ModuleMethod d0 = null;
    public static final SimpleSymbol d1;
    public static final SimpleSymbol e;
    public static final SimpleSymbol e0;
    public static final SimpleSymbol e1;
    public static final IntNum f;
    public static final SimpleSymbol f0;
    public static final SimpleSymbol f1;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5434g;
    public static final SimpleSymbol g0;
    public static final PairWithPosition g1;
    public static final SimpleSymbol h;
    public static final IntNum h0;
    public static final SimpleSymbol h1;
    public static final IntNum i;
    public static final FString i0;
    public static final SimpleSymbol i1;
    public static final SimpleSymbol j;
    public static final ModuleMethod j0 = null;
    public static final FString j1;
    public static final IntNum k;
    public static final FString k0;
    public static final ModuleMethod k1 = null;
    public static final SimpleSymbol l;
    public static final SimpleSymbol l0;
    public static final FString l1;
    public static final SimpleSymbol m;
    public static final ModuleMethod m0 = null;
    public static final ModuleMethod m1 = null;
    public static final SimpleSymbol n;
    public static final IntNum n0;
    public static final FString n1;
    public static final IntNum o;
    public static final SimpleSymbol o0;
    public static final SimpleSymbol o1;
    public static final SimpleSymbol p;
    public static final SimpleSymbol p0;
    public static final ModuleMethod p1 = null;
    public static final SimpleSymbol q;
    public static final IntNum q0;
    public static final SimpleSymbol q1;
    public static final SimpleSymbol r;
    public static final SimpleSymbol r0;
    public static final FString r1;
    public static final SimpleSymbol s;
    public static final IntNum s0;
    public static final ModuleMethod s1 = null;
    public static final SimpleSymbol t;
    public static final FString t0;
    public static final FString t1;
    public static final IntNum u;
    public static final ModuleMethod u0 = null;
    public static final FString u1;
    public static final SimpleSymbol v;
    public static final FString v0;
    public static final FString v1;
    public static final SimpleSymbol w;
    public static final SimpleSymbol w0;
    public static final ModuleMethod w1 = null;
    public static final SimpleSymbol x;
    public static final ModuleMethod x0 = null;
    public static final SimpleSymbol x1;
    public static final SimpleSymbol y;
    public static final SimpleSymbol y0;
    public static final FString y1;
    public static final SimpleSymbol z;
    public static final SimpleSymbol z0;
    public static final ModuleMethod z1 = null;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public NiotronCardView Card_View1;
    public NiotronColorUtils Color_Utils1;
    public HorizontalArrangement Horizontal_Arrangement1;
    public Label Label1;
    public Label LabelCEKKONTRAS;
    public Label LabelVOLUMECEK;
    public NiotronLinearProgressBar Linear_Progressbar1;
    public NiotronSecurity Security1;
    public TinyDB Tiny_DBWARNA;
    public TinyDB Tiny_DBWEBSITE;
    public VerticalArrangement Vertical_ERROR;
    public final ModuleMethod WEB$BackPressed;
    public final ModuleMethod WEB$Initialize;
    public WebViewer Web_View1;
    public final ModuleMethod Web_View1$ErrorOccurred;
    public final ModuleMethod Web_View1$ProgressChanged;
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
        U1 = (SimpleSymbol) a.f("lookup-handler");
        T1 = (SimpleSymbol) a.f("dispatchGenericEvent");
        S1 = (SimpleSymbol) a.f("dispatchEvent");
        R1 = (SimpleSymbol) a.f("send-error");
        Q1 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        P1 = (SimpleSymbol) a.f("add-to-global-vars");
        O1 = (SimpleSymbol) a.f("add-to-components");
        N1 = (SimpleSymbol) a.f("add-to-events");
        M1 = (SimpleSymbol) a.f("add-to-global-var-environment");
        L1 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        K1 = (SimpleSymbol) a.f("lookup-in-form-environment");
        J1 = (SimpleSymbol) a.f("add-to-form-environment");
        I1 = (SimpleSymbol) a.f("android-log-form");
        G1 = (SimpleSymbol) a.f("get-simple-name");
        F1 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        E1 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        C1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        A1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        y1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        x1 = (SimpleSymbol) a.f("Namespace");
        v1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        u1 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        t1 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        r1 = new FString("com.google.appinventor.components.runtime.Label");
        q1 = (SimpleSymbol) a.f("FontBold");
        o1 = (SimpleSymbol) a.f("Label1");
        n1 = new FString("com.google.appinventor.components.runtime.Label");
        l1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        j1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        i1 = (SimpleSymbol) a.f("ProgressChanged");
        h1 = (SimpleSymbol) a.f("Web_View1$ProgressChanged");
        LList lList = LList.Empty;
        g1 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 569443), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 569438);
        f1 = (SimpleSymbol) a.f("$progress");
        e1 = (SimpleSymbol) a.f("ErrorOccurred");
        d1 = (SimpleSymbol) a.f("Web_View1$ErrorOccurred");
        c1 = (SimpleSymbol) a.f("Vertical_ERROR");
        b1 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 561251), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 561246);
        a1 = IntNum.make(-1);
        Z0 = (SimpleSymbol) a.f("$errorCode");
        X0 = new FString("com.google.appinventor.components.runtime.WebViewer");
        W0 = (SimpleSymbol) a.f("ZoomEnabled");
        U0 = new FString("com.google.appinventor.components.runtime.WebViewer");
        S0 = new FString("com.google.appinventor.components.runtime.Label");
        Q0 = (SimpleSymbol) a.f("LabelVOLUMECEK");
        P0 = new FString("com.google.appinventor.components.runtime.Label");
        N0 = new FString("com.google.appinventor.components.runtime.Label");
        M0 = (SimpleSymbol) a.f("Visible");
        L0 = (SimpleSymbol) a.f("Text");
        J0 = (SimpleSymbol) a.f("LabelCEKKONTRAS");
        I0 = new FString("com.google.appinventor.components.runtime.Label");
        G0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        F0 = IntNum.make(5);
        E0 = (SimpleSymbol) a.f("StrokeWidth");
        D0 = IntNum.make(new int[]{-1, 0});
        C0 = (SimpleSymbol) a.f("StrokeColor");
        B0 = IntNum.make(20);
        A0 = (SimpleSymbol) a.f("Radius");
        z0 = (SimpleSymbol) a.f("Height");
        y0 = (SimpleSymbol) a.f("CompatPadding");
        w0 = (SimpleSymbol) a.f("Card_View1");
        v0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        t0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        s0 = IntNum.make(new int[]{-5829, 0});
        r0 = (SimpleSymbol) a.f("ProgressColor");
        q0 = IntNum.make(100);
        p0 = (SimpleSymbol) a.f("Max");
        o0 = (SimpleSymbol) a.f("Indeterminate");
        n0 = IntNum.make(new int[]{-769226, 0});
        l0 = (SimpleSymbol) a.f("Linear_Progressbar1");
        k0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        i0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        h0 = IntNum.make(-2);
        g0 = (SimpleSymbol) a.f("Width");
        f0 = (SimpleSymbol) a.f("HeihPadding");
        e0 = (SimpleSymbol) a.f("HeihMargin");
        c0 = (SimpleSymbol) a.f("Horizontal_Arrangement1");
        b0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        a0 = (SimpleSymbol) a.f("BackPressed");
        Z = (SimpleSymbol) a.f("WEB$BackPressed");
        Y = (SimpleSymbol) a.f("Initialize");
        X = (SimpleSymbol) a.f("WEB$Initialize");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        m = simpleSymbol2;
        W = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135868);
        V = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135858);
        U = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135850), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135844);
        T = (SimpleSymbol) a.f("Tiny_DBWEBSITE");
        S = (SimpleSymbol) a.f("BASE64Decode");
        R = (SimpleSymbol) a.f("Security1");
        Q = (SimpleSymbol) a.f("GoToUrl");
        P = (SimpleSymbol) a.f("Web_View1");
        O = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135616);
        N = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135608), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135602);
        M = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135385);
        L = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135377), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/WEB.yail", 135371);
        K = (SimpleSymbol) a.f("GetValue");
        J = (SimpleSymbol) a.f("Tiny_DBWARNA");
        I = (SimpleSymbol) a.f("HexToColor");
        H = (SimpleSymbol) a.f("Color_Utils1");
        F = (SimpleSymbol) a.f("TitleVisible");
        E = (SimpleSymbol) a.f("Title");
        D = (SimpleSymbol) a.f("Theme");
        C = (SimpleSymbol) a.f("StatusBarLightIcons");
        B = (SimpleSymbol) a.f("Sizing");
        A = (SimpleSymbol) a.f("ShowStatusBar");
        z = (SimpleSymbol) a.f("ShowOptionsMenu");
        y = (SimpleSymbol) a.f("ShowListsAsJson");
        x = (SimpleSymbol) a.f("ShowAboutInMenu");
        w = (SimpleSymbol) a.f("ScreenOrientation");
        v = (SimpleSymbol) a.f("OpenScreenAnimation");
        u = IntNum.make(new int[]{-16602892, 0});
        t = (SimpleSymbol) a.f("NavigationBarColor");
        s = (SimpleSymbol) a.f("HighQualityImages");
        r = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        q = (SimpleSymbol) a.f("HighContrast");
        p = (SimpleSymbol) a.f("CloseScreenAnimation");
        o = IntNum.make(new int[]{-16602892, 0});
        n = (SimpleSymbol) a.f("BackgroundColor");
        l = (SimpleSymbol) a.f("AppName");
        k = IntNum.make(2);
        j = (SimpleSymbol) a.f("AlignVertical");
        i = IntNum.make(3);
        h = (SimpleSymbol) a.f("AlignHorizontal");
        f5434g = (SimpleSymbol) a.f("number");
        f = IntNum.make(new int[]{-14382849, 0});
        e = (SimpleSymbol) a.f("AccentColor");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5433b = (SimpleSymbol) a.f("getMessage");
        f5432a = (SimpleSymbol) a.f("WEB");
    }

    public WEB() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, G1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, I1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, J1, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, K1, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, L1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, M1, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, N1, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, O1, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, P1, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, Q1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, R1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, S1, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, T1, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, U1, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        G = new ModuleMethod(frameVar, 20, null, 0);
        this.WEB$Initialize = new ModuleMethod(frameVar, 21, X, 0);
        this.WEB$BackPressed = new ModuleMethod(frameVar, 22, Z, 0);
        d0 = new ModuleMethod(frameVar, 23, null, 0);
        j0 = new ModuleMethod(frameVar, 24, null, 0);
        m0 = new ModuleMethod(frameVar, 25, null, 0);
        u0 = new ModuleMethod(frameVar, 26, null, 0);
        x0 = new ModuleMethod(frameVar, 27, null, 0);
        H0 = new ModuleMethod(frameVar, 28, null, 0);
        K0 = new ModuleMethod(frameVar, 29, null, 0);
        O0 = new ModuleMethod(frameVar, 30, null, 0);
        R0 = new ModuleMethod(frameVar, 31, null, 0);
        T0 = new ModuleMethod(frameVar, 32, null, 0);
        V0 = new ModuleMethod(frameVar, 33, null, 0);
        Y0 = new ModuleMethod(frameVar, 34, null, 0);
        this.Web_View1$ErrorOccurred = new ModuleMethod(frameVar, 35, d1, 12291);
        this.Web_View1$ProgressChanged = new ModuleMethod(frameVar, 36, h1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        k1 = new ModuleMethod(frameVar, 37, null, 0);
        m1 = new ModuleMethod(frameVar, 38, null, 0);
        p1 = new ModuleMethod(frameVar, 39, null, 0);
        s1 = new ModuleMethod(frameVar, 40, null, 0);
        w1 = new ModuleMethod(frameVar, 41, null, 0);
        z1 = new ModuleMethod(frameVar, 42, null, 0);
        B1 = new ModuleMethod(frameVar, 43, null, 0);
        D1 = new ModuleMethod(frameVar, 44, null, 0);
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
        SimpleSymbol simpleSymbol = f5432a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        WEB = null;
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
            SimpleSymbol simpleSymbol3 = f5434g;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, h, i, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, j, k, simpleSymbol3);
            SimpleSymbol simpleSymbol4 = l;
            SimpleSymbol simpleSymbol5 = m;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, n, o, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, p, "slidehorizontal", simpleSymbol5);
            Boolean bool2 = Boolean.TRUE;
            SimpleSymbol simpleSymbol6 = q;
            SimpleSymbol simpleSymbol7 = r;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, s, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, t, u, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, v, "fade", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, w, "portrait", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, x, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, y, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, z, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, A, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, B, "Responsive", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, C, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, D, "Classic", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, E, "WEB", simpleSymbol5);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, F, bool, simpleSymbol7), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(G));
        }
        Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol = X;
        if (obj != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.WEB$Initialize);
        } else {
            addToFormEnvironment(symbol, this.WEB$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WEB", "Initialize");
        } else {
            addToEvents(simpleSymbol, Y);
        }
        Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol2 = Z;
        if (obj2 != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.WEB$BackPressed);
        } else {
            addToFormEnvironment(symbol2, this.WEB$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WEB", "BackPressed");
        } else {
            addToEvents(simpleSymbol, a0);
        }
        this.Horizontal_Arrangement1 = null;
        Object obj3 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj4 = c0;
        if (obj3 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, b0, obj4, d0), consumer);
        } else {
            addToComponents(simpleSymbol, i0, obj4, j0);
        }
        this.Linear_Progressbar1 = null;
        Object obj5 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj6 = l0;
        if (obj5 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, k0, obj6, m0), consumer);
        } else {
            addToComponents(obj4, t0, obj6, u0);
        }
        this.Card_View1 = null;
        Object obj7 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj8 = w0;
        if (obj7 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, v0, obj8, x0), consumer);
        } else {
            addToComponents(simpleSymbol, G0, obj8, H0);
        }
        this.LabelCEKKONTRAS = null;
        Object obj9 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj10 = J0;
        if (obj9 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj8, I0, obj10, K0), consumer);
        } else {
            addToComponents(obj8, N0, obj10, O0);
        }
        this.LabelVOLUMECEK = null;
        Object obj11 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj12 = Q0;
        if (obj11 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj8, P0, obj12, R0), consumer);
        } else {
            addToComponents(obj8, S0, obj12, T0);
        }
        this.Web_View1 = null;
        Object obj13 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj14 = P;
        if (obj13 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj8, U0, obj14, V0), consumer);
        } else {
            addToComponents(obj8, X0, obj14, Y0);
        }
        Object obj15 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol3 = d1;
        if (obj15 != bool) {
            runtime.addToCurrentFormEnvironment(symbol3, this.Web_View1$ErrorOccurred);
        } else {
            addToFormEnvironment(symbol3, this.Web_View1$ErrorOccurred);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ErrorOccurred");
        } else {
            addToEvents(obj14, e1);
        }
        Object obj16 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol4 = h1;
        if (obj16 != bool) {
            runtime.addToCurrentFormEnvironment(symbol4, this.Web_View1$ProgressChanged);
        } else {
            addToFormEnvironment(symbol4, this.Web_View1$ProgressChanged);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ProgressChanged");
        } else {
            addToEvents(obj14, i1);
        }
        this.Vertical_ERROR = null;
        Object obj17 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj18 = c1;
        if (obj17 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, j1, obj18, k1), consumer);
        } else {
            addToComponents(simpleSymbol, l1, obj18, m1);
        }
        this.Label1 = null;
        Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj20 = o1;
        if (obj19 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj18, n1, obj20, p1), consumer);
        } else {
            addToComponents(obj18, r1, obj20, s1);
        }
        this.Security1 = null;
        Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj22 = R;
        if (obj21 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, t1, obj22, bool), consumer);
        } else {
            addToComponents(simpleSymbol, u1, obj22, bool);
        }
        this.Tiny_DBWEBSITE = null;
        Object obj23 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj24 = T;
        if (obj23 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, v1, obj24, w1), consumer);
        } else {
            addToComponents(simpleSymbol, y1, obj24, z1);
        }
        this.Tiny_DBWARNA = null;
        Object obj25 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj26 = J;
        if (obj25 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, A1, obj26, B1), consumer);
        } else {
            addToComponents(simpleSymbol, C1, obj26, D1);
        }
        this.Color_Utils1 = null;
        Object obj27 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj28 = H;
        if (obj27 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, E1, obj28, bool), consumer);
        } else {
            addToComponents(simpleSymbol, F1, obj28, bool);
        }
        runtime.initRuntime();
    }

    public Object WEB$Initialize() throws Throwable {
        runtime.setThisForm();
        Pair pairList2 = LList.list2("warna", "");
        PairWithPosition pairWithPosition = L;
        SimpleSymbol simpleSymbol = J;
        SimpleSymbol simpleSymbol2 = K;
        Pair pairList1 = LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, pairList2, pairWithPosition));
        PairWithPosition pairWithPosition2 = M;
        SimpleSymbol simpleSymbol3 = H;
        SimpleSymbol simpleSymbol4 = I;
        Object objCallComponentMethod = runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, pairList1, pairWithPosition2);
        SimpleSymbol simpleSymbol5 = f5432a;
        SimpleSymbol simpleSymbol6 = n;
        SimpleSymbol simpleSymbol7 = f5434g;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol6, objCallComponentMethod, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, t, runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list2("warna", ""), N)), O), simpleSymbol7);
        return runtime.callComponentMethod(P, Q, LList.list1(runtime.callComponentMethod(R, S, LList.list1(runtime.callComponentMethod(T, simpleSymbol2, LList.list2("web", ""), U)), V)), W);
    }

    public Object WEB$BackPressed() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.close$Mnscreen;
        LList lList = LList.Empty;
        return runtime.callYailPrimitive(moduleMethod, lList, lList, "close screen");
    }

    public Object Web_View1$ErrorOccurred(Object obj, Object obj2, Object obj3) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.sanitizeComponentData(obj2);
        runtime.sanitizeComponentData(obj3);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(Z0), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, a1), b1, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = r;
        SimpleSymbol simpleSymbol2 = M0;
        SimpleSymbol simpleSymbol3 = P;
        if (objCallYailPrimitive != bool) {
            return runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol);
        }
        runtime.setAndCoerceProperty$Ex(c1, simpleSymbol2, Boolean.TRUE, simpleSymbol);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol);
    }

    public Object Web_View1$ProgressChanged(Object obj) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(f1), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, q0), g1, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = r;
        SimpleSymbol simpleSymbol2 = M0;
        SimpleSymbol simpleSymbol3 = c0;
        return objCallYailPrimitive != bool ? runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol) : runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, Boolean.TRUE, simpleSymbol);
    }

    public class frame extends ModuleBody {
        public WEB c;

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 35 ? this.c.Web_View1$ErrorOccurred(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 35) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
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
                if (!(obj instanceof WEB)) {
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
            if (i == 36) {
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
                    if (!(obj instanceof WEB)) {
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
                if (!(obj instanceof WEB)) {
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
            if (!(obj instanceof WEB)) {
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
            if (i != 36) {
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
            return this.c.Web_View1$ProgressChanged(obj);
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
                    WEB web = WEB.WEB;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    SimpleSymbol simpleSymbol = WEB.f5432a;
                    SimpleSymbol simpleSymbol2 = WEB.e;
                    IntNum intNum = WEB.f;
                    SimpleSymbol simpleSymbol3 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.h, WEB.i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.j, WEB.k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = WEB.l;
                    SimpleSymbol simpleSymbol5 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.n, WEB.o, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.p, "slidehorizontal", simpleSymbol5);
                    Boolean bool = Boolean.TRUE;
                    SimpleSymbol simpleSymbol6 = WEB.q;
                    SimpleSymbol simpleSymbol7 = WEB.r;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.s, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.t, WEB.u, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.v, "fade", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.w, "portrait", simpleSymbol5);
                    Boolean bool2 = Boolean.FALSE;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.x, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.y, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.z, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.A, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.B, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.C, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.D, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.E, "WEB", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, WEB.F, bool2, simpleSymbol7);
                case 21:
                    return this.c.WEB$Initialize();
                case 22:
                    return this.c.WEB$BackPressed();
                case 23:
                    SimpleSymbol simpleSymbol8 = WEB.c0;
                    SimpleSymbol simpleSymbol9 = WEB.h;
                    IntNum intNum2 = WEB.i;
                    SimpleSymbol simpleSymbol10 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, WEB.j, WEB.k, simpleSymbol10);
                    SimpleSymbol simpleSymbol11 = WEB.e0;
                    SimpleSymbol simpleSymbol12 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, "0,0,0,0", simpleSymbol12);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, WEB.f0, "0,0,0,0", simpleSymbol12);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, WEB.g0, WEB.h0, simpleSymbol10);
                case 24:
                    SimpleSymbol simpleSymbol13 = WEB.c0;
                    SimpleSymbol simpleSymbol14 = WEB.h;
                    IntNum intNum3 = WEB.i;
                    SimpleSymbol simpleSymbol15 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol14, intNum3, simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, WEB.j, WEB.k, simpleSymbol15);
                    SimpleSymbol simpleSymbol16 = WEB.e0;
                    SimpleSymbol simpleSymbol17 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol16, "0,0,0,0", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, WEB.f0, "0,0,0,0", simpleSymbol17);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol13, WEB.g0, WEB.h0, simpleSymbol15);
                case 25:
                    SimpleSymbol simpleSymbol18 = WEB.l0;
                    SimpleSymbol simpleSymbol19 = WEB.n;
                    IntNum intNum4 = WEB.n0;
                    SimpleSymbol simpleSymbol20 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol19, intNum4, simpleSymbol20);
                    SimpleSymbol simpleSymbol21 = WEB.e0;
                    SimpleSymbol simpleSymbol22 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol21, "0,0,0,0", simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, WEB.f0, "0,0,0,0", simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, WEB.o0, Boolean.TRUE, WEB.r);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, WEB.p0, WEB.q0, simpleSymbol20);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, WEB.r0, WEB.s0, simpleSymbol20);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol18, WEB.g0, WEB.h0, simpleSymbol20);
                case 26:
                    SimpleSymbol simpleSymbol23 = WEB.l0;
                    SimpleSymbol simpleSymbol24 = WEB.n;
                    IntNum intNum5 = WEB.n0;
                    SimpleSymbol simpleSymbol25 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, simpleSymbol24, intNum5, simpleSymbol25);
                    SimpleSymbol simpleSymbol26 = WEB.e0;
                    SimpleSymbol simpleSymbol27 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, simpleSymbol26, "0,0,0,0", simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, WEB.f0, "0,0,0,0", simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, WEB.o0, Boolean.TRUE, WEB.r);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, WEB.p0, WEB.q0, simpleSymbol25);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, WEB.r0, WEB.s0, simpleSymbol25);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol23, WEB.g0, WEB.h0, simpleSymbol25);
                case 27:
                    SimpleSymbol simpleSymbol28 = WEB.w0;
                    SimpleSymbol simpleSymbol29 = WEB.h;
                    IntNum intNum6 = WEB.i;
                    SimpleSymbol simpleSymbol30 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol29, intNum6, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.j, WEB.k, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.y0, Boolean.TRUE, WEB.r);
                    SimpleSymbol simpleSymbol31 = WEB.z0;
                    IntNum intNum7 = WEB.h0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol31, intNum7, simpleSymbol30);
                    SimpleSymbol simpleSymbol32 = WEB.e0;
                    SimpleSymbol simpleSymbol33 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol32, "0,0,0,0", simpleSymbol33);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.f0, "0,0,0,0", simpleSymbol33);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.A0, WEB.B0, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.C0, WEB.D0, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.E0, WEB.F0, simpleSymbol30);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol28, WEB.g0, intNum7, simpleSymbol30);
                case 28:
                    SimpleSymbol simpleSymbol34 = WEB.w0;
                    SimpleSymbol simpleSymbol35 = WEB.h;
                    IntNum intNum8 = WEB.i;
                    SimpleSymbol simpleSymbol36 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol35, intNum8, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.j, WEB.k, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.y0, Boolean.TRUE, WEB.r);
                    SimpleSymbol simpleSymbol37 = WEB.z0;
                    IntNum intNum9 = WEB.h0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol37, intNum9, simpleSymbol36);
                    SimpleSymbol simpleSymbol38 = WEB.e0;
                    SimpleSymbol simpleSymbol39 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol38, "0,0,0,0", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.f0, "0,0,0,0", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.A0, WEB.B0, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.C0, WEB.D0, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.E0, WEB.F0, simpleSymbol36);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol34, WEB.g0, intNum9, simpleSymbol36);
                case 29:
                    SimpleSymbol simpleSymbol40 = WEB.J0;
                    SimpleSymbol simpleSymbol41 = WEB.e0;
                    SimpleSymbol simpleSymbol42 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol40, simpleSymbol41, "0,0,0,0", simpleSymbol42);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol40, WEB.f0, "0,0,0,0", simpleSymbol42);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol40, WEB.L0, "Text for Label2", simpleSymbol42);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol40, WEB.M0, Boolean.FALSE, WEB.r);
                case 30:
                    SimpleSymbol simpleSymbol43 = WEB.J0;
                    SimpleSymbol simpleSymbol44 = WEB.e0;
                    SimpleSymbol simpleSymbol45 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol43, simpleSymbol44, "0,0,0,0", simpleSymbol45);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol43, WEB.f0, "0,0,0,0", simpleSymbol45);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol43, WEB.L0, "Text for Label2", simpleSymbol45);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol43, WEB.M0, Boolean.FALSE, WEB.r);
                case 31:
                    SimpleSymbol simpleSymbol46 = WEB.Q0;
                    SimpleSymbol simpleSymbol47 = WEB.e0;
                    SimpleSymbol simpleSymbol48 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol46, simpleSymbol47, "0,0,0,0", simpleSymbol48);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol46, WEB.f0, "0,0,0,0", simpleSymbol48);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol46, WEB.L0, "Text for Label2", simpleSymbol48);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol46, WEB.M0, Boolean.FALSE, WEB.r);
                case 32:
                    SimpleSymbol simpleSymbol49 = WEB.Q0;
                    SimpleSymbol simpleSymbol50 = WEB.e0;
                    SimpleSymbol simpleSymbol51 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, simpleSymbol50, "0,0,0,0", simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, WEB.f0, "0,0,0,0", simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, WEB.L0, "Text for Label2", simpleSymbol51);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol49, WEB.M0, Boolean.FALSE, WEB.r);
                case 33:
                    SimpleSymbol simpleSymbol52 = WEB.P;
                    SimpleSymbol simpleSymbol53 = WEB.z0;
                    IntNum intNum10 = WEB.h0;
                    SimpleSymbol simpleSymbol54 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol53, intNum10, simpleSymbol54);
                    SimpleSymbol simpleSymbol55 = WEB.e0;
                    SimpleSymbol simpleSymbol56 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol55, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, WEB.f0, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, WEB.g0, intNum10, simpleSymbol54);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol52, WEB.W0, Boolean.FALSE, WEB.r);
                case 34:
                    SimpleSymbol simpleSymbol57 = WEB.P;
                    SimpleSymbol simpleSymbol58 = WEB.z0;
                    IntNum intNum11 = WEB.h0;
                    SimpleSymbol simpleSymbol59 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, simpleSymbol58, intNum11, simpleSymbol59);
                    SimpleSymbol simpleSymbol60 = WEB.e0;
                    SimpleSymbol simpleSymbol61 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, simpleSymbol60, "0,0,0,0", simpleSymbol61);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, WEB.f0, "0,0,0,0", simpleSymbol61);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, WEB.g0, intNum11, simpleSymbol59);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol57, WEB.W0, Boolean.FALSE, WEB.r);
                case 35:
                case 36:
                default:
                    return super.apply0(moduleMethod);
                case 37:
                    SimpleSymbol simpleSymbol62 = WEB.c1;
                    SimpleSymbol simpleSymbol63 = WEB.h;
                    IntNum intNum12 = WEB.i;
                    SimpleSymbol simpleSymbol64 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol63, intNum12, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, WEB.j, WEB.k, simpleSymbol64);
                    SimpleSymbol simpleSymbol65 = WEB.z0;
                    IntNum intNum13 = WEB.h0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol65, intNum13, simpleSymbol64);
                    SimpleSymbol simpleSymbol66 = WEB.e0;
                    SimpleSymbol simpleSymbol67 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol66, "0,0,0,0", simpleSymbol67);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, WEB.f0, "0,0,0,0", simpleSymbol67);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, WEB.M0, Boolean.FALSE, WEB.r);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol62, WEB.g0, intNum13, simpleSymbol64);
                case 38:
                    SimpleSymbol simpleSymbol68 = WEB.c1;
                    SimpleSymbol simpleSymbol69 = WEB.h;
                    IntNum intNum14 = WEB.i;
                    SimpleSymbol simpleSymbol70 = WEB.f5434g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, simpleSymbol69, intNum14, simpleSymbol70);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, WEB.j, WEB.k, simpleSymbol70);
                    SimpleSymbol simpleSymbol71 = WEB.z0;
                    IntNum intNum15 = WEB.h0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, simpleSymbol71, intNum15, simpleSymbol70);
                    SimpleSymbol simpleSymbol72 = WEB.e0;
                    SimpleSymbol simpleSymbol73 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, simpleSymbol72, "0,0,0,0", simpleSymbol73);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, WEB.f0, "0,0,0,0", simpleSymbol73);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol68, WEB.M0, Boolean.FALSE, WEB.r);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol68, WEB.g0, intNum15, simpleSymbol70);
                case 39:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol74 = WEB.r;
                    SimpleSymbol simpleSymbol75 = WEB.o1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol75, WEB.q1, bool3, simpleSymbol74);
                    SimpleSymbol simpleSymbol76 = WEB.e0;
                    SimpleSymbol simpleSymbol77 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol75, simpleSymbol76, "0,0,0,0", simpleSymbol77);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol75, WEB.f0, "0,0,0,0", simpleSymbol77);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol75, WEB.L0, "ERROR 404", simpleSymbol77);
                case 40:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol78 = WEB.r;
                    SimpleSymbol simpleSymbol79 = WEB.o1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, WEB.q1, bool4, simpleSymbol78);
                    SimpleSymbol simpleSymbol80 = WEB.e0;
                    SimpleSymbol simpleSymbol81 = WEB.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol80, "0,0,0,0", simpleSymbol81);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, WEB.f0, "0,0,0,0", simpleSymbol81);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol79, WEB.L0, "ERROR 404", simpleSymbol81);
                case 41:
                    return runtime.setAndCoerceProperty$Ex(WEB.T, WEB.x1, "Tiny_DBWEBSITE", WEB.m);
                case 42:
                    return runtime.setAndCoerceProperty$Ex(WEB.T, WEB.x1, "Tiny_DBWEBSITE", WEB.m);
                case 43:
                    return runtime.setAndCoerceProperty$Ex(WEB.J, WEB.x1, "Tiny_DBWARNA", WEB.m);
                case 44:
                    return runtime.setAndCoerceProperty$Ex(WEB.J, WEB.x1, "Tiny_DBWARNA", WEB.m);
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
                case 36:
                default:
                    return super.match0(moduleMethod, callContext);
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5433b));
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
        WEB = this;
        addToFormEnvironment(f5432a, this);
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
