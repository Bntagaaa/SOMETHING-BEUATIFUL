package gnu.lists;

import gnu.mapping.CharArrayOutPort;
import gnu.mapping.OutPort;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

/* loaded from: classes2.dex */
public abstract class AbstractFormat extends Format {
    public abstract void writeObject(Object obj, Consumer consumer);

    public void write(String str, Consumer consumer) {
        consumer.write(str);
    }

    public void write(int i, Consumer consumer) {
        consumer.write(i);
    }

    public void writeLong(long j, Consumer consumer) {
        consumer.writeLong(j);
    }

    public void writeInt(int i, Consumer consumer) {
        writeLong(i, consumer);
    }

    public void writeBoolean(boolean z, Consumer consumer) {
        consumer.writeBoolean(z);
    }

    public void startElement(Object obj, Consumer consumer) {
        write("(", consumer);
        write(obj.toString(), consumer);
        write(" ", consumer);
    }

    public void endElement(Consumer consumer) {
        write(")", consumer);
    }

    public void startAttribute(Object obj, Consumer consumer) {
        write(obj.toString(), consumer);
        write(": ", consumer);
    }

    public void endAttribute(Consumer consumer) {
        write(" ", consumer);
    }

    public void format(Object obj, Consumer consumer) {
        if (consumer instanceof OutPort) {
            OutPort outPort = (OutPort) consumer;
            AbstractFormat abstractFormat = outPort.objectFormat;
            try {
                outPort.objectFormat = this;
                consumer.writeObject(obj);
                return;
            } finally {
                outPort.objectFormat = abstractFormat;
            }
        }
        consumer.writeObject(obj);
    }

    public final void writeObject(Object obj, PrintConsumer printConsumer) {
        writeObject(obj, (Consumer) printConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void writeObject(Object obj, Writer writer) throws IOException {
        if (writer instanceof Consumer) {
            writeObject(obj, (Consumer) writer);
            return;
        }
        OutPort outPort = new OutPort(writer, false, true);
        writeObject(obj, (Consumer) writer);
        outPort.close();
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        CharArrayOutPort charArrayOutPort = new CharArrayOutPort();
        writeObject(obj, (PrintConsumer) charArrayOutPort);
        stringBuffer.append(charArrayOutPort.toCharArray());
        charArrayOutPort.close();
        return stringBuffer;
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new Error(getClass().getName().concat(".parseObject - not implemented"));
    }
}
