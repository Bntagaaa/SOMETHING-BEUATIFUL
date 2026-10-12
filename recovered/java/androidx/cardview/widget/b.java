package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class b implements e {
    @Override // androidx.cardview.widget.e
    public void initStatic() {
    }

    @Override // androidx.cardview.widget.e
    public void initialize(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        dVar.setCardBackground(new f(f, colorStateList));
        View cardView = dVar.getCardView();
        cardView.setClipToOutline(true);
        cardView.setElevation(f2);
        setMaxElevation(dVar, f3);
    }

    @Override // androidx.cardview.widget.e
    public float getMinWidth(d dVar) {
        return getRadius(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public float getMinHeight(d dVar) {
        return getRadius(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public void setElevation(d dVar, float f) {
        dVar.getCardView().setElevation(f);
    }

    @Override // androidx.cardview.widget.e
    public float getElevation(d dVar) {
        return dVar.getCardView().getElevation();
    }

    @Override // androidx.cardview.widget.e
    public void updatePadding(d dVar) {
        if (!dVar.getUseCompatPadding()) {
            dVar.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(dVar);
        float radius = getRadius(dVar);
        int iCeil = (int) Math.ceil(g.a(maxElevation, radius, dVar.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(g.b(maxElevation, radius, dVar.getPreventCornerOverlap()));
        dVar.setShadowPadding(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // androidx.cardview.widget.e
    public void onCompatPaddingChanged(d dVar) {
        setMaxElevation(dVar, getMaxElevation(dVar));
    }

    @Override // androidx.cardview.widget.e
    public void onPreventCornerOverlapChanged(d dVar) {
        setMaxElevation(dVar, getMaxElevation(dVar));
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList getBackgroundColor(d dVar) {
        return ((f) dVar.getCardBackground()).getColor();
    }

    @Override // androidx.cardview.widget.e
    public float getMaxElevation(d dVar) {
        return ((f) dVar.getCardBackground()).e;
    }

    @Override // androidx.cardview.widget.e
    public float getRadius(d dVar) {
        return ((f) dVar.getCardBackground()).getRadius();
    }

    @Override // androidx.cardview.widget.e
    public void setBackgroundColor(d dVar, @Nullable ColorStateList colorStateList) {
        ((f) dVar.getCardBackground()).setColor(colorStateList);
    }

    @Override // androidx.cardview.widget.e
    public void setMaxElevation(d dVar, float f) {
        f fVar = (f) dVar.getCardBackground();
        boolean useCompatPadding = dVar.getUseCompatPadding();
        boolean preventCornerOverlap = dVar.getPreventCornerOverlap();
        if (f != fVar.e || fVar.f != useCompatPadding || fVar.f538g != preventCornerOverlap) {
            fVar.e = f;
            fVar.f = useCompatPadding;
            fVar.f538g = preventCornerOverlap;
            fVar.b(null);
            fVar.invalidateSelf();
        }
        updatePadding(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void setRadius(d dVar, float f) {
        f fVar = (f) dVar.getCardBackground();
        if (f == fVar.f536a) {
            return;
        }
        fVar.f536a = f;
        fVar.b(null);
        fVar.invalidateSelf();
    }
}
