package gnu.ecmascript;

import gnu.expr.QuoteExp;
import gnu.lists.Sequence;
import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.text.Char;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class Lexer extends gnu.text.Lexer {

    /* renamed from: b, reason: collision with root package name */
    public static Hashtable f5462b;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5463a;
    public static final Char lparenToken = Char.make(40);
    public static final Char rparenToken = Char.make(41);
    public static final Char lbraceToken = Char.make(123);
    public static final Char rbraceToken = Char.make(125);
    public static final Char lbracketToken = Char.make(91);
    public static final Char rbracketToken = Char.make(93);
    public static final Char dotToken = Char.make(46);
    public static final Char condToken = Char.make(63);
    public static final Char commaToken = Char.make(44);
    public static final Char colonToken = Char.make(58);
    public static final Char equalToken = Char.make(61);
    public static final Char tildeToken = Char.make(126);
    public static final Char notToken = Char.make(33);
    public static final Char semicolonToken = Char.make(59);
    public static final Object eolToken = Char.make(10);
    public static final Object eofToken = Sequence.eofValue;
    public static final Reserved elseToken = new Reserved("else", 38);
    public static final Reserved newToken = new Reserved("new", 39);

    public Lexer(InPort inPort) {
        super(inPort);
        this.f5463a = false;
    }

    public static Object checkReserved(String str) {
        if (f5462b == null) {
            synchronized (Lexer.class) {
                if (f5462b == null) {
                    Hashtable hashtable = new Hashtable(20);
                    f5462b = hashtable;
                    hashtable.put("null", new QuoteExp(null));
                    f5462b.put("true", new QuoteExp(Boolean.TRUE));
                    f5462b.put("false", new QuoteExp(Boolean.FALSE));
                    f5462b.put("var", new Reserved("var", 30));
                    f5462b.put("if", new Reserved("if", 31));
                    f5462b.put("while", new Reserved("while", 32));
                    f5462b.put("for", new Reserved("for", 33));
                    f5462b.put("continue", new Reserved("continue", 34));
                    f5462b.put("break", new Reserved("break", 35));
                    f5462b.put("return", new Reserved("return", 36));
                    f5462b.put("with", new Reserved("with", 37));
                    f5462b.put("function", new Reserved("function", 41));
                    f5462b.put("this", new Reserved("this", 40));
                    f5462b.put("else", elseToken);
                    f5462b.put("new", newToken);
                }
            }
        }
        return f5462b.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0023 A[PHI: r14
      0x0023: PHI (r14v1 int) = (r14v0 int), (r14v15 int), (r14v15 int), (r14v15 int) binds: [B:3:0x000a, B:9:0x0019, B:10:0x001b, B:11:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Double getNumericLiteral(int r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.ecmascript.Lexer.getNumericLiteral(int):java.lang.Double");
    }

    public String getStringLiteral(char c) throws SyntaxException, IOException {
        LineBufferedReader lineBufferedReader = this.port;
        int i = lineBufferedReader.pos;
        int i2 = lineBufferedReader.limit;
        char[] cArr = lineBufferedReader.buffer;
        int i3 = i;
        while (i3 < i2) {
            char c2 = cArr[i3];
            if (c2 == c) {
                this.port.pos = i3 + 1;
                return new String(cArr, i, i3 - i);
            }
            if (c2 == '\\' || c2 == '\n' || c2 == '\r') {
                break;
            }
            i3++;
        }
        this.port.pos = i3;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr, i, i3 - i);
        while (true) {
            int i4 = this.port.read();
            if (i4 == c) {
                return stringBuffer.toString();
            }
            if (i4 < 0) {
                eofError("unterminated string literal");
            }
            if (i4 == 10 || i4 == 13) {
                fatal("string literal not terminated before end of line");
            }
            if (i4 == 92) {
                i4 = this.port.read();
                int i5 = 0;
                switch (i4) {
                    case -1:
                        eofError("eof following '\\' in string");
                    case 10:
                    case 13:
                        fatal("line terminator following '\\' in string");
                        break;
                    case 34:
                    case 39:
                    case 92:
                        break;
                    case 98:
                        i4 = 8;
                        break;
                    case 102:
                        i4 = 12;
                        break;
                    case 110:
                        i4 = 10;
                        break;
                    case 114:
                        i4 = 13;
                        break;
                    case 116:
                        i4 = 9;
                        break;
                    case 117:
                    case 120:
                        int i6 = i4 == 120 ? 2 : 4;
                        while (true) {
                            i6--;
                            if (i6 < 0) {
                                break;
                            } else {
                                int i7 = this.port.read();
                                if (i7 < 0) {
                                    eofError("eof following '\\" + ((char) i4) + "' in string");
                                }
                                char cForDigit = Character.forDigit((char) i7, 16);
                                if (cForDigit < 0) {
                                    error("invalid char following '\\" + ((char) i4) + "' in string");
                                    i4 = 63;
                                    break;
                                } else {
                                    i5 = (i5 * 16) + cForDigit;
                                }
                            }
                        }
                    default:
                        if (i4 >= 48 && i4 <= 55) {
                            int i8 = 3;
                            while (true) {
                                i8--;
                                if (i8 >= 0) {
                                    int i9 = this.port.read();
                                    if (i9 < 0) {
                                        eofError("eof in octal escape in string literal");
                                    }
                                    char cForDigit2 = Character.forDigit((char) i9, 8);
                                    if (cForDigit2 < 0) {
                                        this.port.unread_quick();
                                    } else {
                                        i5 = (i5 * 8) + cForDigit2;
                                    }
                                }
                            }
                            i4 = i5;
                            break;
                        } else {
                            break;
                        }
                }
            }
            stringBuffer.append((char) i4);
        }
    }

    public String getIdentifier(int i) throws IOException {
        LineBufferedReader lineBufferedReader = this.port;
        int i2 = lineBufferedReader.pos;
        int i3 = i2 - 1;
        int i4 = lineBufferedReader.limit;
        char[] cArr = lineBufferedReader.buffer;
        while (i2 < i4 && Character.isJavaIdentifierPart(cArr[i2])) {
            i2++;
        }
        this.port.pos = i2;
        if (i2 < i4) {
            return new String(cArr, i3, i2 - i3);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr, i3, i2 - i3);
        while (true) {
            int i5 = this.port.read();
            if (i5 >= 0) {
                char c = (char) i5;
                if (Character.isJavaIdentifierPart(c)) {
                    stringBuffer.append(c);
                } else {
                    this.port.unread_quick();
                    break;
                }
            } else {
                break;
            }
        }
        return stringBuffer.toString();
    }

    public Object maybeAssignment(Object obj) throws SyntaxException, IOException {
        int i = read();
        if (i == 61) {
            error("assignment operation not implemented");
        }
        if (i >= 0) {
            this.port.unread_quick();
        }
        return obj;
    }

    public Object getToken() throws SyntaxException, IOException {
        int i = read();
        while (i >= 0) {
            char c = (char) i;
            if (!Character.isWhitespace(c)) {
                if (i != 33) {
                    if (i != 34) {
                        if (i == 91) {
                            return lbracketToken;
                        }
                        if (i == 93) {
                            return rbracketToken;
                        }
                        if (i == 94) {
                            return maybeAssignment(Reserved.f5466g);
                        }
                        switch (i) {
                            case 37:
                                return maybeAssignment(Reserved.v);
                            case 38:
                                if (this.port.peek() == 38) {
                                    this.port.skip_quick();
                                    return maybeAssignment(Reserved.e);
                                }
                                return maybeAssignment(Reserved.h);
                            case 39:
                                break;
                            case 40:
                                return lparenToken;
                            case 41:
                                return rparenToken;
                            case 42:
                                return maybeAssignment(Reserved.t);
                            case 43:
                                if (this.port.peek() == 43) {
                                    this.port.skip_quick();
                                    int i2 = Reserved.VAR_TOKEN;
                                    return maybeAssignment(null);
                                }
                                return maybeAssignment(Reserved.r);
                            case 44:
                                return commaToken;
                            case 45:
                                if (this.port.peek() == 45) {
                                    this.port.skip_quick();
                                    int i3 = Reserved.VAR_TOKEN;
                                    return maybeAssignment(null);
                                }
                                return maybeAssignment(Reserved.s);
                            case 46:
                                int iPeek = this.port.peek();
                                if (iPeek >= 48 && iPeek <= 57) {
                                    return new QuoteExp(getNumericLiteral(46));
                                }
                                return dotToken;
                            case 47:
                                return maybeAssignment(Reserved.u);
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                                return new QuoteExp(getNumericLiteral(i));
                            case 58:
                                return colonToken;
                            case 59:
                                return semicolonToken;
                            case 60:
                                int iPeek2 = this.port.peek();
                                if (iPeek2 == 60) {
                                    this.port.skip_quick();
                                    return maybeAssignment(Reserved.o);
                                }
                                if (iPeek2 == 61) {
                                    this.port.skip_quick();
                                    return Reserved.m;
                                }
                                return Reserved.k;
                            case 61:
                                if (this.port.peek() == 61) {
                                    this.port.skip_quick();
                                    return Reserved.i;
                                }
                                return equalToken;
                            case 62:
                                int iPeek3 = this.port.peek();
                                if (iPeek3 == 61) {
                                    this.port.skip_quick();
                                    return Reserved.n;
                                }
                                if (iPeek3 == 62) {
                                    this.port.skip_quick();
                                    if (this.port.peek() == 62) {
                                        this.port.skip_quick();
                                        return maybeAssignment(Reserved.q);
                                    }
                                    return maybeAssignment(Reserved.p);
                                }
                                return Reserved.l;
                            case 63:
                                return condToken;
                            default:
                                switch (i) {
                                    case 123:
                                        return lbraceToken;
                                    case 124:
                                        if (this.port.peek() == 124) {
                                            this.port.skip_quick();
                                            return maybeAssignment(Reserved.d);
                                        }
                                        return maybeAssignment(Reserved.f);
                                    case 125:
                                        return rbraceToken;
                                    case 126:
                                        return tildeToken;
                                    default:
                                        if (Character.isJavaIdentifierStart(c)) {
                                            String strIntern = getIdentifier(i).intern();
                                            Object objCheckReserved = checkReserved(strIntern);
                                            return objCheckReserved != null ? objCheckReserved : strIntern;
                                        }
                                        return Char.make(c);
                                }
                        }
                    }
                    return new QuoteExp(getStringLiteral(c));
                }
                if (this.port.peek() == 61) {
                    this.port.skip_quick();
                    return Reserved.j;
                }
                return notToken;
            }
            if (i == 13) {
                this.f5463a = true;
                return eolToken;
            }
            if (i == 10 && !this.f5463a) {
                return eolToken;
            }
            this.f5463a = false;
            i = read();
        }
        return eofToken;
    }

    public static Object getToken(InPort inPort) throws SyntaxException, IOException {
        return new Lexer(inPort).getToken();
    }

    public static void main(String[] strArr) {
        Object token;
        Lexer lexer = new Lexer(InPort.inDefault());
        do {
            try {
                token = lexer.getToken();
                OutPort outPortOutDefault = OutPort.outDefault();
                outPortOutDefault.print("token:");
                outPortOutDefault.print(token);
                outPortOutDefault.println(" [class:" + token.getClass() + "]");
            } catch (Exception e) {
                System.err.println("caught exception:" + e);
                return;
            }
        } while (token != Sequence.eofValue);
    }
}
