package gnu.kawa.lispexpr;

import gnu.kawa.util.RangeTable;
import gnu.mapping.Values;
import gnu.text.Lexer;
import gnu.text.SyntaxException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderDispatch extends ReadTableEntry {
    int kind;
    RangeTable table;

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public int getKind() {
        return this.kind;
    }

    public void set(int i, Object obj) {
        this.table.set(i, i, obj);
    }

    public ReadTableEntry lookup(int i) {
        return (ReadTableEntry) this.table.lookup(i, null);
    }

    public ReaderDispatch() {
        this.table = new RangeTable();
        this.kind = 5;
    }

    public ReaderDispatch(boolean z) {
        this.table = new RangeTable();
        this.kind = z ? 6 : 5;
    }

    public static ReaderDispatch create(ReadTable readTable) {
        ReaderDispatch readerDispatch = new ReaderDispatch();
        ReaderDispatchMisc readerDispatchMisc = ReaderDispatchMisc.getInstance();
        readerDispatch.set(58, readerDispatchMisc);
        readerDispatch.set(66, readerDispatchMisc);
        readerDispatch.set(68, readerDispatchMisc);
        readerDispatch.set(69, readerDispatchMisc);
        readerDispatch.set(70, readerDispatchMisc);
        readerDispatch.set(73, readerDispatchMisc);
        readerDispatch.set(79, readerDispatchMisc);
        readerDispatch.set(82, readerDispatchMisc);
        readerDispatch.set(83, readerDispatchMisc);
        readerDispatch.set(84, readerDispatchMisc);
        readerDispatch.set(85, readerDispatchMisc);
        readerDispatch.set(88, readerDispatchMisc);
        readerDispatch.set(124, readerDispatchMisc);
        readerDispatch.set(59, readerDispatchMisc);
        readerDispatch.set(33, readerDispatchMisc);
        readerDispatch.set(92, readerDispatchMisc);
        readerDispatch.set(61, readerDispatchMisc);
        readerDispatch.set(35, readerDispatchMisc);
        readerDispatch.set(47, readerDispatchMisc);
        readerDispatch.set(39, new ReaderQuote(readTable.makeSymbol("function")));
        readerDispatch.set(40, new ReaderVector(')'));
        readerDispatch.set(60, new ReaderXmlElement());
        return readerDispatch;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        int upperCase;
        int i3 = -1;
        while (true) {
            upperCase = lexer.read();
            if (upperCase < 0) {
                lexer.eofError("unexpected EOF after " + ((char) upperCase));
            }
            if (upperCase > 65536) {
                break;
            }
            char c = (char) upperCase;
            int iDigit = Character.digit(c, 10);
            if (iDigit < 0) {
                upperCase = Character.toUpperCase(c);
                break;
            }
            Lexer lexer2 = lexer;
            i3 = i3 < 0 ? iDigit : (i3 * 10) + iDigit;
            lexer = lexer2;
        }
        ReadTableEntry readTableEntry = (ReadTableEntry) this.table.lookup(upperCase, null);
        if (readTableEntry == null) {
            lexer.error('e', lexer.getName(), lexer.getLineNumber() + 1, lexer.getColumnNumber(), "invalid dispatch character '" + ((char) upperCase) + '\'');
            return Values.empty;
        }
        return readTableEntry.read(lexer, upperCase, i3);
    }
}
