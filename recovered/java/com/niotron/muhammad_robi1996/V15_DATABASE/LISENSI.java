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
public class LISENSI extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final SimpleSymbol A0;
    public static final ModuleMethod A1 = null;
    public static final SimpleSymbol B;
    public static final FString B0;
    public static final FString B1;
    public static final SimpleSymbol C;
    public static final ModuleMethod C0 = null;
    public static final FString C1;
    public static final SimpleSymbol D;
    public static final FString D0;
    public static final SimpleSymbol D1;
    public static final SimpleSymbol E;
    public static final SimpleSymbol E0;
    public static final SimpleSymbol E1;
    public static final SimpleSymbol F;
    public static final ModuleMethod F0 = null;
    public static final SimpleSymbol F1;
    public static final ModuleMethod G = null;
    public static final SimpleSymbol G0;
    public static final SimpleSymbol G1;
    public static final SimpleSymbol H;
    public static final SimpleSymbol H0;
    public static final SimpleSymbol I;
    public static final FString I0;
    public static final SimpleSymbol I1;
    public static final SimpleSymbol J;
    public static final ModuleMethod J0 = null;
    public static final SimpleSymbol J1;
    public static final SimpleSymbol K;
    public static final FString K0;
    public static final SimpleSymbol K1;
    public static final PairWithPosition L;
    public static final SimpleSymbol L0;
    public static final SimpleSymbol L1;
    public static LISENSI LISENSI;
    public static final PairWithPosition M;
    public static final ModuleMethod M0 = null;
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
    public static final ModuleMethod Q0 = null;
    public static final SimpleSymbol Q1;
    public static final PairWithPosition R;
    public static final SimpleSymbol R0;
    public static final SimpleSymbol R1;
    public static final SimpleSymbol S;
    public static final FString S0;
    public static final SimpleSymbol T;
    public static final ModuleMethod T0 = null;
    public static final SimpleSymbol U;
    public static final SimpleSymbol U0;
    public static final SimpleSymbol V;
    public static final IntNum V0;
    public static final FString W;
    public static final PairWithPosition W0;
    public static final SimpleSymbol X;
    public static final SimpleSymbol X0;
    public static final ModuleMethod Y = null;
    public static final SimpleSymbol Y0;
    public static final SimpleSymbol Z;
    public static final SimpleSymbol Z0;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5403a;
    public static final SimpleSymbol a0;
    public static final SimpleSymbol a1;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5404b;
    public static final SimpleSymbol b0;
    public static final PairWithPosition b1;
    public static final SimpleSymbol c;
    public static final IntNum c0;
    public static final SimpleSymbol c1;
    public static final ModuleMethod d = null;
    public static final FString d0;
    public static final SimpleSymbol d1;
    public static final SimpleSymbol e;
    public static final ModuleMethod e0 = null;
    public static final FString e1;
    public static final IntNum f;
    public static final FString f0;
    public static final ModuleMethod f1 = null;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5405g;
    public static final SimpleSymbol g0;
    public static final FString g1;
    public static final SimpleSymbol h;
    public static final ModuleMethod h0 = null;
    public static final ModuleMethod h1 = null;
    public static final IntNum i;
    public static final IntNum i0;
    public static final FString i1;
    public static final SimpleSymbol j;
    public static final SimpleSymbol j0;
    public static final SimpleSymbol j1;
    public static final IntNum k;
    public static final SimpleSymbol k0;
    public static final ModuleMethod k1 = null;
    public static final SimpleSymbol l;
    public static final IntNum l0;
    public static final SimpleSymbol l1;
    public static final SimpleSymbol m;
    public static final SimpleSymbol m0;
    public static final FString m1;
    public static final SimpleSymbol n;
    public static final IntNum n0;
    public static final ModuleMethod n1 = null;
    public static final IntNum o;
    public static final FString o0;
    public static final FString o1;
    public static final SimpleSymbol p;
    public static final ModuleMethod p0 = null;
    public static final SimpleSymbol p1;
    public static final SimpleSymbol q;
    public static final FString q0;
    public static final FString q1;
    public static final SimpleSymbol r;
    public static final SimpleSymbol r0;
    public static final FString r1;
    public static final SimpleSymbol s;
    public static final ModuleMethod s0 = null;
    public static final SimpleSymbol s1;
    public static final SimpleSymbol t;
    public static final SimpleSymbol t0;
    public static final ModuleMethod t1 = null;
    public static final IntNum u;
    public static final SimpleSymbol u0;
    public static final SimpleSymbol u1;
    public static final SimpleSymbol v;
    public static final IntNum v0;
    public static final FString v1;
    public static final SimpleSymbol w;
    public static final SimpleSymbol w0;
    public static final ModuleMethod w1 = null;
    public static final SimpleSymbol x;
    public static final SimpleSymbol x0;
    public static final FString x1;
    public static final SimpleSymbol y;
    public static final SimpleSymbol y0;
    public static final ModuleMethod y1 = null;
    public static final SimpleSymbol z;
    public static final IntNum z0;
    public static final FString z1;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public NiotronCardView Card_View1;
    public NiotronColorUtils Color_Utils1;
    public HorizontalArrangement Horizontal_Arrangement1;
    public final ModuleMethod LISENSI$BackPressed;
    public final ModuleMethod LISENSI$Initialize;
    public Label Label1;
    public Label LabelCEKKONTRAS;
    public Label LabelVOLUMECEK;
    public NiotronLinearProgressBar Linear_Progressbar1;
    public NiotronSecurity Security1;
    public TinyDB Tiny_DBLISENSISITE;
    public TinyDB Tiny_DBWARNA;
    public VerticalArrangement Vertical_ERROR;
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
        R1 = (SimpleSymbol) a.f("lookup-handler");
        Q1 = (SimpleSymbol) a.f("dispatchGenericEvent");
        P1 = (SimpleSymbol) a.f("dispatchEvent");
        O1 = (SimpleSymbol) a.f("send-error");
        N1 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        M1 = (SimpleSymbol) a.f("add-to-global-vars");
        L1 = (SimpleSymbol) a.f("add-to-components");
        K1 = (SimpleSymbol) a.f("add-to-events");
        J1 = (SimpleSymbol) a.f("add-to-global-var-environment");
        I1 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        G1 = (SimpleSymbol) a.f("lookup-in-form-environment");
        F1 = (SimpleSymbol) a.f("add-to-form-environment");
        E1 = (SimpleSymbol) a.f("android-log-form");
        D1 = (SimpleSymbol) a.f("get-simple-name");
        C1 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        B1 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        z1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        x1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        v1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        u1 = (SimpleSymbol) a.f("Namespace");
        s1 = (SimpleSymbol) a.f("Tiny_DBLISENSISITE");
        r1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        q1 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        p1 = (SimpleSymbol) a.f("Security1");
        o1 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        m1 = new FString("com.google.appinventor.components.runtime.Label");
        l1 = (SimpleSymbol) a.f("FontBold");
        j1 = (SimpleSymbol) a.f("Label1");
        i1 = new FString("com.google.appinventor.components.runtime.Label");
        g1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        e1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        d1 = (SimpleSymbol) a.f("ProgressChanged");
        c1 = (SimpleSymbol) a.f("Web_View1$ProgressChanged");
        LList lList = LList.Empty;
        b1 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 577635), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 577630);
        a1 = (SimpleSymbol) a.f("$progress");
        Z0 = (SimpleSymbol) a.f("ErrorOccurred");
        Y0 = (SimpleSymbol) a.f("Web_View1$ErrorOccurred");
        X0 = (SimpleSymbol) a.f("Vertical_ERROR");
        W0 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 569443), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 569438);
        V0 = IntNum.make(-1);
        U0 = (SimpleSymbol) a.f("$errorCode");
        S0 = new FString("com.google.appinventor.components.runtime.WebViewer");
        R0 = (SimpleSymbol) a.f("ZoomEnabled");
        P0 = new FString("com.google.appinventor.components.runtime.WebViewer");
        N0 = new FString("com.google.appinventor.components.runtime.Label");
        L0 = (SimpleSymbol) a.f("LabelVOLUMECEK");
        K0 = new FString("com.google.appinventor.components.runtime.Label");
        I0 = new FString("com.google.appinventor.components.runtime.Label");
        H0 = (SimpleSymbol) a.f("Visible");
        G0 = (SimpleSymbol) a.f("Text");
        E0 = (SimpleSymbol) a.f("LabelCEKKONTRAS");
        D0 = new FString("com.google.appinventor.components.runtime.Label");
        B0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        A0 = (SimpleSymbol) a.f("StrokeWidth");
        z0 = IntNum.make(new int[]{-1, 0});
        y0 = (SimpleSymbol) a.f("StrokeColor");
        x0 = (SimpleSymbol) a.f("Radius");
        w0 = (SimpleSymbol) a.f("Height");
        v0 = IntNum.make(5);
        u0 = (SimpleSymbol) a.f("Elevation");
        t0 = (SimpleSymbol) a.f("CompatPadding");
        r0 = (SimpleSymbol) a.f("Card_View1");
        q0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        o0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        n0 = IntNum.make(new int[]{-5829, 0});
        m0 = (SimpleSymbol) a.f("ProgressColor");
        l0 = IntNum.make(100);
        k0 = (SimpleSymbol) a.f("Max");
        j0 = (SimpleSymbol) a.f("Indeterminate");
        i0 = IntNum.make(new int[]{-769226, 0});
        g0 = (SimpleSymbol) a.f("Linear_Progressbar1");
        f0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        d0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        c0 = IntNum.make(-2);
        b0 = (SimpleSymbol) a.f("Width");
        a0 = (SimpleSymbol) a.f("HeihPadding");
        Z = (SimpleSymbol) a.f("HeihMargin");
        X = (SimpleSymbol) a.f("Horizontal_Arrangement1");
        W = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        V = (SimpleSymbol) a.f("BackPressed");
        U = (SimpleSymbol) a.f("LISENSI$BackPressed");
        T = (SimpleSymbol) a.f("Initialize");
        S = (SimpleSymbol) a.f("LISENSI$Initialize");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        m = simpleSymbol2;
        R = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135762);
        Q = (SimpleSymbol) a.f("GoToUrl");
        P = (SimpleSymbol) a.f("Web_View1");
        O = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135624);
        N = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135616), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135610);
        M = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135389);
        L = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135381), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/LISENSI.yail", 135375);
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
        f5405g = (SimpleSymbol) a.f("number");
        f = IntNum.make(new int[]{-14382849, 0});
        e = (SimpleSymbol) a.f("AccentColor");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5404b = (SimpleSymbol) a.f("getMessage");
        f5403a = (SimpleSymbol) a.f("LISENSI");
    }

    public LISENSI() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, D1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, E1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, F1, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, G1, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, I1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, J1, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, K1, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, L1, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, M1, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, N1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, O1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, P1, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, Q1, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, R1, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        G = new ModuleMethod(frameVar, 20, null, 0);
        this.LISENSI$Initialize = new ModuleMethod(frameVar, 21, S, 0);
        this.LISENSI$BackPressed = new ModuleMethod(frameVar, 22, U, 0);
        Y = new ModuleMethod(frameVar, 23, null, 0);
        e0 = new ModuleMethod(frameVar, 24, null, 0);
        h0 = new ModuleMethod(frameVar, 25, null, 0);
        p0 = new ModuleMethod(frameVar, 26, null, 0);
        s0 = new ModuleMethod(frameVar, 27, null, 0);
        C0 = new ModuleMethod(frameVar, 28, null, 0);
        F0 = new ModuleMethod(frameVar, 29, null, 0);
        J0 = new ModuleMethod(frameVar, 30, null, 0);
        M0 = new ModuleMethod(frameVar, 31, null, 0);
        O0 = new ModuleMethod(frameVar, 32, null, 0);
        Q0 = new ModuleMethod(frameVar, 33, null, 0);
        T0 = new ModuleMethod(frameVar, 34, null, 0);
        this.Web_View1$ErrorOccurred = new ModuleMethod(frameVar, 35, Y0, 12291);
        this.Web_View1$ProgressChanged = new ModuleMethod(frameVar, 36, c1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        f1 = new ModuleMethod(frameVar, 37, null, 0);
        h1 = new ModuleMethod(frameVar, 38, null, 0);
        k1 = new ModuleMethod(frameVar, 39, null, 0);
        n1 = new ModuleMethod(frameVar, 40, null, 0);
        t1 = new ModuleMethod(frameVar, 41, null, 0);
        w1 = new ModuleMethod(frameVar, 42, null, 0);
        y1 = new ModuleMethod(frameVar, 43, null, 0);
        A1 = new ModuleMethod(frameVar, 44, null, 0);
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
        SimpleSymbol simpleSymbol = f5403a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        LISENSI = null;
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
            SimpleSymbol simpleSymbol3 = f5405g;
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
            runtime.setAndCoerceProperty$Ex(simpleSymbol, E, "LISENSI", simpleSymbol5);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, F, bool, simpleSymbol7), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(G));
        }
        Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol = S;
        if (obj != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.LISENSI$Initialize);
        } else {
            addToFormEnvironment(symbol, this.LISENSI$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "LISENSI", "Initialize");
        } else {
            addToEvents(simpleSymbol, T);
        }
        Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol2 = U;
        if (obj2 != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.LISENSI$BackPressed);
        } else {
            addToFormEnvironment(symbol2, this.LISENSI$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "LISENSI", "BackPressed");
        } else {
            addToEvents(simpleSymbol, V);
        }
        this.Horizontal_Arrangement1 = null;
        Object obj3 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj4 = X;
        if (obj3 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, W, obj4, Y), consumer);
        } else {
            addToComponents(simpleSymbol, d0, obj4, e0);
        }
        this.Linear_Progressbar1 = null;
        Object obj5 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj6 = g0;
        if (obj5 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, f0, obj6, h0), consumer);
        } else {
            addToComponents(obj4, o0, obj6, p0);
        }
        this.Card_View1 = null;
        Object obj7 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj8 = r0;
        if (obj7 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, q0, obj8, s0), consumer);
        } else {
            addToComponents(simpleSymbol, B0, obj8, C0);
        }
        this.LabelCEKKONTRAS = null;
        Object obj9 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj10 = E0;
        if (obj9 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj8, D0, obj10, F0), consumer);
        } else {
            addToComponents(obj8, I0, obj10, J0);
        }
        this.LabelVOLUMECEK = null;
        Object obj11 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj12 = L0;
        if (obj11 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj8, K0, obj12, M0), consumer);
        } else {
            addToComponents(obj8, N0, obj12, O0);
        }
        this.Web_View1 = null;
        Object obj13 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj14 = P;
        if (obj13 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj8, P0, obj14, Q0), consumer);
        } else {
            addToComponents(obj8, S0, obj14, T0);
        }
        Object obj15 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol3 = Y0;
        if (obj15 != bool) {
            runtime.addToCurrentFormEnvironment(symbol3, this.Web_View1$ErrorOccurred);
        } else {
            addToFormEnvironment(symbol3, this.Web_View1$ErrorOccurred);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ErrorOccurred");
        } else {
            addToEvents(obj14, Z0);
        }
        Object obj16 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol4 = c1;
        if (obj16 != bool) {
            runtime.addToCurrentFormEnvironment(symbol4, this.Web_View1$ProgressChanged);
        } else {
            addToFormEnvironment(symbol4, this.Web_View1$ProgressChanged);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ProgressChanged");
        } else {
            addToEvents(obj14, d1);
        }
        this.Vertical_ERROR = null;
        Object obj17 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj18 = X0;
        if (obj17 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, e1, obj18, f1), consumer);
        } else {
            addToComponents(simpleSymbol, g1, obj18, h1);
        }
        this.Label1 = null;
        Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj20 = j1;
        if (obj19 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj18, i1, obj20, k1), consumer);
        } else {
            addToComponents(obj18, m1, obj20, n1);
        }
        this.Security1 = null;
        Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj22 = p1;
        if (obj21 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, o1, obj22, bool), consumer);
        } else {
            addToComponents(simpleSymbol, q1, obj22, bool);
        }
        this.Tiny_DBLISENSISITE = null;
        Object obj23 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj24 = s1;
        if (obj23 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, r1, obj24, t1), consumer);
        } else {
            addToComponents(simpleSymbol, v1, obj24, w1);
        }
        this.Tiny_DBWARNA = null;
        Object obj25 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj26 = J;
        if (obj25 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, x1, obj26, y1), consumer);
        } else {
            addToComponents(simpleSymbol, z1, obj26, A1);
        }
        this.Color_Utils1 = null;
        Object obj27 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj28 = H;
        if (obj27 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, B1, obj28, bool), consumer);
        } else {
            addToComponents(simpleSymbol, C1, obj28, bool);
        }
        runtime.initRuntime();
    }

    public Object LISENSI$Initialize() throws Throwable {
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
        SimpleSymbol simpleSymbol5 = f5403a;
        SimpleSymbol simpleSymbol6 = n;
        SimpleSymbol simpleSymbol7 = f5405g;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol6, objCallComponentMethod, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, t, runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list2("warna", ""), N)), O), simpleSymbol7);
        return runtime.callComponentMethod(P, Q, LList.list1("https://sites.google.com/view/rdevlisensi/halaman-muka"), R);
    }

    public Object LISENSI$BackPressed() {
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
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(U0), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, V0), W0, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = r;
        SimpleSymbol simpleSymbol2 = H0;
        SimpleSymbol simpleSymbol3 = P;
        if (objCallYailPrimitive != bool) {
            return runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol);
        }
        runtime.setAndCoerceProperty$Ex(X0, simpleSymbol2, Boolean.TRUE, simpleSymbol);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol);
    }

    public Object Web_View1$ProgressChanged(Object obj) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(a1), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, l0), b1, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = r;
        SimpleSymbol simpleSymbol2 = H0;
        SimpleSymbol simpleSymbol3 = X;
        return objCallYailPrimitive != bool ? runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol) : runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, Boolean.TRUE, simpleSymbol);
    }

    public class frame extends ModuleBody {
        public LISENSI c;

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
                if (!(obj instanceof LISENSI)) {
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
                    if (!(obj instanceof LISENSI)) {
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
                if (!(obj instanceof LISENSI)) {
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
            if (!(obj instanceof LISENSI)) {
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
                    LISENSI lisensi = LISENSI.LISENSI;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    SimpleSymbol simpleSymbol = LISENSI.f5403a;
                    SimpleSymbol simpleSymbol2 = LISENSI.e;
                    IntNum intNum = LISENSI.f;
                    SimpleSymbol simpleSymbol3 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.h, LISENSI.i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.j, LISENSI.k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = LISENSI.l;
                    SimpleSymbol simpleSymbol5 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.n, LISENSI.o, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.p, "slidehorizontal", simpleSymbol5);
                    Boolean bool = Boolean.TRUE;
                    SimpleSymbol simpleSymbol6 = LISENSI.q;
                    SimpleSymbol simpleSymbol7 = LISENSI.r;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.s, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.t, LISENSI.u, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.v, "fade", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.w, "portrait", simpleSymbol5);
                    Boolean bool2 = Boolean.FALSE;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.x, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.y, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.z, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.A, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.B, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.C, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.D, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.E, "LISENSI", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, LISENSI.F, bool2, simpleSymbol7);
                case 21:
                    return this.c.LISENSI$Initialize();
                case 22:
                    return this.c.LISENSI$BackPressed();
                case 23:
                    SimpleSymbol simpleSymbol8 = LISENSI.X;
                    SimpleSymbol simpleSymbol9 = LISENSI.h;
                    IntNum intNum2 = LISENSI.i;
                    SimpleSymbol simpleSymbol10 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, LISENSI.j, LISENSI.k, simpleSymbol10);
                    SimpleSymbol simpleSymbol11 = LISENSI.Z;
                    SimpleSymbol simpleSymbol12 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, "0,0,0,0", simpleSymbol12);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, LISENSI.a0, "0,0,0,0", simpleSymbol12);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, LISENSI.b0, LISENSI.c0, simpleSymbol10);
                case 24:
                    SimpleSymbol simpleSymbol13 = LISENSI.X;
                    SimpleSymbol simpleSymbol14 = LISENSI.h;
                    IntNum intNum3 = LISENSI.i;
                    SimpleSymbol simpleSymbol15 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol14, intNum3, simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, LISENSI.j, LISENSI.k, simpleSymbol15);
                    SimpleSymbol simpleSymbol16 = LISENSI.Z;
                    SimpleSymbol simpleSymbol17 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol16, "0,0,0,0", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, LISENSI.a0, "0,0,0,0", simpleSymbol17);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol13, LISENSI.b0, LISENSI.c0, simpleSymbol15);
                case 25:
                    SimpleSymbol simpleSymbol18 = LISENSI.g0;
                    SimpleSymbol simpleSymbol19 = LISENSI.n;
                    IntNum intNum4 = LISENSI.i0;
                    SimpleSymbol simpleSymbol20 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol19, intNum4, simpleSymbol20);
                    SimpleSymbol simpleSymbol21 = LISENSI.Z;
                    SimpleSymbol simpleSymbol22 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol21, "0,0,0,0", simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, LISENSI.a0, "0,0,0,0", simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, LISENSI.j0, Boolean.TRUE, LISENSI.r);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, LISENSI.k0, LISENSI.l0, simpleSymbol20);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, LISENSI.m0, LISENSI.n0, simpleSymbol20);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol18, LISENSI.b0, LISENSI.c0, simpleSymbol20);
                case 26:
                    SimpleSymbol simpleSymbol23 = LISENSI.g0;
                    SimpleSymbol simpleSymbol24 = LISENSI.n;
                    IntNum intNum5 = LISENSI.i0;
                    SimpleSymbol simpleSymbol25 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, simpleSymbol24, intNum5, simpleSymbol25);
                    SimpleSymbol simpleSymbol26 = LISENSI.Z;
                    SimpleSymbol simpleSymbol27 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, simpleSymbol26, "0,0,0,0", simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, LISENSI.a0, "0,0,0,0", simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, LISENSI.j0, Boolean.TRUE, LISENSI.r);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, LISENSI.k0, LISENSI.l0, simpleSymbol25);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, LISENSI.m0, LISENSI.n0, simpleSymbol25);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol23, LISENSI.b0, LISENSI.c0, simpleSymbol25);
                case 27:
                    SimpleSymbol simpleSymbol28 = LISENSI.r0;
                    SimpleSymbol simpleSymbol29 = LISENSI.h;
                    IntNum intNum6 = LISENSI.i;
                    SimpleSymbol simpleSymbol30 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol29, intNum6, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.j, LISENSI.k, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.t0, Boolean.TRUE, LISENSI.r);
                    SimpleSymbol simpleSymbol31 = LISENSI.u0;
                    IntNum intNum7 = LISENSI.v0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol31, intNum7, simpleSymbol30);
                    SimpleSymbol simpleSymbol32 = LISENSI.w0;
                    IntNum intNum8 = LISENSI.c0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol32, intNum8, simpleSymbol30);
                    SimpleSymbol simpleSymbol33 = LISENSI.Z;
                    SimpleSymbol simpleSymbol34 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol33, "0,0,0,0", simpleSymbol34);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.a0, "0,0,0,0", simpleSymbol34);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.x0, intNum7, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.y0, LISENSI.z0, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.A0, intNum7, simpleSymbol30);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol28, LISENSI.b0, intNum8, simpleSymbol30);
                case 28:
                    SimpleSymbol simpleSymbol35 = LISENSI.r0;
                    SimpleSymbol simpleSymbol36 = LISENSI.h;
                    IntNum intNum9 = LISENSI.i;
                    SimpleSymbol simpleSymbol37 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol36, intNum9, simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.j, LISENSI.k, simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.t0, Boolean.TRUE, LISENSI.r);
                    SimpleSymbol simpleSymbol38 = LISENSI.u0;
                    IntNum intNum10 = LISENSI.v0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol38, intNum10, simpleSymbol37);
                    SimpleSymbol simpleSymbol39 = LISENSI.w0;
                    IntNum intNum11 = LISENSI.c0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol39, intNum11, simpleSymbol37);
                    SimpleSymbol simpleSymbol40 = LISENSI.Z;
                    SimpleSymbol simpleSymbol41 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, simpleSymbol40, "0,0,0,0", simpleSymbol41);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.a0, "0,0,0,0", simpleSymbol41);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.x0, intNum10, simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.y0, LISENSI.z0, simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.A0, intNum10, simpleSymbol37);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol35, LISENSI.b0, intNum11, simpleSymbol37);
                case 29:
                    SimpleSymbol simpleSymbol42 = LISENSI.E0;
                    SimpleSymbol simpleSymbol43 = LISENSI.Z;
                    SimpleSymbol simpleSymbol44 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol43, "0,0,0,0", simpleSymbol44);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, LISENSI.a0, "0,0,0,0", simpleSymbol44);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, LISENSI.G0, "Text for Label2", simpleSymbol44);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol42, LISENSI.H0, Boolean.FALSE, LISENSI.r);
                case 30:
                    SimpleSymbol simpleSymbol45 = LISENSI.E0;
                    SimpleSymbol simpleSymbol46 = LISENSI.Z;
                    SimpleSymbol simpleSymbol47 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, simpleSymbol46, "0,0,0,0", simpleSymbol47);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, LISENSI.a0, "0,0,0,0", simpleSymbol47);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol45, LISENSI.G0, "Text for Label2", simpleSymbol47);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol45, LISENSI.H0, Boolean.FALSE, LISENSI.r);
                case 31:
                    SimpleSymbol simpleSymbol48 = LISENSI.L0;
                    SimpleSymbol simpleSymbol49 = LISENSI.Z;
                    SimpleSymbol simpleSymbol50 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, simpleSymbol49, "0,0,0,0", simpleSymbol50);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, LISENSI.a0, "0,0,0,0", simpleSymbol50);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, LISENSI.G0, "Text for Label2", simpleSymbol50);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol48, LISENSI.H0, Boolean.FALSE, LISENSI.r);
                case 32:
                    SimpleSymbol simpleSymbol51 = LISENSI.L0;
                    SimpleSymbol simpleSymbol52 = LISENSI.Z;
                    SimpleSymbol simpleSymbol53 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol51, simpleSymbol52, "0,0,0,0", simpleSymbol53);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol51, LISENSI.a0, "0,0,0,0", simpleSymbol53);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol51, LISENSI.G0, "Text for Label2", simpleSymbol53);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol51, LISENSI.H0, Boolean.FALSE, LISENSI.r);
                case 33:
                    SimpleSymbol simpleSymbol54 = LISENSI.P;
                    SimpleSymbol simpleSymbol55 = LISENSI.w0;
                    IntNum intNum12 = LISENSI.c0;
                    SimpleSymbol simpleSymbol56 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol55, intNum12, simpleSymbol56);
                    SimpleSymbol simpleSymbol57 = LISENSI.Z;
                    SimpleSymbol simpleSymbol58 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol57, "0,0,0,0", simpleSymbol58);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, LISENSI.a0, "0,0,0,0", simpleSymbol58);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, LISENSI.b0, intNum12, simpleSymbol56);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol54, LISENSI.R0, Boolean.FALSE, LISENSI.r);
                case 34:
                    SimpleSymbol simpleSymbol59 = LISENSI.P;
                    SimpleSymbol simpleSymbol60 = LISENSI.w0;
                    IntNum intNum13 = LISENSI.c0;
                    SimpleSymbol simpleSymbol61 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol60, intNum13, simpleSymbol61);
                    SimpleSymbol simpleSymbol62 = LISENSI.Z;
                    SimpleSymbol simpleSymbol63 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, simpleSymbol62, "0,0,0,0", simpleSymbol63);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, LISENSI.a0, "0,0,0,0", simpleSymbol63);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol59, LISENSI.b0, intNum13, simpleSymbol61);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol59, LISENSI.R0, Boolean.FALSE, LISENSI.r);
                case 35:
                case 36:
                default:
                    return super.apply0(moduleMethod);
                case 37:
                    SimpleSymbol simpleSymbol64 = LISENSI.X0;
                    SimpleSymbol simpleSymbol65 = LISENSI.h;
                    IntNum intNum14 = LISENSI.i;
                    SimpleSymbol simpleSymbol66 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, simpleSymbol65, intNum14, simpleSymbol66);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, LISENSI.j, LISENSI.k, simpleSymbol66);
                    SimpleSymbol simpleSymbol67 = LISENSI.w0;
                    IntNum intNum15 = LISENSI.c0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, simpleSymbol67, intNum15, simpleSymbol66);
                    SimpleSymbol simpleSymbol68 = LISENSI.Z;
                    SimpleSymbol simpleSymbol69 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, simpleSymbol68, "0,0,0,0", simpleSymbol69);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, LISENSI.a0, "0,0,0,0", simpleSymbol69);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol64, LISENSI.H0, Boolean.FALSE, LISENSI.r);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol64, LISENSI.b0, intNum15, simpleSymbol66);
                case 38:
                    SimpleSymbol simpleSymbol70 = LISENSI.X0;
                    SimpleSymbol simpleSymbol71 = LISENSI.h;
                    IntNum intNum16 = LISENSI.i;
                    SimpleSymbol simpleSymbol72 = LISENSI.f5405g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol70, simpleSymbol71, intNum16, simpleSymbol72);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol70, LISENSI.j, LISENSI.k, simpleSymbol72);
                    SimpleSymbol simpleSymbol73 = LISENSI.w0;
                    IntNum intNum17 = LISENSI.c0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol70, simpleSymbol73, intNum17, simpleSymbol72);
                    SimpleSymbol simpleSymbol74 = LISENSI.Z;
                    SimpleSymbol simpleSymbol75 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol70, simpleSymbol74, "0,0,0,0", simpleSymbol75);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol70, LISENSI.a0, "0,0,0,0", simpleSymbol75);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol70, LISENSI.H0, Boolean.FALSE, LISENSI.r);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol70, LISENSI.b0, intNum17, simpleSymbol72);
                case 39:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol76 = LISENSI.r;
                    SimpleSymbol simpleSymbol77 = LISENSI.j1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, LISENSI.l1, bool3, simpleSymbol76);
                    SimpleSymbol simpleSymbol78 = LISENSI.Z;
                    SimpleSymbol simpleSymbol79 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, simpleSymbol78, "0,0,0,0", simpleSymbol79);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, LISENSI.a0, "0,0,0,0", simpleSymbol79);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol77, LISENSI.G0, "ERROR 404", simpleSymbol79);
                case 40:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol80 = LISENSI.r;
                    SimpleSymbol simpleSymbol81 = LISENSI.j1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, LISENSI.l1, bool4, simpleSymbol80);
                    SimpleSymbol simpleSymbol82 = LISENSI.Z;
                    SimpleSymbol simpleSymbol83 = LISENSI.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, simpleSymbol82, "0,0,0,0", simpleSymbol83);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol81, LISENSI.a0, "0,0,0,0", simpleSymbol83);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol81, LISENSI.G0, "ERROR 404", simpleSymbol83);
                case 41:
                    return runtime.setAndCoerceProperty$Ex(LISENSI.s1, LISENSI.u1, "Tiny_DBLISENSISITE", LISENSI.m);
                case 42:
                    return runtime.setAndCoerceProperty$Ex(LISENSI.s1, LISENSI.u1, "Tiny_DBLISENSISITE", LISENSI.m);
                case 43:
                    return runtime.setAndCoerceProperty$Ex(LISENSI.J, LISENSI.u1, "Tiny_DBWARNA", LISENSI.m);
                case 44:
                    return runtime.setAndCoerceProperty$Ex(LISENSI.J, LISENSI.u1, "Tiny_DBWARNA", LISENSI.m);
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5404b));
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
        LISENSI = this;
        addToFormEnvironment(f5403a, this);
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
