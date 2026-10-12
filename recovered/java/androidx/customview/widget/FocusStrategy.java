package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
class FocusStrategy {

    public interface BoundsAdapter<T> {
        void obtainBounds(T t, Rect rect);
    }

    public interface CollectionAdapter<T, V> {
        V get(T t, int i);

        int size(T t);
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, int i, boolean z, boolean z2) {
        int size = collectionAdapter.size(l);
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(collectionAdapter.get(l, i2));
        }
        Collections.sort(arrayList, new a(z, boundsAdapter));
        if (i == 1) {
            int size2 = arrayList.size();
            int iIndexOf = (t == null ? size2 : arrayList.indexOf(t)) - 1;
            if (iIndexOf >= 0) {
                return (T) arrayList.get(iIndexOf);
            }
            if (!z2 || size2 <= 0) {
                return null;
            }
            return (T) arrayList.get(size2 - 1);
        }
        if (i != 2) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
        int size3 = arrayList.size();
        int iLastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (iLastIndexOf < size3) {
            return (T) arrayList.get(iLastIndexOf);
        }
        if (!z2 || size3 <= 0) {
            return null;
        }
        return (T) arrayList.get(0);
    }

    public static class a<T> implements Comparator<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f1457a = new Rect();

        /* renamed from: b, reason: collision with root package name */
        public final Rect f1458b = new Rect();
        public final boolean c;
        public final BoundsAdapter d;

        public a(boolean z, BoundsAdapter boundsAdapter) {
            this.c = z;
            this.d = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            BoundsAdapter boundsAdapter = this.d;
            Rect rect = this.f1457a;
            boundsAdapter.obtainBounds(t, rect);
            Rect rect2 = this.f1458b;
            boundsAdapter.obtainBounds(t2, rect2);
            int i = rect.top;
            int i2 = rect2.top;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i3 = rect.left;
            int i4 = rect2.left;
            boolean z = this.c;
            if (i3 < i4) {
                return z ? 1 : -1;
            }
            if (i3 > i4) {
                return z ? -1 : 1;
            }
            int i5 = rect.bottom;
            int i6 = rect2.bottom;
            if (i5 < i6) {
                return -1;
            }
            if (i5 > i6) {
                return 1;
            }
            int i7 = rect.right;
            int i8 = rect2.right;
            if (i7 < i8) {
                return z ? 1 : -1;
            }
            if (i7 > i8) {
                return z ? -1 : 1;
            }
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <L, T> T findNextFocusInAbsoluteDirection(@androidx.annotation.NonNull L r10, @androidx.annotation.NonNull androidx.customview.widget.FocusStrategy.CollectionAdapter<L, T> r11, @androidx.annotation.NonNull androidx.customview.widget.FocusStrategy.BoundsAdapter<T> r12, @androidx.annotation.Nullable T r13, @androidx.annotation.NonNull android.graphics.Rect r14, int r15) {
        /*
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>(r14)
            r1 = 17
            r2 = 0
            if (r15 == r1) goto L3e
            r1 = 33
            if (r15 == r1) goto L34
            r1 = 66
            if (r15 == r1) goto L29
            r1 = 130(0x82, float:1.82E-43)
            if (r15 != r1) goto L21
            int r1 = r14.height()
            int r1 = r1 + 1
            int r1 = -r1
            r0.offset(r2, r1)
            goto L47
        L21:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r10.<init>(r11)
            throw r10
        L29:
            int r1 = r14.width()
            int r1 = r1 + 1
            int r1 = -r1
            r0.offset(r1, r2)
            goto L47
        L34:
            int r1 = r14.height()
            int r1 = r1 + 1
            r0.offset(r2, r1)
            goto L47
        L3e:
            int r1 = r14.width()
            int r1 = r1 + 1
            r0.offset(r1, r2)
        L47:
            int r1 = r11.size(r10)
            android.graphics.Rect r3 = new android.graphics.Rect
            r3.<init>()
            r4 = 0
        L51:
            if (r2 >= r1) goto La0
            java.lang.Object r5 = r11.get(r10, r2)
            if (r5 != r13) goto L5a
            goto L9d
        L5a:
            r12.obtainBounds(r5, r3)
            boolean r6 = c(r15, r14, r3)
            if (r6 != 0) goto L64
            goto L9d
        L64:
            boolean r6 = c(r15, r14, r0)
            if (r6 != 0) goto L6b
            goto L99
        L6b:
            boolean r6 = a(r15, r14, r3, r0)
            if (r6 == 0) goto L72
            goto L99
        L72:
            boolean r6 = a(r15, r14, r0, r3)
            if (r6 == 0) goto L79
            goto L9d
        L79:
            int r6 = d(r15, r14, r3)
            int r7 = e(r15, r14, r3)
            int r8 = r6 * 13
            int r8 = r8 * r6
            int r7 = r7 * r7
            int r7 = r7 + r8
            int r6 = d(r15, r14, r0)
            int r8 = e(r15, r14, r0)
            int r9 = r6 * 13
            int r9 = r9 * r6
            int r8 = r8 * r8
            int r8 = r8 + r9
            if (r7 >= r8) goto L9d
        L99:
            r0.set(r3)
            r4 = r5
        L9d:
            int r2 = r2 + 1
            goto L51
        La0:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.FocusStrategy.findNextFocusInAbsoluteDirection(java.lang.Object, androidx.customview.widget.FocusStrategy$CollectionAdapter, androidx.customview.widget.FocusStrategy$BoundsAdapter, java.lang.Object, android.graphics.Rect, int):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(int r8, android.graphics.Rect r9, android.graphics.Rect r10, android.graphics.Rect r11) {
        /*
            boolean r0 = b(r8, r9, r10)
            boolean r1 = b(r8, r9, r11)
            if (r1 != 0) goto L75
            if (r0 != 0) goto Le
            goto L75
        Le:
            java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r1 = 130(0x82, float:1.82E-43)
            r2 = 33
            r3 = 66
            r4 = 17
            r5 = 1
            if (r8 == r4) goto L3c
            if (r8 == r2) goto L35
            if (r8 == r3) goto L2e
            if (r8 != r1) goto L28
            int r6 = r9.bottom
            int r7 = r11.top
            if (r6 > r7) goto L74
            goto L42
        L28:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            r8.<init>(r0)
            throw r8
        L2e:
            int r6 = r9.right
            int r7 = r11.left
            if (r6 > r7) goto L74
            goto L42
        L35:
            int r6 = r9.top
            int r7 = r11.bottom
            if (r6 < r7) goto L74
            goto L42
        L3c:
            int r6 = r9.left
            int r7 = r11.right
            if (r6 < r7) goto L74
        L42:
            if (r8 == r4) goto L74
            if (r8 != r3) goto L47
            goto L74
        L47:
            int r10 = d(r8, r9, r10)
            if (r8 == r4) goto L69
            if (r8 == r2) goto L64
            if (r8 == r3) goto L5f
            if (r8 != r1) goto L59
            int r8 = r11.bottom
            int r9 = r9.bottom
        L57:
            int r8 = r8 - r9
            goto L6e
        L59:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            r8.<init>(r0)
            throw r8
        L5f:
            int r8 = r11.right
            int r9 = r9.right
            goto L57
        L64:
            int r8 = r9.top
            int r9 = r11.top
            goto L57
        L69:
            int r8 = r9.left
            int r9 = r11.left
            goto L57
        L6e:
            int r8 = java.lang.Math.max(r5, r8)
            if (r10 >= r8) goto L75
        L74:
            return r5
        L75:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.FocusStrategy.a(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    public static boolean c(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            return (i2 > i3 || rect.left >= i3) && rect.left > rect2.left;
        }
        if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            return (i4 > i5 || rect.top >= i5) && rect.top > rect2.top;
        }
        if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            return (i6 < i7 || rect.right <= i7) && rect.right < rect2.right;
        }
        if (i == 130) {
            int i8 = rect.top;
            int i9 = rect2.top;
            return (i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    public static boolean b(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static int d(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else if (i == 130) {
            i2 = rect2.top;
            i3 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return Math.max(0, i2 - i3);
    }

    public static int e(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    private FocusStrategy() {
    }
}
