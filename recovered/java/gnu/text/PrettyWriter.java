package gnu.text;

import gnu.bytecode.Access;
import gnu.lists.LList;
import gnu.mapping.ThreadLocation;
import java.io.IOException;
import java.io.Writer;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes2.dex */
public class PrettyWriter extends Writer {
    public static final int NEWLINE_FILL = 70;
    public static final int NEWLINE_LINEAR = 78;
    public static final int NEWLINE_LITERAL = 76;
    public static final int NEWLINE_MANDATORY = 82;
    public static final int NEWLINE_MISER = 77;
    public static final int NEWLINE_SPACE = 83;

    /* renamed from: a, reason: collision with root package name */
    public int f5495a;

    /* renamed from: b, reason: collision with root package name */
    public int f5496b;
    public char[] buffer;
    public int bufferFillPointer;
    public int c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f5497g;
    public int h;
    public char[] i;
    public char[] j;
    public int[] k;
    public String[] l;
    public int m;
    public int n;
    public int o;
    protected Writer out;
    public boolean p;
    public int pendingBlocksCount;
    public static ThreadLocation lineLengthLoc = new ThreadLocation("line-length");
    public static ThreadLocation miserWidthLoc = new ThreadLocation("miser-width");
    public static ThreadLocation indentLoc = new ThreadLocation("indent");
    public static int initialBufferSize = 126;

    public static int b(int i, int i2) {
        int i3 = i * 2;
        int i4 = i + ((i2 * 5) >> 2);
        return i3 > i4 ? i3 : i4;
    }

    public void lineAbbreviationHappened() {
    }

    public PrettyWriter(Writer writer) {
        this.f5495a = 80;
        this.f5496b = 40;
        int i = initialBufferSize;
        this.buffer = new char[i];
        this.f5497g = new int[60];
        this.h = 6;
        this.i = new char[i];
        this.j = new char[i];
        this.k = new int[KeyboardChangeListener.MIN_KEYBOARD_HEIGHT];
        this.l = new String[KeyboardChangeListener.MIN_KEYBOARD_HEIGHT];
        this.o = -1;
        this.out = writer;
        this.c = 1;
    }

    public PrettyWriter(Writer writer, int i) {
        this.f5495a = 80;
        this.f5496b = 40;
        int i2 = initialBufferSize;
        this.buffer = new char[i2];
        this.f5497g = new int[60];
        this.h = 6;
        this.i = new char[i2];
        this.j = new char[i2];
        this.k = new int[KeyboardChangeListener.MIN_KEYBOARD_HEIGHT];
        this.l = new String[KeyboardChangeListener.MIN_KEYBOARD_HEIGHT];
        this.o = -1;
        this.out = writer;
        this.f5495a = i;
        this.c = i <= 1 ? 0 : 1;
    }

    public PrettyWriter(Writer writer, boolean z) {
        this.f5495a = 80;
        this.f5496b = 40;
        int i = initialBufferSize;
        this.buffer = new char[i];
        this.f5497g = new int[60];
        this.h = 6;
        this.i = new char[i];
        this.j = new char[i];
        this.k = new int[KeyboardChangeListener.MIN_KEYBOARD_HEIGHT];
        this.l = new String[KeyboardChangeListener.MIN_KEYBOARD_HEIGHT];
        this.o = -1;
        this.out = writer;
        this.c = z ? 1 : 0;
    }

    public void setPrettyPrintingMode(int i) {
        this.c = i;
    }

    public int getPrettyPrintingMode() {
        return this.c;
    }

    public boolean isPrettyPrinting() {
        return this.c > 0;
    }

    public void setPrettyPrinting(boolean z) {
        this.c = !z ? 1 : 0;
    }

    public final int f() {
        return this.f5497g[this.h - 4];
    }

    public void writeWordEnd() {
        this.p = true;
    }

    public void writeWordStart() {
        if (this.p) {
            write(32);
        }
        this.p = false;
    }

    public void clearWordEnd() {
        this.p = false;
    }

    @Override // java.io.Writer
    public void write(int i) {
        this.p = false;
        if (i == 10 && this.c > 0) {
            enqueueNewline(76);
            return;
        }
        c(1);
        int i2 = this.bufferFillPointer;
        this.buffer[i2] = (char) i;
        this.bufferFillPointer = i2 + 1;
        if (i != 32 || this.c <= 1 || this.o >= 0) {
            return;
        }
        enqueueNewline(83);
    }

    @Override // java.io.Writer
    public void write(String str) {
        write(str, 0, str.length());
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        int i3;
        this.p = false;
        while (i2 > 0) {
            int iC = c(i2);
            if (i2 <= iC) {
                iC = i2;
            }
            int i4 = this.bufferFillPointer;
            i2 -= iC;
            while (true) {
                iC--;
                if (iC >= 0) {
                    int i5 = i + 1;
                    char cCharAt = str.charAt(i);
                    if (cCharAt == '\n' && this.c > 0) {
                        this.bufferFillPointer = i4;
                        enqueueNewline(76);
                        i3 = this.bufferFillPointer;
                    } else {
                        int i6 = i4 + 1;
                        this.buffer[i4] = cCharAt;
                        if (cCharAt != ' ' || this.c <= 1 || this.o >= 0) {
                            i4 = i6;
                            i = i5;
                        } else {
                            this.bufferFillPointer = i6;
                            enqueueNewline(83);
                            i3 = this.bufferFillPointer;
                        }
                    }
                    i4 = i3;
                    i = i5;
                }
            }
            this.bufferFillPointer = i4;
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        char c;
        this.p = false;
        int i3 = i + i2;
        while (i2 > 0) {
            for (int i4 = i; i4 < i3; i4++) {
                if (this.c > 0 && ((c = cArr[i4]) == '\n' || (c == ' ' && this.o < 0))) {
                    write(cArr, i, i4 - i);
                    write(c);
                    i = i4 + 1;
                    i2 = i3 - i;
                    break;
                }
            }
            do {
                int iC = c(i2);
                if (iC >= i2) {
                    iC = i2;
                }
                int i5 = this.bufferFillPointer;
                int i6 = i5 + iC;
                while (i5 < i6) {
                    this.buffer[i5] = cArr[i];
                    i5++;
                    i++;
                }
                this.bufferFillPointer = i6;
                i2 -= iC;
            } while (i2 != 0);
        }
    }

    public void setIndentation(int i) {
        char[] cArr = this.i;
        int length = cArr.length;
        int iF = f();
        int i2 = this.f5497g[this.h - 3];
        if (i2 > i) {
            i = i2;
        }
        if (i > length) {
            cArr = new char[b(length, i - length)];
            System.arraycopy(this.i, 0, cArr, 0, iF);
            this.i = cArr;
        }
        if (i > iF) {
            while (iF < i) {
                cArr[iF] = ' ';
                iF++;
            }
        }
        this.f5497g[this.h - 4] = i;
    }

    public int enqueue(int i, int i2) {
        int length = this.k.length;
        int i3 = (length - this.m) - this.n;
        if (i3 > 0 && i2 > i3) {
            enqueue(0, i3);
        }
        if (this.n + i2 > length) {
            int iB = b(length, i2);
            int[] iArr = new int[iB];
            String[] strArr = new String[iB];
            int i4 = (this.m + this.n) - length;
            if (i4 > 0) {
                System.arraycopy(this.k, 0, iArr, 0, i4);
                System.arraycopy(this.l, 0, strArr, 0, i4);
            }
            int i5 = this.m;
            int i6 = length - i5;
            int i7 = iB - length;
            System.arraycopy(this.k, i5, iArr, i5 + i7, i6);
            String[] strArr2 = this.l;
            int i8 = this.m;
            System.arraycopy(strArr2, i8, strArr, i8 + i7, i6);
            this.k = iArr;
            this.l = strArr;
            int i9 = this.o;
            int i10 = this.m;
            if (i9 >= i10) {
                this.o = i9 + i7;
            }
            this.m = i10 + i7;
        }
        int i11 = this.m;
        int i12 = this.n;
        int length2 = i11 + i12;
        int[] iArr2 = this.k;
        if (length2 >= iArr2.length) {
            length2 -= iArr2.length;
        }
        iArr2[length2] = i | (i2 << 16);
        if (i2 > 1) {
            iArr2[length2 + 1] = this.bufferFillPointer + this.d;
        }
        this.n = i12 + i2;
        return length2;
    }

    public void enqueueNewline(int i) {
        this.p = false;
        int i2 = this.pendingBlocksCount;
        int iEnqueue = enqueue(2, 5);
        int[] iArr = this.k;
        iArr[iEnqueue + 4] = i;
        iArr[iEnqueue + 2] = this.pendingBlocksCount;
        iArr[iEnqueue + 3] = 0;
        int i3 = this.m;
        int i4 = this.n;
        while (i4 > 0) {
            int[] iArr2 = this.k;
            if (i3 == iArr2.length) {
                i3 = 0;
            }
            if (i3 == iEnqueue) {
                break;
            }
            int i5 = iArr2[i3] & 255;
            if (i5 == 2 || i5 == 4) {
                int i6 = i3 + 3;
                if (iArr2[i6] == 0 && i2 <= iArr2[i3 + 2]) {
                    int length = iEnqueue - i3;
                    if (length < 0) {
                        length += iArr2.length;
                    }
                    iArr2[i6] = length;
                }
            }
            int i7 = iArr2[i3] >> 16;
            i4 -= i7;
            i3 += i7;
        }
        i(i == 76 || i == 82, false);
    }

    public final void writeBreak(int i) {
        if (this.c > 0) {
            enqueueNewline(i);
        }
    }

    public int enqueueIndent(char c, int i) {
        int iEnqueue = enqueue(3, 4);
        int[] iArr = this.k;
        iArr[iEnqueue + 2] = c;
        iArr[iEnqueue + 3] = i;
        return iEnqueue;
    }

    public void addIndentation(int i, boolean z) {
        if (this.c > 0) {
            enqueueIndent(z ? Access.CLASS_CONTEXT : 'B', i);
        }
    }

    public void startLogicalBlock(String str, boolean z, String str2) {
        int length;
        if (this.n == 0 && this.bufferFillPointer == 0) {
            Object obj = lineLengthLoc.get(null);
            if (obj == null) {
                this.f5495a = 80;
            } else {
                this.f5495a = Integer.parseInt(obj.toString());
            }
            Object obj2 = miserWidthLoc.get(null);
            if (obj2 == null || obj2 == Boolean.FALSE || obj2 == LList.Empty) {
                this.f5496b = -1;
            } else {
                this.f5496b = Integer.parseInt(obj2.toString());
            }
            indentLoc.get(null);
        }
        if (str != null) {
            write(str);
        }
        if (this.c == 0) {
            return;
        }
        int iEnqueue = enqueue(4, 7);
        int[] iArr = this.k;
        int i = this.pendingBlocksCount;
        iArr[iEnqueue + 2] = i;
        String[] strArr = this.l;
        int i2 = iEnqueue + 5;
        if (!z) {
            str = null;
        }
        strArr[i2] = str;
        strArr[iEnqueue + 6] = str2;
        this.pendingBlocksCount = i + 1;
        int i3 = this.o;
        if (i3 < 0) {
            length = 0;
        } else {
            length = i3 - iEnqueue;
            if (length > 0) {
                length -= iArr.length;
            }
        }
        iArr[iEnqueue + 4] = length;
        iArr[iEnqueue + 3] = 0;
        this.o = iEnqueue;
    }

    public void endLogicalBlock() {
        int iEnqueue = enqueue(5, 2);
        this.pendingBlocksCount--;
        int i = this.o;
        if (i < 0) {
            int[] iArr = this.f5497g;
            int i2 = this.h;
            int i3 = iArr[i2 - 5];
            int i4 = iArr[i2 - 11];
            if (i3 > i4) {
                char[] cArr = this.j;
                write(cArr, cArr.length - i3, i3 - i4);
            }
            this.o = -1;
            return;
        }
        int[] iArr2 = this.k;
        int i5 = i + 4;
        int i6 = iArr2[i5];
        if (i6 == 0) {
            this.o = -1;
        } else {
            int length = this.m - i;
            if (length > 0) {
                length -= iArr2.length;
            }
            if (i6 < length) {
                this.o = -1;
            } else {
                int length2 = i6 + i;
                if (length2 < 0) {
                    length2 += iArr2.length;
                }
                this.o = length2;
            }
        }
        String str = this.l[i + 6];
        if (str != null) {
            write(str);
        }
        int length3 = iEnqueue - i;
        if (length3 < 0) {
            length3 += this.k.length;
        }
        this.k[i5] = length3;
    }

    public void endLogicalBlock(String str) {
        if (this.c > 0) {
            endLogicalBlock();
        } else if (str != null) {
            write(str);
        }
    }

    public final int a(int i, int i2, int i3) {
        int i4;
        int[] iArr = this.k;
        int i5 = iArr[i + 2];
        boolean z = (i5 & 1) != 0;
        boolean z2 = (i5 & 2) != 0;
        if (!z) {
            i2 = 0;
        }
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        return z2 ? (i7 <= 1 || (i4 = (i3 + i6) % i7) == 0) ? i6 : i6 + i4 : i3 <= i6 + i2 ? (i2 + i3) - i3 : i7 - ((i3 - i2) % i7);
    }

    public final int g(int i) {
        int iA = this.e;
        int i2 = this.f5497g[this.h - 2];
        int i3 = this.d + i;
        int i4 = this.m;
        int i5 = this.n;
        while (i5 > 0) {
            int[] iArr = this.k;
            if (i4 >= iArr.length) {
                i4 = 0;
            }
            int i6 = iArr[i4] & 255;
            if (i6 != 0) {
                int i7 = iArr[i4 + 1];
                if (i7 >= i3) {
                    break;
                }
                if (i6 == 6) {
                    iA = a(i4, i2, (i7 - this.d) + iA) + iA;
                } else if (i6 == 2 || i6 == 4) {
                    i2 = (i7 - this.d) + iA;
                }
            }
            int i8 = this.k[i4] >> 16;
            i5 -= i8;
            i4 += i8;
        }
        return iA + i;
    }

    public final void d(int i) {
        char[] cArr;
        int i2;
        int i3 = this.e;
        int i4 = this.f5497g[this.h - 2];
        int i5 = this.m;
        int i6 = this.n;
        int i7 = 6;
        int i8 = this.pendingBlocksCount * 6;
        int i9 = 0;
        int i10 = 0;
        while (i6 > 0) {
            int[] iArr = this.k;
            if (i5 == iArr.length) {
                i5 = 0;
            }
            if (i5 == i) {
                break;
            }
            if ((iArr[i5] & 255) == i7) {
                int i11 = iArr[i5 + 1] - this.d;
                int iA = a(i5, i4, i3 + i11);
                if (iA != 0) {
                    int i12 = (i9 * 2) + i8;
                    int i13 = i12 + 1;
                    int[] iArr2 = this.f5497g;
                    if (i13 >= iArr2.length) {
                        int[] iArr3 = new int[iArr2.length * 2];
                        i2 = i3;
                        System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                        this.f5497g = iArr3;
                    } else {
                        i2 = i3;
                    }
                    int[] iArr4 = this.f5497g;
                    iArr4[i12] = i11;
                    iArr4[i13] = iA;
                    i9++;
                    i10 += iA;
                    i3 = i2 + iA;
                }
            } else {
                int i14 = i3;
                if (i5 == 2 || i5 == 4) {
                    i4 = (iArr[i5 + 1] - this.d) + i14;
                }
                i3 = i14;
            }
            int i15 = this.k[i5] >> 16;
            i6 -= i15;
            i5 += i15;
            i7 = 6;
        }
        if (i9 > 0) {
            int i16 = this.bufferFillPointer;
            int i17 = i16 + i10;
            char[] cArr2 = this.buffer;
            if (i17 > cArr2.length) {
                cArr = new char[b(i16, i10)];
                this.buffer = cArr;
            } else {
                cArr = cArr2;
            }
            this.bufferFillPointer = i17;
            this.d -= i10;
            while (true) {
                i9--;
                if (i9 < 0) {
                    break;
                }
                int[] iArr5 = this.f5497g;
                int i18 = (i9 * 2) + i8;
                int i19 = iArr5[i18];
                int i20 = iArr5[i18 + 1];
                int i21 = i19 + i10;
                System.arraycopy(cArr2, i19, cArr, i21, i16 - i19);
                for (int i22 = i21 - i20; i22 < i21; i22++) {
                    cArr[i22] = ' ';
                }
                i10 -= i20;
                i16 = i19;
            }
            if (cArr != cArr2) {
                System.arraycopy(cArr2, 0, cArr, 0, i16);
            }
        }
    }

    public final int c(int i) throws IOException {
        char[] cArr = this.buffer;
        int length = cArr.length;
        int i2 = this.bufferFillPointer;
        int i3 = length - i2;
        if (i3 > 0) {
            return i3;
        }
        if (this.c > 0 && i2 > this.f5495a) {
            if (!i(false, false)) {
                k();
            }
            return c(i);
        }
        int iB = b(length, i);
        char[] cArr2 = new char[iB];
        this.buffer = cArr2;
        int i4 = i2;
        while (true) {
            i4--;
            if (i4 < 0) {
                return iB - i2;
            }
            cArr2[i4] = cArr[i4];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a A[PHI: r17
      0x015a: PHI (r17v4 int) = (r17v0 int), (r17v0 int), (r17v1 int), (r17v0 int) binds: [B:65:0x0165, B:67:0x0171, B:81:0x0195, B:61:0x0158] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.PrettyWriter.i(boolean, boolean):boolean");
    }

    public int getMiserWidth() {
        return this.f5496b;
    }

    public final boolean h() {
        int miserWidth = getMiserWidth();
        return miserWidth > 0 && this.f5495a - this.f5497g[this.h + (-1)] <= miserWidth;
    }

    public final int e(int i, boolean z) {
        int i2 = this.f5495a;
        return i >= 0 ? g(this.k[i + 1] - this.d) <= i2 ? 1 : -1 : (!z && g(this.bufferFillPointer) <= i2) ? 0 : -1;
    }

    public final void j(int i) throws IOException {
        int i2;
        int iF;
        char[] cArr;
        char[] cArr2 = this.buffer;
        int[] iArr = this.k;
        boolean z = iArr[i + 4] == 76;
        int i3 = iArr[i + 1] - this.d;
        if (z) {
            i2 = i3;
        } else {
            i2 = i3;
            while (true) {
                int i4 = i2 - 1;
                if (i4 < 0) {
                    i2 = 0;
                    break;
                } else if (cArr2[i4] != ' ') {
                    break;
                } else {
                    i2 = i4;
                }
            }
        }
        this.out.write(cArr2, 0, i2);
        int i5 = this.f + 1;
        this.f = i5;
        this.out.write(10);
        this.e = 0;
        int i6 = this.bufferFillPointer;
        if (z) {
            iF = this.f5497g[this.h - 3];
        } else {
            iF = f();
        }
        int i7 = i3 - iF;
        int i8 = i6 - i7;
        int length = cArr2.length;
        if (i8 > length) {
            cArr = new char[b(length, i8 - length)];
            this.buffer = cArr;
        } else {
            cArr = cArr2;
        }
        System.arraycopy(cArr2, i3, cArr, iF, i6 - i3);
        System.arraycopy(this.i, 0, cArr, 0, iF);
        this.bufferFillPointer = i8;
        this.d += i7;
        if (z) {
            return;
        }
        int[] iArr2 = this.f5497g;
        int i9 = this.h;
        iArr2[i9 - 2] = iF;
        iArr2[i9 - 6] = i5;
    }

    public final void k() throws IOException {
        int i;
        int i2 = this.m;
        while (true) {
            i = this.n;
            if (i <= 0) {
                break;
            }
            int[] iArr = this.k;
            int i3 = iArr[i2];
            if ((i3 & 255) != 0) {
                break;
            }
            int i4 = i3 >> 16;
            this.n = i - i4;
            i2 += i4;
            if (i2 == iArr.length) {
                i2 = 0;
            }
            this.m = i2;
        }
        int i5 = this.bufferFillPointer;
        int i6 = i > 0 ? this.k[i2 + 1] - this.d : i5;
        int i7 = i5 - i6;
        if (i6 <= 0) {
            throw new Error("outputPartialLine called when nothing can be output.");
        }
        try {
            this.out.write(this.buffer, 0, i6);
            this.bufferFillPointer = i6;
            this.e = getColumnNumber();
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i6, cArr, 0, i7);
            this.bufferFillPointer = i7;
            this.d += i6;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void forcePrettyOutput() throws IOException {
        i(false, true);
        if (this.bufferFillPointer > 0) {
            k();
        }
        d(-1);
        this.e = getColumnNumber();
        this.out.write(this.buffer, 0, this.bufferFillPointer);
        this.bufferFillPointer = 0;
        this.n = 0;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        if (this.out == null) {
            return;
        }
        try {
            forcePrettyOutput();
            this.out.flush();
        } catch (IOException e) {
            throw new RuntimeException(e.toString());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.out != null) {
            forcePrettyOutput();
            this.out.close();
            this.out = null;
        }
        this.buffer = null;
    }

    public void closeThis() throws IOException {
        if (this.out != null) {
            forcePrettyOutput();
            this.out = null;
        }
        this.buffer = null;
    }

    public int getColumnNumber() {
        int i = this.bufferFillPointer;
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return this.e + this.bufferFillPointer;
            }
            char c = this.buffer[i2];
            if (c == '\n' || c == '\r') {
                break;
            }
            i = i2;
        }
        return this.bufferFillPointer - i;
    }

    public void setColumnNumber(int i) {
        this.e = (i - getColumnNumber()) + this.e;
    }

    public void clearBuffer() {
        this.e = 0;
        this.bufferFillPointer = 0;
        this.f = 0;
        this.d = 0;
        this.h = 6;
        this.m = 0;
        this.n = 0;
        this.pendingBlocksCount = 0;
    }
}
