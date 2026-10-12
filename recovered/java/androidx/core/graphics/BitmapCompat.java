package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes.dex */
public final class BitmapCompat {
    @VisibleForTesting
    public static int sizeAtStep(int i, int i2, int i3, int i4) {
        return i3 == 0 ? i2 : i3 > 0 ? i * (1 << (i4 - i3)) : i2 << ((-i3) - 1);
    }

    public static boolean hasMipMap(@NonNull Bitmap bitmap) {
        return a.a(bitmap);
    }

    public static void setHasMipMap(@NonNull Bitmap bitmap, boolean z) {
        a.b(bitmap, z);
    }

    public static int getAllocationByteCount(@NonNull Bitmap bitmap) {
        return b.a(bitmap);
    }

    @NonNull
    public static Bitmap createScaledBitmap(@NonNull Bitmap bitmap, int i, int i2, @Nullable Rect rect, boolean z) {
        int i3;
        float f;
        double dFloor;
        double dFloor2;
        Bitmap bitmapCreateBitmap;
        int i4;
        int i5;
        boolean z2;
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("dstW and dstH must be > 0!");
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            throw new IllegalArgumentException("srcRect must be contained by srcBm!");
        }
        int i6 = Build.VERSION.SDK_INT;
        Bitmap bitmapA = i6 >= 27 ? c.a(bitmap) : bitmap;
        int iWidth = rect != null ? rect.width() : bitmap.getWidth();
        int iHeight = rect != null ? rect.height() : bitmap.getHeight();
        float f2 = i / iWidth;
        float f3 = i2 / iHeight;
        int i7 = rect != null ? rect.left : 0;
        int i8 = rect != null ? rect.top : 0;
        if (i7 == 0 && i8 == 0 && i == bitmap.getWidth() && i2 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == bitmapA) ? bitmap.copy(bitmap.getConfig(), true) : bitmapA;
        }
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        if (i6 >= 29) {
            d.a(paint);
        } else {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        if (iWidth == i && iHeight == i2) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i, i2, bitmapA.getConfig());
            new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapA, -i7, -i8, paint);
            return bitmapCreateBitmap2;
        }
        double dLog = Math.log(2.0d);
        if (f2 > 1.0f) {
            i3 = i7;
            f = 1.0f;
            dFloor = Math.ceil(Math.log(f2) / dLog);
        } else {
            i3 = i7;
            f = 1.0f;
            dFloor = Math.floor(Math.log(f2) / dLog);
        }
        int i9 = (int) dFloor;
        if (f3 > f) {
            dFloor2 = Math.ceil(Math.log(f3) / dLog);
        } else {
            dFloor2 = Math.floor(Math.log(f3) / dLog);
        }
        int i10 = (int) dFloor2;
        if (!z || i6 < 27 || c.c(bitmap)) {
            bitmapCreateBitmap = null;
            i4 = i3;
            i5 = 0;
        } else {
            Bitmap bitmapB = c.b(i9 > 0 ? sizeAtStep(iWidth, i, 1, i9) : iWidth, i10 > 0 ? sizeAtStep(iHeight, i2, 1, i10) : iHeight, bitmap, true);
            new Canvas(bitmapB).drawBitmap(bitmapA, -i3, -i8, paint);
            Bitmap bitmap2 = bitmapA;
            bitmapA = bitmapB;
            bitmapCreateBitmap = bitmap2;
            i8 = 0;
            i5 = 1;
            i4 = 0;
        }
        Rect rect2 = new Rect(i4, i8, iWidth, iHeight);
        Rect rect3 = new Rect();
        int i11 = i9;
        int i12 = i10;
        while (true) {
            if (i11 == 0 && i12 == 0) {
                break;
            }
            if (i11 < 0) {
                i11++;
            } else if (i11 > 0) {
                i11--;
            }
            if (i12 < 0) {
                i12++;
            } else if (i12 > 0) {
                i12--;
            }
            int i13 = i12;
            int i14 = i5;
            int i15 = i11;
            rect3.set(0, 0, sizeAtStep(iWidth, i, i11, i9), sizeAtStep(iHeight, i2, i13, i10));
            boolean z3 = i15 == 0 && i13 == 0;
            boolean z4 = bitmapCreateBitmap != null && bitmapCreateBitmap.getWidth() == i && bitmapCreateBitmap.getHeight() == i2;
            if (bitmapCreateBitmap == null || bitmapCreateBitmap == bitmap) {
                z2 = z3;
            } else {
                if (z) {
                    z2 = z3;
                    if (Build.VERSION.SDK_INT < 27 || c.c(bitmapCreateBitmap)) {
                    }
                    new Canvas(bitmapCreateBitmap).drawBitmap(bitmapA, rect2, rect3, paint);
                    rect2.set(rect3);
                    Bitmap bitmap3 = bitmapA;
                    bitmapA = bitmapCreateBitmap;
                    bitmapCreateBitmap = bitmap3;
                    i12 = i13;
                    i5 = i14;
                    i11 = i15;
                } else {
                    z2 = z3;
                }
                if (!z2 || (z4 && i14 == 0)) {
                }
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmapA, rect2, rect3, paint);
                rect2.set(rect3);
                Bitmap bitmap32 = bitmapA;
                bitmapA = bitmapCreateBitmap;
                bitmapCreateBitmap = bitmap32;
                i12 = i13;
                i5 = i14;
                i11 = i15;
            }
            if (bitmapCreateBitmap != bitmap && bitmapCreateBitmap != null) {
                bitmapCreateBitmap.recycle();
            }
            int iSizeAtStep = sizeAtStep(iWidth, i, i15 > 0 ? i14 : i15, i9);
            int iSizeAtStep2 = sizeAtStep(iHeight, i2, i13 > 0 ? i14 : i13, i10);
            if (Build.VERSION.SDK_INT >= 27) {
                bitmapCreateBitmap = c.b(iSizeAtStep, iSizeAtStep2, bitmap, z && !z2);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(iSizeAtStep, iSizeAtStep2, bitmapA.getConfig());
            }
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapA, rect2, rect3, paint);
            rect2.set(rect3);
            Bitmap bitmap322 = bitmapA;
            bitmapA = bitmapCreateBitmap;
            bitmapCreateBitmap = bitmap322;
            i12 = i13;
            i5 = i14;
            i11 = i15;
        }
        if (bitmapCreateBitmap != bitmap && bitmapCreateBitmap != null) {
            bitmapCreateBitmap.recycle();
        }
        return bitmapA;
    }

    private BitmapCompat() {
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static boolean a(Bitmap bitmap) {
            return bitmap.hasMipMap();
        }

        @DoNotInline
        public static void b(Bitmap bitmap, boolean z) {
            bitmap.setHasMipMap(z);
        }
    }

    @RequiresApi(19)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static int a(Bitmap bitmap) {
            return bitmap.getAllocationByteCount();
        }
    }

    @RequiresApi(27)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static Bitmap b(int i, int i2, Bitmap bitmap, boolean z) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = e.a(bitmap);
                }
            }
            return Bitmap.createBitmap(i, i2, config, bitmap.hasAlpha(), colorSpace);
        }

        @DoNotInline
        public static boolean c(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }

        @DoNotInline
        public static Bitmap a(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config configA = Bitmap.Config.ARGB_8888;
            if (Build.VERSION.SDK_INT >= 31) {
                configA = e.a(bitmap);
            }
            return bitmap.copy(configA, true);
        }
    }

    @RequiresApi(29)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static void a(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    @RequiresApi(31)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static Bitmap.Config a(Bitmap bitmap) {
            if (bitmap.getHardwareBuffer().getFormat() == 22) {
                return Bitmap.Config.RGBA_F16;
            }
            return Bitmap.Config.ARGB_8888;
        }
    }
}
