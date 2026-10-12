package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.Component;
import com.google.youngandroid.a;
import gnu.expr.Keyword;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.models.Box;
import gnu.kawa.models.Button;
import gnu.kawa.models.Display;
import gnu.kawa.models.Label;
import gnu.kawa.models.Model;
import gnu.kawa.models.Text;
import gnu.kawa.models.Window;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.xml.KAttr;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Path;
import java.awt.Color;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lib.misc;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class gui extends ModuleBody {
    public static final gui $instance;
    public static final ModuleMethod Button;
    public static final ModuleMethod Column;
    public static final Macro Image;
    public static final ModuleMethod Label;
    static final Class Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SyntaxRules Lit13;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SyntaxRules Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit29;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit31;
    static final SimpleSymbol Lit32;
    static final SimpleSymbol Lit33;
    static final SimpleSymbol Lit34;
    static final SimpleSymbol Lit35;
    static final SimpleSymbol Lit36;
    static final SimpleSymbol Lit37;
    static final SimpleSymbol Lit38;
    static final SimpleSymbol Lit39;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit40;
    static final SimpleSymbol Lit41;
    static final SimpleSymbol Lit42;
    static final SimpleSymbol Lit43;
    static final IntNum Lit44;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SyntaxRules Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod Row;
    public static final ModuleMethod Text;
    public static final ModuleMethod Window;
    public static final ModuleMethod as$Mncolor;
    public static final ModuleMethod button;
    public static final ModuleMethod image$Mnheight;
    public static final ModuleMethod image$Mnread;
    public static final ModuleMethod image$Mnwidth;
    static final Location loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr;
    static final Location loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr;
    static final Location loc$$St$DtgetHeight;
    static final Location loc$$St$DtgetWidth;
    public static final Macro process$Mnkeywords;
    public static final Macro run$Mnapplication;
    public static final ModuleMethod set$Mncontent;

    static {
        IntNum intNumMake = IntNum.make(1);
        Lit44 = intNumMake;
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("value");
        Lit43 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("name");
        Lit42 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("invoke");
        Lit41 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("getName");
        Lit40 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit39 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("attr");
        Lit38 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("<gnu.kawa.xml.KAttr>");
        Lit37 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f(GetNamedPart.INSTANCEOF_METHOD_NAME);
        Lit36 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("+");
        Lit35 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("loop");
        Lit34 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("<object>");
        Lit33 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("primitive-array-get");
        Lit32 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit31 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("$lookup$");
        Lit30 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("arg");
        Lit29 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("num-args");
        Lit28 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("i");
        Lit27 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("<int>");
        Lit26 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("::");
        Lit25 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("run-application");
        Lit23 = simpleSymbol20;
        Object[] objArr = {simpleSymbol20};
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1);
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("gnu.kawa.models.Window");
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("open");
        LList lList = LList.Empty;
        SyntaxRules syntaxRules = new SyntaxRules(objArr, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001", "\u0011\u0018\u0004\b\u0003", new Object[]{PairWithPosition.make(simpleSymbol14, a.c(simpleSymbol22, lList, simpleSymbol13, lList, simpleSymbol21), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 749575)}, 0)}, 1);
        Lit24 = syntaxRules;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("Window");
        Lit22 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("set-content");
        Lit21 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("Column");
        Lit20 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("Row");
        Lit19 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("Text");
        Lit18 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("Label");
        Lit17 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("image-height");
        Lit16 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("image-width");
        Lit15 = simpleSymbol30;
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("image-read");
        Lit14 = simpleSymbol31;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{(SimpleSymbol) a.f("text-field")}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\u0003", new Object[0], 1), "\u0000", "\u0011\u0018\u0004\u0011\u0018\f\u0002", new Object[]{(SimpleSymbol) a.f("make"), (SimpleSymbol) a.f("<gnu.kawa.models.DrawImage>")}, 0)}, 1);
        Lit13 = syntaxRules2;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f(Component.LISTVIEW_KEY_IMAGE);
        Lit12 = simpleSymbol32;
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("Button");
        Lit11 = simpleSymbol33;
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("button");
        Lit10 = simpleSymbol34;
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("as-color");
        Lit9 = simpleSymbol35;
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("process-keywords");
        Lit7 = simpleSymbol36;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol36}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\u0091\b\u0011\u0018\f\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$\t\u000b\u0018,\b\u0011\u0018\u0004\u0011\u00184\u0011\u0018<\b\u0011\u0018D\u0011\u0018L\b\u0011\u0018\u0004a\b\u0011\u0018T\b\u0011\u0018\\\t\u000b\u0018d\b\u0011\u0018l©\u0011\u0018ty\t\u0013\t\u0003\u0011\u0018|\b\u0011\u0018\u0084\t\u000b\u0018\u008c\u0018\u0094\u0099\u0011\u0018\u009ci\u0011\u0018¤\u0011\u0018¬\b\t\u0013\t\u0003\u0018´\u0018¼\b\u0011\u0018Ä1\t\u001b\t\u0003\u0018Ì\u0018Ô", new Object[]{(SimpleSymbol) a.f("let"), simpleSymbol16, simpleSymbol19, simpleSymbol18, (SimpleSymbol) a.f("field"), PairWithPosition.make(PairWithPosition.make(simpleSymbol5, PairWithPosition.make((SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_LENGTH), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 16426), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 16426), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 16425), simpleSymbol10, PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(simpleSymbol19, PairWithPosition.make(simpleSymbol18, PairWithPosition.make(IntNum.make(0), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 20509), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 20503), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 20500), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 20497), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 20496), (SimpleSymbol) a.f("if"), PairWithPosition.make((SimpleSymbol) a.f("<"), PairWithPosition.make(simpleSymbol17, PairWithPosition.make(simpleSymbol16, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 24593), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 24591), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 24588), simpleSymbol15, PairWithPosition.make(simpleSymbol12, PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 28710), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 28689), PairWithPosition.make(simpleSymbol17, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 28725), (SimpleSymbol) a.f("cond"), PairWithPosition.make(simpleSymbol8, PairWithPosition.make(simpleSymbol15, PairWithPosition.make((SimpleSymbol) a.f("<gnu.expr.Keyword>"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 32797), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 32793), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 32782), PairWithPosition.make(PairWithPosition.make(simpleSymbol14, a.c(simpleSymbol4, lList, simpleSymbol13, lList, (SimpleSymbol) a.f("gnu.expr.Keyword")), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 40970), PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 40995), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 40969), PairWithPosition.make(simpleSymbol12, PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 45087), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 45066), PairWithPosition.make(PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(intNumMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 45107), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 45105), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 45102), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 45102), PairWithPosition.make(PairWithPosition.make(simpleSymbol10, PairWithPosition.make(PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(IntNum.make(2), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 49170), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 49168), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 49165), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 49165), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 49159), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 49159), PairWithPosition.make(simpleSymbol8, PairWithPosition.make(simpleSymbol15, PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 53270), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 53266), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 53255), (SimpleSymbol) a.f("let*"), PairWithPosition.make(PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol19, PairWithPosition.make(simpleSymbol7, PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 57388), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 57367), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 57364), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 57358), PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol19, PairWithPosition.make((SimpleSymbol) a.f("<java.lang.String>"), PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol6, PairWithPosition.make(PairWithPosition.make(simpleSymbol5, PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61489), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61489), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61488), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61483), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61475), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61475), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61456), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61453), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61447), PairWithPosition.make(PairWithPosition.make(simpleSymbol, PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol6, PairWithPosition.make(PairWithPosition.make(simpleSymbol5, PairWithPosition.make((SimpleSymbol) a.f("getObjectValue"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65564), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65564), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65563), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65558), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65550), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65550), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65543), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 65543), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 61447), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 57357), PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 69666), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 69661), PairWithPosition.make(PairWithPosition.make(simpleSymbol10, PairWithPosition.make(PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(intNumMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 73746), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 73744), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 73741), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 73741), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 73735), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 73735), (SimpleSymbol) a.f("else"), PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 81951), PairWithPosition.make(PairWithPosition.make(simpleSymbol10, PairWithPosition.make(PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(intNumMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 86034), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 86032), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 86029), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 86029), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 86023), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 86023)}, 0)}, 4);
        Lit8 = syntaxRules3;
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f("<gnu.kawa.models.Column>");
        Lit6 = simpleSymbol37;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f("<gnu.kawa.models.Row>");
        Lit5 = simpleSymbol38;
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f("*.getHeight");
        Lit4 = simpleSymbol39;
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f("*.getWidth");
        Lit3 = simpleSymbol40;
        Lit2 = (SimpleSymbol) a.f("cell-spacing");
        Lit1 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        Lit0 = Color.class;
        gui guiVar = new gui();
        $instance = guiVar;
        loc$$St$DtgetWidth = ThreadLocation.getInstance(simpleSymbol40, null);
        loc$$St$DtgetHeight = ThreadLocation.getInstance(simpleSymbol39, null);
        loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr = ThreadLocation.getInstance(simpleSymbol38, null);
        loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr = ThreadLocation.getInstance(simpleSymbol37, null);
        process$Mnkeywords = Macro.make(simpleSymbol36, syntaxRules3, guiVar);
        as$Mncolor = new ModuleMethod(guiVar, 1, simpleSymbol35, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        button = new ModuleMethod(guiVar, 2, simpleSymbol34, -4096);
        Button = new ModuleMethod(guiVar, 3, simpleSymbol33, -4096);
        Image = Macro.make(simpleSymbol32, syntaxRules2, guiVar);
        image$Mnread = new ModuleMethod(guiVar, 4, simpleSymbol31, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        image$Mnwidth = new ModuleMethod(guiVar, 5, simpleSymbol30, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        image$Mnheight = new ModuleMethod(guiVar, 6, simpleSymbol29, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        Label = new ModuleMethod(guiVar, 7, simpleSymbol28, -4096);
        Text = new ModuleMethod(guiVar, 8, simpleSymbol27, -4096);
        Row = new ModuleMethod(guiVar, 9, simpleSymbol26, -4096);
        Column = new ModuleMethod(guiVar, 10, simpleSymbol25, -4096);
        set$Mncontent = new ModuleMethod(guiVar, 11, simpleSymbol24, 8194);
        Window = new ModuleMethod(guiVar, 12, simpleSymbol23, -4096);
        run$Mnapplication = Macro.make(simpleSymbol20, syntaxRules, guiVar);
        guiVar.run();
    }

    public gui() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
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
        if (i == 4) {
            if (Path.coerceToPathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 5) {
            if (!(obj instanceof BufferedImage)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 6) {
            return super.match1(moduleMethod, obj, callContext);
        }
        if (!(obj instanceof BufferedImage)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static Color asColor(Object obj) {
        if (obj instanceof Color) {
            return (Color) obj;
        }
        if (obj instanceof Integer) {
            try {
                return new Color(((Integer) obj).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "java.lang.Integer.intValue()", 1, obj);
            }
        }
        if (obj instanceof IntNum) {
            return new Color(IntNum.intValue(obj));
        }
        return (Color) SlotGet.staticField.apply2(Lit0, obj.toString());
    }

    public static Object buttonKeyword(Button button2, String str, Object obj) {
        if (str == "foreground") {
            button2.setForeground(asColor(obj));
            return Values.empty;
        }
        if (str == "background") {
            button2.setBackground(asColor(obj));
            return Values.empty;
        }
        if (str == "action") {
            button2.setAction(obj);
            return Values.empty;
        }
        if (str == PropertyTypeConstants.PROPERTY_TYPE_TEXT) {
            button2.setText(obj == null ? null : obj.toString());
            return Values.empty;
        }
        if (str != "disabled") {
            return misc.error$V(Format.formatToString(0, "unknown button attribute ~s", str), new Object[0]);
        }
        try {
            button2.setDisabled(obj != Boolean.FALSE);
            return Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.kawa.models.Button.setDisabled(boolean)", 2, obj);
        }
    }

    public static Boolean buttonNonKeyword(Button button2, Object obj) {
        return Boolean.TRUE;
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 3) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 12) {
            switch (i) {
                case 7:
                    callContext.values = objArr;
                    callContext.proc = moduleMethod;
                    callContext.pc = 5;
                    return 0;
                case 8:
                    callContext.values = objArr;
                    callContext.proc = moduleMethod;
                    callContext.pc = 5;
                    return 0;
                case 9:
                    callContext.values = objArr;
                    callContext.proc = moduleMethod;
                    callContext.pc = 5;
                    return 0;
                case 10:
                    callContext.values = objArr;
                    callContext.proc = moduleMethod;
                    callContext.pc = 5;
                    return 0;
                default:
                    return super.matchN(moduleMethod, objArr, callContext);
            }
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Button button(Object... objArr) {
        Button button2 = new Button();
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                try {
                    buttonKeyword(button2, ((Keyword) obj).getName(), objArr[i + 1]);
                    i += 2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                }
            } else {
                if (obj instanceof KAttr) {
                    try {
                        KAttr kAttr = (KAttr) obj;
                        buttonKeyword(button2, kAttr.getName(), kAttr.getObjectValue());
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "attr", -2, obj);
                    }
                } else {
                    buttonNonKeyword(button2, obj);
                }
                i++;
            }
        }
        return button2;
    }

    public static Button Button(Object... objArr) {
        Button button2 = new Button();
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                try {
                    buttonKeyword(button2, ((Keyword) obj).getName(), objArr[i + 1]);
                    i += 2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                }
            } else {
                if (obj instanceof KAttr) {
                    try {
                        KAttr kAttr = (KAttr) obj;
                        buttonKeyword(button2, kAttr.getName(), kAttr.getObjectValue());
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "attr", -2, obj);
                    }
                } else {
                    buttonNonKeyword(button2, obj);
                }
                i++;
            }
        }
        return button2;
    }

    public static BufferedImage imageRead(Path path) {
        return ImageIO.read(path.openInputStream());
    }

    public static int imageWidth(BufferedImage bufferedImage) {
        try {
            return ((Number) Scheme.applyToArgs.apply2(loc$$St$DtgetWidth.get(), bufferedImage)).intValue();
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 74, 3);
            throw e;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return asColor(obj);
        }
        if (i == 4) {
            try {
                return imageRead(Path.valueOf(obj));
            } catch (ClassCastException e) {
                throw new WrongType(e, "image-read", 1, obj);
            }
        }
        if (i == 5) {
            try {
                return Integer.valueOf(imageWidth((BufferedImage) obj));
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "image-width", 1, obj);
            }
        }
        if (i != 6) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            return Integer.valueOf(imageHeight((BufferedImage) obj));
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "image-height", 1, obj);
        }
    }

    public static int imageHeight(BufferedImage bufferedImage) {
        try {
            return ((Number) Scheme.applyToArgs.apply2(loc$$St$DtgetHeight.get(), bufferedImage)).intValue();
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 77, 3);
            throw e;
        }
    }

    public static Object labelKeyword(Label label, String str, Object obj) {
        if (str != Lit1) {
            return misc.error$V(Format.formatToString(0, "unknown label attribute ~s", str), new Object[0]);
        }
        label.setText(obj == null ? null : obj.toString());
        return Values.empty;
    }

    public static void labelNonKeyword(Label label, Object obj) {
        label.setText(obj == null ? null : obj.toString());
    }

    public static Label Label(Object... objArr) {
        Label label = new Label();
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                try {
                    labelKeyword(label, ((Keyword) obj).getName(), objArr[i + 1]);
                    i += 2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                }
            } else {
                if (obj instanceof KAttr) {
                    try {
                        KAttr kAttr = (KAttr) obj;
                        labelKeyword(label, kAttr.getName(), kAttr.getObjectValue());
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "attr", -2, obj);
                    }
                } else {
                    labelNonKeyword(label, obj);
                }
                i++;
            }
        }
        return label;
    }

    public static Object textKeyword(Text text, String str, Object obj) {
        if (str != Lit1) {
            return misc.error$V(Format.formatToString(0, "unknown text attribute ~s", str), new Object[0]);
        }
        text.setText(obj == null ? null : obj.toString());
        return Values.empty;
    }

    public static void textNonKeyword(Text text, Object obj) {
        text.setText(obj == null ? null : obj.toString());
    }

    public static Text Text(Object... objArr) {
        Text text = new Text();
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                try {
                    textKeyword(text, ((Keyword) obj).getName(), objArr[i + 1]);
                    i += 2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                }
            } else {
                if (obj instanceof KAttr) {
                    try {
                        KAttr kAttr = (KAttr) obj;
                        textKeyword(text, kAttr.getName(), kAttr.getObjectValue());
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "attr", -2, obj);
                    }
                } else {
                    textNonKeyword(text, obj);
                }
                i++;
            }
        }
        return text;
    }

    public static Object boxKeyword(Box box, String str, Object obj) {
        if (str != Lit2) {
            return misc.error$V(Format.formatToString(0, "unknown box attribute ~s", str), new Object[0]);
        }
        box.setCellSpacing(obj);
        return Values.empty;
    }

    public static Model asModel(Object obj) {
        return Display.getInstance().coerceToModel(obj);
    }

    public static void boxNonKeyword(Box box, Object obj) {
        box.add(asModel(obj));
    }

    public static Object Row(Object... objArr) throws Throwable {
        try {
            Object objApply1 = Invoke.make.apply1(loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr.get());
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                if (obj instanceof Keyword) {
                    try {
                        try {
                            boxKeyword((Box) objApply1, ((Keyword) obj).getName(), objArr[i + 1]);
                            i += 2;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "box-keyword", 0, objApply1);
                    }
                } else {
                    if (obj instanceof KAttr) {
                        try {
                            KAttr kAttr = (KAttr) obj;
                            try {
                                boxKeyword((Box) objApply1, kAttr.getName(), kAttr.getObjectValue());
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "box-keyword", 0, objApply1);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "attr", -2, obj);
                        }
                    } else {
                        try {
                            boxNonKeyword((Box) objApply1, obj);
                        } catch (ClassCastException e5) {
                            throw new WrongType(e5, "box-non-keyword", 0, objApply1);
                        }
                    }
                    i++;
                }
            }
            return objApply1;
        } catch (UnboundLocationException e6) {
            e6.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 146, 25);
            throw e6;
        }
    }

    public static Object Column(Object... objArr) throws Throwable {
        try {
            Object objApply1 = Invoke.make.apply1(loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr.get());
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                if (obj instanceof Keyword) {
                    try {
                        try {
                            boxKeyword((Box) objApply1, ((Keyword) obj).getName(), objArr[i + 1]);
                            i += 2;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "box-keyword", 0, objApply1);
                    }
                } else {
                    if (obj instanceof KAttr) {
                        try {
                            KAttr kAttr = (KAttr) obj;
                            try {
                                boxKeyword((Box) objApply1, kAttr.getName(), kAttr.getObjectValue());
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "box-keyword", 0, objApply1);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "attr", -2, obj);
                        }
                    } else {
                        try {
                            boxNonKeyword((Box) objApply1, obj);
                        } catch (ClassCastException e5) {
                            throw new WrongType(e5, "box-non-keyword", 0, objApply1);
                        }
                    }
                    i++;
                }
            }
            return objApply1;
        } catch (UnboundLocationException e6) {
            e6.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm", 151, 25);
            throw e6;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        if (moduleMethod.selector != 11) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            setContent((Window) obj, obj2);
            return Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-content", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        if (moduleMethod.selector != 11) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof Window)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static void setContent(Window window, Object obj) {
        window.setContent(obj);
    }

    public static Object windowKeyword(Window window, String str, Object obj) {
        if (str == "title") {
            window.setTitle(obj == null ? null : obj.toString());
            return Values.empty;
        }
        if (str == "content") {
            window.setContent(obj);
            return Values.empty;
        }
        if (str != "menubar") {
            return misc.error$V(Format.formatToString(0, "unknown window attribute ~s", str), new Object[0]);
        }
        window.setMenuBar(obj);
        return Values.empty;
    }

    public static void windowNonKeyword(Window window, Object obj) {
        window.setContent(obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 2) {
            return button(objArr);
        }
        if (i == 3) {
            return Button(objArr);
        }
        if (i != 12) {
            switch (i) {
                case 7:
                    return Label(objArr);
                case 8:
                    return Text(objArr);
                case 9:
                    return Row(objArr);
                case 10:
                    return Column(objArr);
                default:
                    return super.applyN(moduleMethod, objArr);
            }
        }
        return Window(objArr);
    }

    public static Window Window(Object... objArr) {
        Window windowMakeWindow = Display.getInstance().makeWindow();
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                try {
                    windowKeyword(windowMakeWindow, ((Keyword) obj).getName(), objArr[i + 1]);
                    i += 2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "gnu.expr.Keyword.getName()", 1, obj);
                }
            } else {
                if (obj instanceof KAttr) {
                    try {
                        KAttr kAttr = (KAttr) obj;
                        windowKeyword(windowMakeWindow, kAttr.getName(), kAttr.getObjectValue());
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "attr", -2, obj);
                    }
                } else {
                    windowNonKeyword(windowMakeWindow, obj);
                }
                i++;
            }
        }
        return windowMakeWindow;
    }
}
