package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
class a extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final ActionBarContainer f456a;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public a(ActionBarContainer actionBarContainer) {
        this.f456a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f456a;
        if (actionBarContainer.h) {
            Drawable drawable = actionBarContainer.f283g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = actionBarContainer.f;
        if (drawable3 == null || !actionBarContainer.i) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        ActionBarContainer actionBarContainer = this.f456a;
        if (actionBarContainer.h) {
            if (actionBarContainer.f283g != null) {
                C0003a.getOutline(actionBarContainer.e, outline);
            }
        } else {
            Drawable drawable = actionBarContainer.e;
            if (drawable != null) {
                C0003a.getOutline(drawable, outline);
            }
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    public static class C0003a {
        private C0003a() {
        }

        public static void getOutline(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }
    }
}
