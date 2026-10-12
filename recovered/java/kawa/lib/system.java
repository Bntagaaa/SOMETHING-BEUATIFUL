package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.youngandroid.a;
import gnu.expr.ApplicationMainSupport;
import gnu.expr.Compilation;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.IsEqual;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.io.InputStream;
import java.util.StringTokenizer;
import kawa.lang.CompileFile;
import kawa.lang.NamedException;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class system extends ModuleBody {
    public static final system $instance;
    static final IntNum Lit0;
    static final IntNum Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;

    /* renamed from: catch, reason: not valid java name */
    public static final ModuleMethod f11catch;
    public static Procedure command$Mnparse;
    public static final ModuleMethod compile$Mnfile;
    public static final ModuleMethod convert$Mnlist$Mnto$Mnstring$Mnarray;
    public static final ModuleMethod convert$Mnvector$Mnto$Mnstring$Mnarray;
    public static final ModuleMethod make$Mnprocess;
    public static final ModuleMethod open$Mninput$Mnpipe;
    public static final ModuleMethod process$Mncommand$Mnline$Mnassignments;
    public static final ModuleMethod system;
    public static final ModuleMethod tokenize$Mnstring$Mnto$Mnstring$Mnarray;
    public static final ModuleMethod tokenize$Mnstring$Mnusing$Mnshell;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("process-command-line-assignments");
        Lit11 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("catch");
        Lit10 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("compile-file");
        Lit9 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("tokenize-string-using-shell");
        Lit8 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("tokenize-string-to-string-array");
        Lit7 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("convert-list-to-string-array");
        Lit6 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("convert-vector-to-string-array");
        Lit5 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("system");
        Lit4 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("open-input-pipe");
        Lit3 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("make-process");
        Lit2 = simpleSymbol10;
        Lit1 = IntNum.make(1);
        Lit0 = IntNum.make(0);
        system systemVar = new system();
        $instance = systemVar;
        make$Mnprocess = new ModuleMethod(systemVar, 1, simpleSymbol10, 8194);
        open$Mninput$Mnpipe = new ModuleMethod(systemVar, 2, simpleSymbol9, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        system = new ModuleMethod(systemVar, 3, simpleSymbol8, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        convert$Mnvector$Mnto$Mnstring$Mnarray = new ModuleMethod(systemVar, 4, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        convert$Mnlist$Mnto$Mnstring$Mnarray = new ModuleMethod(systemVar, 5, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        tokenize$Mnstring$Mnto$Mnstring$Mnarray = new ModuleMethod(systemVar, 6, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        tokenize$Mnstring$Mnusing$Mnshell = new ModuleMethod(systemVar, 7, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        compile$Mnfile = new ModuleMethod(systemVar, 8, simpleSymbol3, 8194);
        f11catch = new ModuleMethod(systemVar, 9, simpleSymbol2, 12291);
        process$Mncommand$Mnline$Mnassignments = new ModuleMethod(systemVar, 10, simpleSymbol, 0);
        systemVar.run();
    }

    public system() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        command$Mnparse = IsEqual.apply(System.getProperty("file.separator"), "/") ? tokenize$Mnstring$Mnusing$Mnshell : tokenize$Mnstring$Mnto$Mnstring$Mnarray;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 8) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof CharSequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Process makeProcess(Object obj, Object obj2) throws Throwable {
        if (vectors.isVector(obj)) {
            obj = convertVectorToStringArray(obj);
        } else if (lists.isList(obj)) {
            obj = convertListToStringArray(obj);
        } else if (strings.isString(obj)) {
            obj = command$Mnparse.apply1(obj);
        } else if (!(obj instanceof String[])) {
            obj = misc.error$V("invalid arguments to make-process", new Object[0]);
        }
        try {
            try {
                return Runtime.getRuntime().exec((String[]) obj, (String[]) obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])", 3, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])", 2, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 2:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 3:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 4:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 5:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 6:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 7:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    public static InputStream openInputPipe(Object obj) {
        return makeProcess(obj, null).getInputStream();
    }

    public static int system(Object obj) {
        return makeProcess(obj, null).waitFor();
    }

    public static Object convertVectorToStringArray(Object obj) throws Throwable {
        try {
            int iVectorLength = vectors.vectorLength((FVector) obj);
            String[] strArr = new String[iVectorLength];
            for (Object objApply2 = Lit0; Scheme.numEqu.apply2(objApply2, Integer.valueOf(iVectorLength)) == Boolean.FALSE; objApply2 = AddOp.$Pl.apply2(objApply2, Lit1)) {
                int iIntValue = ((Number) objApply2).intValue();
                try {
                    try {
                        Object objVectorRef = vectors.vectorRef((FVector) obj, ((Number) objApply2).intValue());
                        strArr[iIntValue] = objVectorRef == null ? null : objVectorRef.toString();
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "vector-ref", 2, objApply2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "vector-ref", 1, obj);
                }
            }
            return strArr;
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "vector-length", 1, obj);
        }
    }

    public static Object convertListToStringArray(Object obj) {
        try {
            String[] strArr = new String[lists.length((LList) obj)];
            int i = 0;
            while (!lists.isNull(obj)) {
                try {
                    Pair pair = (Pair) obj;
                    Object car = pair.getCar();
                    strArr[i] = car == null ? null : car.toString();
                    obj = pair.getCdr();
                    i++;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "pp", -2, obj);
                }
            }
            return strArr;
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
        }
    }

    public static Object tokenizeStringToStringArray(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        LList lListCons = LList.Empty;
        while (stringTokenizer.hasMoreTokens()) {
            lListCons = lists.cons(stringTokenizer.nextToken(), lListCons);
        }
        int length = lists.length(lListCons);
        String[] strArr = new String[length];
        Object cdr = lListCons;
        while (true) {
            length--;
            if (lists.isNull(cdr)) {
                return strArr;
            }
            try {
                Pair pair = (Pair) cdr;
                Object car = pair.getCar();
                strArr[length] = car == null ? null : car.toString();
                cdr = pair.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "pp", -2, cdr);
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        switch (moduleMethod.selector) {
            case 2:
                return openInputPipe(obj);
            case 3:
                return Integer.valueOf(system(obj));
            case 4:
                return convertVectorToStringArray(obj);
            case 5:
                return convertListToStringArray(obj);
            case 6:
                return tokenizeStringToStringArray(obj == null ? null : obj.toString());
            case 7:
                return tokenizeStringUsingShell(obj);
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    public static String[] tokenizeStringUsingShell(Object obj) {
        return new String[]{"/bin/sh", "-c", obj == null ? null : obj.toString()};
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws SyntaxException, IOException {
        int i = moduleMethod.selector;
        if (i == 1) {
            return makeProcess(obj, obj2);
        }
        if (i != 8) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            compileFile((CharSequence) obj, obj2 == null ? null : obj2.toString());
            return Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "compile-file", 1, obj);
        }
    }

    public static void compileFile(CharSequence charSequence, String str) throws SyntaxException, IOException {
        SourceMessages sourceMessages = new SourceMessages();
        Compilation compilation = CompileFile.read(charSequence.toString(), sourceMessages);
        compilation.explicit = true;
        if (sourceMessages.seenErrors()) {
            throw new SyntaxException(sourceMessages);
        }
        compilation.compileToArchive(compilation.getModule(), str);
        if (sourceMessages.seenErrors()) {
            throw new SyntaxException(sourceMessages);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        if (moduleMethod.selector != 9) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            try {
                return m563catch(obj, (Procedure) obj2, (Procedure) obj3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "catch", 3, obj3);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "catch", 2, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (moduleMethod.selector != 9) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Procedure)) {
            return -786430;
        }
        callContext.value2 = obj2;
        if (!(obj3 instanceof Procedure)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Object m563catch(Object obj, Procedure procedure, Procedure procedure2) {
        try {
            return procedure.apply0();
        } catch (NamedException e) {
            return e.applyHandler(obj, procedure2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        if (moduleMethod.selector != 10) {
            return super.apply0(moduleMethod);
        }
        processCommandLineAssignments();
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        if (moduleMethod.selector != 10) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static void processCommandLineAssignments() {
        ApplicationMainSupport.processSetProperties();
    }
}
