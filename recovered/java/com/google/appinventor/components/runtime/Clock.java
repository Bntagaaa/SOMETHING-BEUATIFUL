package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.Dates;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.TimerInternal;
import java.util.Calendar;
import java.util.GregorianCalendar;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "<p>Non-visible component that provides the instant in time using the internal clock on the phone. It can fire a timer at regularly set intervals and perform time calculations, manipulations, and conversions.</p> <p>Methods to convert an instant to text are also available. Acceptable patterns are empty string, MM/DD/YYYY HH:mm:ss a, or MMM d, yyyyHH:mm. The empty string will provide the default format, which is \"MMM d, yyyy HH:mm:ss a\" for FormatDateTime \"MMM d, yyyy\" for FormatDate. To see all possible format, please see <a href=\"https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html\" _target=\"_blank\">here</a>. </p> ", iconName = "images/clock.png", nonVisible = true, version = 4)
@SimpleObject
/* loaded from: classes.dex */
public class Clock extends AndroidNonvisibleComponent implements Component, AlarmHandler, OnStopListener, OnResumeListener, OnDestroyListener, Deleteable {
    private static final boolean DEFAULT_ENABLED = true;
    private static final int DEFAULT_INTERVAL = 1000;
    private boolean onScreen;
    private boolean timerAlwaysFires;
    private TimerInternal timerInternal;

    public Clock(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.timerAlwaysFires = true;
        this.onScreen = false;
        this.timerInternal = new TimerInternal(this, true, 1000);
        this.form.registerForOnResume(this);
        this.form.registerForOnStop(this);
        this.form.registerForOnDestroy(this);
        if (this.form instanceof ReplForm) {
            this.onScreen = true;
        }
    }

    public Clock() {
        super(null);
        this.timerAlwaysFires = true;
        this.onScreen = false;
    }

    @SimpleEvent(description = "The Timer event runs when the timer has gone off.")
    public void Timer() {
        if (this.timerAlwaysFires || this.onScreen) {
            EventDispatcher.dispatchEvent(this, "Timer", new Object[0]);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Interval between timer events in ms")
    public int TimerInterval() {
        return this.timerInternal.Interval();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1000", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void TimerInterval(int i) {
        this.timerInternal.Interval(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Fires timer if true")
    public boolean TimerEnabled() {
        return this.timerInternal.Enabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TimerEnabled(boolean z) {
        this.timerInternal.Enabled(z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Will fire even when application is not showing on the screen if true")
    public boolean TimerAlwaysFires() {
        return this.timerAlwaysFires;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TimerAlwaysFires(boolean z) {
        this.timerAlwaysFires = z;
    }

    @Override // com.google.appinventor.components.runtime.AlarmHandler
    public void alarm() {
        Timer();
    }

    @SimpleFunction(description = "Returns the phone's internal time.")
    public static long SystemTime() {
        return Dates.Timer();
    }

    @SimpleFunction(description = "Returns the current instant in time read from phone's clock.")
    public static Calendar Now() {
        return Dates.Now();
    }

    @SimpleFunction(description = "Returns an instant in time specified by MM/dd/YYYY hh:mm:ss or MM/dd/YYYY or hh:mm.")
    public static Calendar MakeInstant(String str) {
        try {
            return Dates.DateValue(str);
        } catch (IllegalArgumentException unused) {
            throw new YailRuntimeError("Argument to MakeInstant should have form MM/dd/YYYY hh:mm:ss, or MM/dd/YYYY or hh:mm", "Sorry to be so picky.");
        }
    }

    @SimpleFunction(description = "Returns an instant in time specified by year, month, date in UTC.\nValid values for the month field are 1-12 and 1-31 for the day field.")
    public Calendar MakeDate(int i, int i2, int i3) {
        try {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(i, i2 - 1, i3);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.getTime();
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "MakeDate", ErrorMessages.ERROR_ILLEGAL_DATE, new Object[0]);
        }
        return Dates.DateInstant(i, i2, i3);
    }

    @SimpleFunction(description = "Returns an instant in time specified by hour, minute, second in UTC.")
    public Calendar MakeTime(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        try {
            gregorianCalendar.set(11, i);
            gregorianCalendar.set(12, i2);
            gregorianCalendar.set(13, i3);
            return gregorianCalendar;
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "MakeTime", ErrorMessages.ERROR_ILLEGAL_DATE, new Object[0]);
            return gregorianCalendar;
        }
    }

    @SimpleFunction(description = "Returns an instant in time specified by year, month, date, hour, minute, second in UTC.")
    public Calendar MakeInstantFromParts(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(i, i2 - 1, i3);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.getTime();
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "MakeInstantFromParts", ErrorMessages.ERROR_ILLEGAL_DATE, new Object[0]);
        }
        Calendar calendarDateInstant = Dates.DateInstant(i, i2, i3);
        try {
            calendarDateInstant.set(11, i4);
            calendarDateInstant.set(12, i5);
            calendarDateInstant.set(13, i6);
        } catch (IllegalArgumentException unused2) {
            this.form.dispatchErrorOccurredEvent(this, "MakeInstantFromParts", ErrorMessages.ERROR_ILLEGAL_DATE, new Object[0]);
        }
        return calendarDateInstant;
    }

    @SimpleFunction(description = "Returns an instant in time specified by the milliseconds since 1970 in UTC.")
    public static Calendar MakeInstantFromMillis(long j) {
        Calendar calendarNow = Dates.Now();
        calendarNow.setTimeInMillis(j);
        return calendarNow;
    }

    @SimpleFunction(description = "Returns the instant in time measured as milliseconds since 1970.")
    public static long GetMillis(Calendar calendar) {
        return calendar.getTimeInMillis();
    }

    @SimpleFunction(description = "Returns an instant in time some duration after the argument")
    public static Calendar AddDuration(Calendar calendar, long j) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAddInMillis(calendar2, j);
        return calendar2;
    }

    @SimpleFunction(description = "Returns an instant in time some seconds after the given instant.")
    public static Calendar AddSeconds(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 13, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns an instant in time some minutes after the given instant.")
    public static Calendar AddMinutes(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 12, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns an instant in time some hours after the given instant.")
    public static Calendar AddHours(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 11, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns an instant in time some days after the given instant.")
    public static Calendar AddDays(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 5, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns An instant in time some weeks after the given instant.")
    public static Calendar AddWeeks(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 3, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns an instant in time some months after the given instant.")
    public static Calendar AddMonths(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 2, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns an instant in time some years after the given instant.")
    public static Calendar AddYears(Calendar calendar, int i) {
        Calendar calendar2 = (Calendar) calendar.clone();
        Dates.DateAdd(calendar2, 1, i);
        return calendar2;
    }

    @SimpleFunction(description = "Returns duration, which is milliseconds elapsed between instants.")
    public static long Duration(Calendar calendar, Calendar calendar2) {
        return calendar2.getTimeInMillis() - calendar.getTimeInMillis();
    }

    @SimpleFunction(description = "Converts the duration to the number of seconds.")
    public static long DurationToSeconds(long j) {
        return Dates.ConvertDuration(j, 13);
    }

    @SimpleFunction(description = "Converts the duration to the number of minutes.")
    public static long DurationToMinutes(long j) {
        return Dates.ConvertDuration(j, 12);
    }

    @SimpleFunction(description = "Converts the duration to the number of hours.")
    public static long DurationToHours(long j) {
        return Dates.ConvertDuration(j, 11);
    }

    @SimpleFunction(description = "Converts the duration to the number of days.")
    public static long DurationToDays(long j) {
        return Dates.ConvertDuration(j, 5);
    }

    @SimpleFunction(description = "Converts the duration to the number of weeks.")
    public static long DurationToWeeks(long j) {
        return Dates.ConvertDuration(j, 3);
    }

    @SimpleFunction(description = "Returns the second of the minute (0-59) from the instant.")
    public static int Second(Calendar calendar) {
        return Dates.Second(calendar);
    }

    @SimpleFunction(description = "Returns the minute of the hour (0-59) from the instant.")
    public static int Minute(Calendar calendar) {
        return Dates.Minute(calendar);
    }

    @SimpleFunction(description = "Returns the hour of the day (0-23) from the instant.")
    public static int Hour(Calendar calendar) {
        return Dates.Hour(calendar);
    }

    @SimpleFunction(description = "Returns the day of the month (1-31) from the instant.")
    public static int DayOfMonth(Calendar calendar) {
        return Dates.Day(calendar);
    }

    @SimpleFunction(description = "Returns the day of the week represented as a number from 1 (Sunday) to 7 (Saturday).")
    public static int Weekday(Calendar calendar) {
        return Dates.Weekday(calendar);
    }

    @SimpleFunction(description = "Returns the name of the day of the week from the instant.")
    public static String WeekdayName(Calendar calendar) {
        return Dates.WeekdayName(calendar);
    }

    @SimpleFunction(description = "Returns the month of the year represented as a number from 1 to 12).")
    public static int Month(Calendar calendar) {
        return Dates.Month(calendar) + 1;
    }

    @SimpleFunction(description = "Returns the name of the month from the instant, e.g., January, February, March...")
    public static String MonthName(Calendar calendar) {
        return Dates.MonthName(calendar);
    }

    @SimpleFunction(description = "The year")
    public static int Year(Calendar calendar) {
        return Dates.Year(calendar);
    }

    @SimpleFunction(description = "Returns text representing the date and time of an instant in the specified pattern")
    public static String FormatDateTime(Calendar calendar, String str) {
        try {
            return Dates.FormatDateTime(calendar, str);
        } catch (IllegalArgumentException unused) {
            throw new YailRuntimeError("Illegal argument for pattern in Clock.FormatDateTime. Acceptable values are empty string, MM/dd/YYYY hh:mm:ss a, MMM d, yyyy HH:mm For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html", "Sorry to be so picky.");
        }
    }

    @SimpleFunction(description = "Text representing the date of an instant in the specified pattern")
    public static String FormatDate(Calendar calendar, String str) {
        try {
            return Dates.FormatDate(calendar, str);
        } catch (IllegalArgumentException unused) {
            throw new YailRuntimeError("Illegal argument for pattern in Clock.FormatDate. Acceptable values are empty string, MM/dd/YYYY, or MMM d, yyyy. For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html", "Sorry to be so picky.");
        }
    }

    @SimpleFunction(description = "Text representing the time of an instant")
    public static String FormatTime(Calendar calendar) {
        return Dates.FormatTime(calendar);
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        this.onScreen = false;
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        this.onScreen = true;
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        this.timerInternal.Enabled(false);
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.timerInternal.Enabled(false);
    }
}
