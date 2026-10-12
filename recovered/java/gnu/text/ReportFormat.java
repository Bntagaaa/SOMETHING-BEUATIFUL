package gnu.text;

import gnu.lists.Consumer;
import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.text.FieldPosition;
import java.text.Format;
import java.text.MessageFormat;
import java.text.ParsePosition;

/* loaded from: classes2.dex */
public abstract class ReportFormat extends Format {
    public static final int PARAM_FROM_COUNT = -1342177280;
    public static final int PARAM_FROM_LIST = -1610612736;
    public static final int PARAM_UNSPECIFIED = -1073741824;

    public static int nextArg(int i) {
        return i & 16777215;
    }

    public static int result(int i, int i2) {
        return (i << 24) | i2;
    }

    public static int resultCode(int i) {
        return i >>> 24;
    }

    public abstract int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException;

    public int format(Object obj, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        if (obj instanceof Object[]) {
            return format((Object[]) obj, i, writer, fieldPosition);
        }
        return format(new Object[]{obj}, i, writer, fieldPosition);
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        format((Object[]) obj, 0, stringBuffer, fieldPosition);
        return stringBuffer;
    }

    public int format(Object[] objArr, int i, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        try {
            int i2 = format(objArr, i, (Writer) charArrayWriter, fieldPosition);
            if (i2 < 0) {
                return i2;
            }
            stringBuffer.append(charArrayWriter.toCharArray());
            return i2;
        } catch (IOException e) {
            throw new Error("unexpected exception: " + e);
        }
    }

    public static int format(Format format, Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        int i2;
        if (format instanceof ReportFormat) {
            return ((ReportFormat) format).format(objArr, i, writer, fieldPosition);
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (format instanceof MessageFormat) {
            i2 = format(format, objArr, i, stringBuffer, fieldPosition);
        } else {
            format.format(objArr[i], stringBuffer, fieldPosition);
            i2 = i + 1;
        }
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        writer.write(cArr);
        return i2;
    }

    public static int format(Format format, Object[] objArr, int i, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        int length;
        Object obj;
        if (format instanceof ReportFormat) {
            return ((ReportFormat) format).format(objArr, i, stringBuffer, fieldPosition);
        }
        if (format instanceof MessageFormat) {
            length = objArr.length - i;
            obj = objArr;
            if (i > 0) {
                int length2 = objArr.length - i;
                Object[] objArr2 = new Object[length2];
                System.arraycopy(objArr, i, objArr2, 0, length2);
                obj = objArr2;
            }
        } else {
            length = 1;
            obj = objArr[i];
        }
        format.format(obj, stringBuffer, fieldPosition);
        return i + length;
    }

    public static void print(Writer writer, String str) throws IOException {
        if (writer instanceof PrintWriter) {
            ((PrintWriter) writer).print(str);
        } else {
            writer.write(str.toCharArray());
        }
    }

    public static void print(Object obj, Consumer consumer) {
        if (obj instanceof Printable) {
            ((Printable) obj).print(consumer);
        } else {
            consumer.write(obj == null ? "null" : obj.toString());
        }
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new Error("ReportFormat.parseObject - not implemented");
    }

    public static int getParam(Object obj, int i) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof Character) {
            return ((Character) obj).charValue();
        }
        return obj instanceof Char ? ((Char) obj).charValue() : i;
    }

    public static int getParam(int i, int i2, Object[] objArr, int i3) {
        if (i == -1342177280) {
            return objArr.length - i3;
        }
        if (i == -1610612736) {
            if (objArr != null) {
                return getParam(objArr[i3], i2);
            }
        } else if (i != -1073741824) {
            return i;
        }
        return i2;
    }

    public static char getParam(int i, char c, Object[] objArr, int i2) {
        return (char) getParam(i, (int) c, objArr, i2);
    }
}
