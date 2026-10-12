package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.bytecode.ClassType;
import gnu.expr.GenericProc;
import gnu.expr.Keyword;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.lispexpr.LispReader;
import gnu.lists.Consumer;
import gnu.lists.EofClass;
import gnu.lists.FString;
import gnu.mapping.CallContext;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.CharArrayOutPort;
import gnu.mapping.InPort;
import gnu.mapping.LocationProc;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.TtyInPort;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Char;
import gnu.text.LineBufferedReader;
import gnu.text.Path;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.io.Writer;
import kawa.standard.Scheme;
import kawa.standard.char_ready_p;
import kawa.standard.read_line;

/* loaded from: classes2.dex */
public class ports extends ModuleBody {
    public static final ports $instance;
    static final SimpleSymbol Lit0;
    static final ClassType Lit1;
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
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit29;
    static final ClassType Lit3;
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
    static final SimpleSymbol Lit44;
    static final SimpleSymbol Lit45;
    static final Keyword Lit5;
    static final IntNum Lit6;
    static final Char Lit7;
    static final Char Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod call$Mnwith$Mninput$Mnfile;
    public static final ModuleMethod call$Mnwith$Mninput$Mnstring;
    public static final ModuleMethod call$Mnwith$Mnoutput$Mnfile;
    public static final ModuleMethod call$Mnwith$Mnoutput$Mnstring;
    public static final ModuleMethod char$Mnready$Qu;
    public static final ModuleMethod close$Mninput$Mnport;
    public static final ModuleMethod close$Mnoutput$Mnport;
    public static final LocationProc current$Mnerror$Mnport = null;
    public static final LocationProc current$Mninput$Mnport = null;
    public static final LocationProc current$Mnoutput$Mnport = null;
    public static final ModuleMethod default$Mnprompter;
    public static final ModuleMethod display;
    public static final ModuleMethod eof$Mnobject$Qu;
    public static final ModuleMethod force$Mnoutput;
    public static final ModuleMethod get$Mnoutput$Mnstring;
    public static final ModuleMethod input$Mnport$Mncolumn$Mnnumber;
    public static final GenericProc input$Mnport$Mnline$Mnnumber = null;
    static final ModuleMethod input$Mnport$Mnline$Mnnumber$Fn5;
    public static final GenericProc input$Mnport$Mnprompter = null;
    static final ModuleMethod input$Mnport$Mnprompter$Fn6;
    public static final ModuleMethod input$Mnport$Mnread$Mnstate;
    public static final ModuleMethod input$Mnport$Qu;
    static final ModuleMethod lambda$Fn1;
    static final ModuleMethod lambda$Fn2;
    static final ModuleMethod lambda$Fn3;
    public static final ModuleMethod newline;
    public static final ModuleMethod open$Mninput$Mnfile;
    public static final ModuleMethod open$Mninput$Mnstring;
    public static final ModuleMethod open$Mnoutput$Mnfile;
    public static final ModuleMethod open$Mnoutput$Mnstring;
    public static final ModuleMethod output$Mnport$Qu;
    public static final ModuleMethod port$Mncolumn;
    public static final GenericProc port$Mnline = null;
    static final ModuleMethod port$Mnline$Fn4;
    public static final ModuleMethod read;
    public static final ModuleMethod read$Mnline;
    public static final ModuleMethod set$Mninput$Mnport$Mnline$Mnnumber$Ex;
    public static final ModuleMethod set$Mninput$Mnport$Mnprompter$Ex;
    public static final ModuleMethod set$Mnport$Mnline$Ex;
    public static final ModuleMethod transcript$Mnoff;
    public static final ModuleMethod transcript$Mnon;
    public static final ModuleMethod with$Mninput$Mnfrom$Mnfile;
    public static final ModuleMethod with$Mnoutput$Mnto$Mnfile;
    public static final ModuleMethod write;
    public static final ModuleMethod write$Mnchar;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("transcript-off");
        Lit45 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("transcript-on");
        Lit44 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("read-line");
        Lit43 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("read");
        Lit42 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("close-output-port");
        Lit41 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("close-input-port");
        Lit40 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("input-port-prompter");
        Lit39 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("set-input-port-prompter!");
        Lit38 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("default-prompter");
        Lit37 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("input-port-column-number");
        Lit36 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("port-column");
        Lit35 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("input-port-line-number");
        Lit34 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("set-input-port-line-number!");
        Lit33 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("port-line");
        Lit32 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("set-port-line!");
        Lit31 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("input-port-read-state");
        Lit30 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("display");
        Lit29 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("write");
        Lit28 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("char-ready?");
        Lit27 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("eof-object?");
        Lit26 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("newline");
        Lit25 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("force-output");
        Lit24 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("call-with-output-string");
        Lit23 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("call-with-input-string");
        Lit22 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("get-output-string");
        Lit21 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("open-output-string");
        Lit20 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("open-input-string");
        Lit19 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("write-char");
        Lit18 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("output-port?");
        Lit17 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("input-port?");
        Lit16 = simpleSymbol30;
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("with-output-to-file");
        Lit15 = simpleSymbol31;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("with-input-from-file");
        Lit14 = simpleSymbol32;
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("call-with-output-file");
        Lit13 = simpleSymbol33;
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("call-with-input-file");
        Lit12 = simpleSymbol34;
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("open-output-file");
        Lit11 = simpleSymbol35;
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("open-input-file");
        Lit10 = simpleSymbol36;
        Lit9 = (SimpleSymbol) a.f("trim");
        Lit8 = Char.make(32);
        Lit7 = Char.make(10);
        Lit6 = IntNum.make(1);
        Lit5 = Keyword.make("setter");
        Lit4 = (SimpleSymbol) a.f("current-error-port");
        Lit3 = ClassType.make("gnu.mapping.OutPort");
        Lit2 = (SimpleSymbol) a.f("current-output-port");
        Lit1 = ClassType.make("gnu.mapping.InPort");
        Lit0 = (SimpleSymbol) a.f("current-input-port");
        ports portsVar = new ports();
        $instance = portsVar;
        open$Mninput$Mnfile = new ModuleMethod(portsVar, 1, simpleSymbol36, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        open$Mnoutput$Mnfile = new ModuleMethod(portsVar, 2, simpleSymbol35, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        call$Mnwith$Mninput$Mnfile = new ModuleMethod(portsVar, 3, simpleSymbol34, 8194);
        call$Mnwith$Mnoutput$Mnfile = new ModuleMethod(portsVar, 4, simpleSymbol33, 8194);
        with$Mninput$Mnfrom$Mnfile = new ModuleMethod(portsVar, 5, simpleSymbol32, 8194);
        with$Mnoutput$Mnto$Mnfile = new ModuleMethod(portsVar, 6, simpleSymbol31, 8194);
        input$Mnport$Qu = new ModuleMethod(portsVar, 7, simpleSymbol30, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        output$Mnport$Qu = new ModuleMethod(portsVar, 8, simpleSymbol29, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn1 = new ModuleMethod(portsVar, 9, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn2 = new ModuleMethod(portsVar, 10, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        lambda$Fn3 = new ModuleMethod(portsVar, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        write$Mnchar = new ModuleMethod(portsVar, 12, simpleSymbol28, 8193);
        open$Mninput$Mnstring = new ModuleMethod(portsVar, 14, simpleSymbol27, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        open$Mnoutput$Mnstring = new ModuleMethod(portsVar, 15, simpleSymbol26, 0);
        get$Mnoutput$Mnstring = new ModuleMethod(portsVar, 16, simpleSymbol25, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        call$Mnwith$Mninput$Mnstring = new ModuleMethod(portsVar, 17, simpleSymbol24, 8194);
        call$Mnwith$Mnoutput$Mnstring = new ModuleMethod(portsVar, 18, simpleSymbol23, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        force$Mnoutput = new ModuleMethod(portsVar, 19, simpleSymbol22, 4096);
        newline = new ModuleMethod(portsVar, 21, simpleSymbol21, 4096);
        eof$Mnobject$Qu = new ModuleMethod(portsVar, 23, simpleSymbol20, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnready$Qu = new ModuleMethod(portsVar, 24, simpleSymbol19, 4096);
        write = new ModuleMethod(portsVar, 26, simpleSymbol18, 8193);
        display = new ModuleMethod(portsVar, 28, simpleSymbol17, 8193);
        input$Mnport$Mnread$Mnstate = new ModuleMethod(portsVar, 30, simpleSymbol16, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mnport$Mnline$Ex = new ModuleMethod(portsVar, 31, simpleSymbol15, 8194);
        port$Mnline$Fn4 = new ModuleMethod(portsVar, 32, simpleSymbol14, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mninput$Mnport$Mnline$Mnnumber$Ex = new ModuleMethod(portsVar, 33, simpleSymbol13, 8194);
        input$Mnport$Mnline$Mnnumber$Fn5 = new ModuleMethod(portsVar, 34, simpleSymbol12, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        port$Mncolumn = new ModuleMethod(portsVar, 35, simpleSymbol11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        input$Mnport$Mncolumn$Mnnumber = new ModuleMethod(portsVar, 36, simpleSymbol10, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        default$Mnprompter = new ModuleMethod(portsVar, 37, simpleSymbol9, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mninput$Mnport$Mnprompter$Ex = new ModuleMethod(portsVar, 38, simpleSymbol8, 8194);
        input$Mnport$Mnprompter$Fn6 = new ModuleMethod(portsVar, 39, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        close$Mninput$Mnport = new ModuleMethod(portsVar, 40, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        close$Mnoutput$Mnport = new ModuleMethod(portsVar, 41, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        read = new ModuleMethod(portsVar, 42, simpleSymbol4, 4096);
        read$Mnline = new ModuleMethod(portsVar, 44, simpleSymbol3, 8192);
        transcript$Mnon = new ModuleMethod(portsVar, 47, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        transcript$Mnoff = new ModuleMethod(portsVar, 48, simpleSymbol, 0);
        portsVar.run();
    }

    public ports() {
        ModuleInfo.register(this);
    }

    public static void display(Object obj) {
        display(obj, current$Mnoutput$Mnport.apply0());
    }

    public static void forceOutput() throws IOException {
        forceOutput(current$Mnoutput$Mnport.apply0());
    }

    public static boolean isCharReady() {
        return isCharReady(current$Mninput$Mnport.apply0());
    }

    public static void newline() {
        newline(current$Mnoutput$Mnport.apply0());
    }

    public static Object read() {
        return read((InPort) current$Mninput$Mnport.apply0());
    }

    public static Object readLine() {
        return readLine((LineBufferedReader) current$Mninput$Mnport.apply0(), Lit9);
    }

    public static Object readLine(LineBufferedReader lineBufferedReader) {
        return readLine(lineBufferedReader, Lit9);
    }

    public static void write(Object obj) {
        write(obj, current$Mnoutput$Mnport.apply0());
    }

    public static void writeChar(Object obj) {
        writeChar(obj, OutPort.outDefault());
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        LocationProc locationProcMakeNamed = LocationProc.makeNamed(Lit0, InPort.inLocation);
        current$Mninput$Mnport = locationProcMakeNamed;
        locationProcMakeNamed.pushConverter(lambda$Fn1);
        LocationProc locationProcMakeNamed2 = LocationProc.makeNamed(Lit2, OutPort.outLocation);
        current$Mnoutput$Mnport = locationProcMakeNamed2;
        locationProcMakeNamed2.pushConverter(lambda$Fn2);
        LocationProc locationProcMakeNamed3 = LocationProc.makeNamed(Lit4, OutPort.errLocation);
        current$Mnerror$Mnport = locationProcMakeNamed3;
        locationProcMakeNamed3.pushConverter(lambda$Fn3);
        GenericProc genericProc = new GenericProc("port-line");
        port$Mnline = genericProc;
        Keyword keyword = Lit5;
        GenericProc genericProcB = a.b(genericProc, new Object[]{keyword, set$Mnport$Mnline$Ex, port$Mnline$Fn4}, "input-port-line-number");
        input$Mnport$Mnline$Mnnumber = genericProcB;
        GenericProc genericProcB2 = a.b(genericProcB, new Object[]{keyword, set$Mninput$Mnport$Mnline$Mnnumber$Ex, input$Mnport$Mnline$Mnnumber$Fn5}, "input-port-prompter");
        input$Mnport$Mnprompter = genericProcB2;
        genericProcB2.setProperties(new Object[]{keyword, set$Mninput$Mnport$Mnprompter$Ex, input$Mnport$Mnprompter$Fn6});
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 1:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 2:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 3:
            case 4:
            case 5:
            case 6:
            case 13:
            case 15:
            case 17:
            case 20:
            case 22:
            case 25:
            case 27:
            case 29:
            case 31:
            case 33:
            case 38:
            case 43:
            case 45:
            case 46:
            default:
                return super.match1(moduleMethod, obj, callContext);
            case 7:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 8:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 9:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 10:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 11:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 12:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 14:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 16:
                if (!(obj instanceof CharArrayOutPort)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 18:
                if (!(obj instanceof Procedure)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 19:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 21:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 23:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 24:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 26:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 28:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 30:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 32:
                if (!(obj instanceof LineBufferedReader)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 34:
                if (!(obj instanceof LineBufferedReader)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 35:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 36:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 37:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 39:
                if (!(obj instanceof TtyInPort)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 40:
                if (!(obj instanceof InPort)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 41:
                if (!(obj instanceof OutPort)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 42:
                if (!(obj instanceof InPort)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 44:
                if (!(obj instanceof LineBufferedReader)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 47:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
        }
    }

    public static InPort openInputFile(Path path) {
        return InPort.openFile(path);
    }

    public static OutPort openOutputFile(Path path) {
        return OutPort.openFile(path);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            if (Path.coerceToPathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 4) {
            if (Path.coerceToPathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 5) {
            if (Path.coerceToPathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 6) {
            if (Path.coerceToPathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 12) {
            callContext.value1 = obj;
            if (!(obj2 instanceof OutPort)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 17) {
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 26) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 28) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 31) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 33) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 38) {
            if (!(obj instanceof TtyInPort)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 44) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof LineBufferedReader)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Symbol)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Object callWithInputFile(Path path, Procedure procedure) throws IOException {
        InPort inPortOpenInputFile = openInputFile(path);
        try {
            return procedure.apply1(inPortOpenInputFile);
        } finally {
            closeInputPort(inPortOpenInputFile);
        }
    }

    public static Object callWithOutputFile(Path path, Procedure procedure) throws IOException {
        OutPort outPortOpenOutputFile = openOutputFile(path);
        try {
            return procedure.apply1(outPortOpenOutputFile);
        } finally {
            closeOutputPort(outPortOpenOutputFile);
        }
    }

    public static Object withInputFromFile(Path path, Procedure procedure) throws IOException {
        InPort inPortOpenFile = InPort.openFile(path);
        InPort inPortInDefault = InPort.inDefault();
        try {
            InPort.setInDefault(inPortOpenFile);
            return procedure.apply0();
        } finally {
            InPort.setInDefault(inPortInDefault);
            inPortOpenFile.close();
        }
    }

    public static Object withOutputToFile(Path path, Procedure procedure) throws IOException {
        OutPort outPortOpenFile = OutPort.openFile(path);
        OutPort outPortOutDefault = OutPort.outDefault();
        try {
            OutPort.setOutDefault(outPortOpenFile);
            return procedure.apply0();
        } finally {
            OutPort.setOutDefault(outPortOutDefault);
            outPortOpenFile.close();
        }
    }

    public static boolean isInputPort(Object obj) {
        return obj instanceof InPort;
    }

    public static boolean isOutputPort(Object obj) {
        return obj instanceof OutPort;
    }

    public static Object lambda1(Object obj) {
        try {
            return (InPort) obj;
        } catch (ClassCastException e) {
            WrongType wrongTypeMake = WrongType.make(e, current$Mninput$Mnport, 1, obj);
            wrongTypeMake.expectedType = Lit1;
            throw wrongTypeMake;
        }
    }

    public static Object lambda2(Object obj) {
        try {
            return (OutPort) obj;
        } catch (ClassCastException e) {
            WrongType wrongTypeMake = WrongType.make(e, current$Mnoutput$Mnport, 1, obj);
            wrongTypeMake.expectedType = Lit3;
            throw wrongTypeMake;
        }
    }

    public static Object lambda3(Object obj) {
        try {
            return (OutPort) obj;
        } catch (ClassCastException e) {
            WrongType wrongTypeMake = WrongType.make(e, current$Mnerror$Mnport, 1, obj);
            wrongTypeMake.expectedType = Lit3;
            throw wrongTypeMake;
        }
    }

    public static void writeChar(Object obj, OutPort outPort) {
        try {
            Char.print(((Char) obj).intValue(), outPort);
        } catch (ClassCastException e) {
            throw new WrongType(e, "char->integer", 1, obj);
        }
    }

    public static InPort openInputString(CharSequence charSequence) {
        return new CharArrayInPort(charSequence == null ? null : charSequence.toString());
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 15) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 19) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 21) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 24) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 42) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 44) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i != 48) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static CharArrayOutPort openOutputString() {
        return new CharArrayOutPort();
    }

    public static FString getOutputString(CharArrayOutPort charArrayOutPort) {
        return new FString(charArrayOutPort.toCharArray());
    }

    public static Object callWithInputString(CharSequence charSequence, Procedure procedure) throws Throwable {
        CharArrayInPort charArrayInPort = new CharArrayInPort(charSequence == null ? null : charSequence.toString());
        Object objApply1 = procedure.apply1(charArrayInPort);
        closeInputPort(charArrayInPort);
        return objApply1;
    }

    public static Object callWithOutputString(Procedure procedure) throws Throwable {
        CharArrayOutPort charArrayOutPort = new CharArrayOutPort();
        procedure.apply1(charArrayOutPort);
        char[] charArray = charArrayOutPort.toCharArray();
        charArrayOutPort.close();
        return new FString(charArray);
    }

    public static void forceOutput(Object obj) throws IOException {
        try {
            ((Writer) obj).flush();
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.io.Writer.flush()", 1, obj);
        }
    }

    public static void newline(Object obj) {
        try {
            ((OutPort) obj).println();
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.OutPort.println()", 1, obj);
        }
    }

    public static boolean isEofObject(Object obj) {
        return obj == EofClass.eofValue;
    }

    public static boolean isCharReady(Object obj) {
        return char_ready_p.ready(obj);
    }

    public static void write(Object obj, Object obj2) {
        try {
            Scheme.writeFormat.format(obj, (Consumer) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.lists.AbstractFormat.format(java.lang.Object,gnu.lists.Consumer)", 3, obj2);
        }
    }

    public static void display(Object obj, Object obj2) {
        try {
            Scheme.displayFormat.format(obj, (Consumer) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.lists.AbstractFormat.format(java.lang.Object,gnu.lists.Consumer)", 3, obj2);
        }
    }

    public static char inputPortReadState(Object obj) {
        try {
            return ((InPort) obj).getReadState();
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.InPort.getReadState()", 1, obj);
        }
    }

    public static void setPortLine$Ex(Object obj, Object obj2) {
        try {
            try {
                ((LineBufferedReader) obj).setLineNumber(((Number) obj2).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.text.LineBufferedReader.setLineNumber(int)", 2, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "gnu.text.LineBufferedReader.setLineNumber(int)", 1, obj);
        }
    }

    public static int portLine(LineBufferedReader lineBufferedReader) {
        return lineBufferedReader.getLineNumber();
    }

    public static void setInputPortLineNumber$Ex(Object obj, Object obj2) {
        setPortLine$Ex(obj, AddOp.$Mn.apply2(obj2, Lit6));
    }

    public static Object inputPortLineNumber(LineBufferedReader lineBufferedReader) {
        return AddOp.$Pl.apply2(Lit6, port$Mnline.apply1(lineBufferedReader));
    }

    public static int portColumn(Object obj) {
        try {
            return ((LineBufferedReader) obj).getColumnNumber();
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.text.LineBufferedReader.getColumnNumber()", 1, obj);
        }
    }

    public static int inputPortColumnNumber(Object obj) {
        return portColumn(obj) + 1;
    }

    public static Object defaultPrompter(Object obj) throws Throwable {
        char cInputPortReadState = inputPortReadState(obj);
        if (characters.isChar$Eq(Char.make(cInputPortReadState), Lit7)) {
            return "";
        }
        Object objStringAppend = characters.isChar$Eq(Char.make(cInputPortReadState), Lit8) ? "#|kawa:" : strings.stringAppend("#|", strings.makeString(1, Char.make(cInputPortReadState)), "---:");
        Object objApply1 = input$Mnport$Mnline$Mnnumber.apply1(obj);
        try {
            return strings.stringAppend(objStringAppend, numbers.number$To$String((Number) objApply1), "|# ");
        } catch (ClassCastException e) {
            throw new WrongType(e, "number->string", 0, objApply1);
        }
    }

    public static Procedure inputPortPrompter(TtyInPort ttyInPort) {
        return ttyInPort.getPrompter();
    }

    public static Object closeInputPort(InPort inPort) throws IOException {
        inPort.close();
        return Values.empty;
    }

    public static Object closeOutputPort(OutPort outPort) throws IOException {
        outPort.close();
        return Values.empty;
    }

    public static Object read(InPort inPort) throws SyntaxException, IOException {
        LispReader lispReader = new LispReader(inPort);
        try {
            Object object = lispReader.readObject();
            if (lispReader.seenErrors()) {
                throw new SyntaxException(lispReader.getMessages());
            }
            return object;
        } catch (SyntaxException e) {
            e.setHeader("syntax error in read:");
            throw e;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                try {
                    return callWithInputFile(Path.valueOf(obj), (Procedure) obj2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "call-with-input-file", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "call-with-input-file", 1, obj);
            }
        }
        if (i == 4) {
            try {
                try {
                    return callWithOutputFile(Path.valueOf(obj), (Procedure) obj2);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "call-with-output-file", 2, obj2);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "call-with-output-file", 1, obj);
            }
        }
        if (i == 5) {
            try {
                try {
                    return withInputFromFile(Path.valueOf(obj), (Procedure) obj2);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "with-input-from-file", 2, obj2);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "with-input-from-file", 1, obj);
            }
        }
        if (i == 6) {
            try {
                try {
                    return withOutputToFile(Path.valueOf(obj), (Procedure) obj2);
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "with-output-to-file", 2, obj2);
                }
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "with-output-to-file", 1, obj);
            }
        }
        if (i == 12) {
            try {
                writeChar(obj, (OutPort) obj2);
                return Values.empty;
            } catch (ClassCastException e9) {
                throw new WrongType(e9, "write-char", 2, obj2);
            }
        }
        if (i == 17) {
            try {
                try {
                    return callWithInputString((CharSequence) obj, (Procedure) obj2);
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "call-with-input-string", 2, obj2);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "call-with-input-string", 1, obj);
            }
        }
        if (i == 26) {
            write(obj, obj2);
            return Values.empty;
        }
        if (i == 28) {
            display(obj, obj2);
            return Values.empty;
        }
        if (i == 31) {
            setPortLine$Ex(obj, obj2);
            return Values.empty;
        }
        if (i == 33) {
            setInputPortLineNumber$Ex(obj, obj2);
            return Values.empty;
        }
        if (i == 38) {
            try {
                try {
                    ((TtyInPort) obj).setPrompter((Procedure) obj2);
                    return Values.empty;
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "set-input-port-prompter!", 2, obj2);
                }
            } catch (ClassCastException e13) {
                throw new WrongType(e13, "set-input-port-prompter!", 1, obj);
            }
        }
        if (i != 44) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                return readLine((LineBufferedReader) obj, (Symbol) obj2);
            } catch (ClassCastException e14) {
                throw new WrongType(e14, "read-line", 2, obj2);
            }
        } catch (ClassCastException e15) {
            throw new WrongType(e15, "read-line", 1, obj);
        }
    }

    public static Object readLine(LineBufferedReader lineBufferedReader, Symbol symbol) {
        return read_line.apply(lineBufferedReader, symbol == null ? null : symbol.toString());
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) throws IOException {
        switch (moduleMethod.selector) {
            case 1:
                try {
                    return openInputFile(Path.valueOf(obj));
                } catch (ClassCastException e) {
                    throw new WrongType(e, "open-input-file", 1, obj);
                }
            case 2:
                try {
                    return openOutputFile(Path.valueOf(obj));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "open-output-file", 1, obj);
                }
            case 3:
            case 4:
            case 5:
            case 6:
            case 13:
            case 15:
            case 17:
            case 20:
            case 22:
            case 25:
            case 27:
            case 29:
            case 31:
            case 33:
            case 38:
            case 43:
            case 45:
            case 46:
            default:
                return super.apply1(moduleMethod, obj);
            case 7:
                return isInputPort(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 8:
                return isOutputPort(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 9:
                return lambda1(obj);
            case 10:
                return lambda2(obj);
            case 11:
                return lambda3(obj);
            case 12:
                writeChar(obj);
                return Values.empty;
            case 14:
                try {
                    return openInputString((CharSequence) obj);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "open-input-string", 1, obj);
                }
            case 16:
                try {
                    return getOutputString((CharArrayOutPort) obj);
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "get-output-string", 1, obj);
                }
            case 18:
                try {
                    return callWithOutputString((Procedure) obj);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "call-with-output-string", 1, obj);
                }
            case 19:
                forceOutput(obj);
                return Values.empty;
            case 21:
                newline(obj);
                return Values.empty;
            case 23:
                return isEofObject(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 24:
                return isCharReady(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 26:
                write(obj);
                return Values.empty;
            case 28:
                display(obj);
                return Values.empty;
            case 30:
                return Char.make(inputPortReadState(obj));
            case 32:
                try {
                    return Integer.valueOf(portLine((LineBufferedReader) obj));
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "port-line", 1, obj);
                }
            case 34:
                try {
                    return inputPortLineNumber((LineBufferedReader) obj);
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "input-port-line-number", 1, obj);
                }
            case 35:
                return Integer.valueOf(portColumn(obj));
            case 36:
                return Integer.valueOf(inputPortColumnNumber(obj));
            case 37:
                return defaultPrompter(obj);
            case 39:
                try {
                    return inputPortPrompter((TtyInPort) obj);
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "input-port-prompter", 1, obj);
                }
            case 40:
                try {
                    return closeInputPort((InPort) obj);
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "close-input-port", 1, obj);
                }
            case 41:
                try {
                    return closeOutputPort((OutPort) obj);
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "close-output-port", 1, obj);
                }
            case 42:
                try {
                    return read((InPort) obj);
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "read", 1, obj);
                }
            case 44:
                try {
                    return readLine((LineBufferedReader) obj);
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "read-line", 1, obj);
                }
            case 47:
                transcriptOn(obj);
                return Values.empty;
        }
    }

    public static void transcriptOn(Object obj) throws IOException {
        OutPort.setLogFile(obj.toString());
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) throws IOException {
        int i = moduleMethod.selector;
        if (i == 15) {
            return openOutputString();
        }
        if (i == 19) {
            forceOutput();
            return Values.empty;
        }
        if (i == 21) {
            newline();
            return Values.empty;
        }
        if (i == 24) {
            return isCharReady() ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 42) {
            return read();
        }
        if (i == 44) {
            return readLine();
        }
        if (i != 48) {
            return super.apply0(moduleMethod);
        }
        transcriptOff();
        return Values.empty;
    }

    public static void transcriptOff() throws IOException {
        OutPort.closeLogFile();
    }
}
