package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.runtime.Component;
import com.google.youngandroid.a;
import gnu.expr.Keyword;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.models.Paintable;
import gnu.kawa.models.WithTransform;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.kawa.swingviews.SwingDisplay;
import gnu.kawa.swingviews.SwingPaintable;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.WrongType;
import gnu.math.Complex;
import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Dimension;
import java.awt.Shape;
import java.awt.event.ActionListener;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JScrollPane;
import kawa.lib.numbers;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class swing extends ModuleBody {
    public static final swing $instance;
    public static final Location Button;
    public static final Location Column;
    public static final Location Image;
    public static final Location Label;
    static final SimpleSymbol Lit0;
    static final Keyword Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final Keyword Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final Keyword Lit3;
    static final Keyword Lit4;
    static final Keyword Lit5;
    static final Keyword Lit6;
    static final Keyword Lit7;
    static final Keyword Lit8;
    static final SimpleSymbol Lit9;
    public static final Location Row;
    public static final Location Text;
    public static final Location Window;
    public static final Location button;
    public static final Color color$Mnred = null;
    public static final ModuleMethod composite$Mnsrc;
    public static final ModuleMethod composite$Mnsrc$Mnover;
    public static final ModuleMethod draw;
    public static final ModuleMethod fill;
    public static final Location image$Mnheight;
    public static final Location image$Mnread;
    public static final Location image$Mnwidth;
    static final Location loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr;
    static final Location loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr;
    static final Location loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr;
    static final Location loc$gnu$Dtkawa$Dtmodels$DtWithComposite;
    public static final ModuleMethod make$Mnaction$Mnlistener;
    public static final ModuleMethod menu;
    public static final ModuleMethod menubar;
    public static final ModuleMethod menuitem;
    public static final ModuleMethod polygon;
    public static final ModuleMethod rotation;
    public static final Location run$Mnapplication;
    public static final ModuleMethod scroll;
    public static final Location set$Mncontent;
    public static final ModuleMethod with$Mncomposite;
    public static final ModuleMethod with$Mnpaint;
    public static final ModuleMethod with$Mntransform;

    public swing() {
        ModuleInfo.register(this);
    }

    public static Composite compositeSrc() {
        return compositeSrc(1.0f);
    }

    public static Composite compositeSrcOver() {
        return compositeSrcOver(1.0f);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        color$Mnred = Color.red;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("scroll");
        Lit26 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("polygon");
        Lit25 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("menuitem");
        Lit24 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("menu");
        Lit23 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("menubar");
        Lit22 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("with-transform");
        Lit21 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("rotation");
        Lit20 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("composite-src");
        Lit19 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("composite-src-over");
        Lit18 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("with-composite");
        Lit17 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("with-paint");
        Lit16 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("draw");
        Lit15 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("fill");
        Lit14 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("make-action-listener");
        Lit13 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("gnu.kawa.models.WithComposite");
        Lit12 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("<gnu.kawa.models.WithPaint>");
        Lit11 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("<gnu.kawa.models.DrawShape>");
        Lit10 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("<gnu.kawa.models.FillShape>");
        Lit9 = simpleSymbol18;
        Lit8 = Keyword.make("h");
        Lit7 = Keyword.make("w");
        Lit6 = Keyword.make("accesskey");
        Lit5 = Keyword.make("disabled");
        Lit4 = Keyword.make("oncommand");
        Lit3 = Keyword.make("default");
        Lit2 = Keyword.make("image");
        Lit1 = Keyword.make("label");
        Lit0 = (SimpleSymbol) a.f("make");
        swing swingVar = new swing();
        $instance = swingVar;
        loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr = ThreadLocation.getInstance(simpleSymbol18, null);
        loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr = ThreadLocation.getInstance(simpleSymbol17, null);
        loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr = ThreadLocation.getInstance(simpleSymbol16, null);
        loc$gnu$Dtkawa$Dtmodels$DtWithComposite = ThreadLocation.getInstance(simpleSymbol15, null);
        button = StaticFieldLocation.make("gnu.kawa.slib.gui", "button");
        Button = StaticFieldLocation.make("gnu.kawa.slib.gui", "Button");
        Image = StaticFieldLocation.make("gnu.kawa.slib.gui", Component.LISTVIEW_KEY_IMAGE);
        image$Mnread = StaticFieldLocation.make("gnu.kawa.slib.gui", "image$Mnread");
        image$Mnwidth = StaticFieldLocation.make("gnu.kawa.slib.gui", "image$Mnwidth");
        image$Mnheight = StaticFieldLocation.make("gnu.kawa.slib.gui", "image$Mnheight");
        Label = StaticFieldLocation.make("gnu.kawa.slib.gui", "Label");
        Text = StaticFieldLocation.make("gnu.kawa.slib.gui", "Text");
        Row = StaticFieldLocation.make("gnu.kawa.slib.gui", "Row");
        Column = StaticFieldLocation.make("gnu.kawa.slib.gui", "Column");
        set$Mncontent = StaticFieldLocation.make("gnu.kawa.slib.gui", "set$Mncontent");
        Window = StaticFieldLocation.make("gnu.kawa.slib.gui", "Window");
        run$Mnapplication = StaticFieldLocation.make("gnu.kawa.slib.gui", "run$Mnapplication");
        make$Mnaction$Mnlistener = new ModuleMethod(swingVar, 1, simpleSymbol14, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        fill = new ModuleMethod(swingVar, 2, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        draw = new ModuleMethod(swingVar, 3, simpleSymbol12, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        with$Mnpaint = new ModuleMethod(swingVar, 4, simpleSymbol11, 8194);
        with$Mncomposite = new ModuleMethod(swingVar, 5, simpleSymbol10, -4096);
        composite$Mnsrc$Mnover = new ModuleMethod(swingVar, 6, simpleSymbol9, 4096);
        composite$Mnsrc = new ModuleMethod(swingVar, 8, simpleSymbol8, 4096);
        rotation = new ModuleMethod(swingVar, 10, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        with$Mntransform = new ModuleMethod(swingVar, 11, simpleSymbol6, 8194);
        menubar = new ModuleMethod(swingVar, 12, simpleSymbol5, -4096);
        menu = new ModuleMethod(swingVar, 13, simpleSymbol4, -4096);
        menuitem = new ModuleMethod(swingVar, 14, simpleSymbol3, -4096);
        polygon = new ModuleMethod(swingVar, 15, simpleSymbol2, -4095);
        scroll = new ModuleMethod(swingVar, 16, simpleSymbol, -4095);
        swingVar.run();
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
            if (!(obj instanceof Shape)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 3) {
            if (!(obj instanceof Shape)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 6) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 8) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 10) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static ActionListener makeActionListener(Object obj) {
        return SwingDisplay.makeActionListener(obj);
    }

    public static Paintable fill(Shape shape) {
        try {
            return (Paintable) Invoke.make.apply2(loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr.get(), shape);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm", 19, 9);
            throw e;
        }
    }

    public static Paintable draw(Shape shape) {
        try {
            return (Paintable) Invoke.make.apply2(loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr.get(), shape);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm", 22, 9);
            throw e;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 4) {
            if (!(obj instanceof Color)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Paintable)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 11) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof AffineTransform)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Paintable)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Object withPaint(Color color, Paintable paintable) {
        try {
            return Invoke.make.apply3(loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr.get(), paintable, color);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm", 26, 10);
            throw e;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 5) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        switch (i) {
            case 12:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 13:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 14:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 15:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 16:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            default:
                return super.matchN(moduleMethod, objArr, callContext);
        }
    }

    public static Object withComposite(Object... objArr) {
        try {
            return Scheme.applyToArgs.apply2(GetNamedPart.getNamedPart.apply2(loc$gnu$Dtkawa$Dtmodels$DtWithComposite.get(), Lit0), objArr);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm", 29, 4);
            throw e;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 6) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i != 8) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static Composite compositeSrcOver(float f) {
        return AlphaComposite.getInstance(AlphaComposite.SRC_OVER, f);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        int i = moduleMethod.selector;
        if (i != 6) {
            return i != 8 ? super.apply0(moduleMethod) : compositeSrc();
        }
        return compositeSrcOver();
    }

    public static Composite compositeSrc(float f) {
        return AlphaComposite.getInstance(AlphaComposite.SRC, f);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return makeActionListener(obj);
        }
        if (i == 2) {
            try {
                return fill((Shape) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "fill", 1, obj);
            }
        }
        if (i == 3) {
            try {
                return draw((Shape) obj);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "draw", 1, obj);
            }
        }
        if (i == 6) {
            try {
                return compositeSrcOver(((Number) obj).floatValue());
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "composite-src-over", 1, obj);
            }
        }
        if (i == 8) {
            try {
                return compositeSrc(((Number) obj).floatValue());
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "composite-src", 1, obj);
            }
        }
        if (i != 10) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            return rotation(((Number) obj).doubleValue());
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "rotation", 1, obj);
        }
    }

    public static AffineTransform rotation(double d) {
        return AffineTransform.getRotateInstance(d);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 4) {
            try {
                try {
                    return withPaint((Color) obj, (Paintable) obj2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "with-paint", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "with-paint", 1, obj);
            }
        }
        if (i != 11) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                return withTransform((AffineTransform) obj, (Paintable) obj2);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "with-transform", 2, obj2);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "with-transform", 1, obj);
        }
    }

    public static WithTransform withTransform(AffineTransform affineTransform, Paintable paintable) {
        return new WithTransform(paintable, affineTransform);
    }

    public static JMenuBar menubar(Object... objArr) {
        JMenuBar jMenuBar = new JMenuBar();
        for (Object obj : objArr) {
            jMenuBar.add((JMenu) obj);
        }
        return jMenuBar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static javax.swing.JMenu menu(java.lang.Object... r6) {
        /*
            javax.swing.JMenu r0 = new javax.swing.JMenu
            r0.<init>()
            int r1 = r6.length
            r2 = 0
            r3 = 0
        L8:
            if (r3 >= r1) goto L36
            r4 = r6[r3]
            gnu.expr.Keyword r5 = gnu.kawa.slib.swing.Lit1
            if (r4 != r5) goto L12
            r5 = 1
            goto L13
        L12:
            r5 = 0
        L13:
            if (r5 == 0) goto L1a
            int r5 = r3 + 1
            if (r5 >= r1) goto L2e
            goto L1c
        L1a:
            if (r5 == 0) goto L2e
        L1c:
            int r4 = r3 + 1
            r4 = r6[r4]
            if (r4 != 0) goto L24
            r4 = 0
            goto L28
        L24:
            java.lang.String r4 = r4.toString()
        L28:
            r0.setText(r4)
            int r3 = r3 + 2
            goto L8
        L2e:
            javax.swing.JMenuItem r4 = (javax.swing.JMenuItem) r4
            r0.add(r4)
            int r3 = r3 + 1
            goto L8
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.swing.menu(java.lang.Object[]):javax.swing.JMenu");
    }

    public static JMenuItem menuitem$V(Object[] objArr) {
        Object objSearchForKeyword = Keyword.searchForKeyword(objArr, 0, Lit1, null);
        String string = objSearchForKeyword == null ? null : objSearchForKeyword.toString();
        Keyword.searchForKeyword(objArr, 0, Lit2, null);
        Keyword.searchForKeyword(objArr, 0, Lit3, null);
        Object objSearchForKeyword2 = Keyword.searchForKeyword(objArr, 0, Lit4, null);
        Keyword keyword = Lit5;
        Boolean bool = Boolean.FALSE;
        Object objSearchForKeyword3 = Keyword.searchForKeyword(objArr, 0, keyword, bool);
        Keyword.searchForKeyword(objArr, 0, Lit6, null);
        JMenuItem jMenuItem = new JMenuItem();
        if (objSearchForKeyword3 != bool) {
            jMenuItem.setEnabled(false);
        }
        if (string != null) {
            jMenuItem.setText(string);
        }
        if (objSearchForKeyword2 != null) {
            jMenuItem.addActionListener(makeActionListener(objSearchForKeyword2));
        }
        return jMenuItem;
    }

    public static Object polygon(Complex complex, Object... objArr) {
        GeneralPath generalPath = new GeneralPath();
        generalPath.moveTo(numbers.realPart(complex).doubleValue(), numbers.imagPart(complex).doubleValue());
        for (Object obj : objArr) {
            try {
                Complex complex2 = (Complex) obj;
                generalPath.lineTo(numbers.realPart(complex2).doubleValue(), numbers.imagPart(complex2).doubleValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "pt", -2, obj);
            }
        }
        generalPath.closePath();
        return generalPath;
    }

    public static JScrollPane scroll$V(Object obj, Object[] objArr) {
        Keyword keyword = Lit7;
        Boolean bool = Boolean.FALSE;
        Object objSearchForKeyword = Keyword.searchForKeyword(objArr, 0, keyword, bool);
        Object objSearchForKeyword2 = Keyword.searchForKeyword(objArr, 0, Lit8, bool);
        if (obj instanceof Paintable) {
            try {
                obj = new SwingPaintable((Paintable) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.kawa.swingviews.SwingPaintable.<init>(gnu.kawa.models.Paintable)", 1, obj);
            }
        }
        try {
            JScrollPane jScrollPane = new JScrollPane((java.awt.Component) obj);
            try {
                try {
                    jScrollPane.setPreferredSize(new Dimension(((Number) objSearchForKeyword).intValue(), ((Number) objSearchForKeyword2).intValue()));
                    return jScrollPane;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "java.awt.Dimension.<init>(int,int)", 2, objSearchForKeyword2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "java.awt.Dimension.<init>(int,int)", 1, objSearchForKeyword);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "javax.swing.JScrollPane.<init>(java.awt.Component)", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 5) {
            return withComposite(objArr);
        }
        switch (i) {
            case 12:
                return menubar(objArr);
            case 13:
                return menu(objArr);
            case 14:
                return menuitem$V(objArr);
            case 15:
                Object obj = objArr[0];
                try {
                    Complex complex = (Complex) obj;
                    int length = objArr.length - 1;
                    Object[] objArr2 = new Object[length];
                    while (true) {
                        int i2 = length - 1;
                        if (i2 < 0) {
                            return polygon(complex, objArr2);
                        }
                        objArr2[i2] = objArr[length];
                        length = i2;
                    }
                } catch (ClassCastException e) {
                    throw new WrongType(e, "polygon", 1, obj);
                }
            case 16:
                Object obj2 = objArr[0];
                int length2 = objArr.length - 1;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    int i3 = length2 - 1;
                    if (i3 < 0) {
                        return scroll$V(obj2, objArr3);
                    }
                    objArr3[i3] = objArr[length2];
                    length2 = i3;
                }
            default:
                return super.applyN(moduleMethod, objArr);
        }
    }
}
