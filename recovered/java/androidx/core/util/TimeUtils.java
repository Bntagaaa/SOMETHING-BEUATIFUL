package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TimeUtils {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;

    /* renamed from: a, reason: collision with root package name */
    public static final Object f1262a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static char[] f1263b = new char[24];

    public static int a(int i, int i2, int i3, boolean z) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    public static int c(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        if (!z && i <= 0) {
            return i2;
        }
        if ((!z || i3 < 3) && i <= 99) {
            i4 = i2;
        } else {
            int i5 = i / 100;
            cArr[i2] = (char) (i5 + 48);
            i4 = i2 + 1;
            i -= i5 * 100;
        }
        if ((z && i3 >= 2) || i > 9 || i2 != i4) {
            int i6 = i / 10;
            cArr[i4] = (char) (i6 + 48);
            i4++;
            i -= i6 * 10;
        }
        cArr[i4] = (char) (i + 48);
        cArr[i4 + 1] = c;
        return i4 + 2;
    }

    public static int b(int i, long j) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        long j2 = j;
        if (f1263b.length < i) {
            f1263b = new char[i];
        }
        char[] cArr = f1263b;
        if (j2 == 0) {
            int i6 = i - 1;
            while (i6 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j2 > 0) {
            c = '+';
        } else {
            j2 = -j2;
            c = '-';
        }
        int i7 = (int) (j2 % 1000);
        int iFloor = (int) Math.floor(j2 / 1000);
        if (iFloor > 86400) {
            i2 = iFloor / 86400;
            iFloor -= 86400 * i2;
        } else {
            i2 = 0;
        }
        if (iFloor > 3600) {
            i3 = iFloor / 3600;
            iFloor -= i3 * 3600;
        } else {
            i3 = 0;
        }
        if (iFloor > 60) {
            int i8 = iFloor / 60;
            iFloor -= i8 * 60;
            i4 = i8;
        } else {
            i4 = 0;
        }
        if (i != 0) {
            int iA = a(i2, 1, 0, false);
            int iA2 = a(i3, 1, 2, iA > 0) + iA;
            int iA3 = a(i4, 1, 2, iA2 > 0) + iA2;
            int iA4 = a(iFloor, 1, 2, iA3 > 0) + iA3;
            i5 = 0;
            for (int iA5 = a(i7, 2, iA4 > 0 ? 3 : 0, true) + 1 + iA4; iA5 < i; iA5++) {
                cArr[i5] = ' ';
                i5++;
            }
        } else {
            i5 = 0;
        }
        cArr[i5] = c;
        int i9 = i5 + 1;
        boolean z = i != 0;
        int iC = c(cArr, i2, 'd', i9, false, 0);
        int iC2 = c(cArr, i3, 'h', iC, iC != i9, z ? 2 : 0);
        int iC3 = c(cArr, i4, 'm', iC2, iC2 != i9, z ? 2 : 0);
        int iC4 = c(cArr, iFloor, 's', iC3, iC3 != i9, z ? 2 : 0);
        int iC5 = c(cArr, i7, 'm', iC4, true, (!z || iC4 == i9) ? 0 : 3);
        cArr[iC5] = 's';
        return iC5 + 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (f1262a) {
            sb.append(f1263b, 0, b(0, j));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (f1262a) {
            printWriter.print(new String(f1263b, 0, b(i, j)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    private TimeUtils() {
    }
}
