package gnu.xquery.lang;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import gnu.bytecode.ClassType;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.LambdaExp;
import gnu.expr.NameLookup;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.kawa.functions.Convert;
import gnu.kawa.functions.LispEscapeFormat;
import gnu.kawa.lispexpr.LangPrimType;
import gnu.kawa.reflect.InstanceOf;
import gnu.kawa.reflect.OccurrenceType;
import gnu.kawa.reflect.SingletonType;
import gnu.kawa.xml.DescendantOrSelfAxis;
import gnu.kawa.xml.ElementType;
import gnu.kawa.xml.MakeWithBaseUri;
import gnu.kawa.xml.NodeType;
import gnu.kawa.xml.ProcessingInstructionType;
import gnu.kawa.xml.XDataType;
import gnu.mapping.InPort;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import gnu.mapping.WrappedException;
import gnu.math.IntNum;
import gnu.text.FilePath;
import gnu.text.Lexer;
import gnu.text.Path;
import gnu.text.SourceError;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.text.URIPath;
import gnu.xml.NamespaceBinding;
import gnu.xml.TextUtils;
import gnu.xml.XName;
import gnu.xquery.util.CastableAs;
import gnu.xquery.util.NamedCollator;
import gnu.xquery.util.QNameUtils;
import gnu.xquery.util.RelativeStep;
import gnu.xquery.util.ValuesFilter;
import java.io.IOException;
import java.util.Vector;
import kawa.Telnet;

/* loaded from: classes2.dex */
public class XQParser extends Lexer {
    public static boolean warnHidePreviousDeclaration = false;
    public static boolean warnOldVersion = true;
    public String A;
    public int B;
    public Compilation C;
    public NamespaceBinding D;
    public NamespaceBinding E;

    /* renamed from: a, reason: collision with root package name */
    public int f5526a;

    /* renamed from: b, reason: collision with root package name */
    public String f5527b;
    public int c;
    public boolean d;
    public String e;
    public int f;
    public Namespace[] functionNamespacePath;

    /* renamed from: g, reason: collision with root package name */
    public int f5528g;
    public final XQuery h;
    public NamedCollator i;
    public char j;
    public boolean k;
    public Path l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public boolean s;
    public Declaration[] t;
    public int u;
    public int v;
    public int w;
    public int x;
    public String y;
    public int z;
    public static final Symbol F = Symbol.makeUninterned("$dot$");
    public static final Symbol G = Symbol.makeUninterned("$position$");
    public static final Symbol H = Symbol.makeUninterned("$last$");
    public static final InstanceOf instanceOf = new InstanceOf(XQuery.getInstance(), "instance");
    public static final CastableAs castableAs = CastableAs.castableAs;
    public static final Convert treatAs = Convert.as;
    public static final PrimProcedure I = new PrimProcedure(ClassType.make("gnu.kawa.reflect.OccurrenceType").getDeclaredMethod("getInstance", 3));
    public static QuoteExp makeChildAxisStep = QuoteExp.getInstance(new PrimProcedure("gnu.kawa.xml.ChildAxis", "make", 1));
    public static QuoteExp makeDescendantAxisStep = QuoteExp.getInstance(new PrimProcedure("gnu.kawa.xml.DescendantAxis", "make", 1));
    public static Expression makeText = makeFunctionExp("gnu.kawa.xml.MakeText", "makeText");
    public static final Expression J = makeFunctionExp("gnu.kawa.xml.MakeCDATA", "makeCDATA");
    public static final NamespaceBinding K = new NamespaceBinding("local", XQuery.LOCAL_NAMESPACE, new NamespaceBinding("qexo", XQuery.QEXO_FUNCTION_NAMESPACE, new NamespaceBinding("kawa", XQuery.KAWA_FUNCTION_NAMESPACE, new NamespaceBinding("html", "http://www.w3.org/1999/xhtml", new NamespaceBinding("fn", XQuery.XQUERY_FUNCTION_NAMESPACE, new NamespaceBinding("xsi", XQuery.SCHEMA_INSTANCE_NAMESPACE, new NamespaceBinding("xs", XQuery.SCHEMA_NAMESPACE, new NamespaceBinding("xml", NamespaceBinding.XML_NAMESPACE, NamespaceBinding.predefinedXML))))))));
    public static final QuoteExp getExternalFunction = QuoteExp.getInstance(new PrimProcedure("gnu.xquery.lang.XQuery", "getExternal", 2));
    public static final String[] axisNames = {"ancestor", "ancestor-or-self", "attribute", "child", "descendant", "descendant-or-self", "following", "following-sibling", "namespace", "parent", "preceding", "preceding-sibling", "self"};

    public static final int D(int i) {
        switch (i) {
            case 400:
                return 1;
            case ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET /* 401 */:
                return 2;
            case ErrorMessages.ERROR_NXT_NOT_CONNECTED_TO_ROBOT /* 402 */:
            case ErrorMessages.ERROR_NXT_INVALID_RETURN_PACKAGE /* 403 */:
            case 404:
            case ErrorMessages.ERROR_NXT_INVALID_PROGRAM_NAME /* 405 */:
            case ErrorMessages.ERROR_NXT_INVALID_FILE_NAME /* 406 */:
            case ErrorMessages.ERROR_NXT_INVALID_MOTOR_PORT /* 407 */:
            case ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT /* 408 */:
            case ErrorMessages.ERROR_NXT_INVALID_MAILBOX /* 409 */:
            case ErrorMessages.ERROR_NXT_MESSAGE_TOO_LONG /* 410 */:
            case ErrorMessages.ERROR_NXT_DATA_TOO_LARGE /* 411 */:
            case 426:
            case 427:
            case 428:
            case 429:
            case 430:
            case 431:
                return 3;
            case ErrorMessages.ERROR_NXT_COULD_NOT_DECODE_ELEMENT /* 412 */:
                return 4;
            case ErrorMessages.ERROR_NXT_COULD_NOT_FIT_ELEMENT_IN_BYTE /* 413 */:
            case ErrorMessages.ERROR_NXT_INVALID_SOURCE_ARGUMENT /* 414 */:
                return 5;
            case ErrorMessages.ERROR_NXT_INVALID_DESTINATION_ARGUMENT /* 415 */:
            case ErrorMessages.ERROR_NXT_UNABLE_TO_DOWNLOAD_FILE /* 416 */:
            case ErrorMessages.ERROR_NXT_CANNOT_DETECT_COLOR /* 417 */:
            case ErrorMessages.ERROR_NXT_CANNOT_DETECT_LIGHT /* 418 */:
                return 6;
            case ErrorMessages.ERROR_NXT_INVALID_GENERATE_COLOR /* 419 */:
                return 7;
            case ErrorMessages.ERROR_NXT_INVALID_MOTOR_MODE /* 420 */:
            case ErrorMessages.ERROR_NXT_INVALID_REGULATION_MODE /* 421 */:
                return 8;
            case ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE /* 422 */:
                return 9;
            case ErrorMessages.ERROR_NXT_INVALID_SENSOR_MODE /* 423 */:
                return 10;
            case 424:
                return 11;
            case 425:
                return 12;
            default:
                return 0;
        }
    }

    public void handleOption(Symbol symbol, String str) {
    }

    public void setStaticBaseUri(String str) {
        try {
            Path absolute = URIPath.valueOf(str).getAbsolute();
            if (absolute instanceof FilePath) {
                absolute = URIPath.valueOf(absolute.toURI());
            }
            this.l = absolute;
        } catch (Throwable th) {
            th = th;
            if (th instanceof WrappedException) {
                th = ((WrappedException) th).getCause();
            }
            error('e', "invalid URI: " + th.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[PHI: r0
      0x0043: PHI (r0v4 gnu.text.Path) = (r0v3 gnu.text.Path), (r0v3 gnu.text.Path), (r0v9 gnu.text.Path), (r0v9 gnu.text.Path) binds: [B:10:0x0024, B:12:0x002a, B:14:0x0032, B:20:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getStaticBaseUri() {
        /*
            r4 = this;
            gnu.text.Path r0 = r4.l
            if (r0 != 0) goto L5c
            gnu.mapping.Environment r1 = gnu.mapping.Environment.getCurrent()
            java.lang.String r2 = ""
            java.lang.String r3 = "base-uri"
            gnu.mapping.Symbol r2 = gnu.mapping.Symbol.make(r2, r3)
            r3 = 0
            java.lang.Object r1 = r1.get(r2, r3, r3)
            if (r1 == 0) goto L24
            boolean r2 = r1 instanceof gnu.text.Path
            if (r2 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r0 = r1.toString()
            gnu.text.URIPath r0 = gnu.text.URIPath.valueOf(r0)
        L24:
            if (r0 != 0) goto L43
            gnu.text.LineBufferedReader r1 = r4.getPort()
            if (r1 == 0) goto L43
            gnu.text.Path r0 = r1.getPath()
            boolean r2 = r0 instanceof gnu.text.FilePath
            if (r2 == 0) goto L43
            boolean r2 = r0.exists()
            if (r2 == 0) goto L44
            boolean r2 = r1 instanceof gnu.mapping.TtyInPort
            if (r2 != 0) goto L44
            boolean r1 = r1 instanceof gnu.mapping.CharArrayInPort
            if (r1 == 0) goto L43
            goto L44
        L43:
            r3 = r0
        L44:
            if (r3 != 0) goto L4a
            gnu.text.Path r3 = gnu.text.Path.currentPath()
        L4a:
            gnu.text.Path r0 = r3.getAbsolute()
            boolean r1 = r0 instanceof gnu.text.FilePath
            if (r1 == 0) goto L5a
            java.net.URI r0 = r0.toURI()
            gnu.text.URIPath r0 = gnu.text.URIPath.valueOf(r0)
        L5a:
            r4.l = r0
        L5c:
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.getStaticBaseUri():java.lang.String");
    }

    public String resolveAgainstBaseUri(String str) {
        return Path.uriSchemeSpecified(str) ? str : Path.valueOf(getStaticBaseUri()).resolve(str).toString();
    }

    public final int A(String str) throws SyntaxException, IOException {
        int I2 = I(true);
        if (I2 < 0) {
            eofError(str);
        }
        unread(I2);
        return I2;
    }

    public final int I(boolean z) throws SyntaxException, IOException {
        int i;
        while (true) {
            i = read();
            if (i != 40) {
                if (i != 123) {
                    if (!z) {
                        if (i != 32 && i != 9) {
                            break;
                        }
                    } else if (i < 0 || !Character.isWhitespace((char) i)) {
                        break;
                    }
                } else {
                    int i2 = read();
                    if (i2 != 45) {
                        unread(i2);
                        return 123;
                    }
                    int i3 = read();
                    if (i3 != 45) {
                        unread(i3);
                        unread(45);
                        return 123;
                    }
                    H();
                }
            } else {
                if (!checkNext(':')) {
                    return 40;
                }
                G();
            }
        }
        return i;
    }

    public final void H() throws SyntaxException, IOException {
        int lineNumber = getLineNumber() + 1;
        int columnNumber = getColumnNumber() - 2;
        J("use (: :) instead of old-style comment {-- --}");
        while (true) {
            int i = 0;
            while (true) {
                int i2 = read();
                if (i2 == 45) {
                    i++;
                } else {
                    if (i2 == 125 && i >= 2) {
                        return;
                    }
                    if (i2 < 0) {
                        this.f = lineNumber;
                        this.f5528g = columnNumber;
                        eofError("non-terminated comment starting here");
                    }
                }
            }
        }
    }

    public final void G() throws SyntaxException, IOException {
        this.x++;
        int lineNumber = getLineNumber() + 1;
        int columnNumber = getColumnNumber() - 1;
        String str = this.y;
        if (str != null) {
            this.f = lineNumber;
            this.f5528g = columnNumber;
            error('e', str);
        }
        char cPushNesting = pushNesting(':');
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = read();
            if (i3 == 58) {
                if (i == 40) {
                    i2++;
                    i = 0;
                }
            } else if (i3 == 41 && i == 58) {
                if (i2 == 0) {
                    popNesting(cPushNesting);
                    return;
                }
                i2--;
            } else if (i3 < 0) {
                this.f = lineNumber;
                this.f5528g = columnNumber;
                eofError("non-terminated comment starting here");
            }
            i = i3;
        }
    }

    @Override // gnu.text.Lexer
    public void mark() throws IOException {
        super.mark();
        this.z = this.f5526a;
        this.A = this.f5527b;
    }

    @Override // gnu.text.Lexer, java.io.Reader
    public void reset() throws IOException {
        this.f5526a = this.z;
        this.f5527b = this.A;
        super.reset();
    }

    public final void F(int i, int i2) {
        this.f5526a = i;
        this.f = this.port.getLineNumber() + 1;
        this.f5528g = (this.port.getColumnNumber() + 1) - i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:191:0x015a, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d() throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.d():int");
    }

    public void getDelimited(String str) throws SyntaxException, IOException {
        if (readDelimited(str)) {
            return;
        }
        eofError("unexpected end-of-file looking for '" + str + '\'');
    }

    public void appendNamedEntity(String str) {
        int i;
        String strIntern = str.intern();
        if (strIntern == "lt") {
            i = 60;
        } else if (strIntern == "gt") {
            i = 62;
        } else if (strIntern == "amp") {
            i = 38;
        } else if (strIntern == "quot") {
            i = 34;
        } else if (strIntern == "apos") {
            i = 39;
        } else {
            error("unknown enity reference: '" + strIntern + "'");
            i = 63;
        }
        tokenBufferAppend(i);
    }

    public final boolean h(String str, String str2) throws SyntaxException, IOException {
        if (!match(str)) {
            return false;
        }
        mark();
        d();
        if (match(str2)) {
            reset();
            d();
            return true;
        }
        reset();
        error('e', "'" + str + "' must be followed by '" + str2 + "'", "XPST0003");
        return true;
    }

    public final int C() throws SyntaxException, IOException {
        while (true) {
            int i = this.f5526a;
            if (i == 10) {
                if (this.nesting == 0) {
                    return 10;
                }
                d();
            } else {
                if (i == 65) {
                    switch (this.tokenBufferLength) {
                        case 2:
                            char[] cArr = this.tokenBuffer;
                            char c = cArr[0];
                            char c2 = cArr[1];
                            if (c != 'o' || c2 != 'r') {
                                if (c != 't' || c2 != 'o') {
                                    if (c != 'i' || c2 != 's') {
                                        if (c != 'e' || c2 != 'q') {
                                            if (c != 'n' || c2 != 'e') {
                                                if (c != 'g') {
                                                    if (c == 'l') {
                                                        if (c2 != 'e') {
                                                            if (c2 == 't') {
                                                                this.f5526a = 428;
                                                                break;
                                                            }
                                                        } else {
                                                            this.f5526a = 429;
                                                            break;
                                                        }
                                                    }
                                                } else if (c2 != 'e') {
                                                    if (c2 == 't') {
                                                        this.f5526a = 430;
                                                        break;
                                                    }
                                                } else {
                                                    this.f5526a = 431;
                                                    break;
                                                }
                                            } else {
                                                this.f5526a = 427;
                                                break;
                                            }
                                        } else {
                                            this.f5526a = 426;
                                            break;
                                        }
                                    } else {
                                        this.f5526a = ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT;
                                        break;
                                    }
                                } else {
                                    this.f5526a = ErrorMessages.ERROR_NXT_COULD_NOT_DECODE_ELEMENT;
                                    break;
                                }
                            } else {
                                this.f5526a = 400;
                                break;
                            }
                            break;
                        case 3:
                            char[] cArr2 = this.tokenBuffer;
                            char c3 = cArr2[0];
                            char c4 = cArr2[1];
                            char c5 = cArr2[2];
                            if (c3 != 'a') {
                                if (c3 != 'm') {
                                    if (c3 == 'd' && c4 == 'i' && c5 == 'v') {
                                        this.f5526a = ErrorMessages.ERROR_NXT_UNABLE_TO_DOWNLOAD_FILE;
                                        break;
                                    }
                                } else {
                                    if (c4 == 'u' && c5 == 'l') {
                                        this.f5526a = ErrorMessages.ERROR_NXT_INVALID_DESTINATION_ARGUMENT;
                                    }
                                    if (c4 == 'o' && c5 == 'd') {
                                        this.f5526a = ErrorMessages.ERROR_NXT_CANNOT_DETECT_LIGHT;
                                        break;
                                    }
                                }
                            } else if (c4 == 'n' && c5 == 'd') {
                                this.f5526a = ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET;
                                break;
                            }
                            break;
                        case 4:
                            if (!match("idiv")) {
                                if (h("cast", "as")) {
                                    this.f5526a = 425;
                                    break;
                                }
                            } else {
                                this.f5526a = ErrorMessages.ERROR_NXT_CANNOT_DETECT_COLOR;
                                break;
                            }
                            break;
                        case 5:
                            if (match("where")) {
                                this.f5526a = FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION;
                                break;
                            } else if (match("isnot")) {
                                this.f5526a = ErrorMessages.ERROR_NXT_INVALID_MAILBOX;
                                break;
                            } else if (!match("union")) {
                                if (h("treat", "as")) {
                                    this.f5526a = ErrorMessages.ERROR_NXT_INVALID_SENSOR_MODE;
                                    break;
                                }
                            } else {
                                this.f5526a = ErrorMessages.ERROR_NXT_INVALID_GENERATE_COLOR;
                                break;
                            }
                            break;
                        case 6:
                            if (match("except")) {
                                this.f5526a = ErrorMessages.ERROR_NXT_INVALID_REGULATION_MODE;
                                break;
                            }
                            break;
                        case 8:
                            if (!h("instance", "of")) {
                                if (h("castable", "as")) {
                                    this.f5526a = 424;
                                    break;
                                }
                            } else {
                                this.f5526a = ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE;
                                break;
                            }
                            break;
                        case 9:
                            if (match("intersect")) {
                                this.f5526a = ErrorMessages.ERROR_NXT_INVALID_MOTOR_MODE;
                                break;
                            }
                            break;
                        case 10:
                            if (match("instanceof")) {
                                J("use 'instanceof of' (two words) instead of 'instanceof'");
                                this.f5526a = ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE;
                                break;
                            }
                            break;
                    }
                }
                return this.f5526a;
            }
        }
    }

    public final boolean e(String str, String str2) throws IOException {
        if (!str.equals(this.f5527b)) {
            return false;
        }
        int length = str2.length();
        int i = 0;
        while (true) {
            int i2 = read();
            if (i != length) {
                if (i2 < 0) {
                    break;
                }
                int i3 = i + 1;
                if (i2 != str2.charAt(i)) {
                    i = i3;
                    break;
                }
                i = i3;
            } else {
                if (i2 < 0) {
                    return true;
                }
                if (!XName.isNamePart((char) i2)) {
                    unread();
                    return true;
                }
                i++;
            }
        }
        this.port.skip(-i);
        return false;
    }

    public final int c() {
        String strIntern = new String(this.tokenBuffer, 0, this.tokenBufferLength).intern();
        int i = 13;
        do {
            i--;
            if (i < 0) {
                break;
            }
        } while (axisNames[i] != strIntern);
        if (i < 0 || i == 8) {
            error('e', "unknown axis name '" + strIntern + '\'', "XPST0003");
            i = 3;
        }
        return (char) (i + 100);
    }

    public final int B() throws SyntaxException, IOException {
        int i;
        int i2;
        while (true) {
            i = this.f5526a;
            if (i != 10) {
                break;
            }
            d();
        }
        if (i == 65 || i == 81) {
            int I2 = I(this.nesting != 0);
            switch (this.tokenBuffer[0]) {
                case 'a':
                    if (match("attribute")) {
                        if (I2 == 40) {
                            this.f5526a = 236;
                            return 236;
                        }
                        if (I2 == 123 || XName.isNameStart((char) I2)) {
                            unread();
                            this.f5526a = Telnet.WONT;
                            return Telnet.WONT;
                        }
                    }
                    break;
                case 'c':
                    if (match("comment")) {
                        if (I2 == 40) {
                            this.f5526a = 232;
                            return 232;
                        }
                        if (I2 == 123) {
                            unread();
                            this.f5526a = Telnet.DONT;
                            return Telnet.DONT;
                        }
                    }
                    break;
                case 'd':
                    if (I2 == 123 && match("document")) {
                        unread();
                        this.f5526a = 256;
                        return 256;
                    }
                    if (I2 == 40 && match("document-node")) {
                        this.f5526a = 234;
                        return 234;
                    }
                    break;
                case 'e':
                    if (match("element")) {
                        if (I2 == 40) {
                            this.f5526a = 235;
                            return 235;
                        }
                        if (I2 == 123 || XName.isNameStart((char) I2)) {
                            unread();
                            this.f5526a = Telnet.WILL;
                            return Telnet.WILL;
                        }
                    } else {
                        if (I2 == 40 && match("empty-sequence")) {
                            this.f5526a = 238;
                            return 238;
                        }
                        if (I2 == 36 && match("every")) {
                            this.f5526a = 246;
                            return 246;
                        }
                    }
                    break;
                case 'f':
                    if (I2 == 36 && match("for")) {
                        this.f5526a = 243;
                        return 243;
                    }
                    break;
                case 'i':
                    if (I2 == 40 && match("if")) {
                        this.f5526a = LispEscapeFormat.ESCAPE_NORMAL;
                        return LispEscapeFormat.ESCAPE_NORMAL;
                    }
                    if (I2 == 40 && match("item")) {
                        this.f5526a = 237;
                        return 237;
                    }
                    break;
                case 'l':
                    if (I2 == 36 && match("let")) {
                        this.f5526a = 244;
                        return 244;
                    }
                    break;
                case 'n':
                    if (I2 == 40 && match("node")) {
                        this.f5526a = 230;
                        return 230;
                    }
                    break;
                case 'o':
                    if (I2 == 123 && match("ordered")) {
                        this.f5526a = 249;
                        return 249;
                    }
                    break;
                case 'p':
                    if (match("processing-instruction")) {
                        if (I2 == 40) {
                            this.f5526a = 233;
                            return 233;
                        }
                        if (I2 == 123 || XName.isNameStart((char) I2)) {
                            unread();
                            this.f5526a = 255;
                            return 255;
                        }
                    }
                    break;
                case 's':
                    if (I2 == 36 && match("some")) {
                        this.f5526a = 245;
                        return 245;
                    }
                    if (I2 == 40 && match("schema-attribute")) {
                        this.f5526a = 239;
                        return 239;
                    }
                    if (I2 == 40 && match("schema-element")) {
                        this.f5526a = 240;
                        return 240;
                    }
                    break;
                case 't':
                    if (match(PropertyTypeConstants.PROPERTY_TYPE_TEXT)) {
                        if (I2 == 40) {
                            this.f5526a = 231;
                            return 231;
                        }
                        if (I2 == 123) {
                            unread();
                            this.f5526a = Telnet.DO;
                            return Telnet.DO;
                        }
                    }
                    if (I2 == 40 && match("typeswitch")) {
                        this.f5526a = LispEscapeFormat.ESCAPE_ALL;
                        return LispEscapeFormat.ESCAPE_ALL;
                    }
                    break;
                case 'u':
                    if (I2 == 123 && match("unordered")) {
                        this.f5526a = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                        return ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                    }
                    break;
                case 'v':
                    if (I2 == 123 && match("validate")) {
                        this.f5526a = 248;
                        return 248;
                    }
                    break;
            }
            if (I2 == 40 && peek() != 58) {
                this.f5526a = 70;
                return 70;
            }
            if (I2 == 58 && peek() == 58) {
                int iC = c();
                this.f5526a = iC;
                return iC;
            }
            this.f5527b = new String(this.tokenBuffer, 0, this.tokenBufferLength);
            if (I2 != 115) {
                if (I2 != 118) {
                    if (I2 != 120) {
                        switch (I2) {
                            case 98:
                                if (e("declare", "ase-uri")) {
                                    this.f5526a = 66;
                                    return 66;
                                }
                                if (e("declare", "oundary-space")) {
                                    this.f5526a = 83;
                                    return 83;
                                }
                                break;
                            case 99:
                                if (e("declare", "onstruction")) {
                                    this.f5526a = 75;
                                    return 75;
                                }
                                if (e("declare", "opy-namespaces")) {
                                    this.f5526a = 76;
                                    return 76;
                                }
                                break;
                            case 100:
                                if (e("declare", "efault")) {
                                    d();
                                    if (match("function")) {
                                        this.f5526a = 79;
                                        return 79;
                                    }
                                    if (match("element")) {
                                        this.f5526a = 69;
                                        return 69;
                                    }
                                    if (match("collation")) {
                                        this.f5526a = 71;
                                        return 71;
                                    }
                                    if (match("order")) {
                                        this.f5526a = 72;
                                        return 72;
                                    }
                                    error("unrecognized/unimplemented 'declare default'");
                                    do {
                                        i2 = read();
                                        if (i2 >= 0) {
                                        }
                                        return B();
                                    } while (i2 != 59);
                                    return B();
                                }
                            case 101:
                                if (e("default", "lement")) {
                                    J("replace 'default element' by 'declare default element namespace'");
                                    this.f5526a = 69;
                                    return 69;
                                }
                                break;
                            case 102:
                                if (e("declare", "unction")) {
                                    this.f5526a = 80;
                                    return 80;
                                }
                                if (e("define", "unction")) {
                                    J("replace 'define function' by 'declare function'");
                                    this.f5526a = 80;
                                    return 80;
                                }
                                if (e("default", "unction")) {
                                    J("replace 'default function' by 'declare default function namespace'");
                                    this.f5526a = 79;
                                    return 79;
                                }
                                break;
                            default:
                                switch (I2) {
                                    case 109:
                                        if (e("import", "odule")) {
                                            this.f5526a = 73;
                                            return 73;
                                        }
                                        break;
                                    case 110:
                                        if (e("declare", "amespace")) {
                                            this.f5526a = 78;
                                            return 78;
                                        }
                                        if (!e("default", "amespace")) {
                                            if (e("module", "amespace")) {
                                                this.f5526a = 77;
                                                return 77;
                                            }
                                        } else {
                                            J("replace 'default namespace' by 'declare default element namespace'");
                                            this.f5526a = 69;
                                            return 69;
                                        }
                                        break;
                                    case 111:
                                        if (e("declare", "rdering")) {
                                            this.f5526a = 85;
                                            return 85;
                                        }
                                        if (e("declare", "ption")) {
                                            this.f5526a = 111;
                                            return 111;
                                        }
                                        break;
                                }
                        }
                    } else if (e("declare", "mlspace")) {
                        J("replace 'define xmlspace' by 'declare boundary-space'");
                        this.f5526a = 83;
                        return 83;
                    }
                } else {
                    if (e("declare", "ariable")) {
                        this.f5526a = 86;
                        return 86;
                    }
                    if (e("define", "ariable")) {
                        J("replace 'define variable' by 'declare variable'");
                        this.f5526a = 86;
                        return 86;
                    }
                    if (e("xquery", "ersion")) {
                        this.f5526a = 89;
                        return 89;
                    }
                }
            } else if (e("import", "chema")) {
                this.f5526a = 84;
                return 84;
            }
            if (I2 >= 0) {
                unread();
                if (XName.isNameStart((char) I2) && this.f5527b.equals("define")) {
                    d();
                    this.f5526a = 87;
                }
            }
            return this.f5526a;
        }
        if (i == 67) {
            int i3 = read();
            if (i3 == 58) {
                this.f5526a = c();
            } else {
                unread(i3);
            }
        }
        return this.f5526a;
    }

    public final void b(String str, String str2, boolean z) {
        boolean zEquals = "xml".equals(str);
        if (NamespaceBinding.XML_NAMESPACE.equals(str2)) {
            if (zEquals && z) {
                return;
            }
            error('e', "namespace uri cannot be the same as the prefined xml namespace", "XQST0070");
            return;
        }
        if (zEquals || "xmlns".equals(str)) {
            error('e', "namespace prefix cannot be 'xml' or 'xmlns'", "XQST0070");
        }
    }

    public final void E(String str, String str2) {
        if (str2.length() == 0) {
            str2 = null;
        }
        this.E = new NamespaceBinding(str, str2, this.E);
    }

    public XQParser(InPort inPort, SourceMessages sourceMessages, XQuery xQuery) {
        super(inPort, sourceMessages);
        this.i = null;
        this.j = 'L';
        this.l = null;
        this.r = 3;
        this.functionNamespacePath = XQuery.defaultFunctionNamespacePath;
        this.D = NamespaceBinding.predefinedXML;
        this.h = xQuery;
        this.nesting = 1;
        this.E = K;
    }

    @Override // gnu.text.Lexer
    public void setInteractive(boolean z) {
        if (this.interactive != z) {
            int i = this.nesting;
            this.nesting = z ? i - 1 : i + 1;
        }
        this.interactive = z;
    }

    public final Expression f(int i, Expression expression, Expression expression2) {
        Expression expressionMakeFunctionExp;
        switch (i) {
            case ErrorMessages.ERROR_NXT_NOT_CONNECTED_TO_ROBOT /* 402 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "=");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_RETURN_PACKAGE /* 403 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "!=");
                break;
            case 404:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "<");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_PROGRAM_NAME /* 405 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", ">");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_FILE_NAME /* 406 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "<=");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_MOTOR_PORT /* 407 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", ">=");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT /* 408 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Eq", "is");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_MAILBOX /* 409 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Ne", "isnot");
                break;
            case ErrorMessages.ERROR_NXT_MESSAGE_TOO_LONG /* 410 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Gr", ">>");
                break;
            case ErrorMessages.ERROR_NXT_DATA_TOO_LARGE /* 411 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Ls", "<<");
                break;
            case ErrorMessages.ERROR_NXT_COULD_NOT_DECODE_ELEMENT /* 412 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.IntegerRange", "integerRange");
                break;
            case ErrorMessages.ERROR_NXT_COULD_NOT_FIT_ELEMENT_IN_BYTE /* 413 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.ArithOp", "add", "+");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_SOURCE_ARGUMENT /* 414 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.ArithOp", "sub", "-");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_DESTINATION_ARGUMENT /* 415 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.ArithOp", "mul", "*");
                break;
            case ErrorMessages.ERROR_NXT_UNABLE_TO_DOWNLOAD_FILE /* 416 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.ArithOp", "div", "div");
                break;
            case ErrorMessages.ERROR_NXT_CANNOT_DETECT_COLOR /* 417 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.ArithOp", "idiv", "idiv");
                break;
            case ErrorMessages.ERROR_NXT_CANNOT_DETECT_LIGHT /* 418 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.ArithOp", "mod", "mod");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_GENERATE_COLOR /* 419 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.UnionNodes", "unionNodes");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_MOTOR_MODE /* 420 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.IntersectNodes", "intersectNodes");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_REGULATION_MODE /* 421 */:
                expressionMakeFunctionExp = makeFunctionExp("gnu.kawa.xml.IntersectNodes", "exceptNodes");
                break;
            case ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE /* 422 */:
            case ErrorMessages.ERROR_NXT_INVALID_SENSOR_MODE /* 423 */:
            case 424:
            case 425:
            default:
                return syntaxError("unimplemented binary op: " + i);
            case 426:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "valEq", "eq");
                break;
            case 427:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "valNe", "ne");
                break;
            case 428:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "valLt", "lt");
                break;
            case 429:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "valLe", "le");
                break;
            case 430:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "valGt", "gt");
                break;
            case 431:
                expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.util.Compare", "valGe", "ge");
                break;
        }
        return new ApplyExp(expressionMakeFunctionExp, expression, expression2);
    }

    public final void u() throws SyntaxException, IOException {
        d();
        if (this.f5526a == 41) {
            d();
        } else {
            error("expected ')'");
        }
    }

    public Expression parseNamedNodeType(boolean z) throws SyntaxException, IOException {
        Expression expressionP;
        d();
        int i = this.f5526a;
        Expression dataType = null;
        if (i == 41) {
            expressionP = QuoteExp.getInstance(ElementType.MATCH_ANY_QNAME);
            d();
        } else {
            if (i == 81 || i == 65) {
                expressionP = p(z);
            } else {
                if (i != 415) {
                    syntaxError("expected QName or *");
                }
                expressionP = QuoteExp.getInstance(ElementType.MATCH_ANY_QNAME);
            }
            d();
            if (this.f5526a == 44) {
                d();
                int i2 = this.f5526a;
                if (i2 == 81 || i2 == 65) {
                    dataType = parseDataType();
                } else {
                    syntaxError("expected QName");
                }
            }
            if (this.f5526a == 41) {
                d();
            } else {
                error("expected ')' after element");
            }
        }
        return g(z, expressionP, dataType);
    }

    public static Expression g(boolean z, Expression expression, Expression expression2) {
        ApplyExp applyExp = new ApplyExp(ClassType.make(z ? "gnu.kawa.xml.AttributeType" : "gnu.kawa.xml.ElementType").getDeclaredMethod("make", 1), expression);
        applyExp.setFlag(4);
        return expression2 == null ? applyExp : new BeginExp(expression2, applyExp);
    }

    public Expression parseOptionalTypeDeclaration() throws SyntaxException, IOException {
        if (!match("as")) {
            return null;
        }
        d();
        return parseDataType();
    }

    public Expression parseDataType() throws SyntaxException, IOException {
        int i;
        int i2;
        Expression itemType = parseItemType();
        if (itemType == null) {
            if (this.f5526a != 238) {
                return syntaxError("bad syntax - expected DataType");
            }
            u();
            int i3 = this.f5526a;
            if (i3 == 63 || i3 == 413 || i3 == 415) {
                d();
                return syntaxError("occurrence-indicator meaningless after empty-sequence()");
            }
            itemType = QuoteExp.getInstance(OccurrenceType.emptySequenceType);
            i2 = 0;
            i = 0;
        } else {
            int i4 = this.f5526a;
            if (i4 == 63) {
                i2 = 0;
            } else {
                i = -1;
                if (i4 == 413) {
                    i2 = 1;
                } else if (i4 == 415) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
            }
            i = 1;
        }
        if (this.c == 67 && i != 1) {
            return syntaxError("type to 'cast as' or 'castable as' must be a 'SingleType'");
        }
        if (i2 == i) {
            return itemType;
        }
        d();
        ApplyExp applyExp = new ApplyExp(I, itemType, QuoteExp.getInstance(IntNum.make(i2)), QuoteExp.getInstance(IntNum.make(i)));
        applyExp.setFlag(4);
        return applyExp;
    }

    public Expression parseMaybeKindTest() throws SyntaxException, IOException {
        Object processingInstructionType;
        int i = this.f5526a;
        String str = null;
        switch (i) {
            case 230:
                u();
                processingInstructionType = NodeType.anyNodeTest;
                break;
            case 231:
                u();
                processingInstructionType = NodeType.textNodeTest;
                break;
            case 232:
                u();
                processingInstructionType = NodeType.commentNodeTest;
                break;
            case 233:
                d();
                int i2 = this.f5526a;
                if (i2 == 65 || i2 == 34) {
                    str = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                    d();
                }
                if (this.f5526a == 41) {
                    d();
                } else {
                    error("expected ')'");
                }
                processingInstructionType = ProcessingInstructionType.getInstance(str);
                break;
            case 234:
                u();
                processingInstructionType = NodeType.documentNodeTest;
                break;
            case 235:
            case 236:
                return parseNamedNodeType(i == 236);
            default:
                return null;
        }
        return QuoteExp.getInstance(processingInstructionType);
    }

    public Expression parseItemType() throws SyntaxException, IOException {
        Object singletonType;
        B();
        Expression maybeKindTest = parseMaybeKindTest();
        if (maybeKindTest != null) {
            if (this.c != 67) {
                return maybeKindTest;
            }
            singletonType = XDataType.anyAtomicType;
        } else {
            int i = this.f5526a;
            if (i != 237) {
                if (i != 65 && i != 81) {
                    return null;
                }
                ReferenceExp referenceExp = new ReferenceExp(new String(this.tokenBuffer, 0, this.tokenBufferLength));
                referenceExp.setFlag(16);
                maybeSetLine(referenceExp, this.f, this.f5528g);
                d();
                return referenceExp;
            }
            u();
            singletonType = SingletonType.getInstance();
        }
        return QuoteExp.getInstance(singletonType);
    }

    public final Object x() throws SyntaxException, IOException {
        d();
        if (this.f5526a != 34) {
            return declError("expected a URILiteral");
        }
        return TextUtils.replaceWhitespace(new String(this.tokenBuffer, 0, this.tokenBufferLength), true);
    }

    public final Expression m() {
        return o();
    }

    public final Expression o() throws SyntaxException, IOException {
        Declaration declaration;
        Declaration declaration2;
        B();
        switch (this.f5526a) {
            case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                return parseIfExpr();
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                char cPushNesting = pushNesting('t');
                Expression expressionR = r();
                d();
                Vector vector = new Vector();
                vector.addElement(expressionR);
                while (true) {
                    if (match("case")) {
                        pushNesting('c');
                        d();
                        if (this.f5526a == 36) {
                            declaration2 = parseVariableDeclaration();
                            if (declaration2 == null) {
                                return syntaxError("missing Variable after '$'");
                            }
                            d();
                            if (match("as")) {
                                d();
                            } else {
                                error('e', "missing 'as'");
                            }
                        } else {
                            declaration2 = new Declaration("(arg)");
                        }
                        declaration2.setTypeExp(parseDataType());
                        popNesting('t');
                        LambdaExp lambdaExp = new LambdaExp(1);
                        lambdaExp.addDeclaration(declaration2);
                        if (match("return")) {
                            d();
                        } else {
                            error("missing 'return' after 'case'");
                        }
                        this.C.push(lambdaExp);
                        pushNesting('r');
                        lambdaExp.body = m();
                        popNesting('t');
                        this.C.pop(lambdaExp);
                        vector.addElement(lambdaExp);
                    } else {
                        if (match("default")) {
                            LambdaExp lambdaExp2 = new LambdaExp(1);
                            d();
                            if (this.f5526a == 36) {
                                declaration = parseVariableDeclaration();
                                if (declaration == null) {
                                    return syntaxError("missing Variable after '$'");
                                }
                                d();
                            } else {
                                declaration = new Declaration("(arg)");
                            }
                            lambdaExp2.addDeclaration(declaration);
                            if (match("return")) {
                                d();
                            } else {
                                error("missing 'return' after 'default'");
                            }
                            this.C.push(lambdaExp2);
                            lambdaExp2.body = m();
                            this.C.pop(lambdaExp2);
                            vector.addElement(lambdaExp2);
                        } else {
                            error(this.C.isPedantic() ? 'e' : 'w', "no 'default' clause in 'typeswitch'", "XPST0003");
                        }
                        popNesting(cPushNesting);
                        Expression[] expressionArr = new Expression[vector.size()];
                        vector.copyInto(expressionArr);
                        return new ApplyExp(makeFunctionExp("gnu.kawa.reflect.TypeSwitch", "typeSwitch"), expressionArr);
                    }
                }
            case 243:
                return parseFLWRExpression(true);
            case 244:
                return parseFLWRExpression(false);
            case 245:
                return parseQuantifiedExpr(false);
            case 246:
                return parseQuantifiedExpr(true);
            default:
                return i(D(400));
        }
    }

    public final Expression i(int i) throws SyntaxException, IOException {
        int iD;
        Expression ifExp;
        Expression expressionMakeFunctionExp;
        Expression expressionY = y();
        while (true) {
            int iC = C();
            if (iC != 10 && ((iC != 404 || peek() != 47) && (iD = D(iC)) >= i)) {
                char cPushNesting = pushNesting('%');
                d();
                popNesting(cPushNesting);
                if (iC >= 422 && iC <= 425) {
                    if (iC == 425 || iC == 424) {
                        this.c = 67;
                    }
                    Expression dataType = parseDataType();
                    this.c = 0;
                    Expression[] expressionArr = new Expression[2];
                    switch (iC) {
                        case ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE /* 422 */:
                            expressionArr[0] = expressionY;
                            expressionArr[1] = dataType;
                            expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.lang.XQParser", "instanceOf");
                            break;
                        case ErrorMessages.ERROR_NXT_INVALID_SENSOR_MODE /* 423 */:
                            expressionArr[0] = dataType;
                            expressionArr[1] = expressionY;
                            expressionMakeFunctionExp = makeFunctionExp("gnu.xquery.lang.XQParser", "treatAs");
                            break;
                        case 424:
                            expressionArr[0] = expressionY;
                            expressionArr[1] = dataType;
                            expressionMakeFunctionExp = new ReferenceExp(XQResolveNames.castableAsDecl);
                            break;
                        default:
                            expressionArr[0] = dataType;
                            expressionArr[1] = expressionY;
                            expressionMakeFunctionExp = new ReferenceExp(XQResolveNames.castAsDecl);
                            break;
                    }
                    ifExp = new ApplyExp(expressionMakeFunctionExp, expressionArr);
                } else if (iC == 422) {
                    expressionY = new ApplyExp(makeFunctionExp("gnu.xquery.lang.XQParser", "instanceOf"), expressionY, parseDataType());
                } else {
                    Expression expressionI = i(iD + 1);
                    if (iC == 401) {
                        ifExp = new IfExp(booleanValue(expressionY), booleanValue(expressionI), XQuery.falseExp);
                    } else if (iC == 400) {
                        ifExp = new IfExp(booleanValue(expressionY), XQuery.trueExp, booleanValue(expressionI));
                    } else {
                        expressionY = f(iC, expressionY, expressionI);
                    }
                }
                expressionY = ifExp;
            }
        }
        return expressionY;
    }

    public final Expression y() throws SyntaxException, IOException {
        int i = this.f5526a;
        if (i == 414 || i == 413) {
            d();
            return new ApplyExp(makeFunctionExp("gnu.xquery.util.ArithOp", i == 413 ? "plus" : "minus", i == 413 ? "+" : "-"), y());
        }
        Expression expressionS = s();
        while (true) {
            int iC = C();
            if (iC != 420 && iC != 421) {
                break;
            }
            d();
            expressionS = f(iC, expressionS, s());
        }
        Expression expressionF = expressionS;
        while (true) {
            int iC2 = C();
            if (iC2 != 419) {
                return expressionF;
            }
            d();
            Expression expressionS2 = s();
            while (true) {
                int iC3 = C();
                if (iC3 == 420 || iC3 == 421) {
                    d();
                    expressionS2 = f(iC3, expressionS2, s());
                }
            }
            expressionF = f(iC2, expressionF, expressionS2);
        }
    }

    public final Expression s() throws SyntaxException, IOException {
        Expression referenceExp;
        Expression applyExp;
        int i = this.f5526a;
        Symbol symbol = F;
        if (i == 47 || i == 68) {
            Declaration declarationLookup = this.C.lexical.lookup((Object) symbol, false);
            if (declarationLookup == null) {
                referenceExp = syntaxError("context item is undefined", "XPDY0002");
            } else {
                referenceExp = new ReferenceExp(symbol, declarationLookup);
            }
            ApplyExp applyExp2 = new ApplyExp(ClassType.make("gnu.xquery.util.NodeUtils").getDeclaredMethod("rootDocument", 1), referenceExp);
            int I2 = I(this.nesting != 0);
            unread(I2);
            if (I2 < 0 || I2 == 41 || I2 == 125) {
                d();
                return applyExp2;
            }
            applyExp = applyExp2;
        } else {
            applyExp = v();
        }
        Expression expression = null;
        while (true) {
            int i2 = this.f5526a;
            if (i2 != 47 && i2 != 68) {
                return applyExp;
            }
            boolean z = i2 == 68;
            LambdaExp lambdaExp = new LambdaExp(3);
            Declaration declarationAddDeclaration = lambdaExp.addDeclaration(symbol);
            declarationAddDeclaration.setFlag(262144L);
            declarationAddDeclaration.setType(NodeType.anyNodeTest);
            declarationAddDeclaration.noteValue(null);
            PrimType primType = LangPrimType.intType;
            lambdaExp.addDeclaration(G, primType);
            lambdaExp.addDeclaration(H, primType);
            this.C.push(lambdaExp);
            if (z) {
                this.f5526a = 47;
                lambdaExp.body = new ApplyExp(DescendantOrSelfAxis.anyNode, new ReferenceExp(symbol, declarationAddDeclaration));
                expression = applyExp;
            } else {
                d();
                Expression expressionV = v();
                if (expression != null && (expressionV instanceof ApplyExp)) {
                    Expression function = ((ApplyExp) expressionV).getFunction();
                    if (function instanceof ApplyExp) {
                        ApplyExp applyExp3 = (ApplyExp) function;
                        if (applyExp3.getFunction() == makeChildAxisStep) {
                            applyExp3.setFunction(makeDescendantAxisStep);
                            applyExp = expression;
                        }
                    }
                }
                lambdaExp.body = expressionV;
                expression = null;
            }
            this.C.pop(lambdaExp);
            applyExp = new ApplyExp(RelativeStep.relativeStep, applyExp, lambdaExp);
        }
    }

    public final Expression p(boolean z) throws SyntaxException, IOException {
        String strIntern;
        String str;
        String str2;
        char[] cArr;
        int i;
        int i2 = this.f5526a;
        strIntern = "";
        if (i2 == 81) {
            int i3 = this.tokenBufferLength;
            while (true) {
                cArr = this.tokenBuffer;
                i = i3 - 1;
                if (cArr[i] == ':') {
                    break;
                }
                i3 = i;
            }
            str2 = new String(cArr, 0, i);
            str = new String(this.tokenBuffer, i3, this.tokenBufferLength - i3);
        } else {
            if (i2 == 415) {
                int i4 = read();
                if (i4 != 58) {
                    unread(i4);
                } else {
                    int i5 = read();
                    if (i5 < 0) {
                        eofError("unexpected end-of-file after '*:'");
                    }
                    if (XName.isNameStart((char) i5)) {
                        unread();
                        d();
                        if (this.f5526a != 65) {
                            syntaxError("invalid name test");
                        } else {
                            strIntern = new String(this.tokenBuffer, 0, this.tokenBufferLength).intern();
                        }
                    } else if (i5 != 42) {
                        syntaxError("missing local-name after '*:'");
                    }
                }
                return QuoteExp.getInstance(new Symbol(null, strIntern));
            }
            if (i2 == 65) {
                str = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                if (z) {
                    return new QuoteExp(Namespace.EmptyNamespace.getSymbol(str.intern()));
                }
                str2 = null;
            } else if (i2 == 67) {
                str2 = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                if (read() != 42) {
                    syntaxError("invalid characters after 'NCName:'");
                }
                str = "";
            } else {
                str = null;
                str2 = null;
            }
        }
        if (str2 != null) {
            str2 = str2.intern();
        }
        ApplyExp applyExp = new ApplyExp(Compilation.typeSymbol.getDeclaredMethod("make", 3), new ApplyExp((Expression) new ReferenceExp(XQResolveNames.resolvePrefixDecl), QuoteExp.getInstance(str2)), new QuoteExp(str != null ? str : ""), new QuoteExp(str2));
        applyExp.setFlag(4);
        return applyExp;
    }

    public final Expression q(int i) throws SyntaxException, IOException {
        QuoteExp quoteExp;
        String str;
        B();
        Expression[] expressionArr = new Expression[1];
        Expression maybeKindTest = parseMaybeKindTest();
        if (maybeKindTest != null) {
            expressionArr[0] = maybeKindTest;
        } else {
            int i2 = this.f5526a;
            if (i2 != 65 && i2 != 81 && i2 != 67 && i2 != 415) {
                if (i < 0) {
                    return null;
                }
                return syntaxError("unsupported axis '" + axisNames[i] + "::'");
            }
            expressionArr[0] = g(i == 2, p(i == 2), null);
        }
        NameLookup nameLookup = this.C.lexical;
        Symbol symbol = F;
        Declaration declarationLookup = nameLookup.lookup((Object) symbol, false);
        Expression expressionSyntaxError = declarationLookup == null ? syntaxError("node test when context item is undefined", "XPDY0002") : new ReferenceExp(symbol, declarationLookup);
        if (maybeKindTest == null) {
            d();
        }
        if (i == 3 || i == -1) {
            quoteExp = makeChildAxisStep;
        } else if (i == 4) {
            quoteExp = makeDescendantAxisStep;
        } else {
            switch (i) {
                case 0:
                    str = "Ancestor";
                    break;
                case 1:
                    str = "AncestorOrSelf";
                    break;
                case 2:
                    str = "Attribute";
                    break;
                case 3:
                case 4:
                case 8:
                default:
                    throw new Error();
                case 5:
                    str = "DescendantOrSelf";
                    break;
                case 6:
                    str = "Following";
                    break;
                case 7:
                    str = "FollowingSibling";
                    break;
                case 9:
                    str = "Parent";
                    break;
                case 10:
                    str = "Preceding";
                    break;
                case 11:
                    str = "PrecedingSibling";
                    break;
                case 12:
                    str = "Self";
                    break;
            }
            quoteExp = QuoteExp.getInstance(new PrimProcedure(_COROUTINE.a.A("gnu.kawa.xml.", str, "Axis"), "make", 1));
        }
        ApplyExp applyExp = new ApplyExp((Expression) quoteExp, expressionArr);
        applyExp.setFlag(4);
        return new ApplyExp((Expression) applyExp, expressionSyntaxError);
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final gnu.expr.Expression v() throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.v():gnu.expr.Expression");
    }

    public final Expression w(int i, Expression expression) throws SyntaxException, IOException {
        ValuesFilter valuesFilter;
        while (this.f5526a == 91) {
            int lineNumber = getLineNumber() + 1;
            int columnNumber = getColumnNumber() + 1;
            d();
            LambdaExp lambdaExp = new LambdaExp(3);
            maybeSetLine(lambdaExp, lineNumber, columnNumber);
            Declaration declarationAddDeclaration = lambdaExp.addDeclaration(F);
            if (i >= 0) {
                declarationAddDeclaration.setType(NodeType.anyNodeTest);
            } else {
                declarationAddDeclaration.setType(SingletonType.getInstance());
            }
            PrimType primType = Type.intType;
            lambdaExp.addDeclaration(G, primType);
            lambdaExp.addDeclaration(H, primType);
            this.C.push(lambdaExp);
            declarationAddDeclaration.noteValue(null);
            Expression expressionN = n(93, false);
            if (this.f5526a == -1) {
                eofError("missing ']' - unexpected end-of-file");
            }
            if (i < 0) {
                valuesFilter = ValuesFilter.exprFilter;
            } else if (i == 0 || i == 1 || i == 9 || i == 10 || i == 11) {
                valuesFilter = ValuesFilter.reverseFilter;
            } else {
                valuesFilter = ValuesFilter.forwardFilter;
            }
            maybeSetLine(expressionN, lineNumber, columnNumber);
            this.C.pop(lambdaExp);
            lambdaExp.body = expressionN;
            d();
            expression = new ApplyExp(valuesFilter, expression, lambdaExp);
        }
        return expression;
    }

    public final void l() throws IOException {
        int i;
        int i2 = read();
        if (i2 == 35) {
            int i3 = read();
            if (i3 == 120) {
                i3 = read();
                i = 16;
            } else {
                i = 10;
            }
            int i4 = 0;
            while (i3 >= 0) {
                int iDigit = Character.digit((char) i3, i);
                if (iDigit < 0 || i4 >= 134217728) {
                    break;
                }
                i4 = (i4 * i) + iDigit;
                i3 = read();
            }
            if (i3 != 59) {
                unread();
                error("invalid character reference");
                return;
            }
            if ((i4 > 0 && i4 <= 55295) || ((i4 >= 57344 && i4 <= 65533) || (i4 >= 65536 && i4 <= 1114111))) {
                tokenBufferAppend(i4);
                return;
            }
            error('e', "invalid character value " + i4, "XQST0090");
            return;
        }
        int i5 = this.tokenBufferLength;
        while (i2 >= 0) {
            char c = (char) i2;
            if (!XName.isNamePart(c)) {
                break;
            }
            tokenBufferAppend(c);
            i2 = read();
        }
        if (i2 != 59) {
            unread();
            error("invalid entity reference");
        } else {
            String str = new String(this.tokenBuffer, i5, this.tokenBufferLength - i5);
            this.tokenBufferLength = i5;
            appendNamedEntity(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0128 A[EDGE_INSN: B:91:0x0128->B:113:0x0131 BREAK  A[LOOP:1: B:8:0x0015->B:115:0x0015]] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0127 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(char r12, java.util.Vector r13) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.j(char, java.util.Vector):void");
    }

    public final Expression k() throws SyntaxException, IOException {
        String str = this.y;
        this.y = null;
        char cPushNesting = pushNesting('{');
        A("unexpected end-of-file after '{'");
        int lineNumber = getLineNumber() + 1;
        int columnNumber = getColumnNumber() + 1;
        d();
        Expression expressionO = o();
        while (true) {
            int i = this.f5526a;
            if (i == 125) {
                break;
            }
            if (i == -1 || i == 41 || i == 93) {
                break;
            }
            if (i != 44) {
                expressionO = syntaxError("missing '}' or ','");
            } else {
                d();
            }
            expressionO = new ApplyExp(makeFunctionExp("gnu.kawa.functions.AppendValues", "appendValues"), expressionO, o());
        }
        expressionO = syntaxError("missing '}'");
        maybeSetLine(expressionO, lineNumber, columnNumber);
        popNesting(cPushNesting);
        this.y = str;
        return expressionO;
    }

    public static Expression booleanValue(Expression expression) {
        return new ApplyExp(makeFunctionExp("gnu.xquery.util.BooleanValue", "booleanValue"), expression);
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x02c4, code lost:
    
        r17.y = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02c6, code lost:
    
        if (r11 != 47) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02c8, code lost:
    
        r11 = read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02cc, code lost:
    
        if (r11 != 62) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02ce, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02d0, code lost:
    
        unread(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02d3, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02d4, code lost:
    
        if (r1 != false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02d6, code lost:
    
        if (r11 == 62) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02d8, code lost:
    
        r1 = syntaxError("missing '>' after start element");
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02df, code lost:
    
        j(kotlin.text.Typography.less, r8);
        r1 = peek();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02e8, code lost:
    
        if (r1 < 0) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02ef, code lost:
    
        if (gnu.xml.XName.isNameStart((char) r1) != false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02f1, code lost:
    
        r1 = syntaxError("invalid tag syntax after '</'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02f8, code lost:
    
        d();
        r1 = new java.lang.String(r17.tokenBuffer, 0, r17.tokenBufferLength);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0308, code lost:
    
        if (r1.equals(r7) != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x030a, code lost:
    
        r1 = syntaxError(_COROUTINE.a.k("'<", r7, ">' closed by '</", r1, ">'"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0319, code lost:
    
        r17.y = "comment not allowed in element end tag";
        r1 = I(true);
        r17.y = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0324, code lost:
    
        if (r1 == 62) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0326, code lost:
    
        r1 = syntaxError("missing '>' after end element");
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x032d, code lost:
    
        r1 = new gnu.expr.Expression[r8.size()];
        r8.copyInto(r1);
        r3 = new gnu.kawa.xml.MakeElement();
        r3.copyNamespacesMode = r17.r;
        r3.setNamespaceNodes(r10);
        r1 = new gnu.expr.ApplyExp((gnu.expr.Expression) new gnu.expr.QuoteExp(r3), r1);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x01f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x028e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01dc  */
    /* JADX WARN: Type inference failed for: r17v0, types: [gnu.text.Lexer, gnu.xquery.lang.XQParser] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [gnu.expr.Expression] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final gnu.expr.Expression z(int r18, boolean r19) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.z(int, boolean):gnu.expr.Expression");
    }

    public static ApplyExp a(Expression expression, boolean z) {
        return new ApplyExp((Expression) new ReferenceExp(z ? XQResolveNames.xsQNameDecl : XQResolveNames.xsQNameIgnoreDefaultDecl), expression);
    }

    public final Expression K(Expression expression) {
        return getStaticBaseUri() == null ? expression : new ApplyExp(MakeWithBaseUri.makeWithBaseUri, new ApplyExp((Expression) new ReferenceExp(XQResolveNames.staticBaseUriDecl), Expression.noExpressions), expression).setLine(expression);
    }

    public final Expression r() throws SyntaxException, IOException {
        d();
        char cPushNesting = pushNesting('(');
        Expression expressionN = n(41, true);
        popNesting(cPushNesting);
        if (this.f5526a == -1) {
            eofError("missing ')' - unexpected end-of-file");
        }
        return expressionN;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final gnu.expr.Expression n(int r6, boolean r7) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.f5526a
            if (r0 == r6) goto L4e
            r1 = -1
            if (r0 != r1) goto L8
            goto L4e
        L8:
            r7 = 0
        L9:
            gnu.expr.Expression r0 = r5.o()
            if (r7 != 0) goto L11
            r7 = r0
            goto L27
        L11:
            java.lang.String r2 = "gnu.kawa.functions.AppendValues"
            java.lang.String r3 = "appendValues"
            gnu.expr.Expression r2 = makeFunctionExp(r2, r3)
            r3 = 2
            gnu.expr.Expression[] r3 = new gnu.expr.Expression[r3]
            r4 = 0
            r3[r4] = r7
            r7 = 1
            r3[r7] = r0
            gnu.expr.ApplyExp r7 = new gnu.expr.ApplyExp
            r7.<init>(r2, r3)
        L27:
            int r0 = r5.f5526a
            if (r0 == r6) goto L4d
            if (r0 != r1) goto L2e
            goto L4d
        L2e:
            int r2 = r5.nesting
            if (r2 != 0) goto L37
            r2 = 10
            if (r0 != r2) goto L37
            goto L4d
        L37:
            r2 = 44
            if (r0 == r2) goto L49
            r7 = 41
            if (r6 != r7) goto L42
            java.lang.String r6 = "expected ')'"
            goto L44
        L42:
            java.lang.String r6 = "confused by syntax error"
        L44:
            gnu.expr.Expression r6 = r5.syntaxError(r6)
            return r6
        L49:
            r5.d()
            goto L9
        L4d:
            return r7
        L4e:
            if (r7 != 0) goto L55
            java.lang.String r6 = "missing expression"
            r5.syntaxError(r6)
        L55:
            gnu.expr.QuoteExp r6 = gnu.expr.QuoteExp.voidExp
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.n(int, boolean):gnu.expr.Expression");
    }

    public Expression parseIfExpr() throws SyntaxException, IOException {
        char cPushNesting = pushNesting('i');
        d();
        char cPushNesting2 = pushNesting('(');
        Expression expressionN = n(41, false);
        popNesting(cPushNesting2);
        if (this.f5526a == -1) {
            eofError("missing ')' - unexpected end-of-file");
        }
        d();
        if (!match("then")) {
            syntaxError("missing 'then'");
        } else {
            d();
        }
        Expression expressionO = o();
        if (!match("else")) {
            syntaxError("missing 'else'");
        } else {
            d();
        }
        popNesting(cPushNesting);
        return new IfExp(booleanValue(expressionN), expressionO, o());
    }

    public boolean match(String str) {
        int length;
        if (this.f5526a != 65 || this.tokenBufferLength != (length = str.length())) {
            return false;
        }
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (str.charAt(length) == this.tokenBuffer[length]);
        return false;
    }

    public Object parseVariable() throws SyntaxException, IOException {
        if (this.f5526a == 36) {
            d();
        } else {
            syntaxError("missing '$' before variable name");
        }
        String str = new String(this.tokenBuffer, 0, this.tokenBufferLength);
        int i = this.f5526a;
        if (i == 81) {
            return str;
        }
        if (i == 65) {
            return Namespace.EmptyNamespace.getSymbol(str.intern());
        }
        return null;
    }

    public Declaration parseVariableDeclaration() throws SyntaxException, IOException {
        Object variable = parseVariable();
        if (variable == null) {
            return null;
        }
        Declaration declaration = new Declaration(variable);
        maybeSetLine(declaration, getLineNumber() + 1, (getColumnNumber() + 1) - this.tokenBufferLength);
        return declaration;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0184 A[LOOP:0: B:12:0x0036->B:59:0x0184, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0118 A[EDGE_INSN: B:64:0x0118->B:46:0x0118 BREAK  A[LOOP:0: B:12:0x0036->B:59:0x0184], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression parseFLWRExpression(boolean r9) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseFLWRExpression(boolean):gnu.expr.Expression");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression parseFLWRInner(boolean r15) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseFLWRInner(boolean):gnu.expr.Expression");
    }

    public Expression parseQuantifiedExpr(boolean z) throws SyntaxException, IOException {
        Expression expressionO;
        char cPushNesting = pushNesting(z ? 'e' : 's');
        this.f5526a = 36;
        Declaration variableDeclaration = parseVariableDeclaration();
        if (variableDeclaration == null) {
            return syntaxError("missing Variable token:" + this.f5526a);
        }
        d();
        LambdaExp lambdaExp = new LambdaExp(1);
        lambdaExp.addDeclaration(variableDeclaration);
        variableDeclaration.noteValue(null);
        variableDeclaration.setFlag(262144L);
        variableDeclaration.setTypeExp(parseOptionalTypeDeclaration());
        if (match("in")) {
            d();
        } else {
            if (this.f5526a == 76) {
                d();
            }
            syntaxError("missing 'in' in QuantifiedExpr");
        }
        Expression[] expressionArr = {o()};
        popNesting(cPushNesting);
        this.C.push(lambdaExp);
        if (this.f5526a == 44) {
            d();
            if (this.f5526a != 36) {
                return syntaxError("missing $NAME after ','");
            }
            expressionO = parseQuantifiedExpr(z);
        } else {
            boolean zMatch = match("satisfies");
            if (!zMatch && !match("every") && !match("some")) {
                return syntaxError("missing 'satisfies' clause");
            }
            A("unexpected eof-of-file after 'satisfies'");
            int lineNumber = getLineNumber() + 1;
            int columnNumber = getColumnNumber() + 1;
            if (zMatch) {
                d();
            }
            expressionO = o();
            maybeSetLine(expressionO, lineNumber, columnNumber);
        }
        this.C.pop(lambdaExp);
        lambdaExp.body = expressionO;
        return new ApplyExp(makeFunctionExp("gnu.xquery.util.ValuesEvery", z ? "every" : "some"), lambdaExp, expressionArr[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0137, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression parseFunctionDefinition(int r8, int r9) throws gnu.text.SyntaxException, java.lang.ClassNotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseFunctionDefinition(int, int):gnu.expr.Expression");
    }

    public Object readObject() throws SyntaxException, IOException {
        return parse(null);
    }

    public Symbol namespaceResolve(String str, boolean z) throws ClassNotFoundException {
        int iIndexOf = str.indexOf(58);
        String strIntern = iIndexOf >= 0 ? str.substring(0, iIndexOf).intern() : z ? XQuery.DEFAULT_FUNCTION_PREFIX : XQuery.DEFAULT_ELEMENT_PREFIX;
        String strLookupPrefix = QNameUtils.lookupPrefix(strIntern, this.D, this.E);
        if (strLookupPrefix == null) {
            if (iIndexOf < 0) {
                strLookupPrefix = "";
            } else if (!this.C.isPedantic()) {
                try {
                    Class.forName(strIntern);
                    strLookupPrefix = "class:" + strIntern;
                } catch (Exception unused) {
                    strLookupPrefix = null;
                }
            }
            if (strLookupPrefix == null) {
                getMessages().error('e', _COROUTINE.a.A("unknown namespace prefix '", strIntern, "'"), "XPST0081");
                strLookupPrefix = "(unknown namespace)";
            }
        }
        if (iIndexOf >= 0) {
            str = str.substring(iIndexOf + 1);
        }
        return Symbol.make(strLookupPrefix, str, strIntern);
    }

    public final void t() throws SyntaxException, IOException {
        int lineNumber = this.port.getLineNumber() + 1;
        int columnNumber = this.port.getColumnNumber() + 1;
        int I2 = I(this.nesting != 0);
        if (I2 == 59) {
            return;
        }
        if (warnOldVersion && I2 != 10) {
            this.f = lineNumber;
            this.f5528g = columnNumber;
            error('w', "missing ';' after declaration");
        }
        if (I2 >= 0) {
            unread(I2);
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0703 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0739 A[ADDED_TO_REGION, EDGE_INSN: B:465:0x0739->B:389:0x0739 BREAK  A[LOOP:4: B:361:0x0700->B:476:0x0700], REMOVE, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:388:0x0737 -> B:361:0x0700). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression parse(gnu.expr.Compilation r19) throws gnu.text.SyntaxException, java.io.IOException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 2108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parse(gnu.expr.Compilation):gnu.expr.Expression");
    }

    public static Expression makeFunctionExp(String str, String str2) {
        return makeFunctionExp(str, Compilation.mangleNameIfNeeded(str2), str2);
    }

    public static Expression makeFunctionExp(String str, String str2, String str3) {
        return new ReferenceExp(str3, Declaration.getDeclarationValueFromStatic(str, str2, str3));
    }

    public void error(char c, String str, String str2) {
        SourceMessages messages = getMessages();
        SourceError sourceError = new SourceError(c, this.port.getName(), this.f, this.f5528g, str);
        sourceError.code = str2;
        messages.error(sourceError);
    }

    @Override // gnu.text.Lexer
    public void error(char c, String str) {
        error(c, str, null);
    }

    public Expression declError(String str) throws SyntaxException, IOException {
        if (this.interactive) {
            return syntaxError(str);
        }
        error(str);
        while (true) {
            int i = this.f5526a;
            if (i == 59 || i == -1) {
                break;
            }
            d();
        }
        return new ErrorExp(str);
    }

    public Expression syntaxError(String str, String str2) throws SyntaxException, IOException {
        int i;
        error('e', str, str2);
        if (this.interactive) {
            this.f5526a = 0;
            this.f5527b = null;
            this.nesting = 0;
            ((InPort) getPort()).readState = '\n';
            do {
                i = read();
                if (i >= 0) {
                    if (i == 13) {
                        break;
                    }
                } else {
                    break;
                }
            } while (i != 10);
            unread(i);
            throw new SyntaxException(getMessages());
        }
        return new ErrorExp(str);
    }

    public Expression syntaxError(String str) throws SyntaxException, IOException {
        return syntaxError(str, "XPST0003");
    }

    @Override // gnu.text.Lexer
    public void eofError(String str) throws SyntaxException {
        fatal(str, "XPST0003");
    }

    public void fatal(String str, String str2) throws SyntaxException {
        SourceMessages messages = getMessages();
        SourceError sourceError = new SourceError('f', this.port.getName(), this.f, this.f5528g, str);
        sourceError.code = str2;
        messages.error(sourceError);
        throw new SyntaxException(messages);
    }

    public final void J(String str) {
        if (warnOldVersion || this.C.isPedantic()) {
            error(this.C.isPedantic() ? 'e' : 'w', str);
        }
    }

    public void maybeSetLine(Expression expression, int i, int i2) {
        String name = getName();
        if (name == null || expression.getFileName() != null || (expression instanceof QuoteExp)) {
            return;
        }
        expression.setFile(name);
        expression.setLine(i, i2);
    }

    public void maybeSetLine(Declaration declaration, int i, int i2) {
        String name = getName();
        if (name != null) {
            declaration.setFile(name);
            declaration.setLine(i, i2);
        }
    }
}
