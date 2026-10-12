package gnu.expr;

import _COROUTINE.a;
import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.kawa.lispexpr.ClassNamespace;
import gnu.kawa.reflect.ClassMemberLocation;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.lists.AbstractFormat;
import gnu.lists.CharSeq;
import gnu.lists.Consumer;
import gnu.lists.Convert;
import gnu.lists.FString;
import gnu.lists.PrintConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.InPort;
import gnu.mapping.Location;
import gnu.mapping.Named;
import gnu.mapping.NamedLocation;
import gnu.mapping.Namespace;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrappedException;
import gnu.text.Lexer;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kawa.repl;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes2.dex */
public abstract class Language {
    public static final int FUNCTION_NAMESPACE = 2;
    public static final int NAMESPACE_PREFIX_NAMESPACE = 4;
    public static final int PARSE_CURRENT_NAMES = 2;
    public static final int PARSE_EXPLICIT = 64;
    public static final int PARSE_FOR_APPLET = 16;
    public static final int PARSE_FOR_EVAL = 3;
    public static final int PARSE_FOR_SERVLET = 32;
    public static final int PARSE_IMMEDIATE = 1;
    public static final int PARSE_ONE_LINE = 4;
    public static final int PARSE_PROLOG = 8;
    public static final int VALUE_NAMESPACE = 1;
    protected static final InheritableThreadLocal<Language> current = new InheritableThreadLocal<>();
    static int envCounter;
    protected static int env_counter;
    protected static Language global;
    static String[][] languages;
    public static boolean requirePedantic;
    protected Environment environ;
    protected Environment userEnv;

    public AbstractFormat getFormat(boolean z) {
        return null;
    }

    public abstract Lexer getLexer(InPort inPort, SourceMessages sourceMessages);

    public int getNamespaceOf(Declaration declaration) {
        return 1;
    }

    public boolean hasSeparateFunctionNamespace() {
        return false;
    }

    public abstract boolean parse(Compilation compilation, int i) throws SyntaxException, IOException;

    public void resolve(Compilation compilation) {
    }

    static {
        Environment.setGlobal(BuiltinEnvironment.getInstance());
        languages = new String[][]{new String[]{"scheme", ".scm", ".sc", "kawa.standard.Scheme"}, new String[]{"krl", ".krl", "gnu.kawa.brl.BRL"}, new String[]{"brl", ".brl", "gnu.kawa.brl.BRL"}, new String[]{"emacs", "elisp", "emacs-lisp", ".el", "gnu.jemacs.lang.ELisp"}, new String[]{"xquery", ".xquery", ".xq", ".xql", "gnu.xquery.lang.XQuery"}, new String[]{"q2", ".q2", "gnu.q2.lang.Q2"}, new String[]{"xslt", "xsl", ".xsl", "gnu.kawa.xslt.XSLT"}, new String[]{"commonlisp", "common-lisp", "clisp", "lisp", ".lisp", ".lsp", ".cl", "gnu.commonlisp.lang.CommonLisp"}};
        env_counter = 0;
    }

    public static Language getDefaultLanguage() {
        Language language = current.get();
        return language != null ? language : global;
    }

    public static void setCurrentLanguage(Language language) {
        current.set(language);
    }

    public static Language setSaveCurrent(Language language) {
        InheritableThreadLocal<Language> inheritableThreadLocal = current;
        Language language2 = inheritableThreadLocal.get();
        inheritableThreadLocal.set(language);
        return language2;
    }

    public static void restoreCurrent(Language language) {
        current.set(language);
    }

    public static String[][] getLanguages() {
        return languages;
    }

    public static void registerLanguage(String[] strArr) {
        String[][] strArr2 = languages;
        int length = strArr2.length;
        String[][] strArr3 = new String[length + 1][];
        System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
        strArr3[length] = strArr;
        languages = strArr3;
    }

    public static Language detect(InputStream inputStream) throws IOException {
        int i;
        if (!inputStream.markSupported()) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        inputStream.mark(200);
        while (stringBuffer.length() < 200 && (i = inputStream.read()) >= 0 && i != 10 && i != 13) {
            stringBuffer.append((char) i);
        }
        inputStream.reset();
        return detect(stringBuffer.toString());
    }

    public static Language detect(InPort inPort) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        inPort.mark(KeyboardChangeListener.MIN_KEYBOARD_HEIGHT);
        inPort.readLine(stringBuffer, 'P');
        inPort.reset();
        return detect(stringBuffer.toString());
    }

    public static Language detect(String str) {
        Language language;
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf("kawa:");
        if (iIndexOf >= 0) {
            int i = iIndexOf + 5;
            int i2 = i;
            while (i2 < strTrim.length() && Character.isJavaIdentifierPart(strTrim.charAt(i2))) {
                i2++;
            }
            if (i2 > i && (language = getInstance(strTrim.substring(i, i2))) != null) {
                return language;
            }
        }
        if (strTrim.indexOf("-*- scheme -*-") >= 0) {
            return getInstance("scheme");
        }
        if (strTrim.indexOf("-*- xquery -*-") >= 0) {
            return getInstance("xquery");
        }
        if (strTrim.indexOf("-*- emacs-lisp -*-") >= 0) {
            return getInstance("elisp");
        }
        if (strTrim.indexOf("-*- common-lisp -*-") >= 0 || strTrim.indexOf("-*- lisp -*-") >= 0) {
            return getInstance("common-lisp");
        }
        if ((strTrim.charAt(0) == '(' && strTrim.charAt(1) == ':') || (strTrim.length() >= 7 && strTrim.substring(0, 7).equals("xquery "))) {
            return getInstance("xquery");
        }
        if (strTrim.charAt(0) == ';' && strTrim.charAt(1) == ';') {
            return getInstance("scheme");
        }
        return null;
    }

    public static Language getInstanceFromFilenameExtension(String str) {
        Language language;
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf <= 0 || (language = getInstance(str.substring(iLastIndexOf))) == null) {
            return null;
        }
        return language;
    }

    public static Language getInstance(String str) throws ClassNotFoundException {
        int length = languages.length;
        for (int i = 0; i < length; i++) {
            String[] strArr = languages[i];
            int length2 = strArr.length - 1;
            int i2 = length2;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    if (str == null || strArr[i2].equalsIgnoreCase(str)) {
                        try {
                            return getInstance(strArr[0], Class.forName(strArr[length2]));
                        } catch (ClassNotFoundException unused) {
                            continue;
                        }
                    }
                }
            }
        }
        return null;
    }

    public Language() {
        Convert.setInstance(KawaConvert.getInstance());
    }

    public static Language getInstance(String str, Class cls) throws NoSuchMethodException, SecurityException {
        Method declaredMethod;
        try {
            Class<?>[] clsArr = new Class[0];
            try {
                declaredMethod = cls.getDeclaredMethod("get" + (Character.toTitleCase(str.charAt(0)) + str.substring(1).toLowerCase()) + "Instance", clsArr);
            } catch (Exception unused) {
                declaredMethod = cls.getDeclaredMethod("getInstance", clsArr);
            }
            return (Language) declaredMethod.invoke(null, Values.noArgs);
        } catch (Exception e) {
            e = e;
            String name = cls.getName();
            if (e instanceof InvocationTargetException) {
                e = ((InvocationTargetException) e).getTargetException();
            }
            throw new WrappedException(a.A("getInstance for '", name, "' failed"), e);
        }
    }

    public boolean isTrue(Object obj) {
        return obj != Boolean.FALSE;
    }

    public Object booleanObject(boolean z) {
        return z ? Boolean.TRUE : Boolean.FALSE;
    }

    public Object noValue() {
        return Values.empty;
    }

    public final Environment getEnvironment() {
        Environment environment = this.userEnv;
        return environment != null ? environment : Environment.getCurrent();
    }

    public final Environment getNewEnvironment() {
        StringBuilder sb = new StringBuilder("environment-");
        int i = envCounter + 1;
        envCounter = i;
        sb.append(i);
        return Environment.make(sb.toString(), this.environ);
    }

    public Environment getLangEnvironment() {
        return this.environ;
    }

    public NamedLocation lookupBuiltin(Symbol symbol, Object obj, int i) {
        Environment environment = this.environ;
        if (environment == null) {
            return null;
        }
        return environment.lookup(symbol, obj, i);
    }

    public void define(String str, Object obj) {
        this.environ.define(getSymbol(str), null, obj);
    }

    public void defAliasStFld(String str, String str2, String str3) {
        StaticFieldLocation.define(this.environ, getSymbol(str), (Object) null, str2, str3);
    }

    public void defProcStFld(String str, String str2, String str3) {
        StaticFieldLocation.define(this.environ, getSymbol(str), hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null, str2, str3).setProcedure();
    }

    public void defProcStFld(String str, String str2) {
        defProcStFld(str, str2, Compilation.mangleNameIfNeeded(str));
    }

    public final void defineFunction(Named named) {
        Object symbol = named.getSymbol();
        this.environ.define(symbol instanceof Symbol ? (Symbol) symbol : getSymbol(symbol.toString()), hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null, named);
    }

    public void defineFunction(String str, Object obj) {
        this.environ.define(getSymbol(str), hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null, obj);
    }

    public Object getEnvPropertyFor(Field field, Object obj) {
        if (hasSeparateFunctionNamespace() && Compilation.typeProcedure.getReflectClass().isAssignableFrom(field.getType())) {
            return EnvironmentKey.FUNCTION;
        }
        return null;
    }

    public Object getEnvPropertyFor(Declaration declaration) {
        if (hasSeparateFunctionNamespace() && declaration.isProcedureDecl()) {
            return EnvironmentKey.FUNCTION;
        }
        return null;
    }

    public void loadClass(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        try {
            Object objNewInstance = Class.forName(str).newInstance();
            ClassMemberLocation.defineAll(objNewInstance, this, Environment.getCurrent());
            if (objNewInstance instanceof ModuleBody) {
                ((ModuleBody) objNewInstance).run();
            }
        } catch (Exception e) {
            throw new WrappedException(a.i("cannot load ", str), e);
        }
    }

    public Symbol getSymbol(String str) {
        return this.environ.getSymbol(str);
    }

    public Object lookup(String str) {
        return this.environ.get(str);
    }

    public Consumer getOutputConsumer(Writer writer) {
        OutPort outPort = writer instanceof OutPort ? (OutPort) writer : new OutPort(writer);
        outPort.objectFormat = getFormat(false);
        return outPort;
    }

    public String getName() {
        String name = getClass().getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf >= 0 ? name.substring(iLastIndexOf + 1) : name;
    }

    public Compilation getCompilation(Lexer lexer, SourceMessages sourceMessages, NameLookup nameLookup) {
        return new Compilation(this, sourceMessages, nameLookup);
    }

    public final Compilation parse(InPort inPort, SourceMessages sourceMessages, int i) throws SyntaxException, IOException {
        return parse(getLexer(inPort, sourceMessages), i, (ModuleInfo) null);
    }

    public final Compilation parse(InPort inPort, SourceMessages sourceMessages, ModuleInfo moduleInfo) throws SyntaxException, IOException {
        return parse(getLexer(inPort, sourceMessages), 8, moduleInfo);
    }

    public final Compilation parse(InPort inPort, SourceMessages sourceMessages, int i, ModuleInfo moduleInfo) throws SyntaxException, IOException {
        return parse(getLexer(inPort, sourceMessages), i, moduleInfo);
    }

    public final Compilation parse(Lexer lexer, int i, ModuleInfo moduleInfo) throws SyntaxException, IOException {
        SourceMessages messages = lexer.getMessages();
        NameLookup nameLookup = (i & 2) != 0 ? NameLookup.getInstance(getEnvironment(), this) : new NameLookup(this);
        boolean z = (i & 1) != 0;
        Compilation compilation = getCompilation(lexer, messages, nameLookup);
        if (requirePedantic) {
            compilation.pedantic = true;
        }
        if (!z) {
            compilation.mustCompile = true;
        }
        compilation.immediate = z;
        compilation.langOptions = i;
        if ((i & 64) != 0) {
            compilation.explicit = true;
        }
        if ((i & 8) != 0) {
            compilation.setState(1);
        }
        compilation.pushNewModule(lexer);
        if (moduleInfo != null) {
            moduleInfo.setCompilation(compilation);
        }
        if (!parse(compilation, i)) {
            return null;
        }
        if (compilation.getState() == 1) {
            compilation.setState(2);
        }
        return compilation;
    }

    public Type getTypeFor(Class cls) {
        return Type.make(cls);
    }

    public final Type getLangTypeFor(Type type) {
        Class reflectClass;
        return (!type.isExisting() || (reflectClass = type.getReflectClass()) == null) ? type : getTypeFor(reflectClass);
    }

    public String formatType(Type type) {
        return type.getName();
    }

    public static Type string2Type(String str) {
        if (str.endsWith("[]")) {
            Type typeString2Type = string2Type(str.substring(0, str.length() - 2));
            if (typeString2Type == null) {
                return null;
            }
            return ArrayType.make(typeString2Type);
        }
        if (Type.isValidJavaTypeName(str)) {
            return Type.getType(str);
        }
        return null;
    }

    public Type getTypeFor(String str) {
        return string2Type(str);
    }

    public final Type getTypeFor(Object obj, boolean z) {
        String name;
        if (obj instanceof Type) {
            return (Type) obj;
        }
        if (obj instanceof Class) {
            return getTypeFor((Class) obj);
        }
        if (z && ((obj instanceof FString) || (obj instanceof String) || (((obj instanceof Symbol) && ((Symbol) obj).hasEmptyNamespace()) || (obj instanceof CharSeq)))) {
            return getTypeFor(obj.toString());
        }
        if ((obj instanceof Namespace) && (name = ((Namespace) obj).getName()) != null && name.startsWith("class:")) {
            return getLangTypeFor(string2Type(name.substring(6)));
        }
        return null;
    }

    public final Type asType(Object obj) {
        Type typeFor = getTypeFor(obj, true);
        return typeFor == null ? (Type) obj : typeFor;
    }

    public final Type getTypeFor(Expression expression) {
        return getTypeFor(expression, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type getTypeFor(Expression expression, boolean z) {
        if (expression instanceof QuoteExp) {
            Object value = ((QuoteExp) expression).getValue();
            if (value instanceof Type) {
                return (Type) value;
            }
            if (value instanceof Class) {
                return Type.make((Class) value);
            }
            return getTypeFor(value, z);
        }
        if (expression instanceof ReferenceExp) {
            ReferenceExp referenceExp = (ReferenceExp) expression;
            Declaration declarationFollowAliases = Declaration.followAliases(referenceExp.getBinding());
            String name = referenceExp.getName();
            if (declarationFollowAliases != null) {
                Expression value2 = declarationFollowAliases.getValue();
                boolean z2 = value2 instanceof QuoteExp;
                if (z2 && declarationFollowAliases.getFlag(JSONzip.int14) && !declarationFollowAliases.isIndirectBinding()) {
                    return getTypeFor(((QuoteExp) value2).getValue(), z);
                }
                if ((value2 instanceof ClassExp) || (value2 instanceof ModuleExp)) {
                    declarationFollowAliases.setCanRead(true);
                    return ((LambdaExp) value2).getClassType();
                }
                if (declarationFollowAliases.isAlias() && z2) {
                    Object value3 = ((QuoteExp) value2).getValue();
                    if (value3 instanceof Location) {
                        Location location = (Location) value3;
                        if (location.isBound()) {
                            return getTypeFor(location.get(), z);
                        }
                        if (!(location instanceof Named)) {
                            return null;
                        }
                        name = ((Named) location).getName();
                    }
                } else if (!declarationFollowAliases.getFlag(65536L)) {
                    return getTypeFor(value2, z);
                }
            }
            Object obj = getEnvironment().get(name);
            if (obj instanceof Type) {
                return (Type) obj;
            }
            if (obj instanceof ClassNamespace) {
                return ((ClassNamespace) obj).getClassType();
            }
            int length = name.length();
            if (length > 2 && name.charAt(0) == '<') {
                int i = length - 1;
                if (name.charAt(i) == '>') {
                    return getTypeFor(name.substring(1, i));
                }
            }
        } else if ((expression instanceof ClassExp) || (expression instanceof ModuleExp)) {
            return ((LambdaExp) expression).getClassType();
        }
        return null;
    }

    public static Type unionType(Type type, Type type2) {
        ClassType classType = Type.toStringType;
        if (type == classType) {
            type = Type.javalangStringType;
        }
        if (type2 == classType) {
            type2 = Type.javalangStringType;
        }
        if (type == type2) {
            return type;
        }
        if ((type instanceof PrimType) && (type2 instanceof PrimType)) {
            char cCharAt = type.getSignature().charAt(0);
            char cCharAt2 = type2.getSignature().charAt(0);
            if (cCharAt == cCharAt2) {
                return type;
            }
            if ((cCharAt != 'B' && cCharAt != 'S' && cCharAt != 'I') || (cCharAt2 != 'I' && cCharAt2 != 'J')) {
                if ((cCharAt2 == 'B' || cCharAt2 == 'S' || cCharAt2 == 'I') && (cCharAt == 'I' || cCharAt == 'J')) {
                    return type;
                }
                if (cCharAt != 'F' || cCharAt2 != 'D') {
                    return (cCharAt2 == 'F' && cCharAt == 'D') ? type : Type.objectType;
                }
            }
            return type2;
        }
        return Type.objectType;
    }

    public Declaration declFromField(ModuleExp moduleExp, Object obj, gnu.bytecode.Field field) {
        boolean z;
        String strSubstring;
        Object objIntern;
        String name = field.getName();
        Type type = field.getType();
        boolean zIsSubtype = type.isSubtype(Compilation.typeLocation);
        boolean z2 = (field.getModifiers() & 16) != 0;
        boolean zEndsWith = name.endsWith("$instance");
        Object symbol = name;
        if (zEndsWith) {
            z = false;
            objIntern = symbol;
        } else if (z2 && (obj instanceof Named)) {
            symbol = ((Named) obj).getSymbol();
            z = false;
            objIntern = symbol;
        } else {
            if (name.startsWith(Declaration.PRIVATE_PREFIX)) {
                z = true;
                strSubstring = name.substring(6);
            } else {
                z = false;
                strSubstring = name;
            }
            objIntern = Compilation.demangleName(strSubstring, true).intern();
        }
        boolean z3 = objIntern instanceof String;
        Object objMake = objIntern;
        if (z3) {
            String namespaceUri = moduleExp.getNamespaceUri();
            String str = (String) objIntern;
            if (namespaceUri == null) {
                objMake = Symbol.valueOf(str);
            } else {
                objMake = Symbol.make(namespaceUri, str);
            }
        }
        Declaration declarationAddDeclaration = moduleExp.addDeclaration(objMake, zIsSubtype ? Type.objectType : getTypeFor(type.getReflectClass()));
        boolean z4 = (field.getModifiers() & 8) != 0;
        if (zIsSubtype) {
            declarationAddDeclaration.setIndirectBinding(true);
            if ((type instanceof ClassType) && ((ClassType) type).isSubclass("gnu.mapping.ThreadLocation")) {
                declarationAddDeclaration.setFlag(268435456L);
            }
        } else if (z2 && (type instanceof ClassType)) {
            if (type.isSubtype(Compilation.typeProcedure)) {
                declarationAddDeclaration.setProcedureDecl(true);
            } else if (((ClassType) type).isSubclass("gnu.mapping.Namespace")) {
                declarationAddDeclaration.setFlag(2097152L);
            }
        }
        if (z4) {
            declarationAddDeclaration.setFlag(2048L);
        }
        declarationAddDeclaration.field = field;
        if (z2 && !zIsSubtype) {
            declarationAddDeclaration.setFlag(JSONzip.int14);
        }
        if (zEndsWith) {
            declarationAddDeclaration.setFlag(1073741824L);
        }
        declarationAddDeclaration.setSimple(false);
        if (z) {
            declarationAddDeclaration.setFlag(524320L);
        }
        return declarationAddDeclaration;
    }

    public boolean hasNamespace(Declaration declaration, int i) {
        return (getNamespaceOf(declaration) & i) != 0;
    }

    public void emitPushBoolean(boolean z, CodeAttr codeAttr) {
        codeAttr.emitGetStatic(z ? Compilation.trueConstant : Compilation.falseConstant);
    }

    public void emitCoerceToBoolean(CodeAttr codeAttr) {
        emitPushBoolean(false, codeAttr);
        codeAttr.emitIfNEq();
        codeAttr.emitPushInt(1);
        codeAttr.emitElse();
        codeAttr.emitPushInt(0);
        codeAttr.emitFi();
    }

    public Object coerceFromObject(Class cls, Object obj) {
        return getTypeFor(cls).coerceFromObject(obj);
    }

    public Object coerceToObject(Class cls, Object obj) {
        return getTypeFor(cls).coerceToObject(obj);
    }

    public static synchronized void setDefaults(Language language) {
        setCurrentLanguage(language);
        global = language;
        if (Environment.getGlobal() == BuiltinEnvironment.getInstance()) {
            Environment.setGlobal(Environment.getCurrent());
        }
    }

    public Procedure getPrompter() {
        Procedure procedure = (Procedure) getEnvironment().get(getSymbol("default-prompter"), hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null, null);
        return procedure != null ? procedure : new SimplePrompter();
    }

    public final Object eval(String str) throws Throwable {
        return eval((InPort) new CharArrayInPort(str));
    }

    public final Object eval(Reader reader) throws Throwable {
        return eval(reader instanceof InPort ? (InPort) reader : new InPort(reader));
    }

    public final Object eval(InPort inPort) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        int iStartFromContext = callContext.startFromContext();
        try {
            eval(inPort, callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public final void eval(String str, Writer writer) throws Throwable {
        eval(new CharArrayInPort(str), writer);
    }

    public final void eval(String str, PrintConsumer printConsumer) throws Throwable {
        eval(str, getOutputConsumer(printConsumer));
    }

    public final void eval(String str, Consumer consumer) throws Throwable {
        eval(new CharArrayInPort(str), consumer);
    }

    public final void eval(Reader reader, Writer writer) throws Throwable {
        eval(reader, getOutputConsumer(writer));
    }

    public void eval(Reader reader, Consumer consumer) throws Throwable {
        InPort inPort = reader instanceof InPort ? (InPort) reader : new InPort(reader);
        CallContext callContext = CallContext.getInstance();
        Consumer consumer2 = callContext.consumer;
        try {
            callContext.consumer = consumer;
            eval(inPort, callContext);
        } finally {
            callContext.consumer = consumer2;
        }
    }

    public void eval(InPort inPort, CallContext callContext) throws Throwable {
        SourceMessages sourceMessages = new SourceMessages();
        Language saveCurrent = setSaveCurrent(this);
        try {
            ModuleExp.evalModule(getEnvironment(), callContext, parse(inPort, sourceMessages, 3), null, null);
            restoreCurrent(saveCurrent);
            if (sourceMessages.seenErrors()) {
                throw new RuntimeException("invalid syntax in eval form:\n" + sourceMessages.toString(20));
            }
        } catch (Throwable th) {
            restoreCurrent(saveCurrent);
            throw th;
        }
    }

    public void runAsApplication(String[] strArr) {
        setDefaults(this);
        repl.main(strArr);
    }
}
