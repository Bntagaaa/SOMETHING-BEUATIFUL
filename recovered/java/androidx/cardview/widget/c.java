package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.cardview.widget.g;

/* loaded from: classes.dex */
class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f534a = new RectF();

    @Override // androidx.cardview.widget.e
    public void onCompatPaddingChanged(d dVar) {
    }

    public class a implements g.a {
        public a() {
        }

        @Override // androidx.cardview.widget.g.a
        public void drawRoundRect(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float fWidth = (rectF.width() - f2) - 1.0f;
            float fHeight = (rectF.height() - f2) - 1.0f;
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                c cVar = c.this;
                float f4 = -f3;
                cVar.f534a.set(f4, f4, f3, f3);
                int iSave = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(cVar.f534a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(cVar.f534a, 180.0f, 90.0f, true, paint);
                canvas.translate(fHeight, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(cVar.f534a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(cVar.f534a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(iSave);
                float f5 = (rectF.left + f3) - 1.0f;
                float f6 = rectF.top;
                canvas.drawRect(f5, f6, (rectF.right - f3) + 1.0f, f6 + f3, paint);
                float f7 = (rectF.left + f3) - 1.0f;
                float f8 = rectF.bottom;
                canvas.drawRect(f7, f8 - f3, (rectF.right - f3) + 1.0f, f8, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
        }
    }

    @Override // androidx.cardview.widget.e
    public void initStatic() {
        g.r = new a();
    }

    @Override // androidx.cardview.widget.e
    public void initialize(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        g gVar = new g(context.getResources(), colorStateList, f, f2, f3);
        gVar.o = dVar.getPreventCornerOverlap();
        gVar.invalidateSelf();
        dVar.setCardBackground(gVar);
        updatePadding(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void updatePadding(d dVar) {
        Rect rect = new Rect();
        ((g) dVar.getCardBackground()).getPadding(rect);
        dVar.setMinWidthHeightInternal((int) Math.ceil(getMinWidth(dVar)), (int) Math.ceil(getMinHeight(dVar)));
        dVar.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList getBackgroundColor(d dVar) {
        return ((g) dVar.getCardBackground()).k;
    }

    @Override // androidx.cardview.widget.e
    public float getElevation(d dVar) {
        return ((g) dVar.getCardBackground()).j;
    }

    @Override // androidx.cardview.widget.e
    public float getMaxElevation(d dVar) {
        return ((g) dVar.getCardBackground()).h;
    }

    @Override // androidx.cardview.widget.e
    public float getMinHeight(d dVar) {
        g gVar = (g) dVar.getCardBackground();
        float f = gVar.h;
        float f2 = gVar.f;
        float f3 = gVar.f539a;
        return (((gVar.h * 1.5f) + f3) * 2.0f) + (Math.max(f, ((f * 1.5f) / 2.0f) + f2 + f3) * 2.0f);
    }

    @Override // androidx.cardview.widget.e
    public float getMinWidth(d dVar) {
        g gVar = (g) dVar.getCardBackground();
        float f = gVar.h;
        float f2 = gVar.f;
        float f3 = gVar.f539a;
        return ((gVar.h + f3) * 2.0f) + (Math.max(f, (f / 2.0f) + f2 + f3) * 2.0f);
    }

    @Override // androidx.cardview.widget.e
    public float getRadius(d dVar) {
        return ((g) dVar.getCardBackground()).f;
    }

    @Override // androidx.cardview.widget.e
    public void onPreventCornerOverlapChanged(d dVar) {
        g gVar = (g) dVar.getCardBackground();
        gVar.o = dVar.getPreventCornerOverlap();
        gVar.invalidateSelf();
        updatePadding(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void setBackgroundColor(d dVar, @Nullable ColorStateList colorStateList) {
        g gVar = (g) dVar.getCardBackground();
        if (colorStateList == null) {
            gVar.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        gVar.k = colorStateList;
        gVar.f540b.setColor(colorStateList.getColorForState(gVar.getState(), gVar.k.getDefaultColor()));
        gVar.invalidateSelf();
    }

    @Override // androidx.cardview.widget.e
    public void setElevation(d dVar, float f) {
        g gVar = (g) dVar.getCardBackground();
        gVar.c(f, gVar.h);
    }

    @Override // androidx.cardview.widget.e
    public void setMaxElevation(d dVar, float f) {
        g gVar = (g) dVar.getCardBackground();
        gVar.c(gVar.j, f);
        updatePadding(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void setRadius(d dVar, float f) {
        g gVar = (g) dVar.getCardBackground();
        if (f < 0.0f) {
            gVar.getClass();
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (gVar.f != f2) {
            gVar.f = f2;
            gVar.l = true;
            gVar.invalidateSelf();
        }
        updatePadding(dVar);
    }
}
