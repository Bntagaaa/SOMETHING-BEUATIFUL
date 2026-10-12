package gnu.xquery.util;

import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XTimeType;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.DateTime;
import gnu.math.Duration;
import gnu.math.IntNum;
import gnu.xml.TextUtils;
import java.io.Externalizable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class TimeUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f5537a = new ThreadLocal();

    public static DateTime c(Object obj, String str) {
        if (XTimeType.dateTimeType.isInstance(obj)) {
            return (DateTime) obj;
        }
        if ((obj instanceof KNode) || (obj instanceof UntypedAtomic)) {
            return XTimeType.parseDateTime(TextUtils.stringValue(obj), 126);
        }
        throw new WrongType(str, 1, obj, "xs:dateTime");
    }

    public static DateTime b(Object obj, String str) {
        if (XTimeType.dateType.isInstance(obj)) {
            return (DateTime) obj;
        }
        if ((obj instanceof KNode) || (obj instanceof UntypedAtomic)) {
            return XTimeType.parseDateTime(TextUtils.stringValue(obj), 14);
        }
        throw new WrongType(str, 1, obj, "xs:date");
    }

    public static DateTime e(Object obj, String str) {
        if (XTimeType.timeType.isInstance(obj)) {
            return (DateTime) obj;
        }
        if ((obj instanceof KNode) || (obj instanceof UntypedAtomic)) {
            return XTimeType.parseDateTime(TextUtils.stringValue(obj), 112);
        }
        throw new WrongType(str, 1, obj, "xs:time");
    }

    public static Duration d(Object obj, String str) {
        if (obj instanceof Duration) {
            return (Duration) obj;
        }
        throw new WrongType(str, 1, obj, "xs:duration");
    }

    public static Externalizable g(DateTime dateTime) {
        if (dateTime.isZoneUnspecified()) {
            return Values.empty;
        }
        return Duration.makeMinutes(dateTime.getZoneMinutes());
    }

    public static Object yearFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(c(obj, "year-from-dateTime").getYear());
    }

    public static Object monthFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(c(obj, "month-from-dateTime").getMonth());
    }

    public static Object dayFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(c(obj, "day-from-dateTime").getDay());
    }

    public static Object hoursFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(c(obj, "hours-from-dateTime").getHours());
    }

    public static Object minutesFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(c(obj, "minutes-from-dateTime").getMinutes());
    }

    public static Number f(DateTime dateTime) {
        int secondsOnly = dateTime.getSecondsOnly();
        long nanoSecondsOnly = dateTime.getNanoSecondsOnly();
        if (nanoSecondsOnly == 0) {
            return IntNum.make(secondsOnly);
        }
        return new BigDecimal(BigInteger.valueOf((secondsOnly * 1000000000) + nanoSecondsOnly), 9);
    }

    public static Object secondsFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : f(c(obj, "seconds-from-dateTime"));
    }

    public static Object timezoneFromDateTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : g(c(obj, "timezone-from-datetime"));
    }

    public static Object yearFromDate(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(b(obj, "year-from-date").getYear());
    }

    public static Object monthFromDate(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(b(obj, "month-from-date").getMonth());
    }

    public static Object dayFromDate(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(b(obj, "day-from-date").getDay());
    }

    public static Object timezoneFromDate(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : g(b(obj, "timezone-from-date"));
    }

    public static Object hoursFromTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(e(obj, "hours-from-time").getHours());
    }

    public static Object minutesFromTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(e(obj, "minutes-from-time").getMinutes());
    }

    public static Object secondsFromTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : f(e(obj, "seconds-from-time"));
    }

    public static Object timezoneFromTime(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : g(e(obj, "timezone-from-time"));
    }

    public static Object yearsFromDuration(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(d(obj, "years-from-duration").getYears());
    }

    public static Object monthsFromDuration(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(d(obj, "months-from-duration").getMonths());
    }

    public static Object daysFromDuration(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(d(obj, "days-from-duration").getDays());
    }

    public static Object hoursFromDuration(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(d(obj, "hours-from-duration").getHours());
    }

    public static Object minutesFromDuration(Object obj) {
        return (obj == null || obj == Values.empty) ? obj : IntNum.make(d(obj, "minutes-from-duration").getMinutes());
    }

    public static BigDecimal secondsBigDecimalFromDuration(long j, int i) {
        if (i == 0) {
            return BigDecimal.valueOf(j);
        }
        boolean z = ((long) ((int) j)) != j;
        long j2 = z ? i : (1000000000 * j) + i;
        int i2 = 9;
        while (j2 % 10 == 0) {
            j2 /= 10;
            i2--;
        }
        BigDecimal bigDecimal = new BigDecimal(BigInteger.valueOf(j2), i2);
        return z ? BigDecimal.valueOf(j).add(bigDecimal) : bigDecimal;
    }

    public static Object secondsFromDuration(Object obj) {
        if (obj == null || obj == Values.empty) {
            return obj;
        }
        Duration durationD = d(obj, "seconds-from-duration");
        int secondsOnly = durationD.getSecondsOnly();
        int nanoSecondsOnly = durationD.getNanoSecondsOnly();
        if (nanoSecondsOnly == 0) {
            return IntNum.make(secondsOnly);
        }
        return secondsBigDecimalFromDuration(secondsOnly, nanoSecondsOnly);
    }

    public static Duration getImplicitTimezone() {
        return Duration.makeMinutes(TimeZone.getDefault().getRawOffset() / 60000);
    }

    public static Object adjustDateTimeToTimezone(Object obj) {
        return adjustDateTimeToTimezone(obj, getImplicitTimezone());
    }

    public static Object adjustDateTimeToTimezone(Object obj, Object obj2) {
        return (obj == Values.empty || obj == null) ? obj : a(c(obj, "adjust-dateTime-to-timezone"), obj2);
    }

    public static Object adjustDateToTimezone(Object obj) {
        return adjustDateToTimezone(obj, getImplicitTimezone());
    }

    public static Object adjustDateToTimezone(Object obj, Object obj2) {
        return (obj == Values.empty || obj == null) ? obj : a(b(obj, "adjust-date-to-timezone"), obj2);
    }

    public static Object adjustTimeToTimezone(Object obj) {
        return adjustTimeToTimezone(obj, getImplicitTimezone());
    }

    public static Object adjustTimeToTimezone(Object obj, Object obj2) {
        return (obj == Values.empty || obj == null) ? obj : a(e(obj, "adjust-time-to-timezone"), obj2);
    }

    public static DateTime a(DateTime dateTime, Object obj) {
        if (obj == Values.empty || obj == null) {
            return dateTime.withZoneUnspecified();
        }
        Duration duration = (Duration) obj;
        if (duration.getNanoSecondsOnly() != 0 || duration.getSecondsOnly() != 0) {
            throw new IllegalArgumentException("timezone offset with fractional minute");
        }
        int totalMinutes = (int) duration.getTotalMinutes();
        if (totalMinutes < -840 || totalMinutes > 840) {
            throw new IllegalArgumentException("timezone offset out of range");
        }
        return dateTime.adjustTimezone(totalMinutes);
    }

    public static DateTime now() {
        return XTimeType.dateTimeType.now();
    }

    public static Object dateTime(Object obj, Object obj2) {
        Values values;
        if (obj == null || obj == (values = Values.empty)) {
            return obj;
        }
        if (obj2 == null || obj2 == values) {
            return obj2;
        }
        DateTime dateTimeB = b(obj, "dateTime");
        DateTime dateTimeE = e(obj2, "dateTime");
        StringBuffer stringBuffer = new StringBuffer();
        dateTimeB.toStringDate(stringBuffer);
        stringBuffer.append('T');
        dateTimeE.toStringTime(stringBuffer);
        boolean zIsZoneUnspecified = dateTimeB.isZoneUnspecified();
        boolean zIsZoneUnspecified2 = dateTimeE.isZoneUnspecified();
        if (!zIsZoneUnspecified || !zIsZoneUnspecified2) {
            int zoneMinutes = dateTimeB.getZoneMinutes();
            int zoneMinutes2 = dateTimeE.getZoneMinutes();
            if (!zIsZoneUnspecified && !zIsZoneUnspecified2 && zoneMinutes != zoneMinutes2) {
                throw new Error("dateTime: incompatible timezone in arguments");
            }
            if (zIsZoneUnspecified) {
                zoneMinutes = zoneMinutes2;
            }
            DateTime.toStringZone(zoneMinutes, stringBuffer);
        }
        return (DateTime) XTimeType.dateTimeType.valueOf(stringBuffer.toString());
    }

    public static DateTime currentDateTime() {
        ThreadLocal threadLocal = f5537a;
        DateTime dateTime = (DateTime) threadLocal.get();
        if (dateTime != null) {
            return dateTime;
        }
        DateTime dateTimeNow = now();
        threadLocal.set(dateTimeNow);
        return dateTimeNow;
    }

    public static DateTime currentDate() {
        return currentDateTime().cast(14);
    }

    public static DateTime currentTime() {
        return currentDateTime().cast(112);
    }

    public static Object implicitTimezone() {
        return g(currentDateTime());
    }
}
