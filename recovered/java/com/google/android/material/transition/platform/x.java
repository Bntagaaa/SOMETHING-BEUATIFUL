package com.google.android.material.transition.platform;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.shape.CornerSize;

@RequiresApi(21)
/* loaded from: classes.dex */
class x {

    /* renamed from: a, reason: collision with root package name */
    public static final RectF f3494a = new RectF();

    public interface a {
        void run(Canvas canvas);
    }

    public interface b {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    private x() {
    }

    public static float c(float f, float f2, float f3) {
        return _COROUTINE.a.a(f2, f, f3, f);
    }

    public static float d(float f, float f2, float f3, float f4, float f5, boolean z) {
        if (!z || (f5 >= 0.0f && f5 <= 1.0f)) {
            return f5 < f3 ? f : f5 > f4 ? f2 : c(f, f2, (f5 - f3) / (f4 - f3));
        }
        return c(f, f2, f5);
    }

    public static int e(int i, int i2, float f, float f2, float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) c(i, i2, (f3 - f) / (f2 - f));
    }

    public static View a(int i, View view) throws Resources.NotFoundException {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(_COROUTINE.a.z(resourceName, " is not a valid ancestor"));
    }

    public static RectF b(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    public static void f(Canvas canvas, Rect rect, float f, float f2, float f3, int i, a aVar) {
        if (i <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            RectF rectF = f3494a;
            rectF.set(rect);
            canvas.saveLayerAlpha(rectF, i);
        }
        aVar.run(canvas);
        canvas.restoreToCount(iSave);
    }
}
