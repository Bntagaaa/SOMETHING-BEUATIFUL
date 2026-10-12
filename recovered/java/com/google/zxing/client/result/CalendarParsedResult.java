package com.google.zxing.client.result;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class CalendarParsedResult extends ParsedResult {
    public static final Pattern m = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");
    public static final SimpleDateFormat n;
    public static final SimpleDateFormat o;

    /* renamed from: b, reason: collision with root package name */
    public final String f5143b;
    public final Date c;
    public final boolean d;
    public final Date e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5144g;
    public final String h;
    public final String[] i;
    public final String j;
    public final double k;
    public final double l;

    static {
        Locale locale = Locale.ENGLISH;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", locale);
        n = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        o = new SimpleDateFormat("yyyyMMdd'T'HHmmss", locale);
    }

    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String[] strArr, String str6, double d, double d2) {
        super(ParsedResultType.CALENDAR);
        this.f5143b = str;
        try {
            this.c = a(str2);
            this.e = str3 == null ? null : a(str3);
            int length = str2.length();
            boolean z = false;
            this.d = length == 8;
            if (str3 != null && str3.length() == 8) {
                z = true;
            }
            this.f = z;
            this.f5144g = str4;
            this.h = str5;
            this.i = strArr;
            this.j = str6;
            this.k = d;
            this.l = d2;
        } catch (ParseException e) {
            throw new IllegalArgumentException(e.toString());
        }
    }

    public String getSummary() {
        return this.f5143b;
    }

    public Date getStart() {
        return this.c;
    }

    public boolean isStartAllDay() {
        return this.d;
    }

    public Date getEnd() {
        return this.e;
    }

    public boolean isEndAllDay() {
        return this.f;
    }

    public String getLocation() {
        return this.f5144g;
    }

    public String getOrganizer() {
        return this.h;
    }

    public String[] getAttendees() {
        return this.i;
    }

    public String getDescription() {
        return this.j;
    }

    public double getLatitude() {
        return this.k;
    }

    public double getLongitude() {
        return this.l;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        String str;
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f5143b, sb);
        String str2 = null;
        Date date = this.c;
        if (date == null) {
            str = null;
        } else {
            str = (this.d ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(date);
        }
        ParsedResult.maybeAppend(str, sb);
        Date date2 = this.e;
        if (date2 != null) {
            str2 = (this.f ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(date2);
        }
        ParsedResult.maybeAppend(str2, sb);
        ParsedResult.maybeAppend(this.f5144g, sb);
        ParsedResult.maybeAppend(this.h, sb);
        ParsedResult.maybeAppend(this.i, sb);
        ParsedResult.maybeAppend(this.j, sb);
        return sb.toString();
    }

    public static Date a(String str) throws ParseException {
        if (!m.matcher(str).matches()) {
            throw new ParseException(str, 0);
        }
        if (str.length() == 8) {
            return n.parse(str);
        }
        int length = str.length();
        SimpleDateFormat simpleDateFormat = o;
        if (length == 16 && str.charAt(15) == 'Z') {
            Date date = simpleDateFormat.parse(str.substring(0, 15));
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            long time = date.getTime() + gregorianCalendar.get(15);
            gregorianCalendar.setTime(new Date(time));
            return new Date(time + gregorianCalendar.get(16));
        }
        return simpleDateFormat.parse(str);
    }
}
