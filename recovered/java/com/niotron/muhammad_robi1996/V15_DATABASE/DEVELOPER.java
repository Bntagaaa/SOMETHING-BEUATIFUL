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
import com.google.appinventor.components.runtime.Image;
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.NiotronCardView;
import com.google.appinventor.components.runtime.NiotronColorUtils;
import com.google.appinventor.components.runtime.NiotronSecurity;
import com.google.appinventor.components.runtime.Spacer;
import com.google.appinventor.components.runtime.TinyDB;
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
public class DEVELOPER extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final SimpleSymbol A0;
    public static final FString A1;
    public static final SimpleSymbol B;
    public static final SimpleSymbol B0;
    public static final ModuleMethod B1 = null;
    public static final SimpleSymbol C;
    public static final IntNum C0;
    public static final FString C1;
    public static final SimpleSymbol D;
    public static final SimpleSymbol D0;
    public static final SimpleSymbol D1;
    public static DEVELOPER DEVELOPER;
    public static final SimpleSymbol E;
    public static final IntNum E0;
    public static final ModuleMethod E1 = null;
    public static final SimpleSymbol F;
    public static final SimpleSymbol F0;
    public static final FString F1;
    public static final ModuleMethod G = null;
    public static final SimpleSymbol G0;
    public static final ModuleMethod G1 = null;
    public static final SimpleSymbol H;
    public static final SimpleSymbol H0;
    public static final SimpleSymbol I;
    public static final IntNum I0;
    public static final FString I1;
    public static final SimpleSymbol J;
    public static final SimpleSymbol J0;
    public static final ModuleMethod J1 = null;
    public static final SimpleSymbol K;
    public static final IntNum K0;
    public static final IntNum K1;
    public static final SimpleSymbol L;
    public static final FString L0;
    public static final FString L1;
    public static final SimpleSymbol M;
    public static final ModuleMethod M0 = null;
    public static final ModuleMethod M1 = null;
    public static final PairWithPosition N;
    public static final FString N0;
    public static final FString N1;
    public static final PairWithPosition O;
    public static final SimpleSymbol O0;
    public static final ModuleMethod O1 = null;
    public static final PairWithPosition P;
    public static final ModuleMethod P0 = null;
    public static final IntNum P1;
    public static final PairWithPosition Q;
    public static final IntNum Q0;
    public static final FString Q1;
    public static final PairWithPosition R;
    public static final IntNum R0;
    public static final ModuleMethod R1 = null;
    public static final PairWithPosition S;
    public static final FString S0;
    public static final FString S1;
    public static final SimpleSymbol T;
    public static final ModuleMethod T0 = null;
    public static final FString T1;
    public static final SimpleSymbol U;
    public static final FString U0;
    public static final FString U1;
    public static final PairWithPosition V;
    public static final ModuleMethod V0 = null;
    public static final SimpleSymbol V1;
    public static final PairWithPosition W;
    public static final SimpleSymbol W0;
    public static final FString W1;
    public static final SimpleSymbol X;
    public static final SimpleSymbol X0;
    public static final FString X1;
    public static final SimpleSymbol Y;
    public static final SimpleSymbol Y0;
    public static final ModuleMethod Y1 = null;
    public static final SimpleSymbol Z;
    public static final IntNum Z0;
    public static final SimpleSymbol Z1;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5381a;
    public static final SimpleSymbol a0;
    public static final FString a1;
    public static final FString a2;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5382b;
    public static final SimpleSymbol b0;
    public static final ModuleMethod b1 = null;
    public static final ModuleMethod b2 = null;
    public static final SimpleSymbol c;
    public static final PairWithPosition c0;
    public static final FString c1;
    public static final FString c2;
    public static final ModuleMethod d = null;
    public static final PairWithPosition d0;
    public static final SimpleSymbol d1;
    public static final FString d2;
    public static final SimpleSymbol e;
    public static final SimpleSymbol e0;
    public static final ModuleMethod e1 = null;
    public static final FString e2;
    public static final IntNum f;
    public static final SimpleSymbol f0;
    public static final FString f1;
    public static final ModuleMethod f2 = null;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5383g;
    public static final PairWithPosition g0;
    public static final ModuleMethod g1 = null;
    public static final FString g2;
    public static final SimpleSymbol h;
    public static final PairWithPosition h0;
    public static final FString h1;
    public static final ModuleMethod h2 = null;
    public static final IntNum i;
    public static final SimpleSymbol i0;
    public static final ModuleMethod i1 = null;
    public static final FString i2;
    public static final SimpleSymbol j;
    public static final PairWithPosition j0;
    public static final SimpleSymbol j1;
    public static final ModuleMethod j2 = null;
    public static final IntNum k;
    public static final PairWithPosition k0;
    public static final IntNum k1;
    public static final FString k2;
    public static final SimpleSymbol l;
    public static final PairWithPosition l0;
    public static final IntNum l1;
    public static final ModuleMethod l2 = null;
    public static final SimpleSymbol m;
    public static final SimpleSymbol m0;
    public static final FString m1;
    public static final SimpleSymbol m2;
    public static final SimpleSymbol n;
    public static final SimpleSymbol n0;
    public static final ModuleMethod n1 = null;
    public static final SimpleSymbol n2;
    public static final IntNum o;
    public static final SimpleSymbol o0;
    public static final FString o1;
    public static final SimpleSymbol o2;
    public static final SimpleSymbol p;
    public static final SimpleSymbol p0;
    public static final ModuleMethod p1 = null;
    public static final SimpleSymbol p2;
    public static final SimpleSymbol q;
    public static final SimpleSymbol q0;
    public static final IntNum q1;
    public static final SimpleSymbol q2;
    public static final SimpleSymbol r;
    public static final SimpleSymbol r0;
    public static final IntNum r1;
    public static final SimpleSymbol r2;
    public static final SimpleSymbol s;
    public static final FString s0;
    public static final IntNum s1;
    public static final SimpleSymbol s2;
    public static final SimpleSymbol t;
    public static final SimpleSymbol t0;
    public static final IntNum t1;
    public static final SimpleSymbol t2;
    public static final IntNum u;
    public static final ModuleMethod u0 = null;
    public static final SimpleSymbol u1;
    public static final SimpleSymbol u2;
    public static final SimpleSymbol v;
    public static final SimpleSymbol v0;
    public static final IntNum v1;
    public static final SimpleSymbol v2;
    public static final SimpleSymbol w;
    public static final SimpleSymbol w0;
    public static final FString w1;
    public static final SimpleSymbol w2;
    public static final SimpleSymbol x;
    public static final IntNum x0;
    public static final ModuleMethod x1 = null;
    public static final SimpleSymbol x2;
    public static final SimpleSymbol y;
    public static final SimpleSymbol y0;
    public static final FString y1;
    public static final SimpleSymbol y2;
    public static final SimpleSymbol z;
    public static final SimpleSymbol z0;
    public static final ModuleMethod z1 = null;
    public static final SimpleSymbol z2;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public NiotronCardView Card_View1;
    public NiotronCardView Card_View2;
    public NiotronColorUtils Color_Utils1;
    public final ModuleMethod DEVELOPER$BackPressed;
    public final ModuleMethod DEVELOPER$Initialize;
    public Image Image1;
    public Label Label1;
    public Label LabelDEV;
    public Label LabelNAMAAPP;
    public NiotronSecurity Security1;
    public Spacer Spacer1;
    public Spacer Spacer2;
    public Spacer Spacer3;
    public TaifunLockTask TaifunLockTask1;
    public TinyDB Tiny_DBDEV;
    public TinyDB Tiny_DBNAMAAPP;
    public TinyDB Tiny_DBWARNA;
    public Label VERSI;
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
        z2 = (SimpleSymbol) a.f("lookup-handler");
        y2 = (SimpleSymbol) a.f("dispatchGenericEvent");
        x2 = (SimpleSymbol) a.f("dispatchEvent");
        w2 = (SimpleSymbol) a.f("send-error");
        v2 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        u2 = (SimpleSymbol) a.f("add-to-global-vars");
        t2 = (SimpleSymbol) a.f("add-to-components");
        s2 = (SimpleSymbol) a.f("add-to-events");
        r2 = (SimpleSymbol) a.f("add-to-global-var-environment");
        q2 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        p2 = (SimpleSymbol) a.f("lookup-in-form-environment");
        o2 = (SimpleSymbol) a.f("add-to-form-environment");
        n2 = (SimpleSymbol) a.f("android-log-form");
        m2 = (SimpleSymbol) a.f("get-simple-name");
        k2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        i2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        g2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        e2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        d2 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        c2 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        a2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        Z1 = (SimpleSymbol) a.f("Namespace");
        X1 = new FString("com.google.appinventor.components.runtime.TinyDB");
        W1 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
        V1 = (SimpleSymbol) a.f("TaifunLockTask1");
        U1 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
        T1 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        S1 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        Q1 = new FString("com.google.appinventor.components.runtime.Label");
        P1 = IntNum.make(12);
        N1 = new FString("com.google.appinventor.components.runtime.Label");
        L1 = new FString("com.google.appinventor.components.runtime.Label");
        K1 = IntNum.make(new int[]{-16602892, 0});
        I1 = new FString("com.google.appinventor.components.runtime.Label");
        F1 = new FString("com.google.appinventor.components.runtime.Spacer");
        D1 = (SimpleSymbol) a.f("Spacer3");
        C1 = new FString("com.google.appinventor.components.runtime.Spacer");
        A1 = new FString("com.google.appinventor.components.runtime.Image");
        y1 = new FString("com.google.appinventor.components.runtime.Image");
        w1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        v1 = IntNum.make(-1050);
        u1 = (SimpleSymbol) a.f("StrokeWidth");
        t1 = IntNum.make(new int[]{-16602892, 0});
        s1 = IntNum.make(-1020);
        r1 = IntNum.make(5);
        q1 = IntNum.make(8);
        o1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        m1 = new FString("com.google.appinventor.components.runtime.Label");
        l1 = IntNum.make(new int[]{-10453621, 0});
        k1 = IntNum.make(11);
        j1 = (SimpleSymbol) a.f("FontSize");
        h1 = new FString("com.google.appinventor.components.runtime.Label");
        f1 = new FString("com.google.appinventor.components.runtime.Spacer");
        d1 = (SimpleSymbol) a.f("Spacer2");
        c1 = new FString("com.google.appinventor.components.runtime.Spacer");
        a1 = new FString("com.google.appinventor.components.runtime.Label");
        Z0 = IntNum.make(1);
        Y0 = (SimpleSymbol) a.f("TextAlignment");
        X0 = (SimpleSymbol) a.f("FontTypeface");
        W0 = (SimpleSymbol) a.f("FontBold");
        U0 = new FString("com.google.appinventor.components.runtime.Label");
        S0 = new FString("com.google.appinventor.components.runtime.Spacer");
        R0 = IntNum.make(-2);
        Q0 = IntNum.make(-1002);
        O0 = (SimpleSymbol) a.f("Spacer1");
        N0 = new FString("com.google.appinventor.components.runtime.Spacer");
        L0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        K0 = IntNum.make(-1070);
        J0 = (SimpleSymbol) a.f("Width");
        I0 = IntNum.make(15);
        H0 = (SimpleSymbol) a.f("Radius");
        G0 = (SimpleSymbol) a.f("HeihPadding");
        F0 = (SimpleSymbol) a.f("HeihMargin");
        E0 = IntNum.make(-1040);
        D0 = (SimpleSymbol) a.f("Height");
        C0 = IntNum.make(10);
        B0 = (SimpleSymbol) a.f("Elevation");
        A0 = (SimpleSymbol) a.f("ContentPaddingTop");
        z0 = (SimpleSymbol) a.f("ContentPaddingRight");
        y0 = (SimpleSymbol) a.f("ContentPaddingLeft");
        x0 = IntNum.make(0);
        w0 = (SimpleSymbol) a.f("ContentPaddingBottom");
        v0 = (SimpleSymbol) a.f("CompatPadding");
        t0 = (SimpleSymbol) a.f("Card_View1");
        s0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        r0 = (SimpleSymbol) a.f("BackPressed");
        q0 = (SimpleSymbol) a.f("DEVELOPER$BackPressed");
        p0 = (SimpleSymbol) a.f("Initialize");
        o0 = (SimpleSymbol) a.f("DEVELOPER$Initialize");
        n0 = (SimpleSymbol) a.f("Picture");
        m0 = (SimpleSymbol) a.f("Image1");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        m = simpleSymbol2;
        LList lList = LList.Empty;
        l0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136839);
        k0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136829);
        j0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136819);
        i0 = (SimpleSymbol) a.f("VERSI");
        h0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136525);
        g0 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136517), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136511);
        f0 = (SimpleSymbol) a.f("Tiny_DBDEV");
        e0 = (SimpleSymbol) a.f("LabelDEV");
        d0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136310);
        c0 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136302), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136296);
        b0 = (SimpleSymbol) a.f("Tiny_DBNAMAAPP");
        a0 = (SimpleSymbol) a.f("BASE64Decode");
        Z = (SimpleSymbol) a.f("Security1");
        Y = (SimpleSymbol) a.f("Text");
        X = (SimpleSymbol) a.f("LabelNAMAAPP");
        W = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136084);
        V = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136076), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 136070);
        U = (SimpleSymbol) a.f("TextColor");
        T = (SimpleSymbol) a.f("Label1");
        S = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135859);
        R = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135851), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135845);
        Q = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135622);
        P = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135614), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135608);
        O = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135388);
        N = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135380), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/DEVELOPER.yail", 135374);
        M = (SimpleSymbol) a.f("GetValue");
        L = (SimpleSymbol) a.f("Tiny_DBWARNA");
        K = (SimpleSymbol) a.f("HexToColor");
        J = (SimpleSymbol) a.f("Color_Utils1");
        I = (SimpleSymbol) a.f("StrokeColor");
        H = (SimpleSymbol) a.f("Card_View2");
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
        u = IntNum.make(new int[]{-14839573, 0});
        t = (SimpleSymbol) a.f("NavigationBarColor");
        s = (SimpleSymbol) a.f("HighQualityImages");
        r = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        q = (SimpleSymbol) a.f("HighContrast");
        p = (SimpleSymbol) a.f("CloseScreenAnimation");
        o = IntNum.make(new int[]{-14839573, 0});
        n = (SimpleSymbol) a.f("BackgroundColor");
        l = (SimpleSymbol) a.f("AppName");
        k = IntNum.make(2);
        j = (SimpleSymbol) a.f("AlignVertical");
        i = IntNum.make(3);
        h = (SimpleSymbol) a.f("AlignHorizontal");
        f5383g = (SimpleSymbol) a.f("number");
        f = IntNum.make(new int[]{-14382849, 0});
        e = (SimpleSymbol) a.f("AccentColor");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5382b = (SimpleSymbol) a.f("getMessage");
        f5381a = (SimpleSymbol) a.f("DEVELOPER");
    }

    public DEVELOPER() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, m2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, n2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, o2, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, p2, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, q2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, r2, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, s2, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, t2, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, u2, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, v2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, w2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, x2, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, y2, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, z2, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        G = new ModuleMethod(frameVar, 20, null, 0);
        this.DEVELOPER$Initialize = new ModuleMethod(frameVar, 21, o0, 0);
        this.DEVELOPER$BackPressed = new ModuleMethod(frameVar, 22, q0, 0);
        u0 = new ModuleMethod(frameVar, 23, null, 0);
        M0 = new ModuleMethod(frameVar, 24, null, 0);
        P0 = new ModuleMethod(frameVar, 25, null, 0);
        T0 = new ModuleMethod(frameVar, 26, null, 0);
        V0 = new ModuleMethod(frameVar, 27, null, 0);
        b1 = new ModuleMethod(frameVar, 28, null, 0);
        e1 = new ModuleMethod(frameVar, 29, null, 0);
        g1 = new ModuleMethod(frameVar, 30, null, 0);
        i1 = new ModuleMethod(frameVar, 31, null, 0);
        n1 = new ModuleMethod(frameVar, 32, null, 0);
        p1 = new ModuleMethod(frameVar, 33, null, 0);
        x1 = new ModuleMethod(frameVar, 34, null, 0);
        z1 = new ModuleMethod(frameVar, 35, null, 0);
        B1 = new ModuleMethod(frameVar, 36, null, 0);
        E1 = new ModuleMethod(frameVar, 37, null, 0);
        G1 = new ModuleMethod(frameVar, 38, null, 0);
        J1 = new ModuleMethod(frameVar, 39, null, 0);
        M1 = new ModuleMethod(frameVar, 40, null, 0);
        O1 = new ModuleMethod(frameVar, 41, null, 0);
        R1 = new ModuleMethod(frameVar, 42, null, 0);
        Y1 = new ModuleMethod(frameVar, 43, null, 0);
        b2 = new ModuleMethod(frameVar, 44, null, 0);
        f2 = new ModuleMethod(frameVar, 45, null, 0);
        h2 = new ModuleMethod(frameVar, 46, null, 0);
        j2 = new ModuleMethod(frameVar, 47, null, 0);
        l2 = new ModuleMethod(frameVar, 48, null, 0);
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
        SimpleSymbol simpleSymbol = f5381a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        DEVELOPER = null;
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
            SimpleSymbol simpleSymbol3 = f5383g;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, h, i, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, j, k, simpleSymbol3);
            SimpleSymbol simpleSymbol4 = l;
            SimpleSymbol simpleSymbol5 = m;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, n, o, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, p, "fade", simpleSymbol5);
            Boolean bool2 = Boolean.TRUE;
            SimpleSymbol simpleSymbol6 = q;
            SimpleSymbol simpleSymbol7 = r;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, s, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, t, u, simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, v, "zoom", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, w, "portrait", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, x, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, y, bool2, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, z, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, A, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, B, "Responsive", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, C, bool, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, D, "Classic", simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, E, "DEVELOPER", simpleSymbol5);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, F, bool, simpleSymbol7), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(G));
        }
        Object obj = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol = o0;
        if (obj != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.DEVELOPER$Initialize);
        } else {
            addToFormEnvironment(symbol, this.DEVELOPER$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "DEVELOPER", "Initialize");
        } else {
            addToEvents(simpleSymbol, p0);
        }
        Object obj2 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol2 = q0;
        if (obj2 != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.DEVELOPER$BackPressed);
        } else {
            addToFormEnvironment(symbol2, this.DEVELOPER$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "DEVELOPER", "BackPressed");
        } else {
            addToEvents(simpleSymbol, r0);
        }
        this.Card_View1 = null;
        Object obj3 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj4 = t0;
        if (obj3 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, s0, obj4, u0), consumer);
        } else {
            addToComponents(simpleSymbol, L0, obj4, M0);
        }
        this.Spacer1 = null;
        Object obj5 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj6 = O0;
        if (obj5 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, N0, obj6, P0), consumer);
        } else {
            addToComponents(obj4, S0, obj6, T0);
        }
        this.LabelNAMAAPP = null;
        Object obj7 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj8 = X;
        if (obj7 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, U0, obj8, V0), consumer);
        } else {
            addToComponents(obj4, a1, obj8, b1);
        }
        this.Spacer2 = null;
        Object obj9 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj10 = d1;
        if (obj9 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, c1, obj10, e1), consumer);
        } else {
            addToComponents(obj4, f1, obj10, g1);
        }
        this.VERSI = null;
        Object obj11 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj12 = i0;
        if (obj11 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, h1, obj12, i1), consumer);
        } else {
            addToComponents(obj4, m1, obj12, n1);
        }
        this.Card_View2 = null;
        Object obj13 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj14 = H;
        if (obj13 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, o1, obj14, p1), consumer);
        } else {
            addToComponents(obj4, w1, obj14, x1);
        }
        this.Image1 = null;
        Object obj15 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj16 = m0;
        if (obj15 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj14, y1, obj16, z1), consumer);
        } else {
            addToComponents(obj14, A1, obj16, B1);
        }
        this.Spacer3 = null;
        Object obj17 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj18 = D1;
        if (obj17 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, C1, obj18, E1), consumer);
        } else {
            addToComponents(obj4, F1, obj18, G1);
        }
        this.Label1 = null;
        Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj20 = T;
        if (obj19 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, I1, obj20, J1), consumer);
        } else {
            addToComponents(obj4, L1, obj20, M1);
        }
        this.LabelDEV = null;
        Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj22 = e0;
        if (obj21 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj4, N1, obj22, O1), consumer);
        } else {
            addToComponents(obj4, Q1, obj22, R1);
        }
        this.Security1 = null;
        Object obj23 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj24 = Z;
        if (obj23 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, S1, obj24, bool), consumer);
        } else {
            addToComponents(simpleSymbol, T1, obj24, bool);
        }
        this.TaifunLockTask1 = null;
        Object obj25 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj26 = V1;
        if (obj25 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, U1, obj26, bool), consumer);
        } else {
            addToComponents(simpleSymbol, W1, obj26, bool);
        }
        this.Tiny_DBNAMAAPP = null;
        Object obj27 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj28 = b0;
        if (obj27 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, X1, obj28, Y1), consumer);
        } else {
            addToComponents(simpleSymbol, a2, obj28, b2);
        }
        this.Color_Utils1 = null;
        Object obj29 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj30 = J;
        if (obj29 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, c2, obj30, bool), consumer);
        } else {
            addToComponents(simpleSymbol, d2, obj30, bool);
        }
        this.Tiny_DBWARNA = null;
        Object obj31 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj32 = L;
        if (obj31 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, e2, obj32, f2), consumer);
        } else {
            addToComponents(simpleSymbol, g2, obj32, h2);
        }
        this.Tiny_DBDEV = null;
        Object obj33 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj34 = f0;
        if (obj33 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, i2, obj34, j2), consumer);
        } else {
            addToComponents(simpleSymbol, k2, obj34, l2);
        }
        runtime.initRuntime();
    }

    public Object DEVELOPER$Initialize() throws Throwable {
        runtime.setThisForm();
        Pair pairList2 = LList.list2("warna", "");
        PairWithPosition pairWithPosition = N;
        SimpleSymbol simpleSymbol = L;
        SimpleSymbol simpleSymbol2 = M;
        Pair pairList1 = LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, pairList2, pairWithPosition));
        PairWithPosition pairWithPosition2 = O;
        SimpleSymbol simpleSymbol3 = J;
        SimpleSymbol simpleSymbol4 = K;
        Object objCallComponentMethod = runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, pairList1, pairWithPosition2);
        SimpleSymbol simpleSymbol5 = H;
        SimpleSymbol simpleSymbol6 = I;
        SimpleSymbol simpleSymbol7 = f5383g;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol6, objCallComponentMethod, simpleSymbol7);
        Object objCallComponentMethod2 = runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list2("warna", ""), P)), Q);
        SimpleSymbol simpleSymbol8 = f5381a;
        runtime.setAndCoerceProperty$Ex(simpleSymbol8, n, objCallComponentMethod2, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol8, t, runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list2("warna", ""), R)), S), simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(T, U, runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list2("warna", ""), V)), W), simpleSymbol7);
        Pair pairList12 = LList.list1(runtime.callComponentMethod(b0, simpleSymbol2, LList.list2("nama", ""), c0));
        PairWithPosition pairWithPosition3 = d0;
        SimpleSymbol simpleSymbol9 = Z;
        SimpleSymbol simpleSymbol10 = a0;
        Object objCallComponentMethod3 = runtime.callComponentMethod(simpleSymbol9, simpleSymbol10, pairList12, pairWithPosition3);
        SimpleSymbol simpleSymbol11 = X;
        SimpleSymbol simpleSymbol12 = Y;
        SimpleSymbol simpleSymbol13 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol11, simpleSymbol12, objCallComponentMethod3, simpleSymbol13);
        runtime.setAndCoerceProperty$Ex(e0, simpleSymbol12, runtime.callComponentMethod(simpleSymbol9, simpleSymbol10, LList.list1(runtime.callComponentMethod(f0, simpleSymbol2, LList.list2("dev", ""), g0)), h0), simpleSymbol13);
        runtime.setAndCoerceProperty$Ex(i0, simpleSymbol12, runtime.callComponentMethod(simpleSymbol9, simpleSymbol10, LList.list1(runtime.callComponentMethod(simpleSymbol9, simpleSymbol10, LList.list1(runtime.callComponentMethod(simpleSymbol9, simpleSymbol10, LList.list1("Vm10V1UxVXdhMmROVkZaRlVXYzlQUT09"), j0)), k0)), l0), simpleSymbol13);
        return runtime.setAndCoerceProperty$Ex(m0, n0, "512.png", simpleSymbol13);
    }

    public Object DEVELOPER$BackPressed() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.close$Mnscreen;
        LList lList = LList.Empty;
        return runtime.callYailPrimitive(moduleMethod, lList, lList, "close screen");
    }

    public class frame extends ModuleBody {
        public DEVELOPER c;

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
                if (!(obj instanceof DEVELOPER)) {
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
                    if (!(obj instanceof DEVELOPER)) {
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
                if (!(obj instanceof DEVELOPER)) {
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
            if (!(obj instanceof DEVELOPER)) {
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
                    DEVELOPER developer = DEVELOPER.DEVELOPER;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    SimpleSymbol simpleSymbol = DEVELOPER.f5381a;
                    SimpleSymbol simpleSymbol2 = DEVELOPER.e;
                    IntNum intNum = DEVELOPER.f;
                    SimpleSymbol simpleSymbol3 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.h, DEVELOPER.i, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.j, DEVELOPER.k, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = DEVELOPER.l;
                    SimpleSymbol simpleSymbol5 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.n, DEVELOPER.o, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.p, "fade", simpleSymbol5);
                    Boolean bool = Boolean.TRUE;
                    SimpleSymbol simpleSymbol6 = DEVELOPER.q;
                    SimpleSymbol simpleSymbol7 = DEVELOPER.r;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.s, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.t, DEVELOPER.u, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.v, "zoom", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.w, "portrait", simpleSymbol5);
                    Boolean bool2 = Boolean.FALSE;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.x, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.y, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.z, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.A, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.B, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.C, bool2, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.D, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.E, "DEVELOPER", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, DEVELOPER.F, bool2, simpleSymbol7);
                case 21:
                    return this.c.DEVELOPER$Initialize();
                case 22:
                    return this.c.DEVELOPER$BackPressed();
                case 23:
                    SimpleSymbol simpleSymbol8 = DEVELOPER.t0;
                    SimpleSymbol simpleSymbol9 = DEVELOPER.h;
                    IntNum intNum2 = DEVELOPER.i;
                    SimpleSymbol simpleSymbol10 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.v0, Boolean.TRUE, DEVELOPER.r);
                    SimpleSymbol simpleSymbol11 = DEVELOPER.w0;
                    IntNum intNum3 = DEVELOPER.x0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, intNum3, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.y0, intNum3, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.z0, intNum3, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.A0, intNum3, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.B0, DEVELOPER.C0, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.D0, DEVELOPER.E0, simpleSymbol10);
                    SimpleSymbol simpleSymbol12 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol13 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol12, "0,0,0,0", simpleSymbol13);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.G0, "0,0,0,0", simpleSymbol13);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.H0, DEVELOPER.I0, simpleSymbol10);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, DEVELOPER.J0, DEVELOPER.K0, simpleSymbol10);
                case 24:
                    SimpleSymbol simpleSymbol14 = DEVELOPER.t0;
                    SimpleSymbol simpleSymbol15 = DEVELOPER.h;
                    IntNum intNum4 = DEVELOPER.i;
                    SimpleSymbol simpleSymbol16 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol15, intNum4, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.v0, Boolean.TRUE, DEVELOPER.r);
                    SimpleSymbol simpleSymbol17 = DEVELOPER.w0;
                    IntNum intNum5 = DEVELOPER.x0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol17, intNum5, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.y0, intNum5, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.z0, intNum5, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.A0, intNum5, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.B0, DEVELOPER.C0, simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.D0, DEVELOPER.E0, simpleSymbol16);
                    SimpleSymbol simpleSymbol18 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol19 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol18, "0,0,0,0", simpleSymbol19);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.G0, "0,0,0,0", simpleSymbol19);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.H0, DEVELOPER.I0, simpleSymbol16);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol14, DEVELOPER.J0, DEVELOPER.K0, simpleSymbol16);
                case 25:
                    SimpleSymbol simpleSymbol20 = DEVELOPER.O0;
                    SimpleSymbol simpleSymbol21 = DEVELOPER.D0;
                    IntNum intNum6 = DEVELOPER.Q0;
                    SimpleSymbol simpleSymbol22 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, simpleSymbol21, intNum6, simpleSymbol22);
                    SimpleSymbol simpleSymbol23 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol24 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, simpleSymbol23, "0,0,0,0", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol20, DEVELOPER.G0, "0,0,0,0", simpleSymbol24);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol20, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol22);
                case 26:
                    SimpleSymbol simpleSymbol25 = DEVELOPER.O0;
                    SimpleSymbol simpleSymbol26 = DEVELOPER.D0;
                    IntNum intNum7 = DEVELOPER.Q0;
                    SimpleSymbol simpleSymbol27 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, simpleSymbol26, intNum7, simpleSymbol27);
                    SimpleSymbol simpleSymbol28 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol29 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, simpleSymbol28, "0,0,0,0", simpleSymbol29);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol25, DEVELOPER.G0, "0,0,0,0", simpleSymbol29);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol25, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol27);
                case 27:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol30 = DEVELOPER.r;
                    SimpleSymbol simpleSymbol31 = DEVELOPER.X;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol31, DEVELOPER.W0, bool3, simpleSymbol30);
                    SimpleSymbol simpleSymbol32 = DEVELOPER.X0;
                    SimpleSymbol simpleSymbol33 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol31, simpleSymbol32, "1", simpleSymbol33);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol31, DEVELOPER.F0, "0,0,0,0", simpleSymbol33);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol31, DEVELOPER.G0, "0,0,0,0", simpleSymbol33);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol31, DEVELOPER.Y, "CBT RDEV EXAM", simpleSymbol33);
                    SimpleSymbol simpleSymbol34 = DEVELOPER.Y0;
                    IntNum intNum8 = DEVELOPER.Z0;
                    SimpleSymbol simpleSymbol35 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol31, simpleSymbol34, intNum8, simpleSymbol35);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol31, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol35);
                case 28:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol36 = DEVELOPER.r;
                    SimpleSymbol simpleSymbol37 = DEVELOPER.X;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol37, DEVELOPER.W0, bool4, simpleSymbol36);
                    SimpleSymbol simpleSymbol38 = DEVELOPER.X0;
                    SimpleSymbol simpleSymbol39 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol37, simpleSymbol38, "1", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol37, DEVELOPER.F0, "0,0,0,0", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol37, DEVELOPER.G0, "0,0,0,0", simpleSymbol39);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol37, DEVELOPER.Y, "CBT RDEV EXAM", simpleSymbol39);
                    SimpleSymbol simpleSymbol40 = DEVELOPER.Y0;
                    IntNum intNum9 = DEVELOPER.Z0;
                    SimpleSymbol simpleSymbol41 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol37, simpleSymbol40, intNum9, simpleSymbol41);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol37, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol41);
                case 29:
                    SimpleSymbol simpleSymbol42 = DEVELOPER.d1;
                    SimpleSymbol simpleSymbol43 = DEVELOPER.D0;
                    IntNum intNum10 = DEVELOPER.i;
                    SimpleSymbol simpleSymbol44 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol43, intNum10, simpleSymbol44);
                    SimpleSymbol simpleSymbol45 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol46 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol45, "0,0,0,0", simpleSymbol46);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, DEVELOPER.G0, "0,0,0,0", simpleSymbol46);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol42, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol44);
                case 30:
                    SimpleSymbol simpleSymbol47 = DEVELOPER.d1;
                    SimpleSymbol simpleSymbol48 = DEVELOPER.D0;
                    IntNum intNum11 = DEVELOPER.i;
                    SimpleSymbol simpleSymbol49 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, simpleSymbol48, intNum11, simpleSymbol49);
                    SimpleSymbol simpleSymbol50 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol51 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, simpleSymbol50, "0,0,0,0", simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol47, DEVELOPER.G0, "0,0,0,0", simpleSymbol51);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol47, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol49);
                case 31:
                    SimpleSymbol simpleSymbol52 = DEVELOPER.i0;
                    SimpleSymbol simpleSymbol53 = DEVELOPER.j1;
                    IntNum intNum12 = DEVELOPER.k1;
                    SimpleSymbol simpleSymbol54 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol53, intNum12, simpleSymbol54);
                    SimpleSymbol simpleSymbol55 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol56 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, simpleSymbol55, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, DEVELOPER.G0, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, DEVELOPER.Y0, DEVELOPER.Z0, simpleSymbol54);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol52, DEVELOPER.U, DEVELOPER.l1, simpleSymbol54);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol52, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol54);
                case 32:
                    SimpleSymbol simpleSymbol57 = DEVELOPER.i0;
                    SimpleSymbol simpleSymbol58 = DEVELOPER.j1;
                    IntNum intNum13 = DEVELOPER.k1;
                    SimpleSymbol simpleSymbol59 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, simpleSymbol58, intNum13, simpleSymbol59);
                    SimpleSymbol simpleSymbol60 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol61 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, simpleSymbol60, "0,0,0,0", simpleSymbol61);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, DEVELOPER.G0, "0,0,0,0", simpleSymbol61);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, DEVELOPER.Y0, DEVELOPER.Z0, simpleSymbol59);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol57, DEVELOPER.U, DEVELOPER.l1, simpleSymbol59);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol57, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol59);
                case 33:
                    SimpleSymbol simpleSymbol62 = DEVELOPER.H;
                    SimpleSymbol simpleSymbol63 = DEVELOPER.h;
                    IntNum intNum14 = DEVELOPER.i;
                    SimpleSymbol simpleSymbol64 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol63, intNum14, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.j, DEVELOPER.k, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.v0, Boolean.TRUE, DEVELOPER.r);
                    SimpleSymbol simpleSymbol65 = DEVELOPER.w0;
                    IntNum intNum15 = DEVELOPER.q1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol65, intNum15, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.y0, intNum15, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.z0, intNum15, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.A0, intNum15, simpleSymbol64);
                    SimpleSymbol simpleSymbol66 = DEVELOPER.B0;
                    IntNum intNum16 = DEVELOPER.r1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol66, intNum16, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.D0, DEVELOPER.s1, simpleSymbol64);
                    SimpleSymbol simpleSymbol67 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol68 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, simpleSymbol67, "0,0,0,0", simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.G0, "0,0,0,0", simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.H0, DEVELOPER.I0, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.I, DEVELOPER.t1, simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.u1, intNum16, simpleSymbol64);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol62, DEVELOPER.J0, DEVELOPER.v1, simpleSymbol64);
                case 34:
                    SimpleSymbol simpleSymbol69 = DEVELOPER.H;
                    SimpleSymbol simpleSymbol70 = DEVELOPER.h;
                    IntNum intNum17 = DEVELOPER.i;
                    SimpleSymbol simpleSymbol71 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol70, intNum17, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.j, DEVELOPER.k, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.v0, Boolean.TRUE, DEVELOPER.r);
                    SimpleSymbol simpleSymbol72 = DEVELOPER.w0;
                    IntNum intNum18 = DEVELOPER.q1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol72, intNum18, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.y0, intNum18, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.z0, intNum18, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.A0, intNum18, simpleSymbol71);
                    SimpleSymbol simpleSymbol73 = DEVELOPER.B0;
                    IntNum intNum19 = DEVELOPER.r1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol73, intNum19, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.D0, DEVELOPER.s1, simpleSymbol71);
                    SimpleSymbol simpleSymbol74 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol75 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol74, "0,0,0,0", simpleSymbol75);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.G0, "0,0,0,0", simpleSymbol75);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.H0, DEVELOPER.I0, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.I, DEVELOPER.t1, simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.u1, intNum19, simpleSymbol71);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol69, DEVELOPER.J0, DEVELOPER.v1, simpleSymbol71);
                case 35:
                    SimpleSymbol simpleSymbol76 = DEVELOPER.m0;
                    SimpleSymbol simpleSymbol77 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol78 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol76, simpleSymbol77, "0,0,0,0", simpleSymbol78);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol76, DEVELOPER.G0, "0,0,0,0", simpleSymbol78);
                case 36:
                    SimpleSymbol simpleSymbol79 = DEVELOPER.m0;
                    SimpleSymbol simpleSymbol80 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol81 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol80, "0,0,0,0", simpleSymbol81);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol79, DEVELOPER.G0, "0,0,0,0", simpleSymbol81);
                case 37:
                    SimpleSymbol simpleSymbol82 = DEVELOPER.D1;
                    SimpleSymbol simpleSymbol83 = DEVELOPER.D0;
                    IntNum intNum20 = DEVELOPER.C0;
                    SimpleSymbol simpleSymbol84 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, simpleSymbol83, intNum20, simpleSymbol84);
                    SimpleSymbol simpleSymbol85 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol86 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, simpleSymbol85, "0,0,0,0", simpleSymbol86);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, DEVELOPER.G0, "0,0,0,0", simpleSymbol86);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol82, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol84);
                case 38:
                    SimpleSymbol simpleSymbol87 = DEVELOPER.D1;
                    SimpleSymbol simpleSymbol88 = DEVELOPER.D0;
                    IntNum intNum21 = DEVELOPER.C0;
                    SimpleSymbol simpleSymbol89 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol87, simpleSymbol88, intNum21, simpleSymbol89);
                    SimpleSymbol simpleSymbol90 = DEVELOPER.F0;
                    SimpleSymbol simpleSymbol91 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol87, simpleSymbol90, "0,0,0,0", simpleSymbol91);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol87, DEVELOPER.G0, "0,0,0,0", simpleSymbol91);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol87, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol89);
                case 39:
                    Boolean bool5 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol92 = DEVELOPER.r;
                    SimpleSymbol simpleSymbol93 = DEVELOPER.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, DEVELOPER.W0, bool5, simpleSymbol92);
                    SimpleSymbol simpleSymbol94 = DEVELOPER.X0;
                    SimpleSymbol simpleSymbol95 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, simpleSymbol94, "1", simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, DEVELOPER.F0, "0,0,0,0", simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, DEVELOPER.G0, "0,0,0,0", simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, DEVELOPER.Y, "DEVELOPER", simpleSymbol95);
                    SimpleSymbol simpleSymbol96 = DEVELOPER.Y0;
                    IntNum intNum22 = DEVELOPER.Z0;
                    SimpleSymbol simpleSymbol97 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, simpleSymbol96, intNum22, simpleSymbol97);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, DEVELOPER.U, DEVELOPER.K1, simpleSymbol97);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol93, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol97);
                case 40:
                    Boolean bool6 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol98 = DEVELOPER.r;
                    SimpleSymbol simpleSymbol99 = DEVELOPER.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, DEVELOPER.W0, bool6, simpleSymbol98);
                    SimpleSymbol simpleSymbol100 = DEVELOPER.X0;
                    SimpleSymbol simpleSymbol101 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, simpleSymbol100, "1", simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, DEVELOPER.F0, "0,0,0,0", simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, DEVELOPER.G0, "0,0,0,0", simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, DEVELOPER.Y, "DEVELOPER", simpleSymbol101);
                    SimpleSymbol simpleSymbol102 = DEVELOPER.Y0;
                    IntNum intNum23 = DEVELOPER.Z0;
                    SimpleSymbol simpleSymbol103 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, simpleSymbol102, intNum23, simpleSymbol103);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, DEVELOPER.U, DEVELOPER.K1, simpleSymbol103);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol99, DEVELOPER.J0, DEVELOPER.R0, simpleSymbol103);
                case 41:
                    Boolean bool7 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol104 = DEVELOPER.r;
                    SimpleSymbol simpleSymbol105 = DEVELOPER.e0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, DEVELOPER.W0, bool7, simpleSymbol104);
                    SimpleSymbol simpleSymbol106 = DEVELOPER.j1;
                    IntNum intNum24 = DEVELOPER.P1;
                    SimpleSymbol simpleSymbol107 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, simpleSymbol106, intNum24, simpleSymbol107);
                    SimpleSymbol simpleSymbol108 = DEVELOPER.X0;
                    SimpleSymbol simpleSymbol109 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, simpleSymbol108, "1", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, DEVELOPER.F0, "0,0,0,0", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, DEVELOPER.G0, "0,0,0,0", simpleSymbol109);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol105, DEVELOPER.Y0, DEVELOPER.Z0, simpleSymbol107);
                case 42:
                    Boolean bool8 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol110 = DEVELOPER.r;
                    SimpleSymbol simpleSymbol111 = DEVELOPER.e0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, DEVELOPER.W0, bool8, simpleSymbol110);
                    SimpleSymbol simpleSymbol112 = DEVELOPER.j1;
                    IntNum intNum25 = DEVELOPER.P1;
                    SimpleSymbol simpleSymbol113 = DEVELOPER.f5383g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, simpleSymbol112, intNum25, simpleSymbol113);
                    SimpleSymbol simpleSymbol114 = DEVELOPER.X0;
                    SimpleSymbol simpleSymbol115 = DEVELOPER.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, simpleSymbol114, "1", simpleSymbol115);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, DEVELOPER.F0, "0,0,0,0", simpleSymbol115);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, DEVELOPER.G0, "0,0,0,0", simpleSymbol115);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol111, DEVELOPER.Y0, DEVELOPER.Z0, simpleSymbol113);
                case 43:
                    return runtime.setAndCoerceProperty$Ex(DEVELOPER.b0, DEVELOPER.Z1, "Tiny_DBNAMAAPP", DEVELOPER.m);
                case 44:
                    return runtime.setAndCoerceProperty$Ex(DEVELOPER.b0, DEVELOPER.Z1, "Tiny_DBNAMAAPP", DEVELOPER.m);
                case 45:
                    return runtime.setAndCoerceProperty$Ex(DEVELOPER.L, DEVELOPER.Z1, "Tiny_DBWARNA", DEVELOPER.m);
                case 46:
                    return runtime.setAndCoerceProperty$Ex(DEVELOPER.L, DEVELOPER.Z1, "Tiny_DBWARNA", DEVELOPER.m);
                case 47:
                    return runtime.setAndCoerceProperty$Ex(DEVELOPER.f0, DEVELOPER.Z1, "Tiny_DBDEV", DEVELOPER.m);
                case 48:
                    return runtime.setAndCoerceProperty$Ex(DEVELOPER.f0, DEVELOPER.Z1, "Tiny_DBDEV", DEVELOPER.m);
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
                case 46:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 47:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 48:
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
        int i3 = 1 & ((environment == null ? 1 : 0) + 1);
        return (i3 == 0 ? i3 == 0 : !environment.isBound(symbol)) ? obj : this.form$Mnenvironment.get(symbol);
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5382b));
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
            } catch (PermissionException e3) {
                e3.printStackTrace();
                boolean z3 = this == component;
                if (!z3 ? z3 : IsEqual.apply(str2, "PermissionNeeded")) {
                    processException(e3);
                    return false;
                }
                PermissionDenied(component, str2, e3.getPermissionNeeded());
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
    public void dispatchGenericEvent(Component component, String str, boolean z3, Object[] objArr) throws Throwable {
        Object objLookupInFormEnvironment = lookupInFormEnvironment(misc.string$To$Symbol(strings.stringAppend("any$", getSimpleName(component), "$", str)));
        Object obj = Boolean.FALSE;
        if (objLookupInFormEnvironment != obj) {
            try {
                Apply apply = Scheme.apply;
                if (z3) {
                    obj = Boolean.TRUE;
                }
                apply.apply2(objLookupInFormEnvironment, lists.cons(component, lists.cons(obj, LList.makeList(objArr, 0))));
            } catch (PermissionException e3) {
                e3.printStackTrace();
                boolean z4 = this == component;
                if (!z4 ? z4 : IsEqual.apply(str, "PermissionNeeded")) {
                    processException(e3);
                } else {
                    PermissionDenied(component, str, e3.getPermissionNeeded());
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
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "symbol->string", 1, car);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "arg0", -2, objMakeList);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "string->symbol", 1, objApply2);
        }
    }

    @Override // com.google.appinventor.components.runtime.Form
    public void $define() throws Throwable {
        Language.setDefaults(Scheme.getInstance());
        try {
            run();
        } catch (Exception e3) {
            androidLogForm(e3.getMessage());
            processException(e3);
        }
        DEVELOPER = this;
        addToFormEnvironment(f5381a, this);
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
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "arg0", -2, cdr);
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
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "arg0", -2, objReverse2);
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
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "add-to-form-environment", 0, objApply13);
                        }
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "lookup-in-form-environment", 0, objApply15);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "arg0", -2, cdr2);
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
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "add-to-global-var-environment", 0, objApply16);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "arg0", -2, objReverse3);
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
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "arg0", -2, cdr3);
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
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "arg0", -2, objReverse);
                }
            }
        } catch (YailRuntimeError e13) {
            processException(e13);
        }
    }
}
