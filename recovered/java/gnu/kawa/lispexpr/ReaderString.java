package gnu.kawa.lispexpr;

import gnu.mapping.InPort;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderString extends ReadTableEntry {
    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        return readString(lexer, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v4, types: [char] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0, types: [gnu.text.Lexer] */
    public static String readString(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        char c;
        int i3 = lexer.tokenBufferLength;
        LineBufferedReader port = lexer.getPort();
        boolean z = port instanceof InPort;
        if (z) {
            InPort inPort = (InPort) port;
            c = inPort.readState;
            inPort.readState = (char) i;
        } else {
            c = 0;
        }
        char escape = i;
        while (true) {
            int i4 = 13;
            if (escape == 13) {
                try {
                    escape = port.read();
                    if (escape == 10) {
                    }
                } catch (Throwable th) {
                    lexer.tokenBufferLength = i3;
                    if (z) {
                        ((InPort) port).readState = c;
                    }
                    throw th;
                }
            } else {
                int i5 = port.pos;
                if (i5 < port.limit && escape != 10) {
                    char[] cArr = port.buffer;
                    port.pos = i5 + 1;
                    escape = cArr[i5];
                } else {
                    escape = port.read();
                }
            }
            if (escape == i) {
                break;
            }
            if (escape == 13) {
                if (port.getConvertCR()) {
                    i4 = 10;
                    escape = escape;
                } else {
                    escape = 32;
                }
                lexer.tokenBufferAppend(i4);
            } else {
                if (escape == 92) {
                    if (lexer instanceof LispReader) {
                        escape = ((LispReader) lexer).readEscape();
                    } else {
                        escape = port.read();
                    }
                    if (escape == -2) {
                        escape = 10;
                    }
                }
                if (escape < 0) {
                    lexer.eofError("unexpected EOF in string literal");
                }
                lexer.tokenBufferAppend(escape);
            }
        }
        String strIntern = new String(lexer.tokenBuffer, i3, lexer.tokenBufferLength - i3).intern();
        lexer.tokenBufferLength = i3;
        if (z) {
            ((InPort) port).readState = c;
        }
        return strIntern;
    }
}
