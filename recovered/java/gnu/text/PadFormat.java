package gnu.text;

import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;
import java.text.Format;
import java.text.MessageFormat;

/* loaded from: classes2.dex */
public class PadFormat extends ReportFormat {

    /* renamed from: a, reason: collision with root package name */
    public final int f5492a;

    /* renamed from: b, reason: collision with root package name */
    public final char f5493b;
    public final int c;
    public final Format d;

    public static int padNeeded(int i, int i2, int i3, int i4) {
        int i5 = i4 + i;
        if (i3 <= 1) {
            i3 = i2 - i5;
        }
        while (i5 < i2) {
            i5 += i3;
        }
        return i5 - i;
    }

    public PadFormat(Format format, int i, char c, int i2) {
        this.d = format;
        this.f5492a = i;
        this.f5493b = c;
        this.c = i2;
    }

    public PadFormat(Format format, int i) {
        this(format, i, ' ', 100);
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        return format(this.d, objArr, i, writer, this.f5493b, this.f5492a, 1, 0, this.c, fieldPosition);
    }

    public static int format(Format format, Object[] objArr, int i, Writer writer, char c, int i2, int i3, int i4, int i5, FieldPosition fieldPosition) throws IOException {
        int length;
        StringBuffer stringBuffer = new StringBuffer(200);
        int i6 = 1;
        if (format instanceof ReportFormat) {
            length = ((ReportFormat) format).format(objArr, i, stringBuffer, fieldPosition);
        } else if (format instanceof MessageFormat) {
            format.format(objArr, stringBuffer, fieldPosition);
            length = objArr.length;
        } else {
            format.format(objArr[i], stringBuffer, fieldPosition);
            length = i + 1;
        }
        int length2 = stringBuffer.length();
        int iPadNeeded = padNeeded(length2, i2, i3, i4);
        String string = stringBuffer.toString();
        if (iPadNeeded > 0) {
            if (i5 == -1) {
                i5 = 0;
                if (length2 > 0) {
                    char cCharAt = string.charAt(0);
                    if (cCharAt == '-' || cCharAt == '+') {
                        writer.write(cCharAt);
                    } else {
                        i6 = 0;
                    }
                    if (length2 - i6 > 2 && string.charAt(i6) == '0') {
                        writer.write(48);
                        int i7 = i6 + 1;
                        char cCharAt2 = string.charAt(i7);
                        if (cCharAt2 == 'x' || cCharAt2 == 'X') {
                            i6 += 2;
                            writer.write(cCharAt2);
                        } else {
                            i6 = i7;
                        }
                    }
                    if (i6 > 0) {
                        string = string.substring(i6);
                    }
                }
            }
            int i8 = (i5 * iPadNeeded) / 100;
            int i9 = iPadNeeded - i8;
            while (true) {
                i9--;
                if (i9 < 0) {
                    break;
                }
                writer.write(c);
            }
            writer.write(string);
            while (true) {
                i8--;
                if (i8 < 0) {
                    return length;
                }
                writer.write(c);
            }
        } else {
            writer.write(string);
            return length;
        }
    }
}
