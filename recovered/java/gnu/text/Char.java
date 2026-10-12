package gnu.text;

import androidx.core.app.NotificationCompat;
import com.google.common.base.Ascii;
import gnu.lists.Consumer;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import okio.Utf8;

/* loaded from: classes2.dex */
public class Char implements Comparable, Externalizable {
    public static final char[] d;
    public static final String[] e;

    /* renamed from: a, reason: collision with root package name */
    public int f5479a;
    public static final a c = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final Char[] f5478b = new Char[128];

    public Char() {
    }

    public Char(int i) {
        this.f5479a = i;
    }

    public void print(Consumer consumer) {
        print(this.f5479a, consumer);
    }

    public static void print(int i, Consumer consumer) {
        if (i >= 65536) {
            consumer.write((char) (((i - 65536) >> 10) + 55296));
            consumer.write((char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER));
        } else {
            consumer.write((char) i);
        }
    }

    public final char charValue() {
        return (char) this.f5479a;
    }

    public final int intValue() {
        return this.f5479a;
    }

    public int hashCode() {
        return this.f5479a;
    }

    static {
        int i = 128;
        while (true) {
            i--;
            if (i >= 0) {
                f5478b[i] = new Char(i);
            } else {
                d = new char[]{' ', '\t', '\n', '\n', '\r', '\f', '\b', 27, Ascii.MAX, Ascii.MAX, Ascii.MAX, 7, 7, 11, 0};
                e = new String[]{"space", "tab", "newline", "linefeed", "return", "page", "backspace", "esc", "delete", "del", "rubout", NotificationCompat.CATEGORY_ALARM, "bel", "vtab", "nul"};
                return;
            }
        }
    }

    public static Char make(int i) {
        Char r1;
        if (i < 128) {
            return f5478b[i];
        }
        a aVar = c;
        synchronized (aVar) {
            r1 = aVar.get(i);
        }
        return r1;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof Char) && ((Char) obj).intValue() == this.f5479a;
    }

    public static int nameToChar(String str) {
        char[] cArr;
        char cCharAt;
        String[] strArr = e;
        int length = strArr.length;
        do {
            length--;
            cArr = d;
            if (length < 0) {
                int length2 = strArr.length;
                do {
                    length2--;
                    if (length2 < 0) {
                        int length3 = str.length();
                        if (length3 > 1 && str.charAt(0) == 'u') {
                            int i = 0;
                            for (int i2 = 1; i2 != length3; i2++) {
                                int iDigit = Character.digit(str.charAt(i2), 16);
                                if (iDigit >= 0) {
                                    i = (i << 4) + iDigit;
                                }
                            }
                            return i;
                        }
                        if (length3 == 3 && str.charAt(1) == '-' && ((cCharAt = str.charAt(0)) == 'c' || cCharAt == 'C')) {
                            return str.charAt(2) & 31;
                        }
                        return -1;
                    }
                } while (!strArr[length2].equalsIgnoreCase(str));
                return cArr[length2];
            }
        } while (!strArr[length].equals(str));
        return cArr[length];
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("'");
        int i = this.f5479a;
        if (i >= 32 && i < 127 && i != 39) {
            stringBuffer.append((char) i);
        } else {
            stringBuffer.append('\\');
            int i2 = this.f5479a;
            if (i2 == 39) {
                stringBuffer.append('\'');
            } else if (i2 == 10) {
                stringBuffer.append('n');
            } else if (i2 == 13) {
                stringBuffer.append('r');
            } else if (i2 == 9) {
                stringBuffer.append('t');
            } else if (i2 < 256) {
                String octalString = Integer.toOctalString(i2);
                int length = 3 - octalString.length();
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    stringBuffer.append('0');
                }
                stringBuffer.append(octalString);
            } else {
                stringBuffer.append('u');
                String hexString = Integer.toHexString(this.f5479a);
                int length2 = 4 - hexString.length();
                while (true) {
                    length2--;
                    if (length2 < 0) {
                        break;
                    }
                    stringBuffer.append('0');
                }
                stringBuffer.append(hexString);
            }
        }
        stringBuffer.append('\'');
        return stringBuffer.toString();
    }

    public static String toScmReadableString(int i) {
        StringBuffer stringBuffer = new StringBuffer(20);
        stringBuffer.append("#\\");
        int i2 = 0;
        while (true) {
            char[] cArr = d;
            if (i2 < cArr.length) {
                if (((char) i) == cArr[i2]) {
                    stringBuffer.append(e[i2]);
                    return stringBuffer.toString();
                }
                i2++;
            } else {
                if (i < 32 || i > 127) {
                    stringBuffer.append('x');
                    stringBuffer.append(Integer.toString(i, 16));
                } else {
                    stringBuffer.append((char) i);
                }
                return stringBuffer.toString();
            }
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.f5479a;
        if (i > 55296) {
            if (i > 65535) {
                objectOutput.writeChar(((i - 65536) >> 10) + 55296);
                this.f5479a = (this.f5479a & 1023) + Utf8.LOG_SURROGATE_HEADER;
            } else if (i <= 56319) {
                objectOutput.writeChar(i);
                this.f5479a = 0;
            }
        }
        objectOutput.writeChar(this.f5479a);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        char c2;
        char c3 = objectInput.readChar();
        this.f5479a = c3;
        if (c3 < 55296 || c3 >= 56319 || (c2 = objectInput.readChar()) < 56320 || c2 > 57343) {
            return;
        }
        this.f5479a = (c2 - Utf8.LOG_SURROGATE_HEADER) + ((this.f5479a - 55296) << 10) + 65536;
    }

    public Object readResolve() throws ObjectStreamException {
        return make(this.f5479a);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f5479a - ((Char) obj).f5479a;
    }
}
