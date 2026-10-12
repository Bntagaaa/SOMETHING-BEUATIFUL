package gnu.kawa.lispexpr;

import gnu.lists.Pair;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderParens extends ReadTableEntry {
    private static ReaderParens instance;
    char close;
    Object command;
    int kind;
    char open;

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public int getKind() {
        return this.kind;
    }

    public static ReaderParens getInstance(char c, char c2) {
        return getInstance(c, c2, 5);
    }

    public static ReaderParens getInstance(char c, char c2, int i) {
        if (c == '(' && c2 == ')' && i == 5) {
            if (instance == null) {
                instance = new ReaderParens(c, c2, i, null);
            }
            return instance;
        }
        return new ReaderParens(c, c2, i, null);
    }

    public static ReaderParens getInstance(char c, char c2, int i, Object obj) {
        if (obj == null) {
            return getInstance(c, c2, i);
        }
        return new ReaderParens(c, c2, i, obj);
    }

    public ReaderParens(char c, char c2, int i, Object obj) {
        this.open = c;
        this.close = c2;
        this.kind = i;
        this.command = obj;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        Object list = readList((LispReader) lexer, i, i2, this.close);
        if (this.command == null) {
            return list;
        }
        LineBufferedReader port = lexer.getPort();
        LispReader lispReader = (LispReader) lexer;
        Pair pairMakePair = lispReader.makePair(this.command, port.getLineNumber(), port.getColumnNumber());
        lispReader.setCdr(pairMakePair, list);
        return pairMakePair;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        r18.error("unexpected '" + ((char) r21) + "' after '.'");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object readList(gnu.kawa.lispexpr.LispReader r18, int r19, int r20, int r21) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r1 = r18
            r0 = r21
            gnu.text.LineBufferedReader r2 = r1.getPort()
            r3 = 93
            if (r0 != r3) goto Lf
            r3 = 91
            goto L11
        Lf:
            r3 = 40
        L11:
            char r3 = r1.pushNesting(r3)
            int r4 = r2.getLineNumber()
            int r5 = r2.getColumnNumber()
            java.lang.Object r6 = r1.makeNil()     // Catch: java.lang.Throwable -> L41
            gnu.kawa.lispexpr.ReadTable r7 = gnu.kawa.lispexpr.ReadTable.getCurrent()     // Catch: java.lang.Throwable -> L41
            r10 = 0
            r11 = 0
        L27:
            r12 = 0
        L28:
            int r13 = r2.getLineNumber()     // Catch: java.lang.Throwable -> L41
            int r14 = r2.getColumnNumber()     // Catch: java.lang.Throwable -> L41
            int r15 = r2.read()     // Catch: java.lang.Throwable -> L41
            if (r15 != r0) goto L37
            goto L87
        L37:
            java.lang.String r8 = "unexpected EOF in list starting here"
            if (r15 >= 0) goto L44
            int r9 = r4 + 1
            r1.eofError(r8, r9, r5)     // Catch: java.lang.Throwable -> L41
            goto L44
        L41:
            r0 = move-exception
            goto Lde
        L44:
            r9 = 46
            r16 = r2
            r2 = 1
            if (r15 != r9) goto La3
            int r15 = r16.peek()     // Catch: java.lang.Throwable -> L41
            gnu.kawa.lispexpr.ReadTableEntry r17 = r7.lookup(r15)     // Catch: java.lang.Throwable -> L41
            int r9 = r17.getKind()     // Catch: java.lang.Throwable -> L41
            if (r9 == r2) goto L66
            r2 = 5
            if (r9 == r2) goto L66
            if (r9 != 0) goto L5f
            goto L66
        L5f:
            gnu.kawa.lispexpr.ReadTableEntry r17 = gnu.kawa.lispexpr.ReadTableEntry.getConstituentInstance()     // Catch: java.lang.Throwable -> L41
            r15 = 46
            goto La0
        L66:
            r16.skip()     // Catch: java.lang.Throwable -> L41
            int r14 = r14 + 1
            if (r15 != r0) goto L8b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            r2.<init>()     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = "unexpected '"
            r2.append(r4)     // Catch: java.lang.Throwable -> L41
            char r0 = (char) r0     // Catch: java.lang.Throwable -> L41
            r2.append(r0)     // Catch: java.lang.Throwable -> L41
            java.lang.String r0 = "' after '.'"
            r2.append(r0)     // Catch: java.lang.Throwable -> L41
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L41
            r1.error(r0)     // Catch: java.lang.Throwable -> L41
        L87:
            r1.popNesting(r3)
            return r6
        L8b:
            if (r15 >= 0) goto L92
            int r2 = r4 + 1
            r1.eofError(r8, r2, r5)     // Catch: java.lang.Throwable -> L41
        L92:
            if (r11 == 0) goto L9f
            java.lang.String r2 = "multiple '.' in list"
            r1.error(r2)     // Catch: java.lang.Throwable -> L41
            java.lang.Object r6 = r1.makeNil()     // Catch: java.lang.Throwable -> L41
            r10 = 0
            r12 = 0
        L9f:
            r11 = 1
        La0:
            r2 = r17
            goto La8
        La3:
            gnu.kawa.lispexpr.ReadTableEntry r17 = r7.lookup(r15)     // Catch: java.lang.Throwable -> L41
            goto La0
        La8:
            java.lang.Object r2 = r1.readValues(r15, r2, r7)     // Catch: java.lang.Throwable -> L41
            gnu.mapping.Values r8 = gnu.mapping.Values.empty     // Catch: java.lang.Throwable -> L41
            if (r2 != r8) goto Lb4
        Lb0:
            r2 = r16
            goto L28
        Lb4:
            java.lang.Object r2 = r1.handlePostfix(r2, r7, r13, r14)     // Catch: java.lang.Throwable -> L41
            if (r12 == 0) goto Lc8
            java.lang.String r2 = "multiple values after '.'"
            r1.error(r2)     // Catch: java.lang.Throwable -> L41
            java.lang.Object r6 = r1.makeNil()     // Catch: java.lang.Throwable -> L41
            r2 = r16
            r10 = 0
            goto L27
        Lc8:
            if (r11 == 0) goto Lcc
            r12 = 1
            goto Ld5
        Lcc:
            if (r10 != 0) goto Ld1
            int r14 = r5 + (-1)
            r13 = r4
        Ld1:
            gnu.lists.Pair r2 = r1.makePair(r2, r13, r14)     // Catch: java.lang.Throwable -> L41
        Ld5:
            if (r10 != 0) goto Ld9
            r6 = r2
            goto Ldc
        Ld9:
            r1.setCdr(r10, r2)     // Catch: java.lang.Throwable -> L41
        Ldc:
            r10 = r2
            goto Lb0
        Lde:
            r1.popNesting(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.ReaderParens.readList(gnu.kawa.lispexpr.LispReader, int, int, int):java.lang.Object");
    }
}
