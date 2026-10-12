package gnu.kawa.lispexpr;

import gnu.expr.Compilation;
import gnu.expr.PrimProcedure;
import gnu.kawa.xml.CommentConstructor;
import gnu.kawa.xml.MakeCDATA;
import gnu.kawa.xml.MakeProcInst;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.Namespace;
import gnu.mapping.Values;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import gnu.xml.XName;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderXmlElement extends ReadTableEntry {
    static final String DEFAULT_ELEMENT_NAMESPACE = "[default-element-namespace]";

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        LispReader lispReader = (LispReader) lexer;
        return readXMLConstructor(lispReader, lispReader.readUnicodeChar(), false);
    }

    public static Pair quote(Object obj) {
        return LList.list2(Namespace.EmptyNamespace.getSymbol(LispLanguage.quote_sym), obj);
    }

    public static Object readQNameExpression(LispReader lispReader, int i, boolean z) throws SyntaxException, IOException {
        lispReader.getName();
        int lineNumber = lispReader.getLineNumber() + 1;
        int columnNumber = lispReader.getColumnNumber();
        lispReader.tokenBufferLength = 0;
        if (!XName.isNameStart(i)) {
            if (i == 123 || i == 40) {
                return readEscapedExpression(lispReader, i);
            }
            lispReader.error("missing element name");
            return null;
        }
        int i2 = -1;
        while (true) {
            lispReader.tokenBufferAppend(i);
            i = lispReader.readUnicodeChar();
            if (i == 58 && i2 < 0) {
                i2 = lispReader.tokenBufferLength;
            } else if (!XName.isNamePart(i)) {
                break;
            }
        }
        lispReader.unread(i);
        if (i2 >= 0 || z) {
            return new Pair(ResolveNamespace.resolveQName, PairWithPosition.make(Namespace.EmptyNamespace.getSymbol(i2 < 0 ? DEFAULT_ELEMENT_NAMESPACE : new String(lispReader.tokenBuffer, 0, i2).intern()), new Pair(new String(lispReader.tokenBuffer, i2 + 1, (lispReader.tokenBufferLength - i2) - 1).intern(), LList.Empty), lispReader.getName(), lineNumber, columnNumber));
        }
        return quote(Namespace.getDefaultSymbol(lispReader.tokenBufferString().intern()));
    }

    public static Object readEscapedExpression(LispReader lispReader, int i) throws SyntaxException, IOException {
        if (i == 40) {
            lispReader.unread(i);
            return lispReader.readObject();
        }
        LineBufferedReader port = lispReader.getPort();
        char cPushNesting = lispReader.pushNesting('{');
        int lineNumber = port.getLineNumber();
        int columnNumber = port.getColumnNumber();
        try {
            Pair pairMakePair = lispReader.makePair(new PrimProcedure(Compilation.typeValues.getDeclaredMethod("values", 1)), lineNumber, columnNumber);
            ReadTable current = ReadTable.getCurrent();
            Pair pair = pairMakePair;
            while (true) {
                int lineNumber2 = port.getLineNumber();
                int columnNumber2 = port.getColumnNumber();
                int i2 = port.read();
                if (i2 == 125) {
                    break;
                }
                if (i2 < 0) {
                    lispReader.eofError("unexpected EOF in list starting here", lineNumber + 1, columnNumber);
                }
                Object values = lispReader.readValues(i2, current.lookup(i2), current);
                if (values != Values.empty) {
                    Pair pairMakePair2 = lispReader.makePair(lispReader.handlePostfix(values, current, lineNumber2, columnNumber2), lineNumber2, columnNumber2);
                    lispReader.setCdr(pair, pairMakePair2);
                    pair = pairMakePair2;
                }
            }
            lispReader.tokenBufferLength = 0;
            return pair == pairMakePair.getCdr() ? pair.getCar() : pairMakePair;
        } finally {
            lispReader.popNesting(cPushNesting);
        }
    }

    public static Object readXMLConstructor(LispReader lispReader, int i, boolean z) throws SyntaxException, IOException {
        LispReader lispReader2;
        int lineNumber = lispReader.getLineNumber() + 1;
        int columnNumber = lispReader.getColumnNumber() - 2;
        if (i == 33) {
            int iPeek = lispReader.read();
            if (iPeek == 45 && (iPeek = lispReader.peek()) == 45) {
                lispReader.skip();
                if (lispReader.readDelimited("-->")) {
                    lispReader2 = lispReader;
                } else {
                    lispReader2 = lispReader;
                    lispReader2.error('f', lispReader.getName(), lineNumber, columnNumber, "unexpected end-of-file in XML comment starting here - expected \"-->\"");
                }
                return LList.list2(CommentConstructor.commentConstructor, lispReader2.tokenBufferString());
            }
            if (iPeek == 91 && (iPeek = lispReader.read()) == 67 && (iPeek = lispReader.read()) == 68 && (iPeek = lispReader.read()) == 65 && (iPeek = lispReader.read()) == 84 && (iPeek = lispReader.read()) == 65 && (iPeek = lispReader.read()) == 91) {
                if (!lispReader.readDelimited("]]>")) {
                    lispReader.error('f', lispReader.getName(), lineNumber, columnNumber, "unexpected end-of-file in CDATA starting here - expected \"]]>\"");
                }
                return LList.list2(MakeCDATA.makeCDATA, lispReader.tokenBufferString());
            }
            lispReader.error('f', lispReader.getName(), lineNumber, columnNumber, "'<!' must be followed by '--' or '[CDATA['");
            while (iPeek >= 0 && iPeek != 62 && iPeek != 10 && iPeek != 13) {
                iPeek = lispReader.read();
            }
            return null;
        }
        if (i == 63) {
            int unicodeChar = lispReader.readUnicodeChar();
            if (unicodeChar < 0 || !XName.isNameStart(unicodeChar)) {
                lispReader.error("missing target after '<?'");
            }
            do {
                lispReader.tokenBufferAppend(unicodeChar);
                unicodeChar = lispReader.readUnicodeChar();
            } while (XName.isNamePart(unicodeChar));
            String str = lispReader.tokenBufferString();
            int i2 = 0;
            while (unicodeChar >= 0 && Character.isWhitespace(unicodeChar)) {
                i2++;
                unicodeChar = lispReader.read();
            }
            lispReader.unread(unicodeChar);
            char cPushNesting = lispReader.pushNesting('?');
            try {
                if (!lispReader.readDelimited("?>")) {
                    lispReader.error('f', lispReader.getName(), lineNumber, columnNumber, "unexpected end-of-file looking for \"?>\"");
                }
                lispReader.popNesting(cPushNesting);
                if (i2 == 0 && lispReader.tokenBufferLength > 0) {
                    lispReader.error("target must be followed by space or '?>'");
                }
                return LList.list3(MakeProcInst.makeProcInst, str, lispReader.tokenBufferString());
            } catch (Throwable th) {
                lispReader.popNesting(cPushNesting);
                throw th;
            }
        }
        return readElementConstructor(lispReader, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object readElementConstructor(gnu.kawa.lispexpr.LispReader r17, int r18) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.ReaderXmlElement.readElementConstructor(gnu.kawa.lispexpr.LispReader, int):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.lists.Pair readContent(gnu.kawa.lispexpr.LispReader r9, char r10, gnu.lists.Pair r11) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.ReaderXmlElement.readContent(gnu.kawa.lispexpr.LispReader, char, gnu.lists.Pair):gnu.lists.Pair");
    }

    public static void readCharRef(LispReader lispReader) throws SyntaxException, IOException {
        int i;
        int i2 = lispReader.read();
        if (i2 == 120) {
            i2 = lispReader.read();
            i = 16;
        } else {
            i = 10;
        }
        int i3 = 0;
        while (i2 >= 0) {
            int iDigit = Character.digit((char) i2, i);
            if (iDigit < 0 || i3 >= 134217728) {
                break;
            }
            i3 = (i3 * i) + iDigit;
            i2 = lispReader.read();
        }
        if (i2 != 59) {
            lispReader.unread(i2);
            lispReader.error("invalid character reference");
            return;
        }
        if ((i3 > 0 && i3 <= 55295) || ((i3 >= 57344 && i3 <= 65533) || (i3 >= 65536 && i3 <= 1114111))) {
            lispReader.tokenBufferAppend(i3);
            return;
        }
        lispReader.error("invalid character value " + i3);
    }

    public static Object readEntity(LispReader lispReader, int i) throws SyntaxException, IOException {
        int i2 = lispReader.tokenBufferLength;
        while (i >= 0) {
            char c = (char) i;
            if (!XName.isNamePart(c)) {
                break;
            }
            lispReader.tokenBufferAppend(c);
            i = lispReader.read();
        }
        if (i != 59) {
            lispReader.unread(i);
            lispReader.error("invalid entity reference");
            return "?";
        }
        String str = new String(lispReader.tokenBuffer, i2, lispReader.tokenBufferLength - i2);
        lispReader.tokenBufferLength = i2;
        namedEntity(lispReader, str);
        return null;
    }

    public static void namedEntity(LispReader lispReader, String str) {
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
            lispReader.error("unknown enity reference: '" + strIntern + "'");
            i = 63;
        }
        lispReader.tokenBufferAppend(i);
    }

    public static int skipSpace(LispReader lispReader, int i) throws SyntaxException, IOException {
        while (i >= 0 && Character.isWhitespace(i)) {
            i = lispReader.readUnicodeChar();
        }
        return i;
    }
}
