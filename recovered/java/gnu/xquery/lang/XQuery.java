package gnu.xquery.lang;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.Access;
import gnu.bytecode.ClassType;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.expr.ApplicationMainSupport;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleExp;
import gnu.expr.NameLookup;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.kawa.functions.ConstantFunction0;
import gnu.kawa.reflect.ClassMethods;
import gnu.kawa.xml.XDataType;
import gnu.kawa.xml.XIntegerType;
import gnu.kawa.xml.XStringType;
import gnu.kawa.xml.XTimeType;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.InPort;
import gnu.mapping.MethodProc;
import gnu.mapping.Namespace;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.text.Char;
import gnu.text.Lexer;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.xml.XMLPrinter;
import gnu.xquery.util.BooleanValue;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.Vector;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class XQuery extends Language {
    public static final String DEFAULT_ELEMENT_PREFIX;
    public static final String DEFAULT_FUNCTION_PREFIX = "(functions)";
    public static final String KAWA_FUNCTION_NAMESPACE = "http://kawa.gnu.org/";
    public static final String LOCAL_NAMESPACE = "http://www.w3.org/2005/xquery-local-functions";
    public static final int PARSE_WITH_FOCUS = 65536;
    public static final String QEXO_FUNCTION_NAMESPACE = "http://qexo.gnu.org/";
    public static final String SCHEMA_INSTANCE_NAMESPACE = "http://www.w3.org/2001/XMLSchema-instance";
    public static final String SCHEMA_NAMESPACE = "http://www.w3.org/2001/XMLSchema";
    public static final int VARIADIC_FUNCTION_NAMESPACE = -2;
    public static final String XHTML_NAMESPACE = "http://www.w3.org/1999/xhtml";
    public static final String XQUERY_FUNCTION_NAMESPACE = "http://www.w3.org/2005/xpath-functions";
    static boolean charIsInt;
    public static final Namespace[] defaultFunctionNamespacePath;
    static int envCounter;
    public static Environment extensionsEnvEnv;
    public static QuoteExp falseExp;
    public static final ConstantFunction0 falseFunction;
    public static final XQuery instance;
    public static final Namespace kawaFunctionNamespace;
    public static final Namespace qexoFunctionNamespace;
    public static QuoteExp trueExp;
    public static final ConstantFunction0 trueFunction;
    static Object[] typeMap;
    public static final Environment xqEnvironment;
    public static final Namespace xqueryFunctionNamespace;
    Namespace defaultNamespace;

    public static int namespaceForFunctions(int i) {
        return (i << 2) | 2;
    }

    @Override // gnu.expr.Language
    public boolean hasSeparateFunctionNamespace() {
        return true;
    }

    @Override // gnu.expr.Language
    public void resolve(Compilation compilation) {
    }

    static {
        Namespace namespaceValueOf = Namespace.valueOf(XQUERY_FUNCTION_NAMESPACE);
        xqueryFunctionNamespace = namespaceValueOf;
        Namespace namespaceValueOf2 = Namespace.valueOf(KAWA_FUNCTION_NAMESPACE);
        kawaFunctionNamespace = namespaceValueOf2;
        Namespace namespaceValueOf3 = Namespace.valueOf(QEXO_FUNCTION_NAMESPACE);
        qexoFunctionNamespace = namespaceValueOf3;
        defaultFunctionNamespacePath = new Namespace[]{namespaceValueOf3, namespaceValueOf, Namespace.EmptyNamespace, namespaceValueOf2};
        charIsInt = false;
        DEFAULT_ELEMENT_PREFIX = null;
        envCounter = 0;
        extensionsEnvEnv = Environment.getInstance(KAWA_FUNCTION_NAMESPACE);
        xqEnvironment = Environment.make(XQUERY_FUNCTION_NAMESPACE);
        XQuery xQuery = new XQuery();
        instance = xQuery;
        ModuleBody.setMainPrintValues(true);
        xQuery.defProcStFld("unescaped-data", "gnu.kawa.xml.MakeUnescapedData", "unescapedData");
        xQuery.defProcStFld("item-at", "gnu.xquery.util.ItemAt", "itemAt");
        xQuery.defProcStFld("count", "gnu.kawa.functions.CountValues", "countValues");
        xQuery.define_method("sum", "gnu.xquery.util.Reduce", "sum");
        xQuery.defProcStFld("avg", "gnu.xquery.util.Average", "avg");
        xQuery.defProcStFld("sublist", "gnu.xquery.util.SubList", "subList");
        xQuery.defProcStFld("subsequence", "gnu.xquery.util.SubList", "subList");
        xQuery.define_method("empty", "gnu.xquery.util.SequenceUtils", "isEmptySequence");
        xQuery.define_method("exists", "gnu.xquery.util.SequenceUtils", "exists");
        xQuery.define_method("insert-before", "gnu.xquery.util.SequenceUtils", "insertBefore$X");
        xQuery.define_method("remove", "gnu.xquery.util.SequenceUtils", "remove$X");
        xQuery.define_method("reverse", "gnu.xquery.util.SequenceUtils", "reverse$X");
        xQuery.defProcStFld("false", "gnu.xquery.lang.XQuery", "falseFunction");
        xQuery.defProcStFld("true", "gnu.xquery.lang.XQuery", "trueFunction");
        xQuery.defProcStFld(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN, "gnu.xquery.util.BooleanValue", "booleanValue");
        xQuery.define_method("trace", "gnu.xquery.util.Debug", "trace");
        xQuery.define_method("error", "gnu.xquery.util.XQException", "error");
        xQuery.defProcStFld("write-to", "gnu.kawa.xml.WriteTo", "writeTo");
        xQuery.defProcStFld("write-to-if-changed", "gnu.kawa.xml.WriteTo", "writeToIfChanged");
        xQuery.defProcStFld("iterator-items", "gnu.kawa.xml.IteratorItems", "iteratorItems");
        xQuery.defProcStFld("list-items", "gnu.kawa.xml.ListItems", "listItems");
        xQuery.define_method("node-name", "gnu.xquery.util.NodeUtils", "nodeName");
        xQuery.define_method("nilled", "gnu.xquery.util.NodeUtils", "nilled");
        xQuery.define_method("data", "gnu.xquery.util.NodeUtils", "data$X");
        xQuery.define_method("lower-case", "gnu.xquery.util.StringUtils", "lowerCase");
        xQuery.define_method("upper-case", "gnu.xquery.util.StringUtils", "upperCase");
        xQuery.define_method("substring", "gnu.xquery.util.StringUtils", "substring");
        xQuery.define_method("string-length", "gnu.xquery.util.StringUtils", "stringLength");
        xQuery.define_method("substring-before", "gnu.xquery.util.StringUtils", "substringBefore");
        xQuery.define_method("substring-after", "gnu.xquery.util.StringUtils", "substringAfter");
        xQuery.define_method("translate", "gnu.xquery.util.StringUtils", "translate");
        xQuery.define_method("encode-for-uri", "gnu.xquery.util.StringUtils", "encodeForUri");
        xQuery.define_method("iri-to-uri", "gnu.xquery.util.StringUtils", "iriToUri");
        xQuery.define_method("escape-html-uri", "gnu.xquery.util.StringUtils", "escapeHtmlUri");
        xQuery.define_method("contains", "gnu.xquery.util.StringUtils", "contains");
        xQuery.define_method("starts-with", "gnu.xquery.util.StringUtils", "startsWith");
        xQuery.define_method("ends-with", "gnu.xquery.util.StringUtils", "endsWith");
        xQuery.define_method("codepoint-equal", "gnu.xquery.util.StringUtils", "codepointEqual");
        xQuery.define_method("normalize-unicode", "gnu.xquery.util.StringUtils", "normalizeUnicode");
        xQuery.define_method("string-join", "gnu.xquery.util.StringUtils", "stringJoin");
        xQuery.define_method("concat", "gnu.xquery.util.StringUtils", "concat$V");
        xQuery.define_method("matches", "gnu.xquery.util.StringUtils", "matches");
        xQuery.define_method("replace", "gnu.xquery.util.StringUtils", "replace");
        xQuery.define_method("tokenize", "gnu.xquery.util.StringUtils", "tokenize$X");
        xQuery.define_method("string-to-codepoints", "gnu.xquery.util.StringUtils", "stringToCodepoints$X");
        xQuery.define_method("codepoints-to-string", "gnu.xquery.util.StringUtils", "codepointsToString");
        xQuery.define_method("abs", "gnu.xquery.util.NumberValue", "abs");
        xQuery.define_method("floor", "gnu.xquery.util.NumberValue", "floor");
        xQuery.define_method("ceiling", "gnu.xquery.util.NumberValue", "ceiling");
        xQuery.define_method("round", "gnu.xquery.util.NumberValue", "round");
        xQuery.define_method("round-half-to-even", "gnu.xquery.util.NumberValue", "roundHalfToEven");
        xQuery.define_method("QName", "gnu.xquery.util.QNameUtils", "makeQName");
        xQuery.define_method("resolve-QName", "gnu.xquery.util.QNameUtils", "resolveQNameUsingElement");
        xQuery.define_method("prefix-from-QName", "gnu.xquery.util.QNameUtils", "prefixFromQName");
        xQuery.define_method("local-name-from-QName", "gnu.xquery.util.QNameUtils", "localNameFromQName");
        xQuery.define_method("namespace-uri-from-QName", "gnu.xquery.util.QNameUtils", "namespaceURIFromQName");
        xQuery.define_method("namespace-uri-for-prefix", "gnu.xquery.util.QNameUtils", "namespaceURIForPrefix");
        xQuery.define_method("in-scope-prefixes", "gnu.xquery.util.NodeUtils", "inScopePrefixes$X");
        xQuery.define_method("document-uri", "gnu.xquery.util.NodeUtils", "documentUri");
        xQuery.define_method("years-from-duration", "gnu.xquery.util.TimeUtils", "yearsFromDuration");
        xQuery.define_method("months-from-duration", "gnu.xquery.util.TimeUtils", "monthsFromDuration");
        xQuery.define_method("days-from-duration", "gnu.xquery.util.TimeUtils", "daysFromDuration");
        xQuery.define_method("hours-from-duration", "gnu.xquery.util.TimeUtils", "hoursFromDuration");
        xQuery.define_method("minutes-from-duration", "gnu.xquery.util.TimeUtils", "minutesFromDuration");
        xQuery.define_method("seconds-from-duration", "gnu.xquery.util.TimeUtils", "secondsFromDuration");
        xQuery.define_method("year-from-dateTime", "gnu.xquery.util.TimeUtils", "yearFromDateTime");
        xQuery.define_method("month-from-dateTime", "gnu.xquery.util.TimeUtils", "monthFromDateTime");
        xQuery.define_method("day-from-dateTime", "gnu.xquery.util.TimeUtils", "dayFromDateTime");
        xQuery.define_method("hours-from-dateTime", "gnu.xquery.util.TimeUtils", "hoursFromDateTime");
        xQuery.define_method("minutes-from-dateTime", "gnu.xquery.util.TimeUtils", "minutesFromDateTime");
        xQuery.define_method("seconds-from-dateTime", "gnu.xquery.util.TimeUtils", "secondsFromDateTime");
        xQuery.define_method("timezone-from-dateTime", "gnu.xquery.util.TimeUtils", "timezoneFromDateTime");
        xQuery.define_method("year-from-date", "gnu.xquery.util.TimeUtils", "yearFromDate");
        xQuery.define_method("month-from-date", "gnu.xquery.util.TimeUtils", "monthFromDate");
        xQuery.define_method("day-from-date", "gnu.xquery.util.TimeUtils", "dayFromDate");
        xQuery.define_method("timezone-from-date", "gnu.xquery.util.TimeUtils", "timezoneFromDate");
        xQuery.define_method("hours-from-time", "gnu.xquery.util.TimeUtils", "hoursFromTime");
        xQuery.define_method("minutes-from-time", "gnu.xquery.util.TimeUtils", "minutesFromTime");
        xQuery.define_method("seconds-from-time", "gnu.xquery.util.TimeUtils", "secondsFromTime");
        xQuery.define_method("timezone-from-time", "gnu.xquery.util.TimeUtils", "timezoneFromTime");
        xQuery.define_method("adjust-dateTime-to-timezone", "gnu.xquery.util.TimeUtils", "adjustDateTimeToTimezone");
        xQuery.define_method("adjust-date-to-timezone", "gnu.xquery.util.TimeUtils", "adjustDateToTimezone");
        xQuery.define_method("adjust-time-to-timezone", "gnu.xquery.util.TimeUtils", "adjustTimeToTimezone");
        xQuery.define_method("dateTime", "gnu.xquery.util.TimeUtils", "dateTime");
        xQuery.define_method("current-dateTime", "gnu.xquery.util.TimeUtils", "currentDateTime");
        xQuery.define_method("current-date", "gnu.xquery.util.TimeUtils", "currentDate");
        xQuery.define_method("current-time", "gnu.xquery.util.TimeUtils", "currentTime");
        xQuery.define_method("implicit-timezone", "gnu.xquery.util.TimeUtils", "implicitTimezone");
        xQuery.define_method("zero-or-one", "gnu.xquery.util.SequenceUtils", "zeroOrOne");
        xQuery.define_method("one-or-more", "gnu.xquery.util.SequenceUtils", "oneOrMore");
        xQuery.define_method("exactly-one", "gnu.xquery.util.SequenceUtils", "exactlyOne");
        xQuery.defProcStFld("distinct-nodes", "gnu.kawa.xml.SortNodes", "sortNodes");
        xQuery.defProcStFld("children", "gnu.kawa.xml.Children", "children");
        xQuery.define_method("not", "gnu.xquery.util.BooleanValue", "not");
        xQuery.defaultNamespace = namespaceValueOf3;
        xQuery.defProcStFld("response-header", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("response-content-type", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("response-status", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("error-response", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("current-servlet", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("current-servlet-context", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("current-servlet-config", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("servlet-context-realpath", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("get-response", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("get-request", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-method", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-uri", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-url", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-path-info", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-path-translated", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-servlet-path", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-query-string", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-parameter", "gnu.kawa.servlet.HTTP");
        xQuery.defProcStFld("request-parameters", "gnu.kawa.servlet.HTTP");
        xQuery.defaultNamespace = namespaceValueOf;
        Boolean bool = Boolean.FALSE;
        XDataType xDataType = XDataType.booleanType;
        falseExp = new QuoteExp(bool, xDataType);
        trueExp = new QuoteExp(Boolean.TRUE, xDataType);
        falseFunction = new ConstantFunction0("false", falseExp);
        trueFunction = new ConstantFunction0("true", trueExp);
        typeMap = new Object[]{PropertyTypeConstants.PROPERTY_TYPE_STRING, XDataType.stringType, "untypedAtomic", XDataType.untypedAtomicType, PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN, xDataType, PropertyTypeConstants.PROPERTY_TYPE_INTEGER, XIntegerType.integerType, "long", XIntegerType.longType, "int", XIntegerType.intType, "short", XIntegerType.shortType, "byte", XIntegerType.byteType, "unsignedLong", XIntegerType.unsignedLongType, "unsignedInt", XIntegerType.unsignedIntType, "unsignedShort", XIntegerType.unsignedShortType, "unsignedByte", XIntegerType.unsignedByteType, "positiveInteger", XIntegerType.positiveIntegerType, "nonPositiveInteger", XIntegerType.nonPositiveIntegerType, "negativeInteger", XIntegerType.negativeIntegerType, "nonNegativeInteger", XIntegerType.nonNegativeIntegerType, "date", XTimeType.dateType, "dateTime", XTimeType.dateTimeType, "time", XTimeType.timeType, "duration", XDataType.durationType, "yearMonthDuration", XDataType.yearMonthDurationType, "dayTimeDuration", XDataType.dayTimeDurationType, "gYearMonth", XTimeType.gYearMonthType, "gYear", XTimeType.gYearType, "gMonthDay", XTimeType.gMonthDayType, "gDay", XTimeType.gDayType, "gMonth", XTimeType.gMonthType, "decimal", XDataType.decimalType, PropertyTypeConstants.PROPERTY_TYPE_FLOAT, XDataType.floatType, "double", XDataType.doubleType, "anyURI", XDataType.anyURIType, "hexBinary", XDataType.hexBinaryType, "base64Binary", XDataType.base64BinaryType, "NOTATION", XDataType.NotationType, "QName", "gnu.mapping.Symbol", "normalizedString", XStringType.normalizedStringType, "token", XStringType.tokenType, "language", XStringType.languageType, "NMTOKEN", XStringType.NMTOKENType, "Name", XStringType.NameType, "NCName", XStringType.NCNameType, "ID", XStringType.IDType, "IDREF", XStringType.IDREFType, "ENTITY", XStringType.ENTITYType, "anyAtomicType", XDataType.anyAtomicType, "anySimpleType", XDataType.anySimpleType, "untyped", XDataType.untypedType, "anyType", Type.objectType};
    }

    public static Numeric asNumber(Object obj) {
        if (obj instanceof Char) {
            return IntNum.make(((Char) obj).intValue());
        }
        return (Numeric) obj;
    }

    public static char asChar(Object obj) {
        if (obj instanceof Char) {
            return ((Char) obj).charValue();
        }
        int iIntValue = obj instanceof Numeric ? ((Numeric) obj).intValue() : -1;
        if (iIntValue < 0 || iIntValue > 65535) {
            throw new ClassCastException("not a character value");
        }
        return (char) iIntValue;
    }

    @Override // gnu.expr.Language
    public boolean isTrue(Object obj) {
        return BooleanValue.booleanValue(obj);
    }

    @Override // gnu.expr.Language
    public Lexer getLexer(InPort inPort, SourceMessages sourceMessages) {
        return new XQParser(inPort, sourceMessages, this);
    }

    @Override // gnu.expr.Language
    public Compilation getCompilation(Lexer lexer, SourceMessages sourceMessages, NameLookup nameLookup) {
        return new Compilation(this, sourceMessages, nameLookup);
    }

    @Override // gnu.expr.Language
    public boolean parse(Compilation compilation, int i) throws SyntaxException, IOException, ClassNotFoundException {
        ModuleExp moduleExp = compilation.mainLambda;
        Compilation.defaultCallConvention = 2;
        compilation.mustCompileHere();
        XQParser xQParser = (XQParser) compilation.lexer;
        if (xQParser.isInteractive()) {
            Expression expression = xQParser.parse(compilation);
            if (expression == null) {
                return false;
            }
            moduleExp.body = expression;
        } else if ((i & 65536) != 0) {
            LambdaExp lambdaExp = new LambdaExp(3);
            Declaration declarationAddDeclaration = lambdaExp.addDeclaration(XQParser.F);
            declarationAddDeclaration.setFlag(262144L);
            declarationAddDeclaration.noteValue(null);
            Symbol symbol = XQParser.G;
            PrimType primType = Type.intType;
            lambdaExp.addDeclaration(symbol, primType);
            lambdaExp.addDeclaration(XQParser.H, primType);
            compilation.push(lambdaExp);
            lambdaExp.body = xQParser.parse(compilation);
            compilation.pop(lambdaExp);
            moduleExp.body = lambdaExp;
        } else {
            Vector vector = new Vector(10);
            Expression expression2 = moduleExp.body;
            if (expression2 instanceof BeginExp) {
                BeginExp beginExp = (BeginExp) expression2;
                int expressionCount = beginExp.getExpressionCount();
                Expression[] expressions = beginExp.getExpressions();
                for (int i2 = 0; i2 < expressionCount; i2++) {
                    vector.addElement(expressions[i2]);
                }
            } else if (expression2 != null && expression2 != QuoteExp.voidExp) {
                vector.addElement(expression2);
            }
            while (true) {
                Expression expression3 = xQParser.parse(compilation);
                if (expression3 == null) {
                    break;
                }
                vector.addElement(expression3);
            }
            if (xQParser.w == 0 && !xQParser.isInteractive()) {
                xQParser.error('e', "empty module", "XPST0003");
                return false;
            }
            int size = vector.size();
            if (size == 0) {
                moduleExp.body = QuoteExp.voidExp;
            } else if (size == 1) {
                moduleExp.body = (Expression) vector.elementAt(0);
            } else {
                Expression[] expressionArr = new Expression[size];
                vector.copyInto(expressionArr);
                moduleExp.body = new BeginExp(expressionArr);
            }
        }
        compilation.pop(moduleExp);
        XQResolveNames xQResolveNames = new XQResolveNames(compilation);
        xQResolveNames.functionNamespacePath = xQParser.functionNamespacePath;
        xQResolveNames.parser = xQParser;
        xQResolveNames.resolveModule(moduleExp);
        compilation.setState(4);
        return true;
    }

    @Override // gnu.expr.Language
    public int getNamespaceOf(Declaration declaration) {
        Procedure procedure;
        int iMinArgs;
        if (!declaration.isProcedureDecl()) {
            return 1;
        }
        if (declaration.getCode() < 0) {
            return -2;
        }
        Expression value = declaration.getValue();
        if (value instanceof LambdaExp) {
            LambdaExp lambdaExp = (LambdaExp) value;
            int i = lambdaExp.min_args;
            if (i == lambdaExp.max_args) {
                return namespaceForFunctions(i);
            }
        } else if (value instanceof QuoteExp) {
            Object value2 = ((QuoteExp) value).getValue();
            if ((value2 instanceof Procedure) && (iMinArgs = (procedure = (Procedure) value2).minArgs()) == procedure.maxArgs()) {
                return namespaceForFunctions(iMinArgs);
            }
        } else if (value instanceof ReferenceExp) {
            return getNamespaceOf(((ReferenceExp) value).getBinding());
        }
        return -2;
    }

    @Override // gnu.expr.Language
    public boolean hasNamespace(Declaration declaration, int i) {
        int namespaceOf = getNamespaceOf(declaration);
        if (namespaceOf == i) {
            return true;
        }
        if (namespaceOf != -2 || (i & 2) == 0) {
            return i == -2 && (namespaceOf & 2) != 0;
        }
        return true;
    }

    @Override // gnu.expr.Language
    public Symbol getSymbol(String str) {
        return Symbol.make(this.defaultNamespace, str);
    }

    @Override // gnu.expr.Language
    public void define(String str, Object obj) {
        this.environ.define(Symbol.make(this.defaultNamespace, str), obj instanceof Procedure ? EnvironmentKey.FUNCTION : null, obj);
    }

    public void define_method(String str, String str2, String str3) {
        Symbol symbolMake = Symbol.make(this.defaultNamespace, str);
        MethodProc methodProcApply = ClassMethods.apply(ClassType.make(str2), str3, (char) 0, this);
        methodProcApply.setSymbol(symbolMake);
        this.environ.define(symbolMake, EnvironmentKey.FUNCTION, methodProcApply);
    }

    @Override // gnu.expr.Language
    public String getName() {
        return "XQuery";
    }

    public void applyWithFocus(Procedure procedure, Object obj, int i, int i2, Consumer consumer) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        procedure.check3(obj, IntNum.make(i), IntNum.make(i2), callContext);
        Consumer consumer2 = callContext.consumer;
        try {
            callContext.consumer = consumer;
            callContext.runUntilDone();
        } finally {
            callContext.consumer = consumer2;
        }
    }

    public Object applyWithFocus(Procedure procedure, Object obj, int i, int i2) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        int iStartFromContext = callContext.startFromContext();
        try {
            procedure.check3(obj, IntNum.make(i), IntNum.make(i2), callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public void applyWithFocus(Procedure procedure, Object obj, Consumer consumer) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        Consumer consumer2 = callContext.consumer;
        try {
            callContext.consumer = consumer;
            applyWithFocus$X(procedure, obj, callContext);
        } finally {
            callContext.consumer = consumer2;
        }
    }

    public Object applyWithFocus(Procedure procedure, Object obj) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        int iStartFromContext = callContext.startFromContext();
        try {
            applyWithFocus$X(procedure, obj, callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public void applyWithFocus$X(Procedure procedure, Object obj, CallContext callContext) throws Throwable {
        if (obj instanceof Values) {
            Values values = (Values) obj;
            int size = values.size();
            if (size == 0) {
                return;
            }
            IntNum intNumMake = IntNum.make(size);
            int i = 1;
            int iNextPos = 0;
            while (true) {
                procedure.check3(values.getPosNext(iNextPos), IntNum.make(i), intNumMake, callContext);
                callContext.runUntilDone();
                if (i == size) {
                    return;
                }
                iNextPos = values.nextPos(iNextPos);
                i++;
            }
        } else {
            IntNum intNumOne = IntNum.one();
            procedure.check3(obj, intNumOne, intNumOne, callContext);
            callContext.runUntilDone();
        }
    }

    public Procedure evalToFocusProc(String str) throws Throwable {
        SourceMessages sourceMessages = new SourceMessages();
        Procedure procedureEvalToFocusProc = evalToFocusProc(new CharArrayInPort(str), sourceMessages);
        if (!sourceMessages.seenErrors()) {
            return procedureEvalToFocusProc;
        }
        throw new RuntimeException("invalid syntax in eval form:\n" + sourceMessages.toString(20));
    }

    public Procedure evalToFocusProc(Reader reader, SourceMessages sourceMessages) throws Throwable {
        Compilation compilation = parse(reader instanceof InPort ? (InPort) reader : new InPort(reader), sourceMessages, 65537);
        CallContext callContext = CallContext.getInstance();
        int iStartFromContext = callContext.startFromContext();
        try {
            ModuleExp.evalModule(Environment.getCurrent(), callContext, compilation, null, null);
            return (Procedure) callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public void evalWithFocus(Reader reader, SourceMessages sourceMessages, Object obj, Consumer consumer) throws Throwable {
        applyWithFocus(evalToFocusProc(reader, sourceMessages), obj, consumer);
    }

    public Object evalWithFocus(String str, Object obj) throws Throwable {
        return applyWithFocus(evalToFocusProc(str), obj);
    }

    public Object evalWithFocus(String str, Object obj, int i, int i2) throws Throwable {
        return applyWithFocus(evalToFocusProc(str), obj, i, i2);
    }

    public void evalWithFocus(Reader reader, SourceMessages sourceMessages, Object obj, int i, int i2, Consumer consumer) throws Throwable {
        applyWithFocus(evalToFocusProc(reader, sourceMessages), obj, i, i2, consumer);
    }

    public void eval_with_focus$X(String str, Object obj, CallContext callContext) throws Throwable {
        applyWithFocus$X(evalToFocusProc(str), obj, callContext);
    }

    public void eval_with_focus$X(String str, Object obj, int i, int i2, CallContext callContext) throws Throwable {
        evalToFocusProc(str).check3(obj, IntNum.make(i), IntNum.make(i2), callContext);
    }

    public XQuery() {
        this.environ = xqEnvironment;
        this.defaultNamespace = xqueryFunctionNamespace;
    }

    public static XQuery getInstance() {
        return instance;
    }

    public static void registerEnvironment() {
        ApplicationMainSupport.processCommandLinePropertyAssignments = true;
        Language.setDefaults(instance);
    }

    @Override // gnu.expr.Language
    public Consumer getOutputConsumer(Writer writer) {
        return new XMLPrinter(writer, false);
    }

    public static Type getStandardType(String str) {
        int length = typeMap.length;
        while (true) {
            int i = length - 2;
            if (i < 0) {
                return null;
            }
            if (typeMap[i].equals(str)) {
                Object obj = typeMap[length - 1];
                if (obj instanceof String) {
                    return Scheme.string2Type((String) obj);
                }
                return (Type) obj;
            }
            length = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    @Override // gnu.expr.Language
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.bytecode.Type getTypeFor(java.lang.String r2) {
        /*
            r1 = this;
            java.lang.String r0 = "xs:"
            boolean r0 = r2.startsWith(r0)
            if (r0 == 0) goto Le
            r0 = 3
        L9:
            java.lang.String r0 = r2.substring(r0)
            goto L19
        Le:
            java.lang.String r0 = "xdt:"
            boolean r0 = r2.startsWith(r0)
            if (r0 == 0) goto L18
            r0 = 4
            goto L9
        L18:
            r0 = r2
        L19:
            gnu.bytecode.Type r0 = getStandardType(r0)
            if (r0 == 0) goto L20
            return r0
        L20:
            gnu.bytecode.Type r2 = kawa.standard.Scheme.string2Type(r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQuery.getTypeFor(java.lang.String):gnu.bytecode.Type");
    }

    @Override // gnu.expr.Language
    public String formatType(Type type) {
        String name = type.getName();
        if ("gnu.math.IntNum".equals(name)) {
            return "xs:integer";
        }
        if ("java.lang.String".equals(name) || "java.lang.CharSequence".equals(name)) {
            return "xs:string";
        }
        return type.toString();
    }

    @Override // gnu.expr.Language
    public Type getTypeFor(Class cls) {
        if (cls.isPrimitive()) {
            String name = cls.getName();
            if (name.equals(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)) {
                return XDataType.booleanType;
            }
            return Scheme.getNamedType(name);
        }
        if (!cls.isArray()) {
            String name2 = cls.getName();
            if (name2.equals("java.lang.String")) {
                return XDataType.stringStringType;
            }
            if (name2.equals("gnu.kawa.xml.UntypedAtomic")) {
                return XDataType.untypedAtomicType;
            }
            if (name2.equals("java.lang.Boolean")) {
                return XDataType.booleanType;
            }
            if (name2.equals("java.lang.Float")) {
                return XDataType.floatType;
            }
            if (name2.equals("java.lang.Double")) {
                return XDataType.doubleType;
            }
            if (name2.equals("java.math.BigDecimal")) {
                return XDataType.decimalType;
            }
            if (name2.equals("gnu.math.Duration")) {
                return XDataType.durationType;
            }
            if (name2.equals("gnu.text.Path")) {
                return XDataType.anyURIType;
            }
        }
        return Type.make(cls);
    }

    @Override // gnu.expr.Language
    public Procedure getPrompter() {
        return new a();
    }

    public static void mangle(String str, int i, int i2, StringBuffer stringBuffer, char c) {
        int length = stringBuffer.length();
        int i3 = 0;
        while (true) {
            char c2 = 'P';
            while (i3 < i2) {
                char cCharAt = str.charAt(i + i3);
                i3++;
                if (Character.isUpperCase(cCharAt)) {
                    if (c2 == 'U' && (i3 >= i2 || !Character.isLowerCase(str.charAt(i + i3)))) {
                        z = false;
                    }
                    c2 = 'U';
                } else if (Character.isLowerCase(cCharAt)) {
                    if (c2 == 'L' && c2 == 'U') {
                        z = false;
                    }
                    c2 = 'L';
                } else if (Character.isLetter(cCharAt)) {
                    z = c2 != 'O';
                    c2 = 'O';
                } else if (Character.isDigit(cCharAt)) {
                    z = c2 != 'D';
                    c2 = 'D';
                } else if (Character.isJavaIdentifierPart(cCharAt)) {
                    z = (c2 == 'D' || c2 == 'M') ? false : true;
                    c2 = Access.METHOD_CONTEXT;
                }
                if (z || c == '_') {
                    if (z && c == '_' && stringBuffer.length() > length) {
                        stringBuffer.append('_');
                    }
                    cCharAt = Character.toUpperCase(cCharAt);
                }
                stringBuffer.append(cCharAt);
            }
            return;
        }
    }

    public static String mangle(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        mangle(str, 0, str.length(), stringBuffer, 'U');
        return stringBuffer.toString();
    }

    public static String makeClassName(String str) {
        String strReplace = str.replace(File.separatorChar, '/');
        int iLastIndexOf = strReplace.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            strReplace = strReplace.substring(iLastIndexOf + 1);
        }
        int iLastIndexOf2 = strReplace.lastIndexOf(46);
        if (iLastIndexOf2 >= 0) {
            strReplace = strReplace.substring(0, iLastIndexOf2);
        }
        return Compilation.mangleNameIfNeeded(strReplace);
    }

    public static Object getExternal(Symbol symbol, Object obj) {
        Environment current = Environment.getCurrent();
        Object obj2 = current.get(symbol, null, null);
        if (obj2 == null) {
            obj2 = current.get(Symbol.makeWithUnknownNamespace(symbol.getLocalName(), symbol.getPrefix()), null, null);
        }
        if (obj2 == null) {
            throw new RuntimeException("unbound external " + symbol);
        }
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof XDataType) {
            return ((XDataType) obj).cast(obj2);
        }
        if (obj instanceof ClassType) {
            String name = ((ClassType) obj).getName();
            if ("gnu.math.IntNum".equals(name)) {
                return IntNum.valueOf(obj2.toString());
            }
            if ("gnu.math.RealNum".equals(name)) {
                return DFloNum.make(Double.parseDouble(obj2.toString()));
            }
        }
        try {
            return ((Type) obj).coerceFromObject(obj2);
        } catch (ClassCastException unused) {
            throw new WrongType(symbol.toString(), -2, obj2, obj.toString());
        }
    }
}
