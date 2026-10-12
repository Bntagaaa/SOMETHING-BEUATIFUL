package gnu.kawa.lispexpr;

import gnu.expr.QuoteExp;
import gnu.lists.FVector;
import gnu.mapping.InPort;
import gnu.mapping.Values;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.util.Vector;

/* loaded from: classes2.dex */
public class ReaderVector extends ReadTableEntry {
    char close;

    public ReaderVector(char c) {
        this.close = c;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        return readVector((LispReader) lexer, lexer.getPort(), i2, this.close);
    }

    public static FVector readVector(LispReader lispReader, LineBufferedReader lineBufferedReader, int i, char c) throws SyntaxException, IOException {
        char c2;
        boolean z = lineBufferedReader instanceof InPort;
        if (z) {
            InPort inPort = (InPort) lineBufferedReader;
            c2 = inPort.readState;
            inPort.readState = c == ']' ? '[' : '(';
        } else {
            c2 = ' ';
        }
        try {
            Vector vector = new Vector();
            ReadTable current = ReadTable.getCurrent();
            while (true) {
                int i2 = lispReader.read();
                if (i2 < 0) {
                    lispReader.eofError("unexpected EOF in vector");
                }
                if (i2 == c) {
                    break;
                }
                Object values = lispReader.readValues(i2, current);
                if (values instanceof Values) {
                    for (Object obj : ((Values) values).getValues()) {
                        vector.addElement(obj);
                    }
                } else {
                    if (values == QuoteExp.voidExp) {
                        values = Values.empty;
                    }
                    vector.addElement(values);
                }
            }
            Object[] objArr = new Object[vector.size()];
            vector.copyInto(objArr);
            FVector fVector = new FVector(objArr);
            if (z) {
                ((InPort) lineBufferedReader).readState = c2;
            }
            return fVector;
        } catch (Throwable th) {
            if (z) {
                ((InPort) lineBufferedReader).readState = c2;
            }
            throw th;
        }
    }
}
