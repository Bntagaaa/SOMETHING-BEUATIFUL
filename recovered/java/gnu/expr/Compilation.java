package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.ArrayClassLoader;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Label;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.PrimType;
import gnu.bytecode.SwitchState;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.kawa.functions.Convert;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrappedException;
import gnu.text.Lexer;
import gnu.text.Options;
import gnu.text.Path;
import gnu.text.SourceLocator;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Stack;
import java.util.Vector;
import java.util.jar.JarOutputStream;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kawa.Shell;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class Compilation implements SourceLocator {
    public static final int BODY_PARSED = 4;
    public static final int CALL_WITH_CONSUMER = 2;
    public static final int CALL_WITH_CONTINUATIONS = 4;
    public static final int CALL_WITH_RETURN = 1;
    public static final int CALL_WITH_TAILCALLS = 3;
    public static final int CALL_WITH_UNSPECIFIED = 0;
    public static final int CLASS_WRITTEN = 14;
    public static final int COMPILED = 12;
    public static final int COMPILE_SETUP = 10;
    public static final int ERROR_SEEN = 100;
    public static final int MODULE_NONSTATIC = -1;
    public static final int MODULE_STATIC = 1;
    public static final int MODULE_STATIC_DEFAULT = 0;
    public static final int MODULE_STATIC_RUN = 2;
    public static final int PROLOG_PARSED = 2;
    public static final int PROLOG_PARSING = 1;
    public static final int RESOLVED = 6;
    public static final int WALKED = 8;
    public static Type[] apply0args = null;
    public static Method apply0method = null;
    public static Type[] apply1args = null;
    public static Method apply1method = null;
    public static Type[] apply2args = null;
    public static Method apply2method = null;
    public static Method apply3method = null;
    public static Method apply4method = null;
    private static Type[] applyCpsArgs = null;
    public static Method applyCpsMethod = null;
    public static Type[] applyNargs = null;
    public static Method applyNmethod = null;
    public static Method[] applymethods = null;
    public static Field argsCallContextField = null;
    private static Compilation chainUninitialized = null;
    static Method checkArgCountMethod = null;
    public static String classPrefixDefault = null;
    private static final ThreadLocal<Compilation> current;
    public static boolean debugPrintExpr = false;
    public static boolean debugPrintFinalExpr;
    public static int defaultCallConvention;
    public static int defaultClassFileVersion;
    public static boolean emitSourceDebugExtAttr;
    public static final Field falseConstant;
    public static boolean generateMainDefault;
    public static Method getCallContextInstanceMethod;
    public static Method getCurrentEnvironmentMethod;
    public static final Method getLocation1EnvironmentMethod;
    public static final Method getLocation2EnvironmentMethod;
    public static final Method getLocationMethod;
    public static final Method getProcedureBindingMethod;
    public static final Method getSymbolProcedureMethod;
    public static final Method getSymbolValueMethod;
    public static boolean inlineOk;
    public static final Type[] int1Args;
    public static ClassType javaStringType;
    static Method makeListMethod;
    public static int moduleStatic;
    public static Field noArgsField;
    public static final ArrayType objArrayType;
    public static Options options;
    public static Field pcCallContextField;
    public static Field procCallContextField;
    public static ClassType scmBooleanType;
    public static ClassType scmKeywordType;
    public static ClassType scmListType;
    public static ClassType scmSequenceType;
    static final Method setNameMethod;
    public static final Type[] string1Arg;
    public static final Type[] sym1Arg;
    public static final Field trueConstant;
    public static ClassType typeApplet;
    public static ClassType typeCallContext;
    public static ClassType typeClass;
    public static ClassType typeClassType;
    public static final ClassType typeConsumer;
    public static ClassType typeEnvironment;
    public static ClassType typeLanguage;
    public static ClassType typeLocation;
    public static ClassType typeMethodProc;
    public static ClassType typeModuleBody;
    public static ClassType typeModuleMethod;
    public static ClassType typeModuleWithContext;
    public static ClassType typeObject;
    public static ClassType typeObjectType;
    public static ClassType typePair;
    public static ClassType typeProcedure;
    public static ClassType typeProcedure0;
    public static ClassType typeProcedure1;
    public static ClassType typeProcedure2;
    public static ClassType typeProcedure3;
    public static ClassType typeProcedure4;
    public static ClassType[] typeProcedureArray;
    public static ClassType typeProcedureN;
    public static ClassType typeRunnable;
    public static ClassType typeServlet;
    public static ClassType typeString;
    public static ClassType typeSymbol;
    public static ClassType typeType;
    public static ClassType typeValues;
    public static Options.OptionInfo warnAsError;
    public static Options.OptionInfo warnInvokeUnknownMethod;
    public static Options.OptionInfo warnUndefinedVariable;
    public static Options.OptionInfo warnUnknownMember;
    Variable callContextVar;
    Variable callContextVarForInit;
    ClassType[] classes;
    Initializer clinitChain;
    Method clinitMethod;
    public ClassType curClass;
    public LambdaExp curLambda;
    protected ScopeExp current_scope;
    public boolean explicit;
    public Stack<Expression> exprStack;
    Method forNameHelper;
    SwitchState fswitch;
    Field fswitchIndex;
    public boolean immediate;
    private int keyUninitialized;
    int langOptions;
    protected Language language;
    public Lexer lexer;
    public NameLookup lexical;
    LitTable litTable;
    ArrayClassLoader loader;
    int localFieldIndex;
    public ClassType mainClass;
    public ModuleExp mainLambda;
    int maxSelectorValue;
    protected SourceMessages messages;
    public Method method;
    int method_counter;
    public ModuleInfo minfo;
    public ClassType moduleClass;
    Field moduleInstanceMainField;
    Variable moduleInstanceVar;
    private Compilation nextUninitialized;
    int numClasses;
    boolean pedantic;
    public Stack<Object> pendingImports;
    private int state;
    public Variable thisDecl;
    public boolean mustCompile = ModuleExp.alwaysCompile;
    public Options currentOptions = new Options(options);
    public boolean generateMain = generateMainDefault;
    public String classPrefix = classPrefixDefault;

    public static char demangle2(char c, char c2) {
        switch ((c << 16) | c2) {
            case 4259949:
                break;
            case 4259956:
                break;
            case 4391020:
                break;
            case 4391021:
                break;
            case 4456561:
                break;
            case 4456564:
                break;
            case 4522097:
                break;
            case 4522104:
                break;
            case 4653170:
                break;
            case 4980802:
                break;
            case 4980803:
                break;
            case 4980816:
                break;
            case 4980851:
                break;
            case 5046371:
                break;
            case 5046382:
                break;
            case 5111917:
                break;
            case 5242979:
                break;
            case 5242988:
                break;
            case 5308533:
                break;
            case 5374018:
                break;
            case 5374019:
                break;
            case 5374032:
                break;
            case 5439555:
                break;
            case 5439596:
                break;
            case 5439601:
                break;
            case 5439604:
                break;
            case 5505132:
                break;
            case 5570672:
                break;
            case 5636162:
                break;
        }
        return '%';
    }

    public void freeLocalField(Field field) {
    }

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return false;
    }

    public int getState() {
        return this.state;
    }

    public void setState(int i) {
        this.state = i;
    }

    public boolean isPedantic() {
        return this.pedantic;
    }

    public void pushPendingImport(ModuleInfo moduleInfo, ScopeExp scopeExp, int i) {
        if (this.pendingImports == null) {
            this.pendingImports = new Stack<>();
        }
        this.pendingImports.push(moduleInfo);
        this.pendingImports.push(scopeExp);
        ReferenceExp referenceExp = new ReferenceExp((Object) null);
        referenceExp.setLine(this);
        this.pendingImports.push(referenceExp);
        this.pendingImports.push(Integer.valueOf(i));
    }

    static {
        Options options2 = new Options();
        options = options2;
        Boolean bool = Boolean.TRUE;
        warnUndefinedVariable = options2.add("warn-undefined-variable", 1, bool, "warn if no compiler-visible binding for a variable");
        Options.OptionInfo optionInfoAdd = options.add("warn-unknown-member", 1, bool, "warn if referencing an unknown method or field");
        warnUnknownMember = optionInfoAdd;
        warnInvokeUnknownMethod = options.add("warn-invoke-unknown-method", 1, optionInfoAdd, "warn if invoke calls an unknown method (subsumed by warn-unknown-member)");
        warnAsError = options.add("warn-as-error", 1, Boolean.FALSE, "Make all warnings into errors");
        defaultClassFileVersion = ClassType.JDK_1_5_VERSION;
        moduleStatic = 0;
        ClassType classType = Type.objectType;
        typeObject = classType;
        scmBooleanType = ClassType.make("java.lang.Boolean");
        ClassType classTypeMake = ClassType.make("java.lang.String");
        typeString = classTypeMake;
        javaStringType = classTypeMake;
        scmKeywordType = ClassType.make("gnu.expr.Keyword");
        scmSequenceType = ClassType.make("gnu.lists.Sequence");
        scmListType = ClassType.make("gnu.lists.LList");
        typePair = ClassType.make("gnu.lists.Pair");
        ArrayType arrayTypeMake = ArrayType.make(typeObject);
        objArrayType = arrayTypeMake;
        typeRunnable = ClassType.make("java.lang.Runnable");
        typeType = ClassType.make("gnu.bytecode.Type");
        typeObjectType = ClassType.make("gnu.bytecode.ObjectType");
        typeClass = Type.javalangClassType;
        typeClassType = ClassType.make("gnu.bytecode.ClassType");
        typeProcedure = ClassType.make("gnu.mapping.Procedure");
        typeLanguage = ClassType.make("gnu.expr.Language");
        typeEnvironment = ClassType.make("gnu.mapping.Environment");
        typeLocation = ClassType.make("gnu.mapping.Location");
        typeSymbol = ClassType.make("gnu.mapping.Symbol");
        getSymbolValueMethod = typeLanguage.getDeclaredMethod("getSymbolValue", 1);
        getSymbolProcedureMethod = typeLanguage.getDeclaredMethod("getSymbolProcedure", 1);
        ClassType classType2 = typeLocation;
        Type[] typeArr = Type.typeArray0;
        getLocationMethod = classType2.addMethod("get", typeArr, classType, 1);
        getProcedureBindingMethod = typeSymbol.addMethod("getProcedure", typeArr, typeProcedure, 1);
        trueConstant = scmBooleanType.getDeclaredField("TRUE");
        falseConstant = scmBooleanType.getDeclaredField("FALSE");
        setNameMethod = typeProcedure.getDeclaredMethod("setName", 1);
        Type type = Type.intType;
        int1Args = new Type[]{type};
        Type[] typeArr2 = {javaStringType};
        string1Arg = typeArr2;
        sym1Arg = typeArr2;
        getLocation1EnvironmentMethod = typeEnvironment.getDeclaredMethod("getLocation", 1);
        getLocation2EnvironmentMethod = typeEnvironment.addMethod("getLocation", new Type[]{typeSymbol, classType}, typeLocation, 17);
        ClassType classType3 = scmListType;
        makeListMethod = classType3.addMethod("makeList", new Type[]{arrayTypeMake, type}, classType3, 9);
        ClassType classType4 = typeEnvironment;
        getCurrentEnvironmentMethod = classType4.addMethod("getCurrent", typeArr, classType4, 9);
        apply0args = typeArr;
        ClassType classType5 = typeObject;
        apply1args = new Type[]{classType5};
        apply2args = new Type[]{classType5, classType5};
        applyNargs = new Type[]{arrayTypeMake};
        apply0method = typeProcedure.addMethod("apply0", typeArr, classType5, 17);
        apply1method = typeProcedure.addMethod("apply1", apply1args, typeObject, 1);
        apply2method = typeProcedure.addMethod("apply2", apply2args, typeObject, 1);
        ClassType classType6 = typeObject;
        apply3method = typeProcedure.addMethod("apply3", new Type[]{classType6, classType6, classType6}, classType6, 1);
        ClassType classType7 = typeObject;
        apply4method = typeProcedure.addMethod("apply4", new Type[]{classType7, classType7, classType7, classType7}, classType7, 1);
        applyNmethod = typeProcedure.addMethod("applyN", applyNargs, typeObject, 1);
        ClassType classType8 = typeProcedure;
        Type[] typeArr3 = {classType8, type};
        PrimType primType = Type.voidType;
        checkArgCountMethod = classType8.addMethod("checkArgCount", typeArr3, primType, 9);
        applymethods = new Method[]{apply0method, apply1method, apply2method, apply3method, apply4method, applyNmethod};
        typeProcedure0 = ClassType.make("gnu.mapping.Procedure0");
        typeProcedure1 = ClassType.make("gnu.mapping.Procedure1");
        typeProcedure2 = ClassType.make("gnu.mapping.Procedure2");
        typeProcedure3 = ClassType.make("gnu.mapping.Procedure3");
        typeProcedure4 = ClassType.make("gnu.mapping.Procedure4");
        typeProcedureN = ClassType.make("gnu.mapping.ProcedureN");
        typeModuleBody = ClassType.make("gnu.expr.ModuleBody");
        typeModuleWithContext = ClassType.make("gnu.expr.ModuleWithContext");
        typeApplet = ClassType.make("java.applet.Applet");
        typeServlet = ClassType.make("gnu.kawa.servlet.KawaServlet");
        typeCallContext = ClassType.make("gnu.mapping.CallContext");
        typeConsumer = ClassType.make("gnu.lists.Consumer");
        getCallContextInstanceMethod = typeCallContext.getDeclaredMethod("getInstance", 0);
        ClassType classTypeMake2 = ClassType.make("gnu.mapping.Values");
        typeValues = classTypeMake2;
        noArgsField = classTypeMake2.getDeclaredField("noArgs");
        pcCallContextField = typeCallContext.getDeclaredField("pc");
        typeMethodProc = ClassType.make("gnu.mapping.MethodProc");
        typeModuleMethod = ClassType.make("gnu.expr.ModuleMethod");
        argsCallContextField = typeCallContext.getDeclaredField("values");
        procCallContextField = typeCallContext.getDeclaredField("proc");
        Type[] typeArr4 = {typeCallContext};
        applyCpsArgs = typeArr4;
        applyCpsMethod = typeProcedure.addMethod("apply", typeArr4, primType, 1);
        typeProcedureArray = new ClassType[]{typeProcedure0, typeProcedure1, typeProcedure2, typeProcedure3, typeProcedure4};
        generateMainDefault = false;
        inlineOk = true;
        classPrefixDefault = "";
        emitSourceDebugExtAttr = true;
        current = new InheritableThreadLocal();
    }

    public boolean warnUndefinedVariable() {
        return this.currentOptions.getBoolean(warnUndefinedVariable);
    }

    public boolean warnUnknownMember() {
        return this.currentOptions.getBoolean(warnUnknownMember);
    }

    public boolean warnInvokeUnknownMethod() {
        return this.currentOptions.getBoolean(warnInvokeUnknownMethod);
    }

    public boolean warnAsError() {
        return this.currentOptions.getBoolean(warnAsError);
    }

    public final boolean getBooleanOption(String str, boolean z) {
        return this.currentOptions.getBoolean(str, z);
    }

    public final boolean getBooleanOption(String str) {
        return this.currentOptions.getBoolean(str);
    }

    public boolean usingCPStyle() {
        return defaultCallConvention == 4;
    }

    public boolean usingTailCalls() {
        return defaultCallConvention >= 3;
    }

    public final CodeAttr getCode() {
        return this.method.getCode();
    }

    public boolean generatingApplet() {
        return (this.langOptions & 16) != 0;
    }

    public boolean generatingServlet() {
        return (this.langOptions & 32) != 0;
    }

    public boolean sharedModuleDefs() {
        return (this.langOptions & 2) != 0;
    }

    public void setSharedModuleDefs(boolean z) {
        if (z) {
            this.langOptions |= 2;
        } else {
            this.langOptions &= -3;
        }
    }

    public final ClassType getModuleType() {
        return defaultCallConvention >= 2 ? typeModuleWithContext : typeModuleBody;
    }

    public void compileConstant(Object obj) {
        CodeAttr code = getCode();
        if (obj == null) {
            code.emitPushNull();
        } else if ((obj instanceof String) && !this.immediate) {
            code.emitPushString((String) obj);
        } else {
            code.emitGetStatic(compileConstantToField(obj));
        }
    }

    public Field compileConstantToField(Object obj) {
        Literal literalFindLiteral = this.litTable.findLiteral(obj);
        if (literalFindLiteral.field == null) {
            literalFindLiteral.assign(this.litTable);
        }
        return literalFindLiteral.field;
    }

    public boolean inlineOk(Expression expression) {
        if (expression instanceof LambdaExp) {
            LambdaExp lambdaExp = (LambdaExp) expression;
            Declaration declaration = lambdaExp.nameDecl;
            if (declaration == null || declaration.getSymbol() == null || !(declaration.context instanceof ModuleExp)) {
                return true;
            }
            if (this.immediate && declaration.isPublic() && !lambdaExp.getFlag(2048) && (this.curLambda == null || lambdaExp.topLevel() != this.curLambda.topLevel())) {
                return false;
            }
        }
        return inlineOk;
    }

    public boolean inlineOk(Procedure procedure) {
        if (this.immediate && (procedure instanceof ModuleMethod) && (((ModuleMethod) procedure).module.getClass().getClassLoader() instanceof ArrayClassLoader)) {
            return false;
        }
        return inlineOk;
    }

    public void compileConstant(Object obj, Target target) {
        if (target instanceof IgnoreTarget) {
            return;
        }
        if (obj instanceof Values) {
            Object[] values = ((Values) obj).getValues();
            if (target instanceof ConsumerTarget) {
                for (Object obj2 : values) {
                    compileConstant(obj2, target);
                }
                return;
            }
        }
        if (target instanceof ConditionalTarget) {
            ConditionalTarget conditionalTarget = (ConditionalTarget) target;
            getCode().emitGoto(getLanguage().isTrue(obj) ? conditionalTarget.ifTrue : conditionalTarget.ifFalse);
            return;
        }
        if (target instanceof StackTarget) {
            Type type = ((StackTarget) target).getType();
            if (type instanceof PrimType) {
                try {
                    String signature = type.getSignature();
                    CodeAttr code = getCode();
                    char cCharAt = (signature == null || signature.length() != 1) ? ' ' : signature.charAt(0);
                    if (obj instanceof Number) {
                        Number number = (Number) obj;
                        if (cCharAt == 'B') {
                            code.emitPushInt(number.byteValue());
                            return;
                        }
                        if (cCharAt == 'D') {
                            code.emitPushDouble(number.doubleValue());
                            return;
                        }
                        if (cCharAt == 'F') {
                            code.emitPushFloat(number.floatValue());
                            return;
                        }
                        if (cCharAt == 'S') {
                            code.emitPushInt(number.shortValue());
                            return;
                        } else if (cCharAt == 'I') {
                            code.emitPushInt(number.intValue());
                            return;
                        } else if (cCharAt == 'J') {
                            code.emitPushLong(number.longValue());
                            return;
                        }
                    }
                    if (cCharAt == 'C') {
                        code.emitPushInt(((PrimType) type).charValue(obj));
                        return;
                    } else if (cCharAt == 'Z') {
                        code.emitPushInt(PrimType.booleanValue(obj) ? 1 : 0);
                        return;
                    }
                } catch (ClassCastException unused) {
                }
            }
            if (type == typeClass && (obj instanceof ClassType)) {
                loadClassRef((ClassType) obj);
                return;
            }
            try {
                obj = type.coerceFromObject(obj);
            } catch (Exception unused2) {
                StringBuffer stringBuffer = new StringBuffer();
                if (obj == Values.empty) {
                    stringBuffer.append("cannot convert void to ");
                } else {
                    stringBuffer.append("cannot convert literal (of type ");
                    if (obj == null) {
                        stringBuffer.append("<null>");
                    } else {
                        stringBuffer.append(obj.getClass().getName());
                    }
                    stringBuffer.append(") to ");
                }
                stringBuffer.append(type.getName());
                error('w', stringBuffer.toString());
            }
        }
        compileConstant(obj);
        target.compileFromStack(this, obj == null ? target.getType() : Type.make(obj.getClass()));
    }

    private void dumpInitializers(Initializer initializer) {
        for (Initializer initializerReverse = Initializer.reverse(initializer); initializerReverse != null; initializerReverse = initializerReverse.next) {
            initializerReverse.emit(this);
        }
    }

    public ClassType findNamedClass(String str) {
        for (int i = 0; i < this.numClasses; i++) {
            if (str.equals(this.classes[i].getName())) {
                return this.classes[i];
            }
        }
        return null;
    }

    private static void putURLWords(String str, StringBuffer stringBuffer) {
        int iIndexOf = str.indexOf(46);
        if (iIndexOf > 0) {
            putURLWords(str.substring(iIndexOf + 1), stringBuffer);
            stringBuffer.append('.');
            str = str.substring(0, iIndexOf);
        }
        stringBuffer.append(str);
    }

    public static String mangleURI(String str) {
        int iLastIndexOf;
        int i;
        boolean z = str.indexOf(47) >= 0;
        int length = str.length();
        if (length > 6 && str.startsWith("class:")) {
            return str.substring(6);
        }
        if (length > 5 && str.charAt(4) == ':' && str.substring(0, 4).equalsIgnoreCase("http")) {
            str = str.substring(5);
            length -= 5;
            z = true;
        } else if (length > 4 && str.charAt(3) == ':' && str.substring(0, 3).equalsIgnoreCase("uri")) {
            str = str.substring(4);
            length -= 4;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        while (true) {
            int iIndexOf = str.indexOf(47, i2);
            int i3 = iIndexOf < 0 ? length : iIndexOf;
            boolean z2 = stringBuffer.length() == 0;
            if (z2 && z) {
                String strSubstring = str.substring(i2, i3);
                if (i3 - i2 > 4 && strSubstring.startsWith("www.")) {
                    strSubstring = strSubstring.substring(4);
                }
                putURLWords(strSubstring, stringBuffer);
            } else if (i2 != i3) {
                if (!z2) {
                    stringBuffer.append('.');
                }
                if (i3 == length && (iLastIndexOf = str.lastIndexOf(46, length)) > i2 + 1 && !z2 && ((i = length - iLastIndexOf) <= 4 || (i == 5 && str.endsWith("html")))) {
                    length -= i;
                    str = str.substring(0, length);
                    i3 = length;
                }
                stringBuffer.append(str.substring(i2, i3));
            }
            if (iIndexOf < 0) {
                return stringBuffer.toString();
            }
            i2 = iIndexOf + 1;
        }
    }

    public static String mangleName(String str) {
        return mangleName(str, -1);
    }

    public static String mangleNameIfNeeded(String str) {
        return (str == null || isValidJavaName(str)) ? str : mangleName(str, 0);
    }

    public static boolean isValidJavaName(String str) {
        int length = str.length();
        if (length == 0 || !Character.isJavaIdentifierStart(str.charAt(0))) {
            return false;
        }
        do {
            length--;
            if (length <= 0) {
                return true;
            }
        } while (Character.isJavaIdentifierPart(str.charAt(length)));
        return false;
    }

    public static String mangleName(String str, boolean z) {
        return mangleName(str, z ? 1 : -1);
    }

    public static String mangleName(String str, int i) {
        boolean z = i >= 0;
        int length = str.length();
        if (length == 6 && str.equals("*init*")) {
            return "<init>";
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (z2) {
                cCharAt = Character.toTitleCase(cCharAt);
                z2 = false;
            }
            if (Character.isDigit(cCharAt)) {
                if (i2 == 0) {
                    stringBuffer.append("$N");
                }
                stringBuffer.append(cCharAt);
            } else if (Character.isLetter(cCharAt) || cCharAt == '_') {
                stringBuffer.append(cCharAt);
            } else if (cCharAt == '$') {
                stringBuffer.append(i > 1 ? "$$" : "$");
            } else {
                if (cCharAt == '[') {
                    stringBuffer.append("$LB");
                } else if (cCharAt == ']') {
                    stringBuffer.append("$RB");
                } else if (cCharAt != '^') {
                    switch (cCharAt) {
                        case '!':
                            stringBuffer.append("$Ex");
                            break;
                        case '\"':
                            stringBuffer.append("$Dq");
                            break;
                        case '#':
                            stringBuffer.append("$Nm");
                            break;
                        default:
                            switch (cCharAt) {
                                case '%':
                                    stringBuffer.append("$Pc");
                                    break;
                                case '&':
                                    stringBuffer.append("$Am");
                                    break;
                                case '\'':
                                    stringBuffer.append("$Sq");
                                    break;
                                case '(':
                                    stringBuffer.append("$LP");
                                    break;
                                case ')':
                                    stringBuffer.append("$RP");
                                    break;
                                case '*':
                                    stringBuffer.append("$St");
                                    break;
                                case '+':
                                    stringBuffer.append("$Pl");
                                    break;
                                case ',':
                                    stringBuffer.append("$Cm");
                                    break;
                                case '-':
                                    if (z) {
                                        stringBuffer.append("$Mn");
                                        break;
                                    } else {
                                        int i3 = i2 + 1;
                                        char cCharAt2 = i3 < length ? str.charAt(i3) : (char) 0;
                                        if (cCharAt2 == '>') {
                                            stringBuffer.append("$To$");
                                            i2 = i3;
                                            break;
                                        } else if (!Character.isLowerCase(cCharAt2)) {
                                            stringBuffer.append("$Mn");
                                            break;
                                        }
                                    }
                                    break;
                                case '.':
                                    stringBuffer.append("$Dt");
                                    break;
                                case '/':
                                    stringBuffer.append("$Sl");
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case ':':
                                            stringBuffer.append("$Cl");
                                            break;
                                        case ';':
                                            stringBuffer.append("$SC");
                                            break;
                                        case '<':
                                            stringBuffer.append("$Ls");
                                            break;
                                        case '=':
                                            stringBuffer.append("$Eq");
                                            break;
                                        case '>':
                                            stringBuffer.append("$Gr");
                                            break;
                                        case '?':
                                            char cCharAt3 = stringBuffer.length() > 0 ? stringBuffer.charAt(0) : (char) 0;
                                            if (!z && i2 + 1 == length && Character.isLowerCase(cCharAt3)) {
                                                stringBuffer.setCharAt(0, Character.toTitleCase(cCharAt3));
                                                stringBuffer.insert(0, "is");
                                                break;
                                            } else {
                                                stringBuffer.append("$Qu");
                                                break;
                                            }
                                            break;
                                        case '@':
                                            stringBuffer.append("$At");
                                            break;
                                        default:
                                            switch (cCharAt) {
                                                case '{':
                                                    stringBuffer.append("$LC");
                                                    break;
                                                case '|':
                                                    stringBuffer.append("$VB");
                                                    break;
                                                case '}':
                                                    stringBuffer.append("$RC");
                                                    break;
                                                case '~':
                                                    stringBuffer.append("$Tl");
                                                    break;
                                                default:
                                                    stringBuffer.append(Typography.dollar);
                                                    stringBuffer.append(Character.forDigit((cCharAt >> '\f') & 15, 16));
                                                    stringBuffer.append(Character.forDigit((cCharAt >> '\b') & 15, 16));
                                                    stringBuffer.append(Character.forDigit((cCharAt >> 4) & 15, 16));
                                                    stringBuffer.append(Character.forDigit(cCharAt & 15, 16));
                                                    break;
                                            }
                                    }
                            }
                    }
                } else {
                    stringBuffer.append("$Up");
                }
                if (!z) {
                    z2 = true;
                }
            }
            i2++;
        }
        String string = stringBuffer.toString();
        return string.equals(str) ? str : string;
    }

    public static String demangleName(String str) {
        return demangleName(str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String demangleName(java.lang.String r16, boolean r17) {
        /*
            r0 = r16
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            int r2 = r0.length()
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
        L10:
            if (r4 >= r2) goto Lc2
            char r8 = r0.charAt(r4)
            if (r6 == 0) goto L1f
            if (r17 != 0) goto L1f
            char r8 = java.lang.Character.toLowerCase(r8)
            r6 = 0
        L1f:
            r9 = 1
            if (r17 != 0) goto L5d
            r10 = 105(0x69, float:1.47E-43)
            if (r8 != r10) goto L5d
            if (r4 != 0) goto L5d
            r10 = 2
            if (r2 <= r10) goto L5d
            int r10 = r4 + 1
            char r11 = r0.charAt(r10)
            r12 = 115(0x73, float:1.61E-43)
            if (r11 != r12) goto L5d
            int r11 = r4 + 2
            char r11 = r0.charAt(r11)
            boolean r12 = java.lang.Character.isLowerCase(r11)
            if (r12 != 0) goto L5d
            boolean r5 = java.lang.Character.isUpperCase(r11)
            if (r5 != 0) goto L53
            boolean r5 = java.lang.Character.isTitleCase(r11)
            if (r5 == 0) goto L4e
            goto L53
        L4e:
            r4 = r10
        L4f:
            r5 = 1
        L50:
            r7 = 1
            goto Lbf
        L53:
            char r5 = java.lang.Character.toLowerCase(r11)
            r1.append(r5)
            int r4 = r4 + 2
            goto L4f
        L5d:
            r10 = 36
            if (r8 != r10) goto L96
            int r11 = r4 + 2
            if (r11 >= r2) goto L96
            int r12 = r4 + 1
            char r12 = r0.charAt(r12)
            char r13 = r0.charAt(r11)
            char r14 = demangle2(r12, r13)
            r15 = 65535(0xffff, float:9.1834E-41)
            if (r14 == r15) goto L7e
            r1.append(r14)
        L7b:
            r4 = r11
            r6 = 1
            goto L50
        L7e:
            r11 = 84
            if (r12 != r11) goto Lbc
            r11 = 111(0x6f, float:1.56E-43)
            if (r13 != r11) goto Lbc
            int r11 = r4 + 3
            if (r11 >= r2) goto Lbc
            char r12 = r0.charAt(r11)
            if (r12 != r10) goto Lbc
            java.lang.String r4 = "->"
            r1.append(r4)
            goto L7b
        L96:
            if (r17 != 0) goto Lbc
            if (r4 <= r9) goto Lbc
            boolean r10 = java.lang.Character.isUpperCase(r8)
            if (r10 != 0) goto La6
            boolean r10 = java.lang.Character.isTitleCase(r8)
            if (r10 == 0) goto Lbc
        La6:
            int r10 = r4 + (-1)
            char r10 = r0.charAt(r10)
            boolean r10 = java.lang.Character.isLowerCase(r10)
            if (r10 == 0) goto Lbc
            r7 = 45
            r1.append(r7)
            char r8 = java.lang.Character.toLowerCase(r8)
            r7 = 1
        Lbc:
            r1.append(r8)
        Lbf:
            int r4 = r4 + r9
            goto L10
        Lc2:
            if (r5 == 0) goto Lc9
            r2 = 63
            r1.append(r2)
        Lc9:
            if (r7 == 0) goto Lcf
            java.lang.String r0 = r1.toString()
        Lcf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.Compilation.demangleName(java.lang.String, boolean):java.lang.String");
    }

    public String generateClassName(String str) {
        String strMangleName = mangleName(str, true);
        if (this.mainClass != null) {
            strMangleName = this.mainClass.getName() + Typography.dollar + strMangleName;
        } else if (this.classPrefix != null) {
            strMangleName = a.m(new StringBuilder(), this.classPrefix, strMangleName);
        }
        if (findNamedClass(strMangleName) == null) {
            return strMangleName;
        }
        int i = 0;
        while (true) {
            String str2 = strMangleName + i;
            if (findNamedClass(str2) == null) {
                return str2;
            }
            i++;
        }
    }

    public Compilation(Language language, SourceMessages sourceMessages, NameLookup nameLookup) {
        this.language = language;
        this.messages = sourceMessages;
        this.lexical = nameLookup;
    }

    public void walkModule(ModuleExp moduleExp) throws IOException {
        if (debugPrintExpr) {
            OutPort outPortErrDefault = OutPort.errDefault();
            outPortErrDefault.println("[Module:" + moduleExp.getName());
            moduleExp.print(outPortErrDefault);
            outPortErrDefault.println(']');
            outPortErrDefault.flush();
        }
        InlineCalls.inlineCalls(moduleExp, this);
        PushApply.pushApply(moduleExp);
        ChainLambdas.chainLambdas(moduleExp, this);
        FindTailCalls.findTailCalls(moduleExp, this);
    }

    public void outputClass(String str) throws IOException {
        char c = File.separatorChar;
        for (int i = 0; i < this.numClasses; i++) {
            ClassType classType = this.classes[i];
            StringBuilder sbP = a.p(str);
            sbP.append(classType.getName().replace('.', c));
            sbP.append(".class");
            String string = sbP.toString();
            String parent = new File(string).getParent();
            if (parent != null) {
                new File(parent).mkdirs();
            }
            classType.writeToFile(string);
        }
        this.minfo.cleanupAfterCompilation();
    }

    public void cleanupAfterCompilation() {
        for (int i = 0; i < this.numClasses; i++) {
            this.classes[i].cleanupAfterCompilation();
        }
        this.classes = null;
        ModuleInfo moduleInfo = this.minfo;
        moduleInfo.comp = null;
        ModuleExp moduleExp = moduleInfo.exp;
        if (moduleExp != null) {
            moduleExp.body = null;
        }
        this.mainLambda.body = null;
        this.mainLambda = null;
        if (this.immediate) {
            return;
        }
        this.litTable = null;
    }

    public void compileToArchive(ModuleExp moduleExp, String str) throws IOException {
        boolean z;
        ZipOutputStream zipOutputStream;
        if (str.endsWith(".zip")) {
            z = false;
        } else if (str.endsWith(".jar")) {
            z = true;
        } else {
            str = str.concat(".zip");
            z = false;
        }
        process(12);
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        if (z) {
            zipOutputStream = new JarOutputStream(new FileOutputStream(file));
        } else {
            zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
        }
        byte[][] bArr = new byte[this.numClasses][];
        CRC32 crc32 = new CRC32();
        for (int i = 0; i < this.numClasses; i++) {
            ClassType classType = this.classes[i];
            bArr[i] = classType.writeToArray();
            ZipEntry zipEntry = new ZipEntry(classType.getName().replace('.', '/') + ".class");
            zipEntry.setSize((long) bArr[i].length);
            crc32.reset();
            byte[] bArr2 = bArr[i];
            crc32.update(bArr2, 0, bArr2.length);
            zipEntry.setCrc(crc32.getValue());
            zipOutputStream.putNextEntry(zipEntry);
            zipOutputStream.write(bArr[i]);
        }
        zipOutputStream.close();
    }

    private void registerClass(ClassType classType) {
        ClassType[] classTypeArr = this.classes;
        if (classTypeArr == null) {
            this.classes = new ClassType[20];
        } else {
            int i = this.numClasses;
            if (i >= classTypeArr.length) {
                ClassType[] classTypeArr2 = new ClassType[classTypeArr.length * 2];
                System.arraycopy(classTypeArr, 0, classTypeArr2, 0, i);
                this.classes = classTypeArr2;
            }
        }
        classType.addModifiers(classType.isInterface() ? 1 : 33);
        ClassType classType2 = this.mainClass;
        if (classType == classType2 && this.numClasses > 0) {
            ClassType[] classTypeArr3 = this.classes;
            ClassType classType3 = classTypeArr3[0];
            classTypeArr3[0] = classType2;
            classType = classType3;
        }
        ClassType[] classTypeArr4 = this.classes;
        int i2 = this.numClasses;
        this.numClasses = i2 + 1;
        classTypeArr4[i2] = classType;
    }

    public void addClass(ClassType classType) {
        if (this.mainLambda.filename != null) {
            if (emitSourceDebugExtAttr) {
                classType.setStratum(getLanguage().getName());
            }
            classType.setSourceFile(this.mainLambda.filename);
        }
        registerClass(classType);
        classType.setClassfileVersion(defaultClassFileVersion);
    }

    public boolean makeRunnable() {
        return (generatingServlet() || generatingApplet() || getModule().staticInitRun()) ? false : true;
    }

    public void addMainClass(ModuleExp moduleExp) {
        ClassType classTypeClassFor = moduleExp.classFor(this);
        this.mainClass = classTypeClassFor;
        ClassType[] interfaces = moduleExp.getInterfaces();
        if (interfaces != null) {
            classTypeClassFor.setInterfaces(interfaces);
        }
        ClassType superType = moduleExp.getSuperType();
        if (superType == null) {
            if (generatingApplet()) {
                superType = typeApplet;
            } else if (generatingServlet()) {
                superType = typeServlet;
            } else {
                superType = getModuleType();
            }
        }
        if (makeRunnable()) {
            classTypeClassFor.addInterface(typeRunnable);
        }
        classTypeClassFor.setSuper(superType);
        moduleExp.type = classTypeClassFor;
        addClass(classTypeClassFor);
        getConstructor(this.mainClass, moduleExp);
    }

    public final Method getConstructor(LambdaExp lambdaExp) {
        return getConstructor(lambdaExp.getHeapFrameType(), lambdaExp);
    }

    public static final Method getConstructor(ClassType classType, LambdaExp lambdaExp) {
        Type[] typeArr;
        Field field;
        Method declaredMethod = classType.getDeclaredMethod("<init>", 0);
        if (declaredMethod != null) {
            return declaredMethod;
        }
        if ((lambdaExp instanceof ClassExp) && (field = lambdaExp.staticLinkField) != null) {
            typeArr = new Type[]{field.getType()};
        } else {
            typeArr = apply0args;
        }
        return classType.addMethod("<init>", 1, typeArr, Type.voidType);
    }

    public final void generateConstructor(LambdaExp lambdaExp) {
        generateConstructor(lambdaExp.getHeapFrameType(), lambdaExp);
    }

    public final void generateConstructor(ClassType classType, LambdaExp lambdaExp) {
        ModuleInfo moduleInfo;
        Method method = this.method;
        Variable variable = this.callContextVar;
        this.callContextVar = null;
        ClassType classType2 = this.curClass;
        this.curClass = classType;
        Method constructor = getConstructor(classType, lambdaExp);
        classType.constructor = constructor;
        this.method = constructor;
        CodeAttr codeAttrStartCode = constructor.startCode();
        boolean z = lambdaExp instanceof ClassExp;
        if (z && lambdaExp.staticLinkField != null) {
            codeAttrStartCode.emitPushThis();
            codeAttrStartCode.emitLoad(codeAttrStartCode.getCurrentScope().getVariable(1));
            codeAttrStartCode.emitPutField(lambdaExp.staticLinkField);
        }
        ClassExp.invokeDefaultSuperConstructor(classType.getSuperclass(), this, lambdaExp);
        if (this.curClass == this.mainClass && (moduleInfo = this.minfo) != null && moduleInfo.sourcePath != null) {
            codeAttrStartCode.emitPushThis();
            codeAttrStartCode.emitInvokeStatic(ClassType.make("gnu.expr.ModuleInfo").getDeclaredMethod("register", 1));
        }
        if (lambdaExp != null && lambdaExp.initChain != null) {
            LambdaExp lambdaExp2 = this.curLambda;
            LambdaExp lambdaExp3 = new LambdaExp();
            this.curLambda = lambdaExp3;
            lambdaExp3.closureEnv = codeAttrStartCode.getArg(0);
            this.curLambda.outer = lambdaExp2;
            while (true) {
                Initializer initializer = lambdaExp.initChain;
                if (initializer == null) {
                    break;
                }
                lambdaExp.initChain = null;
                dumpInitializers(initializer);
            }
            this.curLambda = lambdaExp2;
        }
        if (z) {
            callInitMethods(((ClassExp) lambdaExp).getCompiledClassType(this), new Vector<>(10));
        }
        codeAttrStartCode.emitReturn();
        this.method = method;
        this.curClass = classType2;
        this.callContextVar = variable;
    }

    public void callInitMethods(ClassType classType, Vector<ClassType> vector) {
        if (classType == null) {
            return;
        }
        String name = classType.getName();
        if ("java.lang.Object".equals(name)) {
            return;
        }
        int size = vector.size();
        do {
            size--;
            if (size < 0) {
                vector.addElement(classType);
                ClassType[] interfaces = classType.getInterfaces();
                int i = 0;
                if (interfaces != null) {
                    for (ClassType classType2 : interfaces) {
                        callInitMethods(classType2, vector);
                    }
                }
                if (classType.isInterface()) {
                    i = 1;
                    if (classType instanceof PairClassType) {
                        classType = ((PairClassType) classType).instanceType;
                    } else {
                        try {
                            classType = (ClassType) Type.make(Class.forName(classType.getName() + "$class"));
                        } catch (Throwable unused) {
                            return;
                        }
                    }
                }
                Method declaredMethod = classType.getDeclaredMethod("$finit$", i);
                if (declaredMethod != null) {
                    CodeAttr code = getCode();
                    code.emitPushThis();
                    code.emitInvoke(declaredMethod);
                    return;
                }
                return;
            }
        } while (vector.elementAt(size).getName() != name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void generateMatchMethods(gnu.expr.LambdaExp r29) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.Compilation.generateMatchMethods(gnu.expr.LambdaExp):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void generateApplyMethodsWithContext(gnu.expr.LambdaExp r28) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.Compilation.generateApplyMethodsWithContext(gnu.expr.LambdaExp):void");
    }

    public void generateApplyMethodsWithoutContext(LambdaExp lambdaExp) {
        int i;
        int i2;
        boolean z;
        int i3;
        Method method;
        Variable variable;
        LambdaExp lambdaExp2;
        SourceLocator sourceLocator;
        Method method2;
        int i4;
        Variable arg;
        Declaration declaration;
        int i5;
        Type[] typeArr;
        Vector vector = lambdaExp.applyMethods;
        int size = vector == null ? 0 : vector.size();
        if (size == 0) {
            return;
        }
        ClassType classType = this.curClass;
        ClassType heapFrameType = lambdaExp.getHeapFrameType();
        this.curClass = heapFrameType;
        ClassType classType2 = typeModuleMethod;
        if (!heapFrameType.getSuperclass().isSubtype(typeModuleBody)) {
            this.curClass = this.moduleClass;
        }
        Method method3 = this.method;
        int i6 = defaultCallConvention >= 2 ? 5 : 0;
        CodeAttr codeAttrStartCode = null;
        while (i6 < 6) {
            int i7 = 0;
            boolean z2 = false;
            SwitchState switchStateStartSwitch = null;
            String str = null;
            Type[] typeArr2 = null;
            while (i7 < size) {
                LambdaExp lambdaExp3 = (LambdaExp) lambdaExp.applyMethods.elementAt(i7);
                Method[] methodArr = lambdaExp3.primMethods;
                int length = methodArr.length;
                int i8 = i7;
                int i9 = lambdaExp3.max_args;
                boolean z3 = z2;
                int i10 = (i9 < 0 || i9 >= lambdaExp3.min_args + length) ? 1 : 0;
                if (i6 < 5) {
                    int i11 = i6 - lambdaExp3.min_args;
                    z = i11 < 0 || i11 >= length || (i11 == length + (-1) && i10 != 0);
                    i = i11;
                    i2 = 0;
                    length = 1;
                } else {
                    int i12 = 5 - lambdaExp3.min_args;
                    i = length - 1;
                    boolean z4 = i12 > 0 && length <= i12 && i10 == 0;
                    i2 = i10;
                    z = z4;
                }
                if (!z) {
                    if (!z3) {
                        if (i6 < 5) {
                            String strD = a.d(i6, "apply");
                            typeArr = new Type[i6 + 1];
                            for (int i13 = i6; i13 > 0; i13--) {
                                typeArr[i13] = typeObject;
                            }
                            str = strD;
                            i5 = 2;
                        } else {
                            i5 = 2;
                            typeArr = new Type[2];
                            typeArr[1] = objArrayType;
                            str = "applyN";
                        }
                        typeArr2 = typeArr;
                        typeArr2[0] = classType2;
                        Method methodAddMethod = this.curClass.addMethod(str, typeArr2, defaultCallConvention >= i5 ? Type.voidType : Type.objectType, 1);
                        this.method = methodAddMethod;
                        codeAttrStartCode = methodAddMethod.startCode();
                        codeAttrStartCode.emitLoad(codeAttrStartCode.getArg(1));
                        codeAttrStartCode.emitGetField(classType2.getField("selector"));
                        switchStateStartSwitch = codeAttrStartCode.startSwitch();
                        z3 = true;
                    }
                    String str2 = str;
                    Type[] typeArr3 = typeArr2;
                    CodeAttr codeAttr = codeAttrStartCode;
                    SwitchState switchState = switchStateStartSwitch;
                    switchState.addCase(lambdaExp3.getSelectorValue(this), codeAttr);
                    SourceLocator sourceLocatorSwapSourceLocator = this.messages.swapSourceLocator(lambdaExp3);
                    int lineNumber = lambdaExp3.getLineNumber();
                    if (lineNumber > 0) {
                        codeAttr.putLineNumber(lambdaExp3.getFileName(), lineNumber);
                    }
                    Method method4 = methodArr[i];
                    Type[] parameterTypes = method4.getParameterTypes();
                    int i14 = lambdaExp3.min_args + i;
                    if (i6 <= 4 || length <= 1) {
                        i3 = i2;
                        method = method4;
                        variable = null;
                    } else {
                        PrimType primType = Type.intType;
                        Variable variableAddLocal = codeAttr.addLocal(primType);
                        i3 = i2;
                        method = method4;
                        codeAttr.emitLoad(codeAttr.getArg(2));
                        codeAttr.emitArrayLength();
                        int i15 = lambdaExp3.min_args;
                        if (i15 != 0) {
                            codeAttr.emitPushInt(i15);
                            codeAttr.emitSub(primType);
                        }
                        codeAttr.emitStore(variableAddLocal);
                        variable = variableAddLocal;
                    }
                    int i16 = !method.getStaticFlag() ? 1 : 0;
                    int i17 = i14 + i3 < parameterTypes.length ? 1 : 0;
                    if (i16 + i17 > 0) {
                        codeAttr.emitPushThis();
                        ClassType classType3 = this.curClass;
                        ClassType classType4 = this.moduleClass;
                        if (classType3 == classType4 && this.mainClass != classType4) {
                            codeAttr.emitGetField(this.moduleInstanceMainField);
                        }
                    }
                    Declaration declarationFirstDecl = lambdaExp3.firstDecl();
                    if (declarationFirstDecl != null && declarationFirstDecl.isThisParameter()) {
                        declarationFirstDecl = declarationFirstDecl.nextDecl();
                    }
                    int i18 = 0;
                    int i19 = 0;
                    while (i18 < i14) {
                        if (variable != null && i18 >= lambdaExp3.min_args) {
                            codeAttr.emitLoad(variable);
                            codeAttr.emitIfIntLEqZero();
                            codeAttr.emitInvoke(methodArr[i18 - lambdaExp3.min_args]);
                            codeAttr.emitElse();
                            i19++;
                            codeAttr.emitInc(variable, (short) -1);
                        }
                        if (i6 <= 4) {
                            arg = codeAttr.getArg(i18 + 2);
                            codeAttr.emitLoad(arg);
                            i4 = i14;
                        } else {
                            i4 = i14;
                            codeAttr.emitLoad(codeAttr.getArg(2));
                            codeAttr.emitPushInt(i18);
                            codeAttr.emitArrayLoad(Type.objectType);
                            arg = null;
                        }
                        Type type = declarationFirstDecl.getType();
                        Variable variable2 = variable;
                        if (type != Type.objectType) {
                            SourceLocator sourceLocatorSwapSourceLocator2 = this.messages.swapSourceLocator(declarationFirstDecl);
                            declaration = declarationFirstDecl;
                            CheckedTarget.emitCheckedCoerce(this, lambdaExp3, i18 + 1, type, arg);
                            this.messages.swapSourceLocator(sourceLocatorSwapSourceLocator2);
                        } else {
                            declaration = declarationFirstDecl;
                        }
                        declarationFirstDecl = declaration.nextDecl();
                        i18++;
                        i14 = i4;
                        variable = variable2;
                    }
                    int i20 = i14;
                    Variable variable3 = variable;
                    if (i3 != 0) {
                        Type type2 = parameterTypes[i17 + i20];
                        if (type2 instanceof ArrayType) {
                            lambdaExp2 = lambdaExp3;
                            sourceLocator = sourceLocatorSwapSourceLocator;
                            method2 = method;
                            varArgsToArray(lambdaExp2, i20, variable3, type2, null);
                        } else {
                            lambdaExp2 = lambdaExp3;
                            sourceLocator = sourceLocatorSwapSourceLocator;
                            method2 = method;
                            if ("gnu.lists.LList".equals(type2.getName())) {
                                codeAttr.emitLoad(codeAttr.getArg(2));
                                codeAttr.emitPushInt(i20);
                                codeAttr.emitInvokeStatic(makeListMethod);
                            } else {
                                if (type2 != typeCallContext) {
                                    throw new RuntimeException("unsupported #!rest type:" + type2);
                                }
                                codeAttr.emitLoad(codeAttr.getArg(2));
                            }
                        }
                    } else {
                        lambdaExp2 = lambdaExp3;
                        sourceLocator = sourceLocatorSwapSourceLocator;
                        method2 = method;
                    }
                    codeAttr.emitInvoke(method2);
                    while (true) {
                        i19--;
                        if (i19 < 0) {
                            break;
                        } else {
                            codeAttr.emitFi();
                        }
                    }
                    if (defaultCallConvention < 2) {
                        Target.pushObject.compileFromStack(this, lambdaExp2.getReturnType());
                    }
                    this.messages.swapSourceLocator(sourceLocator);
                    codeAttr.emitReturn();
                    codeAttrStartCode = codeAttr;
                    str = str2;
                    typeArr2 = typeArr3;
                    switchStateStartSwitch = switchState;
                }
                z2 = z3;
                i7 = i8 + 1;
            }
            if (z2) {
                switchStateStartSwitch.addDefault(codeAttrStartCode);
                if (defaultCallConvention >= 2) {
                    codeAttrStartCode.emitInvokeStatic(typeModuleMethod.getDeclaredMethod("applyError", 0));
                } else {
                    int i21 = (i6 > 4 ? 2 : i6 + 1) + 1;
                    for (int i22 = 0; i22 < i21; i22++) {
                        codeAttrStartCode.emitLoad(codeAttrStartCode.getArg(i22));
                    }
                    codeAttrStartCode.emitInvokeSpecial(typeModuleBody.getDeclaredMethod(str, typeArr2));
                }
                codeAttrStartCode.emitReturn();
                switchStateStartSwitch.finish(codeAttrStartCode);
            }
            i6++;
        }
        this.method = method3;
        this.curClass = classType;
    }

    private void varArgsToArray(LambdaExp lambdaExp, int i, Variable variable, Type type, Variable variable2) {
        CodeAttr code = getCode();
        Type componentType = ((ArrayType) type).getComponentType();
        boolean zEquals = "java.lang.Object".equals(componentType.getName());
        if (variable2 != null && zEquals) {
            code.emitLoad(variable2);
            code.emitPushInt(i);
            code.emitInvokeVirtual(typeCallContext.getDeclaredMethod("getRestArgsArray", 1));
            return;
        }
        if (i == 0 && zEquals) {
            code.emitLoad(code.getArg(2));
            return;
        }
        code.pushScope();
        if (variable == null) {
            PrimType primType = Type.intType;
            Variable variableAddLocal = code.addLocal(primType);
            if (variable2 != null) {
                code.emitLoad(variable2);
                code.emitInvoke(typeCallContext.getDeclaredMethod("getArgCount", 0));
            } else {
                code.emitLoad(code.getArg(2));
                code.emitArrayLength();
            }
            if (i != 0) {
                code.emitPushInt(i);
                code.emitSub(primType);
            }
            code.emitStore(variableAddLocal);
            variable = variableAddLocal;
        }
        code.emitLoad(variable);
        code.emitNewArray(componentType.getImplementationType());
        Label label = new Label(code);
        Label label2 = new Label(code);
        label2.setTypes(code);
        code.emitGoto(label);
        label2.define(code);
        code.emitDup(1);
        code.emitLoad(variable);
        if (variable2 != null) {
            code.emitLoad(variable2);
        } else {
            code.emitLoad(code.getArg(2));
        }
        code.emitLoad(variable);
        if (i != 0) {
            code.emitPushInt(i);
            code.emitAdd(Type.intType);
        }
        if (variable2 != null) {
            code.emitInvokeVirtual(typeCallContext.getDeclaredMethod("getArgAsObject", 1));
        } else {
            code.emitArrayLoad(Type.objectType);
        }
        if (!zEquals) {
            CheckedTarget.emitCheckedCoerce(this, lambdaExp, lambdaExp.getName(), 0, componentType, null);
        }
        code.emitArrayStore(componentType);
        label.define(code);
        code.emitInc(variable, (short) -1);
        code.emitLoad(variable);
        code.emitGotoIfIntGeZero(label2);
        code.popScope();
    }

    private Method startClassInit() {
        Method declaredMethod;
        Method methodAddMethod = this.curClass.addMethod("<clinit>", apply0args, Type.voidType, 9);
        this.method = methodAddMethod;
        CodeAttr codeAttrStartCode = methodAddMethod.startCode();
        if ((this.generateMain || generatingApplet() || generatingServlet()) && (declaredMethod = ((ClassType) Type.make(getLanguage().getClass())).getDeclaredMethod("registerEnvironment", 0)) != null) {
            codeAttrStartCode.emitInvokeStatic(declaredMethod);
        }
        return this.method;
    }

    public void process(int i) {
        Compilation saveCurrent = setSaveCurrent(this);
        try {
            try {
                ModuleExp module = getModule();
                if (i >= 4 && getState() < 3) {
                    setState(3);
                    this.language.parse(this, 0);
                    this.lexer.close();
                    this.lexer = null;
                    setState(this.messages.seenErrors() ? 100 : 4);
                    if (this.pendingImports != null) {
                        return;
                    }
                }
                if (i >= 6 && getState() < 6) {
                    addMainClass(module);
                    this.language.resolve(this);
                    setState(this.messages.seenErrors() ? 100 : 6);
                }
                if (!this.explicit && !this.immediate && this.minfo.checkCurrent(ModuleManager.getInstance(), System.currentTimeMillis())) {
                    this.minfo.cleanupAfterCompilation();
                    setState(14);
                }
                if (i >= 8 && getState() < 8) {
                    walkModule(module);
                    setState(this.messages.seenErrors() ? 100 : 8);
                }
                if (i >= 10 && getState() < 10) {
                    this.litTable = new LitTable(this);
                    module.setCanRead(true);
                    FindCapturedVars.findCapturedVars(module, this);
                    module.allocFields(this);
                    module.allocChildMethods(this);
                    setState(this.messages.seenErrors() ? 100 : 10);
                }
                if (i >= 12 && getState() < 12) {
                    if (this.immediate) {
                        this.loader = new ArrayClassLoader(ObjectType.getContextClassLoader());
                    }
                    generateBytecode();
                    setState(this.messages.seenErrors() ? 100 : 12);
                }
                if (i >= 14 && getState() < 14) {
                    outputClass(ModuleManager.getInstance().getCompilationDirectory());
                    setState(14);
                }
            } catch (SyntaxException e) {
                setState(100);
                if (e.getMessages() == getMessages()) {
                }
                throw new RuntimeException("confussing syntax error: " + e);
            } catch (IOException e2) {
                e2.printStackTrace();
                error('f', "caught " + e2);
                setState(100);
            }
        } finally {
            restoreCurrent(saveCurrent);
        }
    }

    public void generateBytecode() throws IOException {
        Type[] typeArr;
        Method method;
        Label label;
        String strSubstring;
        int i;
        Method method2;
        ModuleExp module = getModule();
        if (debugPrintFinalExpr) {
            OutPort outPortErrDefault = OutPort.errDefault();
            outPortErrDefault.println("[Compiling final " + module.getName() + " to " + this.mainClass.getName() + ":");
            module.print(outPortErrDefault);
            outPortErrDefault.println(']');
            outPortErrDefault.flush();
        }
        ClassType moduleType = getModuleType();
        Label label2 = null;
        if (this.mainClass.getSuperclass().isSubtype(moduleType)) {
            this.moduleClass = this.mainClass;
        } else {
            ClassType classType = new ClassType(generateClassName("frame"));
            this.moduleClass = classType;
            classType.setSuper(moduleType);
            addClass(this.moduleClass);
            generateConstructor(this.moduleClass, null);
        }
        this.curClass = module.type;
        LambdaExp lambdaExp = this.curLambda;
        this.curLambda = module;
        if (module.isHandlingTailCalls()) {
            typeArr = new Type[]{typeCallContext};
        } else {
            int i2 = module.min_args;
            if (i2 != module.max_args || i2 > 4) {
                typeArr = new Type[]{new ArrayType(typeObject)};
            } else {
                Type[] typeArr2 = new Type[i2];
                while (true) {
                    i2--;
                    if (i2 < 0) {
                        break;
                    } else {
                        typeArr2[i2] = typeObject;
                    }
                }
                typeArr = typeArr2;
            }
        }
        Variable variable = module.heapFrame;
        boolean zIsStatic = module.isStatic();
        Method methodAddMethod = this.curClass.addMethod("run", typeArr, Type.voidType, 17);
        this.method = methodAddMethod;
        methodAddMethod.initCode();
        CodeAttr code = getCode();
        this.thisDecl = this.method.getStaticFlag() ? null : module.declareThis(module.type);
        module.closureEnv = module.thisVariable;
        module.heapFrame = module.isStatic() ? null : module.thisVariable;
        module.allocChildClasses(this);
        if (module.isHandlingTailCalls() || usingCPStyle()) {
            this.callContextVar = new Variable("$ctx", typeCallContext);
            module.getVarScope().addVariableAfter(this.thisDecl, this.callContextVar);
            this.callContextVar.setParameter(true);
        }
        int lineNumber = module.getLineNumber();
        if (lineNumber > 0) {
            code.putLineNumber(module.getFileName(), lineNumber);
        }
        module.allocParameters(this);
        module.enterFunction(this);
        if (usingCPStyle()) {
            loadCallContext();
            code.emitGetField(pcCallContextField);
            SwitchState switchStateStartSwitch = code.startSwitch();
            this.fswitch = switchStateStartSwitch;
            switchStateStartSwitch.addCase(0, code);
        }
        module.compileBody(this);
        module.compileEnd(this);
        if (this.curClass == this.mainClass) {
            Method method3 = this.method;
            Variable variable2 = this.callContextVar;
            this.callContextVar = null;
            Method methodStartClassInit = startClassInit();
            this.clinitMethod = methodStartClassInit;
            CodeAttr code2 = getCode();
            Label label3 = new Label(code2);
            label = new Label(code2);
            code2.fixupChain(label, label3);
            if (zIsStatic) {
                generateConstructor(module);
                code2.emitNew(this.moduleClass);
                code2.emitDup(this.moduleClass);
                code2.emitInvokeSpecial(this.moduleClass.constructor);
                ClassType classType2 = this.moduleClass;
                Field fieldAddField = classType2.addField("$instance", classType2, 25);
                this.moduleInstanceMainField = fieldAddField;
                code2.emitPutStatic(fieldAddField);
            }
            while (true) {
                Initializer initializer = this.clinitChain;
                if (initializer == null) {
                    break;
                }
                this.clinitChain = null;
                dumpInitializers(initializer);
            }
            if (module.staticInitRun()) {
                code2.emitGetStatic(this.moduleInstanceMainField);
                code2.emitInvoke(typeModuleBody.getDeclaredMethod("run", 0));
            }
            code2.emitReturn();
            if (this.moduleClass == this.mainClass || zIsStatic || this.generateMain || this.immediate) {
                method2 = methodStartClassInit;
            } else {
                ClassType classType3 = this.curClass;
                Type[] typeArr3 = Type.typeArray0;
                PrimType primType = Type.voidType;
                Method methodAddMethod2 = classType3.addMethod("run", 1, typeArr3, primType);
                this.method = methodAddMethod2;
                CodeAttr codeAttrStartCode = methodAddMethod2.startCode();
                Variable variableAddLocal = codeAttrStartCode.addLocal(typeCallContext);
                Variable variableAddLocal2 = codeAttrStartCode.addLocal(typeConsumer);
                Variable variableAddLocal3 = codeAttrStartCode.addLocal(Type.javalangThrowableType);
                codeAttrStartCode.emitInvokeStatic(getCallContextInstanceMethod);
                codeAttrStartCode.emitStore(variableAddLocal);
                Field declaredField = typeCallContext.getDeclaredField("consumer");
                codeAttrStartCode.emitLoad(variableAddLocal);
                codeAttrStartCode.emitGetField(declaredField);
                codeAttrStartCode.emitStore(variableAddLocal2);
                codeAttrStartCode.emitLoad(variableAddLocal);
                method2 = methodStartClassInit;
                codeAttrStartCode.emitGetStatic(ClassType.make("gnu.lists.VoidConsumer").getDeclaredField("instance"));
                codeAttrStartCode.emitPutField(declaredField);
                codeAttrStartCode.emitTryStart(false, primType);
                codeAttrStartCode.emitPushThis();
                codeAttrStartCode.emitLoad(variableAddLocal);
                codeAttrStartCode.emitInvokeVirtual(method3);
                codeAttrStartCode.emitPushNull();
                codeAttrStartCode.emitStore(variableAddLocal3);
                codeAttrStartCode.emitTryEnd();
                codeAttrStartCode.emitCatchStart(variableAddLocal3);
                codeAttrStartCode.emitCatchEnd();
                codeAttrStartCode.emitTryCatchEnd();
                codeAttrStartCode.emitLoad(variableAddLocal);
                codeAttrStartCode.emitLoad(variableAddLocal3);
                codeAttrStartCode.emitLoad(variableAddLocal2);
                codeAttrStartCode.emitInvokeStatic(typeModuleBody.getDeclaredMethod("runCleanup", 3));
                codeAttrStartCode.emitReturn();
            }
            this.method = method3;
            this.callContextVar = variable2;
            label2 = label3;
            method = method2;
        } else {
            method = null;
            label = null;
        }
        module.generateApplyMethods(this);
        this.curLambda = lambdaExp;
        module.heapFrame = variable;
        if (usingCPStyle()) {
            this.fswitch.finish(getCode());
        }
        if (label2 != null || this.callContextVar != null) {
            this.method = method;
            CodeAttr code3 = getCode();
            Label label4 = new Label(code3);
            code3.fixupChain(label2, label4);
            if (this.callContextVarForInit != null) {
                code3.emitInvokeStatic(getCallContextInstanceMethod);
                code3.emitStore(this.callContextVarForInit);
            }
            try {
                if (this.immediate) {
                    code3.emitPushInt(registerForImmediateLiterals(this));
                    code3.emitInvokeStatic(ClassType.make("gnu.expr.Compilation").getDeclaredMethod("setupLiterals", 1));
                } else {
                    this.litTable.emit();
                }
            } catch (Throwable th) {
                error('e', "Literals: Internal error:" + th);
            }
            code3.fixupChain(label4, label);
        }
        if (this.generateMain && this.curClass == this.mainClass) {
            Method methodAddMethod3 = this.curClass.addMethod("main", 9, new Type[]{new ArrayType(javaStringType)}, Type.voidType);
            this.method = methodAddMethod3;
            CodeAttr codeAttrStartCode2 = methodAddMethod3.startCode();
            String str = Shell.defaultFormatName;
            if (str != null) {
                codeAttrStartCode2.emitPushString(str);
                i = 1;
                codeAttrStartCode2.emitInvokeStatic(ClassType.make("kawa.Shell").getDeclaredMethod("setDefaultFormat", 1));
            } else {
                i = 1;
            }
            codeAttrStartCode2.emitLoad(codeAttrStartCode2.getArg(0));
            codeAttrStartCode2.emitInvokeStatic(ClassType.make("gnu.expr.ApplicationMainSupport").getDeclaredMethod("processArgs", i));
            Field field = this.moduleInstanceMainField;
            if (field != null) {
                codeAttrStartCode2.emitGetStatic(field);
            } else {
                codeAttrStartCode2.emitNew(this.curClass);
                codeAttrStartCode2.emitDup(this.curClass);
                codeAttrStartCode2.emitInvokeSpecial(this.curClass.constructor);
            }
            codeAttrStartCode2.emitInvokeVirtual(typeModuleBody.getDeclaredMethod("runAsMain", 0));
            codeAttrStartCode2.emitReturn();
        }
        ModuleInfo moduleInfo = this.minfo;
        if (moduleInfo == null || moduleInfo.getNamespaceUri() == null) {
            return;
        }
        ModuleManager moduleManager = ModuleManager.getInstance();
        String name = this.mainClass.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            strSubstring = "";
        } else {
            String strSubstring2 = name.substring(0, iLastIndexOf);
            try {
                moduleManager.loadPackageInfo(strSubstring2);
            } catch (ClassNotFoundException unused) {
            } catch (Throwable th2) {
                error('e', "error loading map for " + strSubstring2 + " - " + th2);
            }
            strSubstring = name.substring(0, iLastIndexOf + 1);
        }
        ClassType classType4 = new ClassType(a.z(strSubstring, ModuleSet.MODULES_MAP));
        ClassType classTypeMake = ClassType.make("gnu.expr.ModuleSet");
        classType4.setSuper(classTypeMake);
        registerClass(classType4);
        Type[] typeArr4 = apply0args;
        Type type = Type.voidType;
        this.method = classType4.addMethod("<init>", 1, typeArr4, type);
        Method methodAddMethod4 = classTypeMake.addMethod("<init>", 1, apply0args, type);
        CodeAttr codeAttrStartCode3 = this.method.startCode();
        codeAttrStartCode3.emitPushThis();
        codeAttrStartCode3.emitInvokeSpecial(methodAddMethod4);
        codeAttrStartCode3.emitReturn();
        ClassType classTypeMake2 = ClassType.make("gnu.expr.ModuleManager");
        Method methodAddMethod5 = classType4.addMethod("register", new Type[]{classTypeMake2}, type, 1);
        this.method = methodAddMethod5;
        CodeAttr codeAttrStartCode4 = methodAddMethod5.startCode();
        Method declaredMethod = classTypeMake2.getDeclaredMethod("register", 3);
        int i3 = moduleManager.numModules;
        while (true) {
            i3--;
            if (i3 < 0) {
                codeAttrStartCode4.emitReturn();
                return;
            }
            ModuleInfo moduleInfo2 = moduleManager.modules[i3];
            String className = moduleInfo2.getClassName();
            if (className != null && className.startsWith(strSubstring)) {
                String strRelativize = moduleInfo2.sourcePath;
                Object namespaceUri = moduleInfo2.getNamespaceUri();
                codeAttrStartCode4.emitLoad(codeAttrStartCode4.getArg(1));
                compileConstant(className);
                if (!Path.valueOf(strRelativize).isAbsolute()) {
                    try {
                        char c = File.separatorChar;
                        String string = Path.toURL(moduleManager.getCompilationDirectory() + strSubstring.replace('.', c)).toString();
                        int length = string.length();
                        if (length > 0 && string.charAt(length - 1) != c) {
                            string = string + c;
                        }
                        strRelativize = Path.relativize(moduleInfo2.getSourceAbsPathname(), string);
                    } catch (Throwable th3) {
                        throw new WrappedException("exception while fixing up '" + strRelativize + '\'', th3);
                    }
                }
                compileConstant(strRelativize);
                compileConstant(namespaceUri);
                codeAttrStartCode4.emitInvokeVirtual(declaredMethod);
            }
        }
    }

    public Field allocLocalField(Type type, String str) {
        if (str == null) {
            StringBuilder sb = new StringBuilder("tmp_");
            int i = this.localFieldIndex + 1;
            this.localFieldIndex = i;
            sb.append(i);
            str = sb.toString();
        }
        return this.curClass.addField(str, type, 0);
    }

    public final void loadCallContext() {
        CodeAttr code = getCode();
        Variable variable = this.callContextVar;
        if (variable != null && !variable.dead()) {
            code.emitLoad(this.callContextVar);
            return;
        }
        if (this.method == this.clinitMethod) {
            Variable variable2 = new Variable("$ctx", typeCallContext);
            this.callContextVar = variable2;
            variable2.reserveLocal(code.getMaxLocals(), code);
            code.emitLoad(this.callContextVar);
            this.callContextVarForInit = this.callContextVar;
            return;
        }
        code.emitInvokeStatic(getCallContextInstanceMethod);
        code.emitDup();
        this.callContextVar = new Variable("$ctx", typeCallContext);
        code.getCurrentScope().addVariable(code, this.callContextVar);
        code.emitStore(this.callContextVar);
    }

    public Expression parse(Object obj) {
        throw new Error("unimeplemented parse");
    }

    public Language getLanguage() {
        return this.language;
    }

    public LambdaExp currentLambda() {
        return this.current_scope.currentLambda();
    }

    public final ModuleExp getModule() {
        return this.mainLambda;
    }

    public void setModule(ModuleExp moduleExp) {
        this.mainLambda = moduleExp;
    }

    public boolean isStatic() {
        return this.mainLambda.isStatic();
    }

    public ModuleExp currentModule() {
        return this.current_scope.currentModule();
    }

    public void mustCompileHere() {
        if (!this.mustCompile && !ModuleExp.compilerAvailable) {
            error('w', "this expression claimed that it must be compiled, but compiler is unavailable");
        } else {
            this.mustCompile = true;
        }
    }

    public ScopeExp currentScope() {
        return this.current_scope;
    }

    public void setCurrentScope(ScopeExp scopeExp) {
        int iNesting = ScopeExp.nesting(scopeExp);
        int iNesting2 = ScopeExp.nesting(this.current_scope);
        while (iNesting2 > iNesting) {
            pop(this.current_scope);
            iNesting2--;
        }
        ScopeExp scopeExp2 = scopeExp;
        while (iNesting > iNesting2) {
            scopeExp2 = scopeExp2.outer;
            iNesting--;
        }
        while (true) {
            ScopeExp scopeExp3 = this.current_scope;
            if (scopeExp2 != scopeExp3) {
                pop(scopeExp3);
                scopeExp2 = scopeExp2.outer;
            } else {
                pushChain(scopeExp, scopeExp2);
                return;
            }
        }
    }

    public void pushChain(ScopeExp scopeExp, ScopeExp scopeExp2) {
        if (scopeExp != scopeExp2) {
            pushChain(scopeExp.outer, scopeExp2);
            pushScope(scopeExp);
            this.lexical.push(scopeExp);
        }
    }

    public ModuleExp pushNewModule(Lexer lexer) {
        this.lexer = lexer;
        return pushNewModule(lexer.getName());
    }

    public ModuleExp pushNewModule(String str) {
        ModuleExp moduleExp = new ModuleExp();
        if (str != null) {
            moduleExp.setFile(str);
        }
        if (generatingApplet() || generatingServlet()) {
            moduleExp.setFlag(131072);
        }
        if (this.immediate) {
            moduleExp.setFlag(1048576);
            new ModuleInfo().setCompilation(this);
        }
        this.mainLambda = moduleExp;
        push(moduleExp);
        return moduleExp;
    }

    public void push(ScopeExp scopeExp) {
        pushScope(scopeExp);
        this.lexical.push(scopeExp);
    }

    public final void pushScope(ScopeExp scopeExp) {
        if (!this.mustCompile && (scopeExp.mustCompile() || (ModuleExp.compilerAvailable && (scopeExp instanceof LambdaExp) && !(scopeExp instanceof ModuleExp)))) {
            mustCompileHere();
        }
        scopeExp.outer = this.current_scope;
        this.current_scope = scopeExp;
    }

    public void pop(ScopeExp scopeExp) {
        this.lexical.pop(scopeExp);
        this.current_scope = scopeExp.outer;
    }

    public final void pop() {
        pop(this.current_scope);
    }

    public void push(Declaration declaration) {
        this.lexical.push(declaration);
    }

    public Declaration lookup(Object obj, int i) {
        return this.lexical.lookup(obj, i);
    }

    public void usedClass(Type type) {
        while (type instanceof ArrayType) {
            type = ((ArrayType) type).getComponentType();
        }
        if (this.immediate && (type instanceof ClassType)) {
            this.loader.addClass((ClassType) type);
        }
    }

    public SourceMessages getMessages() {
        return this.messages;
    }

    public void setMessages(SourceMessages sourceMessages) {
        this.messages = sourceMessages;
    }

    public void error(char c, String str, SourceLocator sourceLocator) {
        String fileName = sourceLocator.getFileName();
        int lineNumber = sourceLocator.getLineNumber();
        int columnNumber = sourceLocator.getColumnNumber();
        if (fileName == null || lineNumber <= 0) {
            fileName = getFileName();
            lineNumber = getLineNumber();
            columnNumber = getColumnNumber();
        }
        this.messages.error((c == 'w' && warnAsError()) ? 'e' : c, fileName, lineNumber, columnNumber, str);
    }

    public void error(char c, String str) {
        if (c == 'w' && warnAsError()) {
            c = 'e';
        }
        this.messages.error(c, this, str);
    }

    public void error(char c, Declaration declaration, String str, String str2) {
        StringBuilder sbP = a.p(str);
        sbP.append(declaration.getName());
        sbP.append(str2);
        error(c, sbP.toString(), (String) null, declaration);
    }

    public void error(char c, String str, String str2, Declaration declaration) {
        char c2 = (c == 'w' && warnAsError()) ? 'e' : c;
        String fileName = getFileName();
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        int lineNumber2 = declaration.getLineNumber();
        if (lineNumber2 > 0) {
            fileName = declaration.getFileName();
            columnNumber = declaration.getColumnNumber();
        } else {
            lineNumber2 = lineNumber;
        }
        this.messages.error(c2, fileName, lineNumber2, columnNumber, str, str2);
    }

    public Expression syntaxError(String str) {
        error('e', str);
        return new ErrorExp(str);
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getLineNumber() {
        return this.messages.getLineNumber();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getColumnNumber() {
        return this.messages.getColumnNumber();
    }

    @Override // gnu.text.SourceLocator
    public final String getFileName() {
        return this.messages.getFileName();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        return this.messages.getPublicId();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        return this.messages.getSystemId();
    }

    public void setFile(String str) {
        this.messages.setFile(str);
    }

    public void setLine(int i) {
        this.messages.setLine(i);
    }

    public void setColumn(int i) {
        this.messages.setColumn(i);
    }

    public final void setLine(Expression expression) {
        this.messages.setLocation(expression);
    }

    public void setLine(Object obj) {
        if (obj instanceof SourceLocator) {
            this.messages.setLocation((SourceLocator) obj);
        }
    }

    public final void setLocation(SourceLocator sourceLocator) {
        this.messages.setLocation(sourceLocator);
    }

    public void setLine(String str, int i, int i2) {
        this.messages.setLine(str, i, i2);
    }

    public void letStart() {
        pushScope(new LetExp(null));
    }

    public Declaration letVariable(Object obj, Type type, Expression expression) {
        Declaration declarationAddDeclaration = ((LetExp) this.current_scope).addDeclaration(obj, type);
        declarationAddDeclaration.noteValue(expression);
        return declarationAddDeclaration;
    }

    public void letEnter() {
        LetExp letExp = (LetExp) this.current_scope;
        Expression[] expressionArr = new Expression[letExp.countDecls()];
        Declaration declarationFirstDecl = letExp.firstDecl();
        int i = 0;
        while (declarationFirstDecl != null) {
            expressionArr[i] = declarationFirstDecl.getValue();
            declarationFirstDecl = declarationFirstDecl.nextDecl();
            i++;
        }
        letExp.inits = expressionArr;
        this.lexical.push(letExp);
    }

    public LetExp letDone(Expression expression) {
        LetExp letExp = (LetExp) this.current_scope;
        letExp.body = expression;
        pop(letExp);
        return letExp;
    }

    private void checkLoop() {
        if (((LambdaExp) this.current_scope).getName() != "%do%loop") {
            throw new Error("internal error - bad loop state");
        }
    }

    public void loopStart() {
        LambdaExp lambdaExp = new LambdaExp();
        LetExp letExp = new LetExp(new Expression[]{lambdaExp});
        letExp.addDeclaration("%do%loop").noteValue(lambdaExp);
        lambdaExp.setName("%do%loop");
        letExp.outer = this.current_scope;
        lambdaExp.outer = letExp;
        this.current_scope = lambdaExp;
    }

    public Declaration loopVariable(Object obj, Type type, Expression expression) {
        checkLoop();
        LambdaExp lambdaExp = (LambdaExp) this.current_scope;
        Declaration declarationAddDeclaration = lambdaExp.addDeclaration(obj, type);
        if (this.exprStack == null) {
            this.exprStack = new Stack<>();
        }
        this.exprStack.push(expression);
        lambdaExp.min_args++;
        return declarationAddDeclaration;
    }

    public void loopEnter() {
        checkLoop();
        LambdaExp lambdaExp = (LambdaExp) this.current_scope;
        int i = lambdaExp.min_args;
        lambdaExp.max_args = i;
        Expression[] expressionArr = new Expression[i];
        while (true) {
            i--;
            if (i >= 0) {
                expressionArr[i] = this.exprStack.pop();
            } else {
                LetExp letExp = (LetExp) lambdaExp.outer;
                letExp.setBody(new ApplyExp((Expression) new ReferenceExp(letExp.firstDecl()), expressionArr));
                this.lexical.push(lambdaExp);
                return;
            }
        }
    }

    public void loopCond(Expression expression) {
        checkLoop();
        this.exprStack.push(expression);
    }

    public void loopBody(Expression expression) {
        ((LambdaExp) this.current_scope).body = expression;
    }

    public Expression loopRepeat(Expression[] expressionArr) {
        LambdaExp lambdaExp = (LambdaExp) this.current_scope;
        ScopeExp scopeExp = lambdaExp.outer;
        Declaration declarationFirstDecl = scopeExp.firstDecl();
        lambdaExp.body = new IfExp(this.exprStack.pop(), new BeginExp(lambdaExp.body, new ApplyExp((Expression) new ReferenceExp(declarationFirstDecl), expressionArr)), QuoteExp.voidExp);
        this.lexical.pop(lambdaExp);
        this.current_scope = scopeExp.outer;
        return scopeExp;
    }

    public Expression loopRepeat() {
        return loopRepeat(Expression.noExpressions);
    }

    public Expression loopRepeat(Expression expression) {
        return loopRepeat(new Expression[]{expression});
    }

    public static ApplyExp makeCoercion(Expression expression, Expression expression2) {
        return new ApplyExp((Expression) new QuoteExp(Convert.getInstance()), expression2, expression);
    }

    public static Expression makeCoercion(Expression expression, Type type) {
        return makeCoercion(expression, new QuoteExp(type));
    }

    public void loadClassRef(ObjectType objectType) {
        Field field;
        CodeAttr code = getCode();
        if (this.curClass.getClassfileVersion() >= 3211264) {
            code.emitPushClass(objectType);
            return;
        }
        if (objectType == this.mainClass && this.mainLambda.isStatic() && (field = this.moduleInstanceMainField) != null) {
            code.emitGetStatic(field);
            code.emitInvokeVirtual(Type.objectType.getDeclaredMethod("getClass", 0));
        } else {
            code.emitPushString(objectType instanceof ClassType ? objectType.getName() : objectType.getInternalName().replace('/', '.'));
            code.emitInvokeStatic(getForNameHelper());
        }
    }

    public Method getForNameHelper() {
        if (this.forNameHelper == null) {
            Method method = this.method;
            Method methodAddMethod = this.curClass.addMethod("class$", 9, string1Arg, typeClass);
            this.method = methodAddMethod;
            this.forNameHelper = methodAddMethod;
            CodeAttr codeAttrStartCode = methodAddMethod.startCode();
            codeAttrStartCode.emitLoad(codeAttrStartCode.getArg(0));
            codeAttrStartCode.emitPushInt(0);
            codeAttrStartCode.emitPushString(this.mainClass.getName());
            codeAttrStartCode.emitInvokeStatic(typeClass.getDeclaredMethod("forName", 1));
            codeAttrStartCode.emitInvokeVirtual(typeClass.getDeclaredMethod("getClassLoader", 0));
            codeAttrStartCode.emitInvokeStatic(typeClass.getDeclaredMethod("forName", 3));
            codeAttrStartCode.emitReturn();
            this.method = method;
        }
        return this.forNameHelper;
    }

    public Object resolve(Object obj, boolean z) {
        Symbol symbolLookup;
        Environment current2 = Environment.getCurrent();
        if (obj instanceof String) {
            symbolLookup = current2.defaultNamespace().lookup((String) obj);
        } else {
            symbolLookup = (Symbol) obj;
        }
        if (symbolLookup == null) {
            return null;
        }
        if (z && getLanguage().hasSeparateFunctionNamespace()) {
            return current2.getFunction(symbolLookup, null);
        }
        return current2.get(symbolLookup, (Object) null);
    }

    public static void setupLiterals(int i) {
        Compilation compilationFindForImmediateLiterals = findForImmediateLiterals(i);
        try {
            Class clsLoadClass = compilationFindForImmediateLiterals.loader.loadClass(compilationFindForImmediateLiterals.mainClass.getName());
            for (Literal literal = compilationFindForImmediateLiterals.litTable.literalsChain; literal != null; literal = literal.next) {
                clsLoadClass.getDeclaredField(literal.field.getName()).set(null, literal.value);
            }
            compilationFindForImmediateLiterals.litTable = null;
        } catch (Throwable th) {
            throw new WrappedException("internal error", th);
        }
    }

    public static synchronized int registerForImmediateLiterals(Compilation compilation) {
        int i;
        try {
            i = 0;
            for (Compilation compilation2 = chainUninitialized; compilation2 != null; compilation2 = compilation2.nextUninitialized) {
                int i2 = compilation2.keyUninitialized;
                if (i <= i2) {
                    i = i2 + 1;
                }
            }
            compilation.keyUninitialized = i;
            compilation.nextUninitialized = chainUninitialized;
            chainUninitialized = compilation;
        } catch (Throwable th) {
            throw th;
        }
        return i;
    }

    public static synchronized Compilation findForImmediateLiterals(int i) {
        Compilation compilation;
        Compilation compilation2;
        try {
            compilation = chainUninitialized;
            Compilation compilation3 = null;
            while (true) {
                compilation2 = compilation.nextUninitialized;
                if (compilation.keyUninitialized == i) {
                    break;
                }
                compilation3 = compilation;
                compilation = compilation2;
            }
            if (compilation3 == null) {
                chainUninitialized = compilation2;
            } else {
                compilation3.nextUninitialized = compilation2;
            }
            compilation.nextUninitialized = null;
        } catch (Throwable th) {
            throw th;
        }
        return compilation;
    }

    public static Compilation getCurrent() {
        return current.get();
    }

    public static void setCurrent(Compilation compilation) {
        current.set(compilation);
    }

    public static Compilation setSaveCurrent(Compilation compilation) {
        ThreadLocal<Compilation> threadLocal = current;
        Compilation compilation2 = threadLocal.get();
        threadLocal.set(compilation);
        return compilation2;
    }

    public static void restoreCurrent(Compilation compilation) {
        current.set(compilation);
    }

    public String toString() {
        return "<compilation " + this.mainLambda + ">";
    }
}
