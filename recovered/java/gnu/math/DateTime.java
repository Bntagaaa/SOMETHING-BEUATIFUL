package gnu.math;

import androidx.core.internal.view.SupportMenu;
import com.airbnb.lottie.utils.Utils;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import kotlin.time.DurationKt;

/* loaded from: classes2.dex */
public class DateTime extends Quantity implements Cloneable {
    public static final int DATE_MASK = 14;
    static final int DAY_COMPONENT = 3;
    public static final int DAY_MASK = 8;
    static final int HOURS_COMPONENT = 4;
    public static final int HOURS_MASK = 16;
    static final int MINUTES_COMPONENT = 5;
    public static final int MINUTES_MASK = 32;
    static final int MONTH_COMPONENT = 2;
    public static final int MONTH_MASK = 4;
    static final int SECONDS_COMPONENT = 6;
    public static final int SECONDS_MASK = 64;
    static final int TIMEZONE_COMPONENT = 7;
    public static final int TIMEZONE_MASK = 128;
    public static final int TIME_MASK = 112;
    static final int YEAR_COMPONENT = 1;
    public static final int YEAR_MASK = 2;
    GregorianCalendar calendar;
    int mask;
    int nanoSeconds;
    Unit unit = Unit.date;
    private static final Date minDate = new Date(Long.MIN_VALUE);
    public static TimeZone GMT = TimeZone.getTimeZone("GMT");

    public int components() {
        return this.mask & (-129);
    }

    public DateTime cast(int i) {
        int i2 = this.mask & (-129);
        if (i == i2) {
            return this;
        }
        DateTime dateTime = new DateTime(i, (GregorianCalendar) this.calendar.clone());
        if (((~i2) & i) != 0 && (i2 != 14 || i != 126)) {
            throw new ClassCastException("cannot cast DateTime - missing conponents");
        }
        if (isZoneUnspecified()) {
            dateTime.mask &= -129;
        } else {
            dateTime.mask |= 128;
        }
        int i3 = (~i) & i2;
        if ((i3 & 112) != 0) {
            dateTime.calendar.clear(11);
            dateTime.calendar.clear(12);
            dateTime.calendar.clear(13);
        } else {
            dateTime.nanoSeconds = this.nanoSeconds;
        }
        if ((i3 & 2) != 0) {
            dateTime.calendar.clear(1);
            dateTime.calendar.clear(0);
        }
        if ((i3 & 4) != 0) {
            dateTime.calendar.clear(2);
        }
        if ((i3 & 8) != 0) {
            dateTime.calendar.clear(5);
        }
        return dateTime;
    }

    public DateTime(int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        this.calendar = gregorianCalendar;
        gregorianCalendar.setGregorianChange(minDate);
        this.calendar.clear();
        this.mask = i;
    }

    public DateTime(int i, GregorianCalendar gregorianCalendar) {
        this.calendar = gregorianCalendar;
        this.mask = i;
    }

    public static DateTime parse(String str, int i) {
        DateTime dateTime = new DateTime(i);
        String strTrim = str.trim();
        int length = strTrim.length();
        int time = 0;
        boolean z = (i & 14) != 0;
        boolean z2 = (i & 112) != 0;
        if (z) {
            time = dateTime.parseDate(strTrim, 0, i);
            if (z2) {
                time = (time < 0 || time >= length || strTrim.charAt(time) != 'T') ? -1 : time + 1;
            }
        }
        if (z2) {
            time = dateTime.parseTime(strTrim, time);
        }
        if (dateTime.parseZone(strTrim, time) == length) {
            return dateTime;
        }
        throw new NumberFormatException("Unrecognized date/time '" + strTrim + '\'');
    }

    public int parseDate(String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int iDaysInMonth;
        if (i < 0) {
            return i;
        }
        int length = str.length();
        if (i >= length || str.charAt(i) != '-') {
            z = false;
        } else {
            i++;
            z = true;
        }
        int i5 = i2 & 2;
        if (i5 != 0) {
            int digits = parseDigits(str, i);
            i3 = digits >> 16;
            int i6 = digits & SupportMenu.USER_MASK;
            int i7 = i + 4;
            if (i6 != i7 && (i6 <= i7 || str.charAt(i) == '0')) {
                return -1;
            }
            if (z || i3 == 0) {
                this.calendar.set(0, 0);
                this.calendar.set(1, i3 + 1);
            } else {
                this.calendar.set(1, i3);
            }
            i = i6;
        } else {
            if (!z) {
                return -1;
            }
            i3 = -1;
        }
        if ((i2 & 12) == 0) {
            return i;
        }
        if (i < length && str.charAt(i) == '-') {
            int i8 = i + 1;
            int i9 = i2 & 4;
            if (i9 != 0) {
                int digits2 = parseDigits(str, i8);
                i4 = digits2 >> 16;
                i8 = digits2 & SupportMenu.USER_MASK;
                if (i4 <= 0 || i4 > 12 || i8 != i + 3) {
                    return -1;
                }
                this.calendar.set(2, i4 - 1);
                if ((i2 & 8) == 0) {
                    return i8;
                }
            } else {
                i4 = -1;
            }
            if (i8 < length && str.charAt(i8) == '-') {
                int digits3 = parseDigits(str, i8 + 1);
                int i10 = digits3 >> 16;
                int i11 = digits3 & SupportMenu.USER_MASK;
                if (i10 > 0 && i11 == i8 + 3) {
                    if (i9 == 0) {
                        iDaysInMonth = 31;
                    } else {
                        int i12 = i4 - 1;
                        if (i5 == 0) {
                            i3 = 2000;
                        }
                        iDaysInMonth = daysInMonth(i12, i3);
                    }
                    if (i10 <= iDaysInMonth) {
                        this.calendar.set(5, i10);
                        return i11;
                    }
                }
            }
        }
        return -1;
    }

    public static boolean isLeapYear(int i) {
        if (i % 4 == 0) {
            return i % 100 != 0 || i % 400 == 0;
        }
        return false;
    }

    public static int daysInMonth(int i, int i2) {
        return i != 1 ? (i == 3 || i == 5 || i == 8 || i == 10) ? 30 : 31 : isLeapYear(i2) ? 29 : 28;
    }

    public int parseZone(String str, int i) {
        TimeZone timeZone;
        if (i >= 0) {
            int zoneMinutes = parseZoneMinutes(str, i);
            if (zoneMinutes == 0) {
                return -1;
            }
            if (zoneMinutes != i) {
                int i2 = zoneMinutes >> 16;
                int i3 = zoneMinutes & SupportMenu.USER_MASK;
                if (i2 == 0) {
                    timeZone = GMT;
                } else {
                    timeZone = TimeZone.getTimeZone("GMT" + str.substring(i, i3));
                }
                this.calendar.setTimeZone(timeZone);
                this.mask |= 128;
                return i3;
            }
        }
        return i;
    }

    public int parseZoneMinutes(String str, int i) {
        int length = str.length();
        if (i != length && i >= 0) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 'Z') {
                return i + 1;
            }
            if (cCharAt == '+' || cCharAt == '-') {
                int digits = parseDigits(str, i + 1);
                int i2 = digits >> 16;
                if (i2 > 14) {
                    return 0;
                }
                int i3 = i2 * 60;
                int i4 = digits & SupportMenu.USER_MASK;
                if (i4 != i + 3 || i4 >= length) {
                    return 0;
                }
                if (str.charAt(i4) == ':') {
                    int digits2 = parseDigits(str, i4 + 1);
                    int i5 = digits2 & SupportMenu.USER_MASK;
                    int i6 = digits2 >> 16;
                    if (i6 > 0 && (i6 >= 60 || i2 == 14)) {
                        return 0;
                    }
                    i3 += i6;
                    if (i5 != i4 + 3) {
                        return 0;
                    }
                    i4 = i5;
                }
                if (i3 > 840) {
                    return 0;
                }
                if (cCharAt == '-') {
                    i3 = -i3;
                }
                return (i3 << 16) | i4;
            }
        }
        return i;
    }

    public int parseTime(String str, int i) {
        int iDigit;
        if (i < 0) {
            return i;
        }
        int length = str.length();
        int digits = parseDigits(str, i);
        int i2 = digits >> 16;
        int i3 = digits & SupportMenu.USER_MASK;
        if (i2 <= 24 && i3 == i + 2 && i3 != length && str.charAt(i3) == ':') {
            int digits2 = parseDigits(str, i3 + 1);
            int i4 = digits2 >> 16;
            int i5 = digits2 & SupportMenu.USER_MASK;
            if (i4 < 60 && i5 == i3 + 3 && i5 != length && str.charAt(i5) == ':') {
                int digits3 = parseDigits(str, i5 + 1);
                int i6 = digits3 >> 16;
                int i7 = digits3 & SupportMenu.USER_MASK;
                if (i6 < 60 && i7 == i5 + 3) {
                    int i8 = i7 + 1;
                    if (i8 < length && str.charAt(i7) == '.' && Character.digit(str.charAt(i8), 10) >= 0) {
                        i7 = i8;
                        int i9 = 0;
                        int i10 = 0;
                        while (i7 < length && (iDigit = Character.digit(str.charAt(i7), 10)) >= 0) {
                            if (i9 < 9) {
                                i10 = (i10 * 10) + iDigit;
                            } else if (i9 == 9 && iDigit >= 5) {
                                i10++;
                            }
                            i9++;
                            i7++;
                        }
                        while (true) {
                            int i11 = i9 + 1;
                            if (i9 >= 9) {
                                break;
                            }
                            i10 *= 10;
                            i9 = i11;
                        }
                        this.nanoSeconds = i10;
                    }
                    if (i2 == 24 && (i4 != 0 || i6 != 0 || this.nanoSeconds != 0)) {
                        return -1;
                    }
                    this.calendar.set(11, i2);
                    this.calendar.set(12, i4);
                    this.calendar.set(13, i6);
                    return i7;
                }
            }
        }
        return -1;
    }

    private static int parseDigits(String str, int i) {
        int length = str.length();
        int i2 = -1;
        while (i < length) {
            int iDigit = Character.digit(str.charAt(i), 10);
            if (iDigit < 0) {
                break;
            }
            if (i2 > 20000) {
                return 0;
            }
            i2 = i2 < 0 ? iDigit : (i2 * 10) + iDigit;
            i++;
        }
        return i2 < 0 ? i : (i2 << 16) | i;
    }

    public int getYear() {
        int i = this.calendar.get(1);
        return this.calendar.get(0) == 0 ? 1 - i : i;
    }

    public int getMonth() {
        return this.calendar.get(2) + 1;
    }

    public int getDay() {
        return this.calendar.get(5);
    }

    public int getHours() {
        return this.calendar.get(11);
    }

    public int getMinutes() {
        return this.calendar.get(12);
    }

    public int getSecondsOnly() {
        return this.calendar.get(13);
    }

    public int getWholeSeconds() {
        return this.calendar.get(13);
    }

    public int getNanoSecondsOnly() {
        return this.nanoSeconds;
    }

    public static int compare(DateTime dateTime, DateTime dateTime2) {
        long timeInMillis = dateTime.calendar.getTimeInMillis();
        long timeInMillis2 = dateTime2.calendar.getTimeInMillis();
        if (((dateTime.mask | dateTime2.mask) & 14) == 0) {
            if (timeInMillis < 0) {
                timeInMillis += 86400000;
            }
            if (timeInMillis2 < 0) {
                timeInMillis2 += 86400000;
            }
        }
        int i = dateTime.nanoSeconds;
        int i2 = dateTime2.nanoSeconds;
        long j = timeInMillis + (i / DurationKt.NANOS_IN_MILLIS);
        long j2 = timeInMillis2 + (i2 / DurationKt.NANOS_IN_MILLIS);
        int i3 = i % DurationKt.NANOS_IN_MILLIS;
        int i4 = i2 % DurationKt.NANOS_IN_MILLIS;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        if (i3 < i4) {
            return -1;
        }
        return i3 > i4 ? 1 : 0;
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public int compare(Object obj) {
        if (obj instanceof DateTime) {
            return compare(this, (DateTime) obj);
        }
        return ((Numeric) obj).compareReversed(this);
    }

    public static Duration sub(DateTime dateTime, DateTime dateTime2) {
        long timeInMillis = dateTime.calendar.getTimeInMillis();
        long timeInMillis2 = dateTime2.calendar.getTimeInMillis();
        int i = dateTime.nanoSeconds;
        long j = (timeInMillis + (i / DurationKt.NANOS_IN_MILLIS)) - (timeInMillis2 + (r8 / DurationKt.NANOS_IN_MILLIS));
        long j2 = j / 1000;
        long j3 = dateTime2.nanoSeconds % DurationKt.NANOS_IN_MILLIS;
        return Duration.make(0, j2 + (r7 / Utils.SECOND_IN_NANOS), ((int) ((((j % 1000) * 1000000) + j3) - j3)) % Utils.SECOND_IN_NANOS, Unit.second);
    }

    public DateTime withZoneUnspecified() {
        if (isZoneUnspecified()) {
            return this;
        }
        DateTime dateTime = new DateTime(this.mask, (GregorianCalendar) this.calendar.clone());
        dateTime.calendar.setTimeZone(TimeZone.getDefault());
        dateTime.mask &= -129;
        return dateTime;
    }

    public DateTime adjustTimezone(int i) {
        TimeZone timeZone;
        DateTime dateTime = new DateTime(this.mask, (GregorianCalendar) this.calendar.clone());
        if (i == 0) {
            timeZone = GMT;
        } else {
            StringBuffer stringBuffer = new StringBuffer("GMT");
            toStringZone(i, stringBuffer);
            timeZone = TimeZone.getTimeZone(stringBuffer.toString());
        }
        dateTime.calendar.setTimeZone(timeZone);
        int i2 = dateTime.mask;
        if ((i2 & 128) != 0) {
            dateTime.calendar.setTimeInMillis(this.calendar.getTimeInMillis());
            if ((this.mask & 112) == 0) {
                dateTime.calendar.set(11, 0);
                dateTime.calendar.set(12, 0);
                dateTime.calendar.set(13, 0);
                dateTime.nanoSeconds = 0;
            }
            return dateTime;
        }
        dateTime.mask = i2 | 128;
        return dateTime;
    }

    public static DateTime add(DateTime dateTime, Duration duration, int i) {
        int i2;
        int i3;
        int iDaysInMonth;
        Unit unit = duration.unit;
        if (unit == Unit.duration || (unit == Unit.month && (dateTime.mask & 14) != 14)) {
            throw new IllegalArgumentException("invalid date/time +/- duration combinatuion");
        }
        DateTime dateTime2 = new DateTime(dateTime.mask, (GregorianCalendar) dateTime.calendar.clone());
        if (duration.months != 0) {
            int year = (duration.months * i) + dateTime2.calendar.get(2) + (dateTime2.getYear() * 12);
            int i4 = dateTime2.calendar.get(5);
            if (year >= 12) {
                i2 = year / 12;
                i3 = year % 12;
                dateTime2.calendar.set(0, 1);
                iDaysInMonth = daysInMonth(i3, i2);
            } else {
                int i5 = 11 - year;
                dateTime2.calendar.set(0, 0);
                i2 = (i5 / 12) + 1;
                i3 = 11 - (i5 % 12);
                iDaysInMonth = daysInMonth(i3, 1);
            }
            if (i4 > iDaysInMonth) {
                i4 = iDaysInMonth;
            }
            dateTime2.calendar.set(i2, i3, i4);
        }
        long j = (((duration.seconds * 1000000000) + duration.nanos) * i) + dateTime.nanoSeconds;
        if (j != 0) {
            if ((dateTime.mask & 112) == 0) {
                long j2 = j % 86400000000000L;
                if (j2 < 0) {
                    j2 += 86400000000000L;
                }
                j -= j2;
            }
            dateTime2.calendar.setTimeInMillis(((j / 1000000000) * 1000) + dateTime2.calendar.getTimeInMillis());
            dateTime2.nanoSeconds = (int) (j % 1000000000);
        }
        return dateTime2;
    }

    public static DateTime addMinutes(DateTime dateTime, int i) {
        return addSeconds(dateTime, i * 60);
    }

    public static DateTime addSeconds(DateTime dateTime, int i) {
        DateTime dateTime2 = new DateTime(dateTime.mask, (GregorianCalendar) dateTime.calendar.clone());
        long j = i * 1000000000;
        if (j != 0) {
            long j2 = dateTime.nanoSeconds + j;
            dateTime2.calendar.setTimeInMillis((j2 / 1000000) + dateTime.calendar.getTimeInMillis());
            dateTime2.nanoSeconds = (int) (j2 % 1000000);
        }
        return dateTime2;
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof Duration) {
            return add(this, (Duration) obj, i);
        }
        if ((obj instanceof DateTime) && i == -1) {
            return sub(this, (DateTime) obj);
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric addReversed(Numeric numeric, int i) {
        if ((numeric instanceof Duration) && i == 1) {
            return add(this, (Duration) numeric, i);
        }
        throw new IllegalArgumentException();
    }

    private static void append(int i, StringBuffer stringBuffer, int i2) {
        int length = stringBuffer.length();
        stringBuffer.append(i);
        int length2 = (i2 + length) - stringBuffer.length();
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            } else {
                stringBuffer.insert(length, '0');
            }
        }
    }

    public void toStringDate(StringBuffer stringBuffer) {
        int iComponents = components();
        if ((iComponents & 2) != 0) {
            int i = this.calendar.get(1);
            if (this.calendar.get(0) == 0 && i - 1 != 0) {
                stringBuffer.append('-');
            }
            append(i, stringBuffer, 4);
        } else {
            stringBuffer.append('-');
        }
        if ((iComponents & 12) != 0) {
            stringBuffer.append('-');
            if ((iComponents & 4) != 0) {
                append(getMonth(), stringBuffer, 2);
            }
            if ((iComponents & 8) != 0) {
                stringBuffer.append('-');
                append(getDay(), stringBuffer, 2);
            }
        }
    }

    public void toStringTime(StringBuffer stringBuffer) {
        append(getHours(), stringBuffer, 2);
        stringBuffer.append(':');
        append(getMinutes(), stringBuffer, 2);
        stringBuffer.append(':');
        append(getWholeSeconds(), stringBuffer, 2);
        Duration.appendNanoSeconds(this.nanoSeconds, stringBuffer);
    }

    public boolean isZoneUnspecified() {
        return (this.mask & 128) == 0;
    }

    public int getZoneMinutes() {
        return this.calendar.getTimeZone().getRawOffset() / 60000;
    }

    public static TimeZone minutesToTimeZone(int i) {
        if (i == 0) {
            return GMT;
        }
        StringBuffer stringBuffer = new StringBuffer("GMT");
        toStringZone(i, stringBuffer);
        return TimeZone.getTimeZone(stringBuffer.toString());
    }

    public void setTimeZone(TimeZone timeZone) {
        this.calendar.setTimeZone(timeZone);
    }

    public void toStringZone(StringBuffer stringBuffer) {
        if (isZoneUnspecified()) {
            return;
        }
        toStringZone(getZoneMinutes(), stringBuffer);
    }

    public static void toStringZone(int i, StringBuffer stringBuffer) {
        if (i == 0) {
            stringBuffer.append('Z');
            return;
        }
        if (i < 0) {
            stringBuffer.append('-');
            i = -i;
        } else {
            stringBuffer.append('+');
        }
        append(i / 60, stringBuffer, 2);
        stringBuffer.append(':');
        append(i % 60, stringBuffer, 2);
    }

    public void toString(StringBuffer stringBuffer) {
        int iComponents = components();
        boolean z = (iComponents & 14) != 0;
        boolean z2 = (iComponents & 112) != 0;
        if (z) {
            toStringDate(stringBuffer);
            if (z2) {
                stringBuffer.append('T');
            }
        }
        if (z2) {
            toStringTime(stringBuffer);
        }
        toStringZone(stringBuffer);
    }

    @Override // gnu.math.Numeric
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        toString(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // gnu.math.Numeric
    public boolean isExact() {
        return (this.mask & 112) == 0;
    }

    @Override // gnu.math.Numeric
    public boolean isZero() {
        throw new Error("DateTime.isZero not meaningful!");
    }

    @Override // gnu.math.Quantity
    public Unit unit() {
        return this.unit;
    }

    @Override // gnu.math.Quantity
    public Complex number() {
        throw new Error("number needs to be implemented!");
    }
}
