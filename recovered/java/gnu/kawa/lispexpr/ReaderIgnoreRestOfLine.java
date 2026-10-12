package gnu.kawa.lispexpr;

import gnu.lists.Sequence;
import gnu.mapping.Values;
import gnu.text.Lexer;
import gnu.text.SyntaxException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderIgnoreRestOfLine extends ReadTableEntry {
    static ReaderIgnoreRestOfLine instance = new ReaderIgnoreRestOfLine();

    public static ReaderIgnoreRestOfLine getInstance() {
        return instance;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        int i3;
        do {
            i3 = lexer.read();
            if (i3 >= 0) {
                if (i3 == 10) {
                    break;
                }
            } else {
                return Sequence.eofValue;
            }
        } while (i3 != 13);
        return Values.empty;
    }
}
