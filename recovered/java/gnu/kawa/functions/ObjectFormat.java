package gnu.kawa.functions;

import gnu.lists.AbstractFormat;
import gnu.lists.Consumer;
import gnu.mapping.OutPort;
import gnu.text.ReportFormat;
import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;
import java.text.ParsePosition;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class ObjectFormat extends ReportFormat {
    private static ObjectFormat plainFormat;
    private static ObjectFormat readableFormat;
    int maxChars;
    boolean readable;

    public static ObjectFormat getInstance(boolean z) {
        if (z) {
            if (readableFormat == null) {
                readableFormat = new ObjectFormat(true);
            }
            return readableFormat;
        }
        if (plainFormat == null) {
            plainFormat = new ObjectFormat(false);
        }
        return plainFormat;
    }

    public ObjectFormat(boolean z) {
        this.readable = z;
        this.maxChars = -1073741824;
    }

    public ObjectFormat(boolean z, int i) {
        this.readable = z;
        this.maxChars = i;
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        int param = ReportFormat.getParam(this.maxChars, -1, objArr, i);
        if (this.maxChars == -1610612736) {
            i++;
        }
        return format(objArr, i, writer, param, this.readable);
    }

    private static void print(Object obj, OutPort outPort, boolean z) {
        boolean z2 = outPort.printReadable;
        AbstractFormat abstractFormat = outPort.objectFormat;
        try {
            outPort.printReadable = z;
            AbstractFormat abstractFormat2 = z ? Scheme.writeFormat : Scheme.displayFormat;
            outPort.objectFormat = abstractFormat2;
            abstractFormat2.writeObject(obj, (Consumer) outPort);
            outPort.printReadable = z2;
            outPort.objectFormat = abstractFormat;
        } catch (Throwable th) {
            outPort.printReadable = z2;
            outPort.objectFormat = abstractFormat;
            throw th;
        }
    }

    public static boolean format(Object obj, Writer writer, int i, boolean z) throws IOException {
        if (i < 0 && (writer instanceof OutPort)) {
            print(obj, (OutPort) writer, z);
            return true;
        }
        if (i < 0 && (writer instanceof CharArrayWriter)) {
            OutPort outPort = new OutPort(writer);
            print(obj, outPort, z);
            outPort.close();
            return true;
        }
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        OutPort outPort2 = new OutPort(charArrayWriter);
        print(obj, outPort2, z);
        outPort2.close();
        int size = charArrayWriter.size();
        if (i < 0 || size <= i) {
            charArrayWriter.writeTo(writer);
            return true;
        }
        writer.write(charArrayWriter.toCharArray(), 0, i);
        return false;
    }

    public static int format(Object[] objArr, int i, Writer writer, int i2, boolean z) throws IOException {
        Object obj;
        if (i >= objArr.length) {
            i--;
            i2 = -1;
            obj = "#<missing format argument>";
            z = false;
        } else {
            obj = objArr[i];
        }
        format(obj, writer, i2, z);
        return i + 1;
    }

    @Override // gnu.text.ReportFormat, java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new RuntimeException("ObjectFormat.parseObject - not implemented");
    }
}
