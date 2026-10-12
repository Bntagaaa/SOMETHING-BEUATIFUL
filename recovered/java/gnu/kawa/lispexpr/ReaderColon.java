package gnu.kawa.lispexpr;

import gnu.text.Lexer;
import gnu.text.SyntaxException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderColon extends ReadTableEntry {
    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public int getKind() {
        return 6;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        LispReader lispReader = (LispReader) lexer;
        ReadTable current = ReadTable.getCurrent();
        int i3 = lispReader.tokenBufferLength;
        if (i == current.postfixLookupOperator) {
            int i4 = lispReader.read();
            if (i4 == 58) {
                return current.makeSymbol("::");
            }
            lispReader.tokenBufferAppend(i);
            i = i4;
        }
        return lispReader.readAndHandleToken(i, i3, current);
    }
}
