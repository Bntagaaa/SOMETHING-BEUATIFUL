package gnu.kawa.lispexpr;

import gnu.bytecode.Access;
import gnu.expr.QuoteExp;
import gnu.expr.Special;
import gnu.kawa.util.GeneralHashTable;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.lists.Sequence;
import gnu.mapping.Environment;
import gnu.mapping.InPort;
import gnu.mapping.Values;
import gnu.math.IntNum;
import gnu.text.Char;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.IOException;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public class LispReader extends Lexer {
    static final int SCM_COMPLEX = 1;
    public static final int SCM_NUMBERS = 1;
    public static final char TOKEN_ESCAPE_CHAR = 65535;
    protected boolean seenEscapes;
    GeneralHashTable<Integer, Object> sharedStructureTable;

    public LispReader(LineBufferedReader lineBufferedReader) {
        super(lineBufferedReader);
    }

    public LispReader(LineBufferedReader lineBufferedReader, SourceMessages sourceMessages) {
        super(lineBufferedReader, sourceMessages);
    }

    public final void readNestedComment(char c, char c2) throws SyntaxException, IOException {
        int lineNumber = this.port.getLineNumber();
        int columnNumber = this.port.getColumnNumber();
        int i = 1;
        do {
            int i2 = read();
            if (i2 == 124) {
                i2 = read();
                if (i2 == c) {
                    i--;
                }
            } else if (i2 == c && (i2 = read()) == c2) {
                i++;
            }
            if (i2 < 0) {
                eofError("unexpected end-of-file in " + c + c2 + " comment starting here", lineNumber + 1, columnNumber - 1);
                return;
            }
        } while (i > 0);
    }

    public static char getReadCase() {
        try {
            char cCharAt = Environment.getCurrent().get("symbol-read-case", "P").toString().charAt(0);
            if (cCharAt != 'P') {
                if (cCharAt == 'u') {
                    return 'U';
                }
                if (cCharAt == 'd' || cCharAt == 'l' || cCharAt == 'L') {
                    return 'D';
                }
                if (cCharAt == 'i') {
                    return Access.INNERCLASS_CONTEXT;
                }
            }
            return cCharAt;
        } catch (Exception unused) {
            return 'P';
        }
    }

    public Object readValues(int i, ReadTable readTable) throws SyntaxException, IOException {
        return readValues(i, readTable.lookup(i), readTable);
    }

    public Object readValues(int i, ReadTableEntry readTableEntry, ReadTable readTable) throws SyntaxException, IOException {
        int i2 = this.tokenBufferLength;
        this.seenEscapes = false;
        int kind = readTableEntry.getKind();
        if (kind != 0) {
            if (kind == 1) {
                return Values.empty;
            }
            if (kind == 5 || kind == 6) {
                return readTableEntry.read(this, i, -1);
            }
            return readAndHandleToken(i, i2, readTable);
        }
        String str = "invalid character #\\" + ((char) i);
        if (this.interactive) {
            fatal(str);
        } else {
            error(str);
        }
        return Values.empty;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object readAndHandleToken(int r19, int r20, gnu.kawa.lispexpr.ReadTable r21) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.readAndHandleToken(int, int, gnu.kawa.lispexpr.ReadTable):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        unread(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readToken(int r8, char r9, gnu.kawa.lispexpr.ReadTable r10) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r7 = this;
            r9 = 0
            r0 = 0
        L2:
            if (r8 >= 0) goto Ld
            if (r9 == 0) goto Lc
            java.lang.String r1 = "unexpected EOF between escapes"
            r7.eofError(r1)
            goto Ld
        Lc:
            return
        Ld:
            gnu.kawa.lispexpr.ReadTableEntry r1 = r10.lookup(r8)
            int r2 = r1.getKind()
            r3 = 65535(0xffff, float:9.1834E-41)
            if (r2 != 0) goto L35
            if (r9 == 0) goto L24
            r7.tokenBufferAppend(r3)
            r7.tokenBufferAppend(r8)
            goto Lad
        L24:
            r1 = 125(0x7d, float:1.75E-43)
            if (r8 != r1) goto L31
            int r0 = r0 + (-1)
            if (r0 < 0) goto L31
            r7.tokenBufferAppend(r8)
            goto Lad
        L31:
            r7.unread(r8)
            return
        L35:
            char r4 = r10.postfixLookupOperator
            r5 = 5
            if (r8 != r4) goto L51
            if (r9 != 0) goto L51
            gnu.text.LineBufferedReader r4 = r7.port
            int r4 = r4.peek()
            char r6 = r10.postfixLookupOperator
            if (r4 != r6) goto L4a
            r7.unread(r8)
            return
        L4a:
            boolean r4 = r7.validPostfixLookupStart(r4, r10)
            if (r4 == 0) goto L51
            r2 = 5
        L51:
            r4 = 3
            r6 = 1
            if (r2 != r4) goto L79
            int r8 = r7.read()
            if (r8 >= 0) goto L60
            java.lang.String r1 = "unexpected EOF after single escape"
            r7.eofError(r1)
        L60:
            boolean r1 = r10.hexEscapeAfterBackslash
            if (r1 == 0) goto L70
            r1 = 120(0x78, float:1.68E-43)
            if (r8 == r1) goto L6c
            r1 = 88
            if (r8 != r1) goto L70
        L6c:
            int r8 = r7.readHexEscape()
        L70:
            r7.tokenBufferAppend(r3)
            r7.tokenBufferAppend(r8)
            r7.seenEscapes = r6
            goto Lad
        L79:
            r4 = 4
            if (r2 != r4) goto L82
            r8 = r9 ^ 1
            r7.seenEscapes = r6
            r9 = r8
            goto Lad
        L82:
            if (r9 == 0) goto L8b
            r7.tokenBufferAppend(r3)
            r7.tokenBufferAppend(r8)
            goto Lad
        L8b:
            if (r2 == r6) goto Lb3
            r3 = 2
            if (r2 == r3) goto La0
            if (r2 == r4) goto L9c
            if (r2 == r5) goto L98
            r1 = 6
            if (r2 == r1) goto Laa
            goto Lad
        L98:
            r7.unread(r8)
            return
        L9c:
            r7.seenEscapes = r6
            r9 = 1
            goto Lad
        La0:
            r2 = 123(0x7b, float:1.72E-43)
            if (r8 != r2) goto Laa
            gnu.kawa.lispexpr.ReadTableEntry r2 = gnu.kawa.lispexpr.ReadTableEntry.brace
            if (r1 != r2) goto Laa
            int r0 = r0 + 1
        Laa:
            r7.tokenBufferAppend(r8)
        Lad:
            int r8 = r7.read()
            goto L2
        Lb3:
            r7.unread(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.readToken(int, char, gnu.kawa.lispexpr.ReadTable):void");
    }

    public Object readObject() throws SyntaxException, IOException {
        Object objHandlePostfix;
        LineBufferedReader lineBufferedReader = this.port;
        char c = ((InPort) lineBufferedReader).readState;
        int i = this.tokenBufferLength;
        ((InPort) lineBufferedReader).readState = ' ';
        try {
            ReadTable current = ReadTable.getCurrent();
            while (true) {
                int lineNumber = this.port.getLineNumber();
                int columnNumber = this.port.getColumnNumber();
                int i2 = this.port.read();
                if (i2 < 0) {
                    objHandlePostfix = Sequence.eofValue;
                    break;
                }
                Object values = readValues(i2, current);
                if (values != Values.empty) {
                    objHandlePostfix = handlePostfix(values, current, lineNumber, columnNumber);
                    break;
                }
            }
            return objHandlePostfix;
        } finally {
            this.tokenBufferLength = i;
            ((InPort) this.port).readState = c;
        }
    }

    public boolean validPostfixLookupStart(int i, ReadTable readTable) throws IOException {
        int kind;
        if (i < 0 || i == 58 || i == readTable.postfixLookupOperator) {
            return false;
        }
        return i == 44 || (kind = readTable.lookup(i).getKind()) == 2 || kind == 6 || kind == 4 || kind == 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object handlePostfix(java.lang.Object r5, gnu.kawa.lispexpr.ReadTable r6, int r7, int r8) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r4 = this;
            gnu.expr.QuoteExp r0 = gnu.expr.QuoteExp.voidExp
            if (r5 != r0) goto L6
            gnu.mapping.Values r5 = gnu.mapping.Values.empty
        L6:
            gnu.text.LineBufferedReader r0 = r4.port
            int r0 = r0.peek()
            if (r0 < 0) goto L55
            char r1 = r6.postfixLookupOperator
            if (r0 == r1) goto L13
            goto L55
        L13:
            gnu.text.LineBufferedReader r0 = r4.port
            r0.read()
            gnu.text.LineBufferedReader r0 = r4.port
            int r0 = r0.peek()
            boolean r0 = r4.validPostfixLookupStart(r0, r6)
            if (r0 != 0) goto L28
            r4.unread()
            return r5
        L28:
            gnu.text.LineBufferedReader r0 = r4.port
            int r0 = r0.read()
            gnu.kawa.lispexpr.ReadTableEntry r1 = r6.lookup(r0)
            java.lang.Object r0 = r4.readValues(r0, r1, r6)
            java.lang.String r1 = "quasiquote"
            java.lang.Object r1 = r6.makeSymbol(r1)
            gnu.lists.Pair r0 = gnu.lists.LList.list2(r1, r0)
            gnu.lists.Pair r5 = gnu.lists.LList.list2(r5, r0)
            gnu.mapping.Symbol r0 = gnu.kawa.lispexpr.LispLanguage.lookup_sym
            gnu.text.LineBufferedReader r1 = r4.port
            java.lang.String r1 = r1.getName()
            int r2 = r7 + 1
            int r3 = r8 + 1
            gnu.lists.PairWithPosition r5 = gnu.lists.PairWithPosition.make(r0, r5, r1, r2, r3)
            goto L6
        L55:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.handlePostfix(java.lang.Object, gnu.kawa.lispexpr.ReadTable, int, int):java.lang.Object");
    }

    private boolean isPotentialNumber(char[] cArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4++) {
            char c = cArr[i4];
            if (Character.isDigit(c)) {
                i3++;
            } else if (c == '-' || c == '+') {
                if (i4 + 1 == i2) {
                    return false;
                }
            } else {
                if (c == '#') {
                    return true;
                }
                if (Character.isLetter(c) || c == '/' || c == '_' || c == '^') {
                    if (i4 == i) {
                        return false;
                    }
                } else if (c != '.') {
                    return false;
                }
            }
        }
        return i3 > 0;
    }

    public static Object parseNumber(CharSequence charSequence, int i) {
        char[] charArray;
        if (charSequence instanceof FString) {
            charArray = ((FString) charSequence).data;
        } else {
            charArray = charSequence.toString().toCharArray();
        }
        return parseNumber(charArray, 0, charSequence.length(), (char) 0, i, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:200:0x0235, code lost:
    
        if (r1 >= 0) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0237, code lost:
    
        if (r18 == false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0239, code lost:
    
        r15 = r0 + 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x023b, code lost:
    
        if (r15 >= r7) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0241, code lost:
    
        if (r32[r0 + 3] != r14) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0247, code lost:
    
        if (r32[r15] != '0') goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0249, code lost:
    
        r12 = r32[r0];
        r14 = 'n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x024f, code lost:
    
        if (r12 != 'i') goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0255, code lost:
    
        if (r32[r0 + 1] != 'n') goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x025f, code lost:
    
        if (r32[r0 + 2] != 'f') goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0261, code lost:
    
        r14 = 'i';
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0266, code lost:
    
        if (r12 != 'n') goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x026e, code lost:
    
        if (r32[r0 + 1] != 'a') goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0274, code lost:
    
        if (r32[r0 + 2] != 'n') goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0279, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x027a, code lost:
    
        if (r14 != 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x027c, code lost:
    
        return "no digits";
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x027d, code lost:
    
        r0 = r0 + 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x027f, code lost:
    
        r8 = r0;
        r12 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0285, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0289, code lost:
    
        if (r12 == 'i') goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x028d, code lost:
    
        if (r12 == 'I') goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x028f, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0291, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0292, code lost:
    
        if (r14 == 0) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0294, code lost:
    
        if (r14 != 'i') goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0296, code lost:
    
        r0 = Double.POSITIVE_INFINITY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0299, code lost:
    
        r0 = Double.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x029d, code lost:
    
        if (r4 == false) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x029f, code lost:
    
        r0 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x02a0, code lost:
    
        r2 = new gnu.math.DFloNum(r0);
        r3 = 0;
        r0 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x02a6, code lost:
    
        r5 = 'e';
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x02ab, code lost:
    
        if (r16 >= 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x02ad, code lost:
    
        if (r2 < 0) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x02af, code lost:
    
        r0 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x02b2, code lost:
    
        r0 = r32;
        r1 = valueOf(r0, r1, r8 - r1, r3, r4, r5);
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x02ba, code lost:
    
        if (r10 != null) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x02bc, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x02c2, code lost:
    
        if (r1.isZero() == false) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x02c4, code lost:
    
        r2 = r10.isZero();
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x02c8, code lost:
    
        if (r13 == false) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x02cc, code lost:
    
        if (r2 == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x02ce, code lost:
    
        r2 = Double.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x02d1, code lost:
    
        if (r17 == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x02d3, code lost:
    
        r2 = Double.NEGATIVE_INFINITY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x02d6, code lost:
    
        r2 = Double.POSITIVE_INFINITY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x02d8, code lost:
    
        r1 = new gnu.math.DFloNum(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x02dc, code lost:
    
        if (r2 == false) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x02de, code lost:
    
        return "0/0 is undefined";
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x02e1, code lost:
    
        r1 = gnu.math.RatNum.make(r10, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x02e6, code lost:
    
        r1 = gnu.math.RatNum.make(r10, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x02eb, code lost:
    
        if (r13 == false) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x02f1, code lost:
    
        if (r2.isExact() == false) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x02f5, code lost:
    
        if (r17 == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x02fb, code lost:
    
        if (r2.isZero() == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x02fd, code lost:
    
        r2 = -0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0300, code lost:
    
        r2 = r2.doubleValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0304, code lost:
    
        r2 = new gnu.math.DFloNum(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0308, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x030a, code lost:
    
        if (r1 <= r2) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x030c, code lost:
    
        if (r2 < 0) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x030e, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x030f, code lost:
    
        if (r10 == null) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0311, code lost:
    
        return "floating-point number after fraction symbol '/'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0314, code lost:
    
        r2 = new java.lang.String(r0, r1, r8 - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x031b, code lost:
    
        if (r16 < 0) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x031d, code lost:
    
        r3 = java.lang.Character.toLowerCase(r0[r16]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0325, code lost:
    
        if (r3 == 'e') goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0327, code lost:
    
        r1 = r16 - r1;
        r2 = r2.substring(0, r1) + 'e' + r2.substring(r1 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0349, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x034b, code lost:
    
        r1 = gnu.lists.Convert.parseDouble(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0351, code lost:
    
        if (r4 == false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0353, code lost:
    
        r1 = -r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0354, code lost:
    
        r2 = new gnu.math.DFloNum(r1);
        r5 = 'e';
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x035a, code lost:
    
        if (r12 == r5) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x035e, code lost:
    
        if (r12 != 'E') goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0361, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0363, code lost:
    
        r2 = r2.toExact();
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0368, code lost:
    
        if (r8 >= r7) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x036a, code lost:
    
        r1 = r8 + 1;
        r2 = r0[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0370, code lost:
    
        if (r2 != '@') goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0372, code lost:
    
        r0 = parseNumber(r0, r1, r7 - r1, r12, 10, r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x037f, code lost:
    
        if ((r0 instanceof java.lang.String) == false) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0381, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0384, code lost:
    
        if ((r0 instanceof gnu.math.RealNum) != false) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0386, code lost:
    
        return "invalid complex polar constant";
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0389, code lost:
    
        r0 = (gnu.math.RealNum) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x038f, code lost:
    
        if (r6.isZero() == false) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0395, code lost:
    
        if (r0.isExact() != false) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x039e, code lost:
    
        return new gnu.math.DFloNum(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x03a3, code lost:
    
        return gnu.math.Complex.polar(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x03a5, code lost:
    
        if (r2 == r11) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x03a7, code lost:
    
        if (r2 != '+') goto L321;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x03aa, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x03af, code lost:
    
        if (java.lang.Character.isLetter(r2) != false) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x03b1, code lost:
    
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x03b5, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x03b7, code lost:
    
        if (r1 != r7) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x03ba, code lost:
    
        if (r14 != 1) goto L339;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x03bc, code lost:
    
        r0 = r32[r1 - 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x03c2, code lost:
    
        if (r0 == 'i') goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x03c6, code lost:
    
        if (r0 != 'I') goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x03c8, code lost:
    
        if (r1 >= r7) goto L337;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x03ca, code lost:
    
        return "junk after imaginary suffix 'i'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x03d5, code lost:
    
        return gnu.math.Complex.make(gnu.math.IntNum.zero(), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x03d6, code lost:
    
        return "excess junk after number";
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x03d9, code lost:
    
        r2 = r32[r1];
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x03e6, code lost:
    
        r0 = parseNumber(r32, r8, r7 - r8, r12, 10, r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x03f5, code lost:
    
        if ((r0 instanceof java.lang.String) == false) goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x03f7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x03fa, code lost:
    
        if ((r0 instanceof gnu.math.Complex) != false) goto L349;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x040f, code lost:
    
        return "invalid numeric constant (" + r0 + ")";
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0410, code lost:
    
        r0 = (gnu.math.Complex) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x041a, code lost:
    
        if (r0.re().isZero() != false) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x041c, code lost:
    
        return "invalid numeric constant";
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0427, code lost:
    
        return gnu.math.Complex.make(r6, r0.im());
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x042a, code lost:
    
        if ((r6 instanceof gnu.math.DFloNum) == false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x042c, code lost:
    
        if (r3 <= 0) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0430, code lost:
    
        if (r3 == 'e') goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0432, code lost:
    
        r0 = r6.doubleValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0438, code lost:
    
        if (r3 == 'd') goto L373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x043c, code lost:
    
        if (r3 == 'f') goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x0440, code lost:
    
        if (r3 == 'l') goto L369;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0444, code lost:
    
        if (r3 == 's') goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x044b, code lost:
    
        return java.math.BigDecimal.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0451, code lost:
    
        return java.lang.Float.valueOf((float) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0456, code lost:
    
        return java.lang.Double.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0457, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:?, code lost:
    
        return "excess junk after number";
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x019b A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object parseNumber(char[] r32, int r33, int r34, char r35, int r36, int r37) {
        /*
            Method dump skipped, instructions count: 1170
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.parseNumber(char[], int, int, char, int, int):java.lang.Object");
    }

    private static IntNum valueOf(char[] cArr, int i, int i2, int i3, boolean z, long j) {
        if (i2 + i3 <= 28) {
            if (z) {
                j = -j;
            }
            return IntNum.make(j);
        }
        return IntNum.valueOf(cArr, i, i2, i3, z);
    }

    public int readEscape() throws SyntaxException, IOException {
        int i = read();
        if (i < 0) {
            eofError("unexpected EOF in character literal");
            return -1;
        }
        return readEscape(i);
    }

    public final int readEscape(int i) throws SyntaxException, IOException {
        char c = (char) i;
        if (c != '\t' && c != '\n') {
            if (c == 'a') {
                return 7;
            }
            if (c == 'b') {
                return 8;
            }
            if (c == 'e') {
                return 27;
            }
            if (c == 'f') {
                return 12;
            }
            switch (c) {
                case '\r':
                case ' ':
                    break;
                case '\"':
                    return 34;
                case 'C':
                    if (read() != 45) {
                        error("Invalid escape character syntax");
                        return 63;
                    }
                    break;
                case 'M':
                    if (read() != 45) {
                        error("Invalid escape character syntax");
                        return 63;
                    }
                    int escape = read();
                    if (escape == 92) {
                        escape = readEscape();
                    }
                    return escape | 128;
                case 'X':
                case 'x':
                    return readHexEscape();
                case '\\':
                    return 92;
                case '^':
                    break;
                case 'n':
                    return 10;
                case 'r':
                    return 13;
                default:
                    int i2 = 0;
                    switch (c) {
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                            int i3 = i - 48;
                            while (true) {
                                i2++;
                                if (i2 < 3) {
                                    int i4 = read();
                                    int iDigit = Character.digit((char) i4, 8);
                                    if (iDigit >= 0) {
                                        i3 = (i3 << 3) + iDigit;
                                    } else if (i4 >= 0) {
                                        unread(i4);
                                    }
                                }
                            }
                            return i3;
                        default:
                            switch (c) {
                                case 't':
                                    return 9;
                                case 'u':
                                    int i5 = 4;
                                    while (true) {
                                        i5--;
                                        if (i5 < 0) {
                                            return i2;
                                        }
                                        int i6 = read();
                                        if (i6 < 0) {
                                            eofError("premature EOF in \\u escape");
                                        }
                                        int iDigit2 = Character.digit((char) i6, 16);
                                        if (iDigit2 < 0) {
                                            error("non-hex character following \\u");
                                        }
                                        i2 = (i2 * 16) + iDigit2;
                                    }
                                case 'v':
                                    return 11;
                                default:
                                    return i;
                            }
                    }
            }
            int escape2 = read();
            if (escape2 == 92) {
                escape2 = readEscape();
            }
            return escape2 == 63 ? WorkQueueKt.MASK : escape2 & 159;
        }
        while (i >= 0) {
            if (i != 10) {
                if (i == 13) {
                    if (peek() == 10) {
                        skip();
                    }
                    i = 10;
                } else if (i != 32 && i != 9) {
                    unread(i);
                } else {
                    i = read();
                }
            }
            if (i != 10) {
                return i;
            }
            while (true) {
                int i7 = read();
                if (i7 < 0) {
                    eofError("unexpected EOF in literal");
                    return -1;
                }
                if (i7 != 32 && i7 != 9) {
                    unread(i7);
                    return -2;
                }
            }
        }
        eofError("unexpected EOF in literal");
        return -1;
    }

    public int readHexEscape() throws SyntaxException, IOException {
        int i;
        int i2 = 0;
        while (true) {
            i = read();
            int iDigit = Character.digit((char) i, 16);
            if (iDigit < 0) {
                break;
            }
            i2 = (i2 << 4) + iDigit;
        }
        if (i != 59 && i >= 0) {
            unread(i);
        }
        return i2;
    }

    public final Object readObject(int i) throws SyntaxException, IOException {
        unread(i);
        return readObject();
    }

    public Object readCommand() throws SyntaxException, IOException {
        return readObject();
    }

    public Object makeNil() {
        return LList.Empty;
    }

    public Pair makePair(Object obj, int i, int i2) {
        return makePair(obj, LList.Empty, i, i2);
    }

    public Pair makePair(Object obj, Object obj2, int i, int i2) {
        String name = this.port.getName();
        if (name != null && i >= 0) {
            return PairWithPosition.make(obj, obj2, name, i + 1, i2 + 1);
        }
        return Pair.make(obj, obj2);
    }

    public void setCdr(Object obj, Object obj2) {
        ((Pair) obj).setCdrBackdoor(obj2);
    }

    public static Object readNumberWithRadix(int i, LispReader lispReader, int i2) throws SyntaxException, IOException {
        int i3 = lispReader.tokenBufferLength - i;
        lispReader.readToken(lispReader.read(), 'P', ReadTable.getCurrent());
        int i4 = lispReader.tokenBufferLength;
        if (i3 == i4) {
            lispReader.error("missing numeric token");
            return IntNum.zero();
        }
        Object number = parseNumber(lispReader.tokenBuffer, i3, i4 - i3, (char) 0, i2, 0);
        if (number instanceof String) {
            lispReader.error((String) number);
            return IntNum.zero();
        }
        if (number != null) {
            return number;
        }
        lispReader.error("invalid numeric constant");
        return IntNum.zero();
    }

    public static Object readCharacter(LispReader lispReader) throws SyntaxException, IOException {
        int i = lispReader.read();
        if (i < 0) {
            lispReader.eofError("unexpected EOF in character literal");
        }
        int i2 = lispReader.tokenBufferLength;
        lispReader.tokenBufferAppend(i);
        lispReader.readToken(lispReader.read(), 'D', ReadTable.getCurrent());
        char[] cArr = lispReader.tokenBuffer;
        int i3 = lispReader.tokenBufferLength - i2;
        if (i3 == 1) {
            return Char.make(cArr[i2]);
        }
        String str = new String(cArr, i2, i3);
        int iNameToChar = Char.nameToChar(str);
        if (iNameToChar >= 0) {
            return Char.make(iNameToChar);
        }
        char c = cArr[i2];
        if (c == 'x' || c == 'X') {
            int i4 = 0;
            for (int i5 = 1; i5 != i3; i5++) {
                int iDigit = Character.digit(cArr[i2 + i5], 16);
                if (iDigit >= 0 && (i4 = (i4 * 16) + iDigit) <= 1114111) {
                }
            }
            return Char.make(i4);
        }
        int iDigit2 = Character.digit((int) c, 8);
        if (iDigit2 >= 0) {
            for (int i6 = 1; i6 != i3; i6++) {
                int iDigit3 = Character.digit(cArr[i2 + i6], 8);
                if (iDigit3 >= 0) {
                    iDigit2 = (iDigit2 * 8) + iDigit3;
                }
            }
            return Char.make(iDigit2);
        }
        lispReader.error("unknown character name: ".concat(str));
        return Char.make(63);
    }

    public static Object readSpecial(LispReader lispReader) throws SyntaxException, IOException {
        int i = lispReader.read();
        if (i < 0) {
            lispReader.eofError("unexpected EOF in #! special form");
        }
        if (i == 47 && lispReader.getLineNumber() == 0 && lispReader.getColumnNumber() == 3) {
            ReaderIgnoreRestOfLine.getInstance().read(lispReader, 35, 1);
            return Values.empty;
        }
        int i2 = lispReader.tokenBufferLength;
        lispReader.tokenBufferAppend(i);
        lispReader.readToken(lispReader.read(), 'D', ReadTable.getCurrent());
        String str = new String(lispReader.tokenBuffer, i2, lispReader.tokenBufferLength - i2);
        if (str.equals("optional")) {
            return Special.optional;
        }
        if (str.equals("rest")) {
            return Special.rest;
        }
        if (str.equals("key")) {
            return Special.key;
        }
        if (str.equals("eof")) {
            return Special.eof;
        }
        if (str.equals("void")) {
            return QuoteExp.voidExp;
        }
        if (str.equals("default")) {
            return Special.dfault;
        }
        if (str.equals("undefined")) {
            return Special.undefined;
        }
        if (str.equals("abstract")) {
            return Special.abstractSpecial;
        }
        if (str.equals("null")) {
            return null;
        }
        lispReader.error("unknown named constant #!".concat(str));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.lists.SimpleVector readSimpleVector(gnu.kawa.lispexpr.LispReader r11, char r12) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r0 = 0
            r1 = 0
        L2:
            int r2 = r11.read()
            if (r2 >= 0) goto Ld
            java.lang.String r3 = "unexpected EOF reading uniform vector"
            r11.eofError(r3)
        Ld:
            char r3 = (char) r2
            r4 = 10
            int r3 = java.lang.Character.digit(r3, r4)
            if (r3 >= 0) goto La8
            r3 = 0
            r4 = 16
            r5 = 8
            r6 = 64
            r7 = 32
            if (r1 == r5) goto L27
            if (r1 == r4) goto L27
            if (r1 == r7) goto L27
            if (r1 != r6) goto L31
        L27:
            r8 = 70
            if (r12 != r8) goto L2d
            if (r1 < r7) goto L31
        L2d:
            r9 = 40
            if (r2 == r9) goto L37
        L31:
            java.lang.String r12 = "invalid uniform vector syntax"
            r11.error(r12)
            return r3
        L37:
            r2 = -1
            r10 = 41
            java.lang.Object r2 = gnu.kawa.lispexpr.ReaderParens.readList(r11, r9, r2, r10)
            int r0 = gnu.lists.LList.listLength(r2, r0)
            if (r0 >= 0) goto L4a
            java.lang.String r12 = "invalid elements in uniform vector syntax"
            r11.error(r12)
            return r3
        L4a:
            gnu.lists.Sequence r2 = (gnu.lists.Sequence) r2
            if (r12 == r8) goto L57
            r11 = 83
            if (r12 == r11) goto L5b
            r11 = 85
            if (r12 == r11) goto L63
            goto L6b
        L57:
            if (r1 == r7) goto La2
            if (r1 == r6) goto L9c
        L5b:
            if (r1 == r5) goto L96
            if (r1 == r4) goto L90
            if (r1 == r7) goto L8a
            if (r1 == r6) goto L84
        L63:
            if (r1 == r5) goto L7e
            if (r1 == r4) goto L78
            if (r1 == r7) goto L72
            if (r1 == r6) goto L6c
        L6b:
            return r3
        L6c:
            gnu.lists.U64Vector r11 = new gnu.lists.U64Vector
            r11.<init>(r2)
            return r11
        L72:
            gnu.lists.U32Vector r11 = new gnu.lists.U32Vector
            r11.<init>(r2)
            return r11
        L78:
            gnu.lists.U16Vector r11 = new gnu.lists.U16Vector
            r11.<init>(r2)
            return r11
        L7e:
            gnu.lists.U8Vector r11 = new gnu.lists.U8Vector
            r11.<init>(r2)
            return r11
        L84:
            gnu.lists.S64Vector r11 = new gnu.lists.S64Vector
            r11.<init>(r2)
            return r11
        L8a:
            gnu.lists.S32Vector r11 = new gnu.lists.S32Vector
            r11.<init>(r2)
            return r11
        L90:
            gnu.lists.S16Vector r11 = new gnu.lists.S16Vector
            r11.<init>(r2)
            return r11
        L96:
            gnu.lists.S8Vector r11 = new gnu.lists.S8Vector
            r11.<init>(r2)
            return r11
        L9c:
            gnu.lists.F64Vector r11 = new gnu.lists.F64Vector
            r11.<init>(r2)
            return r11
        La2:
            gnu.lists.F32Vector r11 = new gnu.lists.F32Vector
            r11.<init>(r2)
            return r11
        La8:
            int r1 = r1 * 10
            int r1 = r1 + r3
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.readSimpleVector(gnu.kawa.lispexpr.LispReader, char):gnu.lists.SimpleVector");
    }
}
