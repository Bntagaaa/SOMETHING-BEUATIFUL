package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
class i extends ViewGroup implements f {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f2288g = 0;

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f2289a;

    /* renamed from: b, reason: collision with root package name */
    public View f2290b;
    public final View c;
    public int d;
    public Matrix e;
    public final ViewTreeObserver.OnPreDrawListener f;

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            View view;
            i iVar = i.this;
            ViewCompat.postInvalidateOnAnimation(iVar);
            ViewGroup viewGroup = iVar.f2289a;
            if (viewGroup == null || (view = iVar.f2290b) == null) {
                return true;
            }
            viewGroup.endViewTransition(view);
            ViewCompat.postInvalidateOnAnimation(iVar.f2289a);
            iVar.f2289a = null;
            iVar.f2290b = null;
            return true;
        }
    }

    public i(View view) {
        super(view.getContext());
        this.f = new a();
        this.c = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    @Override // android.view.View, androidx.transition.f
    public void setVisibility(int i) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super.setVisibility(i);
        int i2 = R.id.ghost_view;
        View view = this.c;
        if (((i) view.getTag(i2)) == this) {
            f0.c(view, i == 0 ? 4 : 0);
        }
    }

    @Override // androidx.transition.f
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
        this.f2289a = viewGroup;
        this.f2290b = view;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super.onAttachedToWindow();
        int i = R.id.ghost_view;
        View view = this.c;
        view.setTag(i, this);
        view.getViewTreeObserver().addOnPreDrawListener(this.f);
        f0.c(view, 4);
        if (view.getParent() != null) {
            ((View) view.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        View view = this.c;
        view.getViewTreeObserver().removeOnPreDrawListener(this.f);
        f0.c(view, 0);
        view.setTag(R.id.ghost_view, null);
        if (view.getParent() != null) {
            ((View) view.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b.a(canvas, true);
        canvas.setMatrix(this.e);
        View view = this.c;
        f0.c(view, 0);
        view.invalidate();
        f0.c(view, 4);
        drawChild(canvas, view, getDrawingTime());
        b.a(canvas, false);
    }
}
