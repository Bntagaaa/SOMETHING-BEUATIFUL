package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.R;

/* loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {
    public final ImageFilterView.c d;
    public float e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f767g;
    public Path h;
    public ViewOutlineProvider i;
    public RectF j;
    public Drawable[] k;
    public LayerDrawable l;
    public boolean m;

    public ImageFilterButton(Context context) {
        super(context);
        this.d = new ImageFilterView.c();
        this.e = 0.0f;
        this.f = 0.0f;
        this.f767g = Float.NaN;
        this.m = true;
        setPadding(0, 0, 0, 0);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new ImageFilterView.c();
        this.e = 0.0f;
        this.f = 0.0f;
        this.f767g = Float.NaN;
        this.m = true;
        a(attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new ImageFilterView.c();
        this.e = 0.0f;
        this.f = 0.0f;
        this.f767g = Float.NaN;
        this.m = true;
        a(attributeSet);
    }

    public final void a(AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ImageFilterView_crossfade) {
                    this.e = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_overlay) {
                    this.m = typedArrayObtainStyledAttributes.getBoolean(index, this.m);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.k = drawableArr;
                drawableArr[0] = getDrawable();
                this.k[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.k);
                this.l = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.e * 255.0f));
                super.setImageDrawable(this.l);
            }
        }
    }

    public void setSaturation(float f) {
        ImageFilterView.c cVar = this.d;
        cVar.e = f;
        cVar.a(this);
    }

    public float getSaturation() {
        return this.d.e;
    }

    public void setContrast(float f) {
        ImageFilterView.c cVar = this.d;
        cVar.f = f;
        cVar.a(this);
    }

    public float getContrast() {
        return this.d.f;
    }

    public void setWarmth(float f) {
        ImageFilterView.c cVar = this.d;
        cVar.f775g = f;
        cVar.a(this);
    }

    public float getWarmth() {
        return this.d.f775g;
    }

    public void setCrossfade(float f) {
        this.e = f;
        if (this.k != null) {
            if (!this.m) {
                this.l.getDrawable(0).setAlpha((int) ((1.0f - this.e) * 255.0f));
            }
            this.l.getDrawable(1).setAlpha((int) (this.e * 255.0f));
            super.setImageDrawable(this.l);
        }
    }

    public float getCrossfade() {
        return this.e;
    }

    public void setBrightness(float f) {
        ImageFilterView.c cVar = this.d;
        cVar.d = f;
        cVar.a(this);
    }

    @RequiresApi(21)
    public void setRoundPercent(float f) {
        boolean z = this.f != f;
        this.f = f;
        if (f != 0.0f) {
            if (this.h == null) {
                this.h = new Path();
            }
            if (this.j == null) {
                this.j = new RectF();
            }
            if (this.i == null) {
                a aVar = new a();
                this.i = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f) / 2.0f;
            this.j.set(0.0f, 0.0f, width, height);
            this.h.reset();
            this.h.addRoundRect(this.j, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            ImageFilterButton imageFilterButton = ImageFilterButton.this;
            outline.setRoundRect(0, 0, imageFilterButton.getWidth(), imageFilterButton.getHeight(), (Math.min(r3, r4) * imageFilterButton.f) / 2.0f);
        }
    }

    @RequiresApi(21)
    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f767g = f;
            float f2 = this.f;
            this.f = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f767g != f;
        this.f767g = f;
        if (f != 0.0f) {
            if (this.h == null) {
                this.h = new Path();
            }
            if (this.j == null) {
                this.j = new RectF();
            }
            if (this.i == null) {
                b bVar = new b();
                this.i = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.j.set(0.0f, 0.0f, getWidth(), getHeight());
            this.h.reset();
            Path path = this.h;
            RectF rectF = this.j;
            float f3 = this.f767g;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public class b extends ViewOutlineProvider {
        public b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            ImageFilterButton imageFilterButton = ImageFilterButton.this;
            outline.setRoundRect(0, 0, imageFilterButton.getWidth(), imageFilterButton.getHeight(), imageFilterButton.f767g);
        }
    }

    public float getRoundPercent() {
        return this.f;
    }

    public float getRound() {
        return this.f767g;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }
}
