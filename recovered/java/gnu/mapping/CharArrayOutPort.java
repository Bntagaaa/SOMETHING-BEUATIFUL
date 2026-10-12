package gnu.mapping;

import gnu.lists.Consumer;
import gnu.text.PrettyWriter;
import java.io.Writer;

/* loaded from: classes2.dex */
public class CharArrayOutPort extends OutPort {
    @Override // gnu.mapping.OutPort, java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // gnu.mapping.OutPort
    public boolean closeOnExit() {
        return false;
    }

    public CharArrayOutPort() {
        super((Writer) null, false, CharArrayInPort.stringPath);
    }

    public int length() {
        return this.bout.bufferFillPointer;
    }

    public void setLength(int i) {
        this.bout.bufferFillPointer = i;
    }

    public void reset() {
        this.bout.bufferFillPointer = 0;
    }

    public char[] toCharArray() {
        PrettyWriter prettyWriter = this.bout;
        int i = prettyWriter.bufferFillPointer;
        char[] cArr = new char[i];
        System.arraycopy(prettyWriter.buffer, 0, cArr, 0, i);
        return cArr;
    }

    public String toString() {
        PrettyWriter prettyWriter = this.bout;
        return new String(prettyWriter.buffer, 0, prettyWriter.bufferFillPointer);
    }

    public String toSubString(int i, int i2) {
        PrettyWriter prettyWriter = this.bout;
        if (i2 > prettyWriter.bufferFillPointer) {
            throw new IndexOutOfBoundsException();
        }
        return new String(prettyWriter.buffer, i, i2 - i);
    }

    public String toSubString(int i) {
        PrettyWriter prettyWriter = this.bout;
        return new String(prettyWriter.buffer, i, prettyWriter.bufferFillPointer - i);
    }

    public void writeTo(Consumer consumer) {
        PrettyWriter prettyWriter = this.bout;
        consumer.write(prettyWriter.buffer, 0, prettyWriter.bufferFillPointer);
    }

    public void writeTo(int i, int i2, Consumer consumer) {
        consumer.write(this.bout.buffer, i, i2);
    }
}
