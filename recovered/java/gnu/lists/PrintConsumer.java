package gnu.lists;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;

/* loaded from: classes2.dex */
public class PrintConsumer extends PrintWriter implements Appendable, Consumer {
    @Override // gnu.lists.Consumer
    public void endAttribute() {
    }

    @Override // gnu.lists.Consumer
    public void endDocument() {
    }

    @Override // gnu.lists.Consumer
    public void endElement() {
    }

    public void endNumber() {
    }

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    @Override // gnu.lists.Consumer
    public void startAttribute(Object obj) {
    }

    @Override // gnu.lists.Consumer
    public void startDocument() {
    }

    @Override // gnu.lists.Consumer
    public void startElement(Object obj) {
    }

    public void startNumber() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PrintConsumer(Consumer consumer, boolean z) {
        super(consumer instanceof Writer ? (Writer) consumer : new ConsumerWriter(consumer), z);
    }

    public PrintConsumer(OutputStream outputStream, boolean z) {
        super(outputStream, z);
    }

    public PrintConsumer(Writer writer, boolean z) {
        super(writer, z);
    }

    public PrintConsumer(Writer writer) {
        super(writer);
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.lang.Appendable
    public PrintConsumer append(char c) {
        print(c);
        return this;
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.lang.Appendable
    public PrintConsumer append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.lang.Appendable
    public PrintConsumer append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        while (i < i2) {
            append(charSequence.charAt(i));
            i++;
        }
        return this;
    }

    @Override // gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) throws IOException {
        if (charSequence instanceof String) {
            write((String) charSequence, i, i2);
            return;
        }
        while (i < i2) {
            write(charSequence.charAt(i));
            i++;
        }
    }

    @Override // gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        print(z);
    }

    @Override // gnu.lists.Consumer
    public void writeFloat(float f) {
        startNumber();
        print(f);
        endNumber();
    }

    @Override // gnu.lists.Consumer
    public void writeDouble(double d) {
        startNumber();
        print(d);
        endNumber();
    }

    @Override // gnu.lists.Consumer
    public void writeInt(int i) {
        startNumber();
        print(i);
        endNumber();
    }

    @Override // gnu.lists.Consumer
    public void writeLong(long j) {
        startNumber();
        print(j);
        endNumber();
    }

    @Override // gnu.lists.Consumer
    public void writeObject(Object obj) {
        print(obj);
    }
}
