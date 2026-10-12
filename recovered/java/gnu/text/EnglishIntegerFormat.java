package gnu.text;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.lists.Consumer;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;

/* loaded from: classes2.dex */
public class EnglishIntegerFormat extends NumberFormat {

    /* renamed from: a, reason: collision with root package name */
    public static EnglishIntegerFormat f5480a;

    /* renamed from: b, reason: collision with root package name */
    public static EnglishIntegerFormat f5481b;
    public boolean ordinal;
    public static final String[] ones = {null, "one", "two", "three", PropertyTypeConstants.PROPERTY_TYPE_FOUR, "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
    public static final String[] onesth = {null, "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelveth", "thirteenth", "fourteenth", "fifteenth", "sixteenth", "seventeenth", "eighteenth", "nineteenth"};
    public static final String[] tens = {null, null, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
    public static final String[] tensth = {null, null, "twentieth", "thirtieth", "fortieth", "fiftieth", "sixtieth", "seventieth", "eightieth", "ninetieth"};
    public static final String[] power1000s = {null, " thousand", " million", " billion", " trillion", " quadrillion", " quintillion", " sextillion", " septillion", " octillion", " nonillion", " decillion", " undecillion", " duodecillion", " tredecillion", " quattuordecillion", " quindecillion", " sexdecillion", " septendecillion", " octodecillion", " novemdecillion", " vigintillion"};

    public EnglishIntegerFormat(boolean z) {
        this.ordinal = z;
    }

    public static EnglishIntegerFormat getInstance(boolean z) {
        if (z) {
            if (f5481b == null) {
                f5481b = new EnglishIntegerFormat(true);
            }
            return f5481b;
        }
        if (f5480a == null) {
            f5480a = new EnglishIntegerFormat(false);
        }
        return f5480a;
    }

    public static void a(StringBuffer stringBuffer, long j, int i, boolean z) {
        if (j >= 1000) {
            a(stringBuffer, j / 1000, i + 1, false);
            j %= 1000;
            if (j > 0) {
                stringBuffer.append(", ");
            } else if (z) {
                stringBuffer.append("th");
            }
        }
        if (j > 0) {
            int i2 = (int) j;
            boolean z2 = z && i == 0;
            if (i2 >= 100) {
                int i3 = i2 / 100;
                i2 %= 100;
                if (i3 > 1) {
                    stringBuffer.append(ones[i3]);
                    stringBuffer.append(' ');
                }
                stringBuffer.append("hundred");
                if (i2 > 0) {
                    stringBuffer.append(' ');
                } else if (z2) {
                    stringBuffer.append("th");
                }
            }
            if (i2 >= 20) {
                int i4 = i2 / 10;
                i2 %= 10;
                stringBuffer.append(((z2 && i2 == 0) ? tensth : tens)[i4]);
                if (i2 > 0) {
                    stringBuffer.append('-');
                }
            }
            if (i2 > 0) {
                stringBuffer.append((z2 ? onesth : ones)[i2]);
            }
            String[] strArr = power1000s;
            if (i >= strArr.length) {
                stringBuffer.append(" times ten to the ");
                a(stringBuffer, i * 3, 0, true);
                stringBuffer.append(" power");
            } else if (i > 0) {
                stringBuffer.append(strArr[i]);
            }
        }
    }

    public void writeInt(int i, Consumer consumer) {
        writeLong(i, consumer);
    }

    public void writeLong(long j, Consumer consumer) {
        StringBuffer stringBuffer = new StringBuffer();
        format(j, stringBuffer, (FieldPosition) null);
        consumer.write(stringBuffer, 0, stringBuffer.length());
    }

    public void writeObject(Object obj, Consumer consumer) {
        writeLong(((Number) obj).longValue(), consumer);
    }

    public void writeBoolean(boolean z, Consumer consumer) {
        writeLong(z ? 1L : 0L, consumer);
    }

    @Override // java.text.NumberFormat
    public StringBuffer format(long j, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (j == 0) {
            stringBuffer.append(this.ordinal ? "zeroth" : "zero");
            return stringBuffer;
        }
        if (j < 0) {
            stringBuffer.append("minus ");
            j = -j;
        }
        a(stringBuffer, j, 0, this.ordinal);
        return stringBuffer;
    }

    @Override // java.text.NumberFormat
    public StringBuffer format(double d, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        long j = (long) d;
        if (j == d) {
            return format(j, stringBuffer, fieldPosition);
        }
        stringBuffer.append(Double.toString(d));
        return stringBuffer;
    }

    @Override // java.text.NumberFormat
    public Number parse(String str, ParsePosition parsePosition) {
        throw new Error("EnglishIntegerFormat.parseObject - not implemented");
    }
}
