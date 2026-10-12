package kawa.standard;

import gnu.lists.Sequence;
import gnu.mapping.InPort;
import gnu.mapping.Procedure0or1;
import gnu.mapping.WrongType;
import gnu.text.Char;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes2.dex */
public class readchar extends Procedure0or1 {
    boolean peeking;
    public static final readchar readChar = new readchar(false);
    public static final readchar peekChar = new readchar(true);

    public readchar(boolean z) {
        super(z ? "peek-char" : "read-char");
        this.peeking = z;
    }

    public final Object readChar(InPort inPort) {
        try {
            int iPeek = this.peeking ? inPort.peek() : inPort.read();
            if (iPeek < 0) {
                return Sequence.eofValue;
            }
            return Char.make(iPeek);
        } catch (IOException unused) {
            throw new RuntimeException("IO Exception caught");
        }
    }

    public final Object readChar(Reader reader) throws IOException {
        int i;
        try {
            if (this.peeking) {
                reader.mark(1);
                i = reader.read();
                reader.reset();
            } else {
                i = reader.read();
            }
            if (i < 0) {
                return Sequence.eofValue;
            }
            return Char.make(i);
        } catch (IOException unused) {
            throw new RuntimeException("IO Exception caught");
        }
    }

    public final Object readChar(InputStream inputStream) throws IOException {
        int i;
        try {
            if (this.peeking) {
                inputStream.mark(1);
                i = inputStream.read();
                inputStream.reset();
            } else {
                i = inputStream.read();
            }
            if (i < 0) {
                return Sequence.eofValue;
            }
            return Char.make(i);
        } catch (IOException unused) {
            throw new RuntimeException("IO Exception caught");
        }
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public final Object apply0() {
        return readChar(InPort.inDefault());
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public final Object apply1(Object obj) {
        if (obj instanceof InPort) {
            return readChar((InPort) obj);
        }
        if (obj instanceof Reader) {
            return readChar((Reader) obj);
        }
        if (obj instanceof InputStream) {
            return readChar((InputStream) obj);
        }
        throw new WrongType(this, 1, obj, "<input-port>");
    }
}
