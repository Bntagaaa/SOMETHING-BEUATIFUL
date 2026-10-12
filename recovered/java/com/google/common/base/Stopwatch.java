package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.l;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

@GwtCompatible
/* loaded from: classes.dex */
public final class Stopwatch {

    /* renamed from: a, reason: collision with root package name */
    public final Ticker f3712a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3713b;
    public long c;
    public long d;

    public static Stopwatch createUnstarted() {
        return new Stopwatch();
    }

    public static Stopwatch createUnstarted(Ticker ticker) {
        return new Stopwatch(ticker);
    }

    public static Stopwatch createStarted() {
        return new Stopwatch().start();
    }

    public static Stopwatch createStarted(Ticker ticker) {
        return new Stopwatch(ticker).start();
    }

    public Stopwatch() {
        this.f3712a = Ticker.systemTicker();
    }

    public Stopwatch(Ticker ticker) {
        this.f3712a = (Ticker) Preconditions.checkNotNull(ticker, "ticker");
    }

    public boolean isRunning() {
        return this.f3713b;
    }

    @CanIgnoreReturnValue
    public Stopwatch start() {
        Preconditions.checkState(!this.f3713b, "This stopwatch is already running.");
        this.f3713b = true;
        this.d = this.f3712a.read();
        return this;
    }

    @CanIgnoreReturnValue
    public Stopwatch stop() {
        long j = this.f3712a.read();
        Preconditions.checkState(this.f3713b, "This stopwatch is already stopped.");
        this.f3713b = false;
        this.c = (j - this.d) + this.c;
        return this;
    }

    @CanIgnoreReturnValue
    public Stopwatch reset() {
        this.c = 0L;
        this.f3713b = false;
        return this;
    }

    public long elapsed(TimeUnit timeUnit) {
        return timeUnit.convert(this.f3713b ? (this.f3712a.read() - this.d) + this.c : this.c, TimeUnit.NANOSECONDS);
    }

    public String toString() {
        String str;
        long j = this.f3713b ? (this.f3712a.read() - this.d) + this.c : this.c;
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(j, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(j, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(j, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(j, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(j, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        double dConvert = j / timeUnit2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        l.b bVar = l.f3745a;
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(dConvert)));
        sb.append(" ");
        switch (a.f3714a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        sb.append(str);
        return sb.toString();
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3714a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f3714a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3714a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3714a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3714a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3714a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3714a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3714a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }
}
