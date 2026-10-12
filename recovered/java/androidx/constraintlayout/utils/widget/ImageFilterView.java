package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R;

/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {
    public final c d;
    public boolean e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f770g;
    public float h;
    public Path i;
    public ViewOutlineProvider j;
    public RectF k;
    public Drawable[] l;
    public LayerDrawable m;

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final float[] f773a = new float[20];

        /* renamed from: b, reason: collision with root package name */
        public final ColorMatrix f774b = new ColorMatrix();
        public final ColorMatrix c = new ColorMatrix();
        public float d = 1.0f;
        public float e = 1.0f;
        public float f = 1.0f;

        /* renamed from: g, reason: collision with root package name */
        public float f775g = 1.0f;

        public final void a(ImageView imageView) {
            boolean z;
            char c;
            char c2;
            float f;
            char c3;
            char c4;
            char c5;
            char c6;
            float f2;
            float fLog;
            float fPow;
            float f3;
            float fLog2;
            ColorMatrix colorMatrix = this.f774b;
            colorMatrix.reset();
            float f4 = this.e;
            float[] fArr = this.f773a;
            boolean z2 = true;
            if (f4 != 1.0f) {
                float f5 = 1.0f - f4;
                float f6 = 0.2999f * f5;
                float f7 = 0.587f * f5;
                float f8 = f5 * 0.114f;
                fArr[0] = f6 + f4;
                fArr[1] = f7;
                fArr[2] = f8;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = f6;
                fArr[6] = f7 + f4;
                fArr[7] = f8;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[10] = f6;
                fArr[11] = f7;
                fArr[12] = f8 + f4;
                fArr[13] = 0.0f;
                fArr[14] = 0.0f;
                fArr[15] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                fArr[18] = 1.0f;
                fArr[19] = 0.0f;
                colorMatrix.set(fArr);
                z = true;
            } else {
                z = false;
            }
            float f9 = this.f;
            ColorMatrix colorMatrix2 = this.c;
            if (f9 != 1.0f) {
                colorMatrix2.setScale(f9, f9, f9, 1.0f);
                colorMatrix.postConcat(colorMatrix2);
                z = true;
            }
            float f10 = this.f775g;
            if (f10 != 1.0f) {
                if (f10 <= 0.0f) {
                    f10 = 0.01f;
                }
                float f11 = (5000.0f / f10) / 100.0f;
                f = 1.0f;
                if (f11 > 66.0f) {
                    f2 = 161.11957f;
                    c3 = 15;
                    c4 = 14;
                    double d = f11 - 60.0f;
                    c = '\r';
                    c5 = '\f';
                    fPow = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
                    c6 = '\n';
                    fLog = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
                } else {
                    c = '\r';
                    c3 = 15;
                    f2 = 161.11957f;
                    c4 = 14;
                    c5 = '\f';
                    c6 = '\n';
                    fLog = (((float) Math.log(f11)) * 99.4708f) - 161.11957f;
                    fPow = 255.0f;
                }
                if (f11 >= 66.0f) {
                    c2 = 11;
                    f3 = 138.51773f;
                    fLog2 = 255.0f;
                } else if (f11 > 19.0f) {
                    c2 = 11;
                    f3 = 138.51773f;
                    fLog2 = (((float) Math.log(f11 - 10.0f)) * 138.51773f) - 305.0448f;
                } else {
                    c2 = 11;
                    f3 = 138.51773f;
                    fLog2 = 0.0f;
                }
                float fMin = Math.min(255.0f, Math.max(fPow, 0.0f));
                float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
                float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
                float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - f2;
                float fLog4 = (((float) Math.log(40.0f)) * f3) - 305.0448f;
                float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
                float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
                float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
                fArr[0] = fMin / fMin4;
                fArr[1] = 0.0f;
                fArr[2] = 0.0f;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = 0.0f;
                fArr[6] = fMin2 / fMin5;
                fArr[7] = 0.0f;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[c6] = 0.0f;
                fArr[c2] = 0.0f;
                fArr[c5] = fMin6;
                fArr[c] = 0.0f;
                fArr[c4] = 0.0f;
                fArr[c3] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                fArr[18] = 1.0f;
                fArr[19] = 0.0f;
                colorMatrix2.set(fArr);
                colorMatrix.postConcat(colorMatrix2);
                z = true;
            } else {
                c = '\r';
                c2 = 11;
                f = 1.0f;
                c3 = 15;
                c4 = 14;
                c5 = '\f';
                c6 = '\n';
            }
            float f12 = this.d;
            if (f12 != f) {
                fArr[0] = f12;
                fArr[1] = 0.0f;
                fArr[2] = 0.0f;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = 0.0f;
                fArr[6] = f12;
                fArr[7] = 0.0f;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[c6] = 0.0f;
                fArr[c2] = 0.0f;
                fArr[c5] = f12;
                fArr[c] = 0.0f;
                fArr[c4] = 0.0f;
                fArr[c3] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                fArr[18] = f;
                fArr[19] = 0.0f;
                colorMatrix2.set(fArr);
                colorMatrix.postConcat(colorMatrix2);
            } else {
                z2 = z;
            }
            if (z2) {
                imageView.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.d = new c();
        this.e = true;
        this.f = 0.0f;
        this.f770g = 0.0f;
        this.h = Float.NaN;
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new c();
        this.e = true;
        this.f = 0.0f;
        this.f770g = 0.0f;
        this.h = Float.NaN;
        a(attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new c();
        this.e = true;
        this.f = 0.0f;
        this.f770g = 0.0f;
        this.h = Float.NaN;
        a(attributeSet);
    }

    public final void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ImageFilterView_crossfade) {
                    this.f = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
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
                    this.e = typedArrayObtainStyledAttributes.getBoolean(index, this.e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.l = drawableArr;
                drawableArr[0] = getDrawable();
                this.l[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.l);
                this.m = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f * 255.0f));
                super.setImageDrawable(this.m);
            }
        }
    }

    public void setSaturation(float f) {
        c cVar = this.d;
        cVar.e = f;
        cVar.a(this);
    }

    public float getSaturation() {
        return this.d.e;
    }

    public void setContrast(float f) {
        c cVar = this.d;
        cVar.f = f;
        cVar.a(this);
    }

    public float getContrast() {
        return this.d.f;
    }

    public void setWarmth(float f) {
        c cVar = this.d;
        cVar.f775g = f;
        cVar.a(this);
    }

    public float getWarmth() {
        return this.d.f775g;
    }

    public void setCrossfade(float f) {
        this.f = f;
        if (this.l != null) {
            if (!this.e) {
                this.m.getDrawable(0).setAlpha((int) ((1.0f - this.f) * 255.0f));
            }
            this.m.getDrawable(1).setAlpha((int) (this.f * 255.0f));
            super.setImageDrawable(this.m);
        }
    }

    public float getCrossfade() {
        return this.f;
    }

    public void setBrightness(float f) {
        c cVar = this.d;
        cVar.d = f;
        cVar.a(this);
    }

    public float getBrightness() {
        return this.d.d;
    }

    @RequiresApi(21)
    public void setRoundPercent(float f) {
        boolean z = this.f770g != f;
        this.f770g = f;
        if (f != 0.0f) {
            if (this.i == null) {
                this.i = new Path();
            }
            if (this.k == null) {
                this.k = new RectF();
            }
            if (this.j == null) {
                a aVar = new a();
                this.j = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f770g) / 2.0f;
            this.k.set(0.0f, 0.0f, width, height);
            this.i.reset();
            this.i.addRoundRect(this.k, fMin, fMin, Path.Direction.CW);
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
            ImageFilterView imageFilterView = ImageFilterView.this;
            outline.setRoundRect(0, 0, imageFilterView.getWidth(), imageFilterView.getHeight(), (Math.min(r3, r4) * imageFilterView.f770g) / 2.0f);
        }
    }

    @RequiresApi(21)
    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.h = f;
            float f2 = this.f770g;
            this.f770g = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.h != f;
        this.h = f;
        if (f != 0.0f) {
            if (this.i == null) {
                this.i = new Path();
            }
            if (this.k == null) {
                this.k = new RectF();
            }
            if (this.j == null) {
                b bVar = new b();
                this.j = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.k.set(0.0f, 0.0f, getWidth(), getHeight());
            this.i.reset();
            Path path = this.i;
            RectF rectF = this.k;
            float f3 = this.h;
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
            ImageFilterView imageFilterView = ImageFilterView.this;
            outline.setRoundRect(0, 0, imageFilterView.getWidth(), imageFilterView.getHeight(), imageFilterView.h);
        }
    }

    public float getRoundPercent() {
        return this.f770g;
    }

    public float getRound() {
        return this.h;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }
}
