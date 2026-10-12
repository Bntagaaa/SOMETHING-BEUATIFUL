package gnu.kawa.lispexpr;

import gnu.mapping.InPort;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class ReaderDispatchMisc extends ReadTableEntry {
    private static ReaderDispatchMisc instance = new ReaderDispatchMisc();
    protected int code;

    public static ReaderDispatchMisc getInstance() {
        return instance;
    }

    public ReaderDispatchMisc() {
        this.code = -1;
    }

    public ReaderDispatchMisc(int i) {
        this.code = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x01b0  */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    @Override // gnu.kawa.lispexpr.ReadTableEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object read(gnu.text.Lexer r9, int r10, int r11) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.ReaderDispatchMisc.read(gnu.text.Lexer, int, int):java.lang.Object");
    }

    public static Pattern readRegex(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        char c;
        int i3 = lexer.tokenBufferLength;
        LineBufferedReader port = lexer.getPort();
        boolean z = port instanceof InPort;
        int i4 = 0;
        if (z) {
            InPort inPort = (InPort) port;
            c = inPort.readState;
            inPort.readState = '/';
        } else {
            c = 0;
        }
        while (true) {
            try {
                int escape = port.read();
                if (escape < 0) {
                    lexer.eofError("unexpected EOF in regex literal");
                }
                if (escape == i) {
                    break;
                }
                if (escape == 92) {
                    escape = port.read();
                    if ((escape != 32 && escape != 9 && escape != 13 && escape != 10) || !(lexer instanceof LispReader) || (escape = ((LispReader) lexer).readEscape(escape)) != -2) {
                        if (escape < 0) {
                            lexer.eofError("unexpected EOF in regex literal");
                        }
                        if (escape != i) {
                            lexer.tokenBufferAppend(92);
                        }
                    }
                }
                lexer.tokenBufferAppend(escape);
            } catch (Throwable th) {
                lexer.tokenBufferLength = i3;
                if (z) {
                    ((InPort) port).readState = c;
                }
                throw th;
            }
        }
        String str = new String(lexer.tokenBuffer, i3, lexer.tokenBufferLength - i3);
        while (true) {
            int iPeek = lexer.peek();
            if (iPeek != 105 && iPeek != 73) {
                if (iPeek != 115 && iPeek != 83) {
                    if (iPeek != 109 && iPeek != 77) {
                        if (!Character.isLetter(iPeek)) {
                            break;
                        }
                        lexer.error("unrecognized regex option '" + ((char) iPeek) + '\'');
                    } else {
                        i4 |= 8;
                    }
                } else {
                    i4 |= 32;
                }
            } else {
                i4 |= 66;
            }
            lexer.skip();
        }
        Pattern patternCompile = Pattern.compile(str, i4);
        lexer.tokenBufferLength = i3;
        if (port instanceof InPort) {
            ((InPort) port).readState = c;
        }
        return patternCompile;
    }
}
