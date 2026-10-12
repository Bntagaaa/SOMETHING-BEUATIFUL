package gnu.math;

import gnu.bytecode.Access;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class Duration extends Quantity implements Externalizable {
    int months;
    int nanos;
    long seconds;
    public Unit unit;

    @Override // gnu.math.Numeric
    public boolean isExact() {
        return false;
    }

    public static Duration make(int i, long j, int i2, Unit unit) {
        Duration duration = new Duration();
        duration.months = i;
        duration.seconds = j;
        duration.nanos = i2;
        duration.unit = unit;
        return duration;
    }

    public static Duration makeMonths(int i) {
        Duration duration = new Duration();
        duration.unit = Unit.month;
        duration.months = i;
        return duration;
    }

    public static Duration makeMinutes(int i) {
        Duration duration = new Duration();
        duration.unit = Unit.second;
        duration.seconds = i * 60;
        return duration;
    }

    public static Duration parse(String str, Unit unit) {
        Duration durationValueOf = valueOf(str, unit);
        if (durationValueOf != null) {
            return durationValueOf;
        }
        throw new IllegalArgumentException("not a valid " + unit.getName() + " duration: '" + str + "'");
    }

    public static Duration parseDuration(String str) {
        return parse(str, Unit.duration);
    }

    public static Duration parseYearMonthDuration(String str) {
        return parse(str, Unit.month);
    }

    public static Duration parseDayTimeDuration(String str) {
        return parse(str, Unit.second);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008f A[PHI: r3 r6
      0x008f: PHI (r3v12 long) = (r3v2 long), (r3v6 long), (r3v6 long), (r3v6 long) binds: [B:37:0x008d, B:55:0x00dd, B:57:0x00e1, B:59:0x00ed] A[DONT_GENERATE, DONT_INLINE]
      0x008f: PHI (r6v25 int) = (r6v3 int), (r6v10 int), (r6v10 int), (r6v10 int) binds: [B:37:0x008d, B:55:0x00dd, B:57:0x00e1, B:59:0x00ed] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.math.Duration valueOf(java.lang.String r18, gnu.math.Unit r19) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.Duration.valueOf(java.lang.String, gnu.math.Unit):gnu.math.Duration");
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof Duration) {
            return add(this, (Duration) obj, i);
        }
        if ((obj instanceof DateTime) && i == 1) {
            return DateTime.add((DateTime) obj, this, 1);
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof RealNum) {
            return times(this, ((RealNum) obj).doubleValue());
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric mulReversed(Numeric numeric) {
        if (!(numeric instanceof RealNum)) {
            throw new IllegalArgumentException();
        }
        return times(this, ((RealNum) numeric).doubleValue());
    }

    public static double div(Duration duration, Duration duration2) {
        int i = duration.months;
        int i2 = duration2.months;
        double d = duration.seconds;
        int i3 = duration.nanos;
        double d2 = (i3 * 1.0E-9d) + d;
        double d3 = (i3 * 1.0E-9d) + duration2.seconds;
        if (i2 == 0 && d3 == 0.0d) {
            throw new ArithmeticException("divide duration by zero");
        }
        if (i2 == 0) {
            if (i == 0) {
                return d2 / d3;
            }
        } else if (d3 == 0.0d && d2 == 0.0d) {
            return i / i2;
        }
        throw new ArithmeticException("divide of incompatible durations");
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof RealNum) {
            double dDoubleValue = ((RealNum) obj).doubleValue();
            if (dDoubleValue == 0.0d || Double.isNaN(dDoubleValue)) {
                throw new ArithmeticException("divide of duration by 0 or NaN");
            }
            return times(this, 1.0d / dDoubleValue);
        }
        if (obj instanceof Duration) {
            return new DFloNum(div(this, (Duration) obj));
        }
        return ((Numeric) obj).divReversed(this);
    }

    public static Duration add(Duration duration, Duration duration2, int i) {
        long j = i;
        long j2 = (((duration2.seconds * 1000000000) + duration2.nanos) * j) + (duration.seconds * 1000000000) + duration.nanos;
        Duration duration3 = new Duration();
        duration3.months = (int) ((duration2.months * j) + duration.months);
        duration3.seconds = (int) (j2 / 1000000000);
        duration3.nanos = (int) (j2 % 1000000000);
        Unit unit = duration.unit;
        if (unit != duration2.unit || unit == Unit.duration) {
            throw new ArithmeticException("cannot add these duration types");
        }
        duration3.unit = unit;
        return duration3;
    }

    public static Duration times(Duration duration, double d) {
        if (duration.unit == Unit.duration) {
            throw new IllegalArgumentException("cannot multiply general duration");
        }
        double d2 = duration.months * d;
        if (Double.isInfinite(d2) || Double.isNaN(d2)) {
            throw new ArithmeticException("overflow/NaN when multiplying a duration");
        }
        double d3 = ((duration.seconds * 1000000000) + duration.nanos) * d;
        Duration duration2 = new Duration();
        duration2.months = (int) Math.floor(d2 + 0.5d);
        duration2.seconds = (int) (d3 / 1.0E9d);
        duration2.nanos = (int) (d3 % 1.0E9d);
        duration2.unit = duration.unit;
        return duration2;
    }

    public static int compare(Duration duration, Duration duration2) {
        long j = duration.months - duration2.months;
        long j2 = ((duration.seconds * 1000000000) + duration.nanos) - ((duration2.seconds * 1000000000) + duration2.nanos);
        if (j < 0 && j2 <= 0) {
            return -1;
        }
        if (j > 0 && j2 >= 0) {
            return 1;
        }
        if (j != 0) {
            return -2;
        }
        if (j2 < 0) {
            return -1;
        }
        return j2 > 0 ? 1 : 0;
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public int compare(Object obj) {
        if (obj instanceof Duration) {
            return compare(this, (Duration) obj);
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.Numeric
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i = this.months;
        long j = this.seconds;
        int i2 = this.nanos;
        if (i < 0 || j < 0 || i2 < 0) {
            i = -i;
            j = -j;
            i2 = -i2;
            stringBuffer.append('-');
        }
        stringBuffer.append('P');
        int i3 = i / 12;
        if (i3 != 0) {
            stringBuffer.append(i3);
            stringBuffer.append('Y');
            i -= i3 * 12;
        }
        if (i != 0) {
            stringBuffer.append(i);
            stringBuffer.append(Access.METHOD_CONTEXT);
        }
        long j2 = j / 86400;
        if (j2 != 0) {
            stringBuffer.append(j2);
            stringBuffer.append('D');
            j -= j2 * 86400;
        }
        if (j != 0 || i2 != 0) {
            stringBuffer.append('T');
            long j3 = j / 3600;
            if (j3 != 0) {
                stringBuffer.append(j3);
                stringBuffer.append('H');
                j -= j3 * 3600;
            }
            long j4 = j / 60;
            if (j4 != 0) {
                stringBuffer.append(j4);
                stringBuffer.append(Access.METHOD_CONTEXT);
                j -= j4 * 60;
            }
            if (j != 0 || i2 != 0) {
                stringBuffer.append(j);
                appendNanoSeconds(i2, stringBuffer);
                stringBuffer.append('S');
            }
        } else if (stringBuffer.length() == 1) {
            stringBuffer.append(this.unit == Unit.month ? "0M" : "T0S");
        }
        return stringBuffer.toString();
    }

    public static void appendNanoSeconds(int i, StringBuffer stringBuffer) {
        if (i == 0) {
            return;
        }
        stringBuffer.append('.');
        int length = stringBuffer.length();
        stringBuffer.append(i);
        int i2 = length + 9;
        int length2 = i2 - stringBuffer.length();
        while (true) {
            length2--;
            if (length2 < 0) {
                break;
            } else {
                stringBuffer.insert(length, '0');
            }
        }
        while (true) {
            int i3 = i2 - 1;
            if (stringBuffer.charAt(i3) != '0') {
                stringBuffer.setLength(i2);
                return;
            }
            i2 = i3;
        }
    }

    private static long scanPart(String str, int i) {
        int length = str.length();
        int i2 = i;
        long j = -1;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            i2++;
            int iDigit = Character.digit(cCharAt, 10);
            if (iDigit < 0) {
                return j < 0 ? i << 16 : (j << 32) | (i2 << 16) | cCharAt;
            }
            j = j < 0 ? iDigit : (j * 10) + iDigit;
            if (j > 2147483647L) {
                return -1L;
            }
        }
        if (j < 0) {
            return i << 16;
        }
        return -1L;
    }

    public int getYears() {
        return this.months / 12;
    }

    public int getMonths() {
        return this.months % 12;
    }

    public int getDays() {
        return (int) (this.seconds / 86400);
    }

    public int getHours() {
        return (int) ((this.seconds / 3600) % 24);
    }

    public int getMinutes() {
        return (int) ((this.seconds / 60) % 60);
    }

    public int getSecondsOnly() {
        return (int) (this.seconds % 60);
    }

    public int getNanoSecondsOnly() {
        return this.nanos;
    }

    public int getTotalMonths() {
        return this.months;
    }

    public long getTotalSeconds() {
        return this.seconds;
    }

    public long getTotalMinutes() {
        return this.seconds / 60;
    }

    public long getNanoSeconds() {
        return (this.seconds * 1000000000) + this.nanos;
    }

    @Override // gnu.math.Numeric
    public boolean isZero() {
        return this.months == 0 && this.seconds == 0 && this.nanos == 0;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.months);
        objectOutput.writeLong(this.seconds);
        objectOutput.writeInt(this.nanos);
        objectOutput.writeObject(this.unit);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.months = objectInput.readInt();
        this.seconds = objectInput.readLong();
        this.nanos = objectInput.readInt();
        this.unit = (Unit) objectInput.readObject();
    }

    @Override // gnu.math.Quantity
    public Unit unit() {
        return this.unit;
    }

    @Override // gnu.math.Quantity
    public Complex number() {
        throw new Error("number needs to be implemented!");
    }

    public int hashCode() {
        return (this.months ^ ((int) this.seconds)) ^ this.nanos;
    }

    public static boolean equals(Duration duration, Duration duration2) {
        return duration.months == duration2.months && duration.seconds == duration2.seconds && duration.nanos == duration2.nanos;
    }

    @Override // gnu.math.Numeric
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Duration)) {
            return false;
        }
        return equals(this, (Duration) obj);
    }
}
