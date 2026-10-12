package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class VectorDrawableCompat extends androidx.vectordrawable.graphics.drawable.d {
    public static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public h f2327b;
    public PorterDuffColorFilter c;
    public ColorFilter d;
    public boolean e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f2328g;
    public final Matrix h;
    public final Rect i;

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i2) {
        super.setChangingConfigurations(i2);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i2, PorterDuff.Mode mode) {
        super.setColorFilter(i2, mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i3, int i4, int i5) {
        super.setHotspotBounds(i2, i3, i4, i5);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    public VectorDrawableCompat() {
        this.f = true;
        this.f2328g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        this.f2327b = new h();
    }

    public VectorDrawableCompat(h hVar) {
        this.f = true;
        this.f2328g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        this.f2327b = hVar;
        this.c = a(hVar.c, hVar.d);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.e && super.mutate() == this) {
            this.f2327b = new h(this.f2327b);
            this.e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f2346a != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.f2346a.getConstantState());
        }
        this.f2327b.f2338a = getChangingConfigurations();
        return this.f2327b;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.i;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.d;
        if (colorFilter == null) {
            colorFilter = this.c;
        }
        Matrix matrix = this.h;
        canvas.getMatrix(matrix);
        float[] fArr = this.f2328g;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, (int) (rect.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        this.f2327b.createCachedBitmapIfNeeded(iMin, iMin2);
        if (!this.f) {
            this.f2327b.updateCachedBitmap(iMin, iMin2);
        } else if (!this.f2327b.canReuseCache()) {
            this.f2327b.updateCachedBitmap(iMin, iMin2);
            this.f2327b.updateCacheStates();
        }
        this.f2327b.drawCachedBitmapWithRootAlpha(canvas, colorFilter, rect);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.getAlpha(drawable);
        }
        return this.f2327b.f2339b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f2327b.f2339b.getRootAlpha() != i2) {
            this.f2327b.f2339b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.getColorFilter(drawable);
        }
        return this.d;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i2) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
            return;
        }
        h hVar = this.f2327b;
        if (hVar.c != colorStateList) {
            hVar.c = colorStateList;
            this.c = a(colorStateList, hVar.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
            return;
        }
        h hVar = this.f2327b;
        if (hVar.d != mode) {
            hVar.d = mode;
            this.c = a(hVar.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        h hVar = this.f2327b;
        if (hVar == null) {
            return false;
        }
        if (hVar.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f2327b.c;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        h hVar = this.f2327b;
        ColorStateList colorStateList = hVar.c;
        if (colorStateList == null || (mode = hVar.d) == null) {
            z = false;
        } else {
            this.c = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!hVar.isStateful() || !hVar.onStateChanged(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f2327b.f2339b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.f2327b.f2339b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f2346a;
        if (drawable == null) {
            return false;
        }
        DrawableCompat.canApplyTheme(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.isAutoMirrored(drawable);
        }
        return this.f2327b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z);
        } else {
            this.f2327b.e = z;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public float getPixelSize() {
        g gVar;
        h hVar = this.f2327b;
        if (hVar == null || (gVar = hVar.f2339b) == null) {
            return 1.0f;
        }
        float f2 = gVar.h;
        if (f2 == 0.0f) {
            return 1.0f;
        }
        float f3 = gVar.i;
        if (f3 == 0.0f) {
            return 1.0f;
        }
        float f4 = gVar.k;
        if (f4 == 0.0f) {
            return 1.0f;
        }
        float f5 = gVar.j;
        if (f5 == 0.0f) {
            return 1.0f;
        }
        return Math.min(f5 / f2, f4 / f3);
    }

    @Nullable
    public static VectorDrawableCompat create(@NonNull Resources resources, @DrawableRes int i2, @Nullable Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f2346a = ResourcesCompat.getDrawable(resources, i2, theme);
            new i(vectorDrawableCompat.f2346a.getConstantState());
            return vectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return createFromXmlInner(resources, (XmlPullParser) xml, attributeSetAsAttributeSet, theme);
        } catch (IOException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f2327b;
        hVar.f2339b = new g();
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f2342a);
        h hVar2 = this.f2327b;
        g gVar = hVar2.f2339b;
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (namedInt != 3) {
            if (namedInt != 5) {
                if (namedInt == 9) {
                    mode = PorterDuff.Mode.SRC_ATOP;
                } else {
                    switch (namedInt) {
                        case 14:
                            mode = PorterDuff.Mode.MULTIPLY;
                            break;
                        case 15:
                            mode = PorterDuff.Mode.SCREEN;
                            break;
                        case 16:
                            mode = PorterDuff.Mode.ADD;
                            break;
                    }
                }
            }
        } else {
            mode = PorterDuff.Mode.SRC_OVER;
        }
        hVar2.d = mode;
        int i2 = 1;
        ColorStateList namedColorStateList = TypedArrayUtils.getNamedColorStateList(typedArrayObtainAttributes, xmlPullParser, theme, "tint", 1);
        if (namedColorStateList != null) {
            hVar2.c = namedColorStateList;
        }
        hVar2.e = TypedArrayUtils.getNamedBoolean(typedArrayObtainAttributes, xmlPullParser, "autoMirrored", 5, hVar2.e);
        gVar.j = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "viewportWidth", 7, gVar.j);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "viewportHeight", 8, gVar.k);
        gVar.k = namedFloat;
        if (gVar.j <= 0.0f) {
            throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (namedFloat <= 0.0f) {
            throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.h = typedArrayObtainAttributes.getDimension(3, gVar.h);
        int i3 = 2;
        float dimension = typedArrayObtainAttributes.getDimension(2, gVar.i);
        gVar.i = dimension;
        if (gVar.h <= 0.0f) {
            throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArrayObtainAttributes.getString(0);
        if (string != null) {
            gVar.m = string;
            gVar.o.put(string, gVar);
        }
        typedArrayObtainAttributes.recycle();
        hVar.f2338a = getChangingConfigurations();
        hVar.k = true;
        h hVar3 = this.f2327b;
        g gVar2 = hVar3.f2339b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar2.f2337g);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        for (int i4 = 3; eventType != i2 && (xmlPullParser.getDepth() >= depth || eventType != i4); i4 = 3) {
            if (eventType == i3) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                boolean zEquals = "path".equals(name);
                ArrayMap arrayMap = gVar2.o;
                if (zEquals) {
                    c cVar = new c();
                    cVar.inflate(resources, attributeSet, theme, xmlPullParser);
                    dVar.f2331b.add(cVar);
                    if (cVar.getPathName() != null) {
                        arrayMap.put(cVar.getPathName(), cVar);
                    }
                    hVar3.f2338a = hVar3.f2338a;
                    z = false;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.inflate(resources, attributeSet, theme, xmlPullParser);
                    dVar.f2331b.add(bVar);
                    if (bVar.getPathName() != null) {
                        arrayMap.put(bVar.getPathName(), bVar);
                    }
                    hVar3.f2338a = hVar3.f2338a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.inflate(resources, attributeSet, theme, xmlPullParser);
                    dVar.f2331b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        arrayMap.put(dVar2.getGroupName(), dVar2);
                    }
                    hVar3.f2338a = hVar3.f2338a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
            i3 = 2;
            i2 = 1;
        }
        if (!z) {
            this.c = a(hVar.c, hVar.d);
            return;
        }
        throw new XmlPullParserException("no path defined");
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f2327b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @RequiresApi(24)
    public static class i extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f2341a;

        public i(Drawable.ConstantState constantState) {
            this.f2341a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f2346a = (VectorDrawable) this.f2341a.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f2346a = (VectorDrawable) this.f2341a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f2346a = (VectorDrawable) this.f2341a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2341a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2341a.getChangingConfigurations();
        }
    }

    public static class h extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public int f2338a;

        /* renamed from: b, reason: collision with root package name */
        public g f2339b;
        public ColorStateList c;
        public PorterDuff.Mode d;
        public boolean e;
        public Bitmap f;

        /* renamed from: g, reason: collision with root package name */
        public ColorStateList f2340g;
        public PorterDuff.Mode h;
        public int i;
        public boolean j;
        public boolean k;
        public Paint l;

        public h(h hVar) {
            this.c = null;
            this.d = VectorDrawableCompat.j;
            if (hVar != null) {
                this.f2338a = hVar.f2338a;
                g gVar = new g(hVar.f2339b);
                this.f2339b = gVar;
                if (hVar.f2339b.e != null) {
                    gVar.e = new Paint(hVar.f2339b.e);
                }
                if (hVar.f2339b.d != null) {
                    this.f2339b.d = new Paint(hVar.f2339b.d);
                }
                this.c = hVar.c;
                this.d = hVar.d;
                this.e = hVar.e;
            }
        }

        public void drawCachedBitmapWithRootAlpha(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f, (Rect) null, rect, getPaint(colorFilter));
        }

        public boolean hasTranslucentRoot() {
            return this.f2339b.getRootAlpha() < 255;
        }

        public Paint getPaint(ColorFilter colorFilter) {
            if (!hasTranslucentRoot() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                Paint paint = new Paint();
                this.l = paint;
                paint.setFilterBitmap(true);
            }
            this.l.setAlpha(this.f2339b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public void updateCachedBitmap(int i, int i2) {
            this.f.eraseColor(0);
            this.f2339b.draw(new Canvas(this.f), i, i2, null);
        }

        public void createCachedBitmapIfNeeded(int i, int i2) {
            if (this.f == null || !canReuseBitmap(i, i2)) {
                this.f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.k = true;
            }
        }

        public boolean canReuseBitmap(int i, int i2) {
            return i == this.f.getWidth() && i2 == this.f.getHeight();
        }

        public boolean canReuseCache() {
            return !this.k && this.f2340g == this.c && this.h == this.d && this.j == this.e && this.i == this.f2339b.getRootAlpha();
        }

        public void updateCacheStates() {
            this.f2340g = this.c;
            this.h = this.d;
            this.i = this.f2339b.getRootAlpha();
            this.j = this.e;
            this.k = false;
        }

        public h() {
            this.c = null;
            this.d = VectorDrawableCompat.j;
            this.f2339b = new g();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2338a;
        }

        public boolean isStateful() {
            return this.f2339b.isStateful();
        }

        public boolean onStateChanged(int[] iArr) {
            boolean zOnStateChanged = this.f2339b.onStateChanged(iArr);
            this.k |= zOnStateChanged;
            return zOnStateChanged;
        }
    }

    public static class g {
        public static final Matrix p = new Matrix();

        /* renamed from: a, reason: collision with root package name */
        public final Path f2335a;

        /* renamed from: b, reason: collision with root package name */
        public final Path f2336b;
        public final Matrix c;
        public Paint d;
        public Paint e;
        public PathMeasure f;

        /* renamed from: g, reason: collision with root package name */
        public final d f2337g;
        public float h;
        public float i;
        public float j;
        public float k;
        public int l;
        public String m;
        public Boolean n;
        public final ArrayMap o;

        public g() {
            this.c = new Matrix();
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 255;
            this.m = null;
            this.n = null;
            this.o = new ArrayMap();
            this.f2337g = new d();
            this.f2335a = new Path();
            this.f2336b = new Path();
        }

        public void setRootAlpha(int i) {
            this.l = i;
        }

        public int getRootAlpha() {
            return this.l;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public g(g gVar) {
            this.c = new Matrix();
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 255;
            this.m = null;
            this.n = null;
            ArrayMap arrayMap = new ArrayMap();
            this.o = arrayMap;
            this.f2337g = new d(gVar.f2337g, arrayMap);
            this.f2335a = new Path(gVar.f2335a);
            this.f2336b = new Path(gVar.f2336b);
            this.h = gVar.h;
            this.i = gVar.i;
            this.j = gVar.j;
            this.k = gVar.k;
            this.l = gVar.l;
            this.m = gVar.m;
            String str = gVar.m;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.n = gVar.n;
        }

        public final void a(d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            Matrix matrix2;
            float f;
            ColorFilter colorFilter2;
            int i3;
            float f2;
            char c = 1;
            dVar.f2330a.set(matrix);
            Matrix matrix3 = dVar.f2330a;
            matrix3.preConcat(dVar.j);
            canvas.save();
            char c2 = 0;
            int i4 = 0;
            while (true) {
                ArrayList arrayList = dVar.f2331b;
                if (i4 < arrayList.size()) {
                    e eVar = (e) arrayList.get(i4);
                    if (eVar instanceof d) {
                        a((d) eVar, matrix3, canvas, i, i2, colorFilter);
                        matrix2 = matrix3;
                    } else {
                        if (eVar instanceof f) {
                            f fVar = (f) eVar;
                            float f3 = i / this.j;
                            float f4 = i2 / this.k;
                            float fMin = Math.min(f3, f4);
                            Matrix matrix4 = this.c;
                            matrix4.set(matrix3);
                            matrix4.postScale(f3, f4);
                            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                            matrix3.mapVectors(fArr);
                            float fHypot = (float) Math.hypot(fArr[c2], fArr[c]);
                            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                            float f5 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                            float fMax = Math.max(fHypot, fHypot2);
                            float fAbs = fMax > 0.0f ? Math.abs(f5) / fMax : 0.0f;
                            if (fAbs != 0.0f) {
                                Path path = this.f2335a;
                                fVar.toPath(path);
                                Path path2 = this.f2336b;
                                path2.reset();
                                if (fVar.isClipPath()) {
                                    path2.setFillType(fVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    path2.addPath(path, matrix4);
                                    canvas.clipPath(path2);
                                } else {
                                    c cVar = (c) fVar;
                                    float f6 = cVar.i;
                                    if (f6 == 0.0f && cVar.j == 1.0f) {
                                        matrix2 = matrix3;
                                    } else {
                                        float f7 = cVar.k;
                                        float f8 = (f6 + f7) % 1.0f;
                                        float f9 = (cVar.j + f7) % 1.0f;
                                        if (this.f == null) {
                                            this.f = new PathMeasure();
                                        }
                                        this.f.setPath(path, false);
                                        float length = this.f.getLength();
                                        float f10 = f8 * length;
                                        float f11 = f9 * length;
                                        path.reset();
                                        if (f10 > f11) {
                                            matrix2 = matrix3;
                                            this.f.getSegment(f10, length, path, true);
                                            f = 0.0f;
                                            this.f.getSegment(0.0f, f11, path, true);
                                        } else {
                                            matrix2 = matrix3;
                                            f = 0.0f;
                                            this.f.getSegment(f10, f11, path, true);
                                        }
                                        path.rLineTo(f, f);
                                    }
                                    path2.addPath(path, matrix4);
                                    if (cVar.f.willDraw()) {
                                        ComplexColorCompat complexColorCompat = cVar.f;
                                        if (this.e == null) {
                                            i3 = 16777215;
                                            Paint paint = new Paint(1);
                                            this.e = paint;
                                            paint.setStyle(Paint.Style.FILL);
                                        } else {
                                            i3 = 16777215;
                                        }
                                        Paint paint2 = this.e;
                                        if (complexColorCompat.isGradient()) {
                                            Shader shader = complexColorCompat.getShader();
                                            shader.setLocalMatrix(matrix4);
                                            paint2.setShader(shader);
                                            paint2.setAlpha(Math.round(cVar.h * 255.0f));
                                            f2 = 255.0f;
                                        } else {
                                            paint2.setShader(null);
                                            paint2.setAlpha(255);
                                            int color = complexColorCompat.getColor();
                                            float f12 = cVar.h;
                                            PorterDuff.Mode mode = VectorDrawableCompat.j;
                                            f2 = 255.0f;
                                            paint2.setColor((color & i3) | (((int) (Color.alpha(color) * f12)) << 24));
                                        }
                                        colorFilter2 = colorFilter;
                                        paint2.setColorFilter(colorFilter2);
                                        path2.setFillType(cVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                        canvas.drawPath(path2, paint2);
                                    } else {
                                        colorFilter2 = colorFilter;
                                        i3 = 16777215;
                                        f2 = 255.0f;
                                    }
                                    if (cVar.d.willDraw()) {
                                        ComplexColorCompat complexColorCompat2 = cVar.d;
                                        if (this.d == null) {
                                            Paint paint3 = new Paint(1);
                                            this.d = paint3;
                                            paint3.setStyle(Paint.Style.STROKE);
                                        }
                                        Paint paint4 = this.d;
                                        Paint.Join join = cVar.m;
                                        if (join != null) {
                                            paint4.setStrokeJoin(join);
                                        }
                                        Paint.Cap cap = cVar.l;
                                        if (cap != null) {
                                            paint4.setStrokeCap(cap);
                                        }
                                        paint4.setStrokeMiter(cVar.n);
                                        if (complexColorCompat2.isGradient()) {
                                            Shader shader2 = complexColorCompat2.getShader();
                                            shader2.setLocalMatrix(matrix4);
                                            paint4.setShader(shader2);
                                            paint4.setAlpha(Math.round(cVar.f2329g * f2));
                                        } else {
                                            paint4.setShader(null);
                                            paint4.setAlpha(255);
                                            int color2 = complexColorCompat2.getColor();
                                            float f13 = cVar.f2329g;
                                            PorterDuff.Mode mode2 = VectorDrawableCompat.j;
                                            paint4.setColor((color2 & i3) | (((int) (Color.alpha(color2) * f13)) << 24));
                                        }
                                        paint4.setColorFilter(colorFilter2);
                                        paint4.setStrokeWidth(cVar.e * fMin * fAbs);
                                        canvas.drawPath(path2, paint4);
                                    }
                                }
                            }
                        }
                        matrix2 = matrix3;
                    }
                    i4++;
                    matrix3 = matrix2;
                    c = 1;
                    c2 = 0;
                } else {
                    canvas.restore();
                    return;
                }
            }
        }

        public void draw(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            a(this.f2337g, p, canvas, i, i2, colorFilter);
        }

        public boolean isStateful() {
            if (this.n == null) {
                this.n = Boolean.valueOf(this.f2337g.isStateful());
            }
            return this.n.booleanValue();
        }

        public boolean onStateChanged(int[] iArr) {
            return this.f2337g.onStateChanged(iArr);
        }
    }

    public static abstract class e {
        public boolean isStateful() {
            return false;
        }

        public boolean onStateChanged(int[] iArr) {
            return false;
        }

        private e() {
        }

        public /* synthetic */ e(int i) {
            this();
        }
    }

    public static class d extends e {

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f2330a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f2331b;
        public float c;
        public float d;
        public float e;
        public float f;

        /* renamed from: g, reason: collision with root package name */
        public float f2332g;
        public float h;
        public float i;
        public final Matrix j;
        public String k;

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        public d(d dVar, ArrayMap<String, Object> arrayMap) {
            b bVar;
            int i = 0;
            super(i);
            this.f2330a = new Matrix();
            this.f2331b = new ArrayList();
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.f2332g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            Matrix matrix = new Matrix();
            this.j = matrix;
            this.k = null;
            this.c = dVar.c;
            this.d = dVar.d;
            this.e = dVar.e;
            this.f = dVar.f;
            this.f2332g = dVar.f2332g;
            this.h = dVar.h;
            this.i = dVar.i;
            String str = dVar.k;
            this.k = str;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(dVar.j);
            ArrayList arrayList = dVar.f2331b;
            while (i < arrayList.size()) {
                Object obj = arrayList.get(i);
                if (obj instanceof d) {
                    this.f2331b.add(new d((d) obj, arrayMap));
                } else {
                    if (!(obj instanceof c)) {
                        if (!(obj instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) obj);
                    } else {
                        c cVar = (c) obj;
                        c cVar2 = new c(cVar);
                        cVar2.e = 0.0f;
                        cVar2.f2329g = 1.0f;
                        cVar2.h = 1.0f;
                        cVar2.i = 0.0f;
                        cVar2.j = 1.0f;
                        cVar2.k = 0.0f;
                        cVar2.l = Paint.Cap.BUTT;
                        cVar2.m = Paint.Join.MITER;
                        cVar2.n = 4.0f;
                        cVar.getClass();
                        cVar2.d = cVar.d;
                        cVar2.e = cVar.e;
                        cVar2.f2329g = cVar.f2329g;
                        cVar2.f = cVar.f;
                        cVar2.c = cVar.c;
                        cVar2.h = cVar.h;
                        cVar2.i = cVar.i;
                        cVar2.j = cVar.j;
                        cVar2.k = cVar.k;
                        cVar2.l = cVar.l;
                        cVar2.m = cVar.m;
                        cVar2.n = cVar.n;
                        bVar = cVar2;
                    }
                    this.f2331b.add(bVar);
                    String str2 = bVar.f2334b;
                    if (str2 != null) {
                        arrayMap.put(str2, bVar);
                    }
                }
                i++;
            }
        }

        public d() {
            super(0);
            this.f2330a = new Matrix();
            this.f2331b = new ArrayList();
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.f2332g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = new Matrix();
            this.k = null;
        }

        public String getGroupName() {
            return this.k;
        }

        public Matrix getLocalMatrix() {
            return this.j;
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f2343b);
            this.c = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "rotation", 5, this.c);
            this.d = typedArrayObtainAttributes.getFloat(1, this.d);
            this.e = typedArrayObtainAttributes.getFloat(2, this.e);
            this.f = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "scaleX", 3, this.f);
            this.f2332g = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "scaleY", 4, this.f2332g);
            this.h = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "translateX", 6, this.h);
            this.i = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "translateY", 7, this.i);
            String string = typedArrayObtainAttributes.getString(0);
            if (string != null) {
                this.k = string;
            }
            a();
            typedArrayObtainAttributes.recycle();
        }

        public final void a() {
            Matrix matrix = this.j;
            matrix.reset();
            matrix.postTranslate(-this.d, -this.e);
            matrix.postScale(this.f, this.f2332g);
            matrix.postRotate(this.c, 0.0f, 0.0f);
            matrix.postTranslate(this.h + this.d, this.i + this.e);
        }

        public float getRotation() {
            return this.c;
        }

        public void setRotation(float f) {
            if (f != this.c) {
                this.c = f;
                a();
            }
        }

        public float getPivotX() {
            return this.d;
        }

        public void setPivotX(float f) {
            if (f != this.d) {
                this.d = f;
                a();
            }
        }

        public float getPivotY() {
            return this.e;
        }

        public void setPivotY(float f) {
            if (f != this.e) {
                this.e = f;
                a();
            }
        }

        public float getScaleX() {
            return this.f;
        }

        public void setScaleX(float f) {
            if (f != this.f) {
                this.f = f;
                a();
            }
        }

        public float getScaleY() {
            return this.f2332g;
        }

        public void setScaleY(float f) {
            if (f != this.f2332g) {
                this.f2332g = f;
                a();
            }
        }

        public float getTranslateX() {
            return this.h;
        }

        public void setTranslateX(float f) {
            if (f != this.h) {
                this.h = f;
                a();
            }
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setTranslateY(float f) {
            if (f != this.i) {
                this.i = f;
                a();
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.e
        public boolean isStateful() {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.f2331b;
                if (i >= arrayList.size()) {
                    return false;
                }
                if (((e) arrayList.get(i)).isStateful()) {
                    return true;
                }
                i++;
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.e
        public boolean onStateChanged(int[] iArr) {
            int i = 0;
            boolean zOnStateChanged = false;
            while (true) {
                ArrayList arrayList = this.f2331b;
                if (i >= arrayList.size()) {
                    return zOnStateChanged;
                }
                zOnStateChanged |= ((e) arrayList.get(i)).onStateChanged(iArr);
                i++;
            }
        }
    }

    public static abstract class f extends e {

        /* renamed from: a, reason: collision with root package name */
        public PathParser.PathDataNode[] f2333a;

        /* renamed from: b, reason: collision with root package name */
        public String f2334b;
        public int c;

        public boolean isClipPath() {
            return false;
        }

        public f() {
            super(0);
            this.f2333a = null;
            this.c = 0;
        }

        public f(f fVar) {
            super(0);
            this.f2333a = null;
            this.c = 0;
            this.f2334b = fVar.f2334b;
            this.f2333a = PathParser.deepCopyNodes(fVar.f2333a);
        }

        public void toPath(Path path) {
            path.reset();
            PathParser.PathDataNode[] pathDataNodeArr = this.f2333a;
            if (pathDataNodeArr != null) {
                PathParser.PathDataNode.nodesToPath(pathDataNodeArr, path);
            }
        }

        public String getPathName() {
            return this.f2334b;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f2333a;
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (!PathParser.canMorph(this.f2333a, pathDataNodeArr)) {
                this.f2333a = PathParser.deepCopyNodes(pathDataNodeArr);
            } else {
                PathParser.updateNodes(this.f2333a, pathDataNodeArr);
            }
        }
    }

    public static class b extends f {
        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.f
        public boolean isClipPath() {
            return true;
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.d);
                String string = typedArrayObtainAttributes.getString(0);
                if (string != null) {
                    this.f2334b = string;
                }
                String string2 = typedArrayObtainAttributes.getString(1);
                if (string2 != null) {
                    this.f2333a = PathParser.createNodesFromPathData(string2);
                }
                this.c = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "fillType", 2, 0);
                typedArrayObtainAttributes.recycle();
            }
        }
    }

    public static class c extends f {
        public ComplexColorCompat d;
        public ComplexColorCompat f;
        public float e = 0.0f;

        /* renamed from: g, reason: collision with root package name */
        public float f2329g = 1.0f;
        public float h = 1.0f;
        public float i = 0.0f;
        public float j = 1.0f;
        public float k = 0.0f;
        public Paint.Cap l = Paint.Cap.BUTT;
        public Paint.Join m = Paint.Join.MITER;
        public float n = 4.0f;

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.c);
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                String string = typedArrayObtainAttributes.getString(0);
                if (string != null) {
                    this.f2334b = string;
                }
                String string2 = typedArrayObtainAttributes.getString(2);
                if (string2 != null) {
                    this.f2333a = PathParser.createNodesFromPathData(string2);
                }
                this.f = TypedArrayUtils.getNamedComplexColor(typedArrayObtainAttributes, xmlPullParser, theme, "fillColor", 1, 0);
                this.h = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "fillAlpha", 12, this.h);
                int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "strokeLineCap", 8, -1);
                Paint.Cap cap = this.l;
                if (namedInt == 0) {
                    cap = Paint.Cap.BUTT;
                } else if (namedInt == 1) {
                    cap = Paint.Cap.ROUND;
                } else if (namedInt == 2) {
                    cap = Paint.Cap.SQUARE;
                }
                this.l = cap;
                int namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "strokeLineJoin", 9, -1);
                Paint.Join join = this.m;
                if (namedInt2 == 0) {
                    join = Paint.Join.MITER;
                } else if (namedInt2 == 1) {
                    join = Paint.Join.ROUND;
                } else if (namedInt2 == 2) {
                    join = Paint.Join.BEVEL;
                }
                this.m = join;
                this.n = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "strokeMiterLimit", 10, this.n);
                this.d = TypedArrayUtils.getNamedComplexColor(typedArrayObtainAttributes, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f2329g = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "strokeAlpha", 11, this.f2329g);
                this.e = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "strokeWidth", 4, this.e);
                this.j = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "trimPathEnd", 6, this.j);
                this.k = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "trimPathOffset", 7, this.k);
                this.i = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "trimPathStart", 5, this.i);
                this.c = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "fillType", 13, this.c);
            }
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.e
        public boolean isStateful() {
            return this.f.isStateful() || this.d.isStateful();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.e
        public boolean onStateChanged(int[] iArr) {
            return this.d.onStateChanged(iArr) | this.f.onStateChanged(iArr);
        }

        @ColorInt
        public int getStrokeColor() {
            return this.d.getColor();
        }

        public void setStrokeColor(int i) {
            this.d.setColor(i);
        }

        public float getStrokeWidth() {
            return this.e;
        }

        public void setStrokeWidth(float f) {
            this.e = f;
        }

        public float getStrokeAlpha() {
            return this.f2329g;
        }

        public void setStrokeAlpha(float f) {
            this.f2329g = f;
        }

        @ColorInt
        public int getFillColor() {
            return this.f.getColor();
        }

        public void setFillColor(int i) {
            this.f.setColor(i);
        }

        public float getFillAlpha() {
            return this.h;
        }

        public void setFillAlpha(float f) {
            this.h = f;
        }

        public float getTrimPathStart() {
            return this.i;
        }

        public void setTrimPathStart(float f) {
            this.i = f;
        }

        public float getTrimPathEnd() {
            return this.j;
        }

        public void setTrimPathEnd(float f) {
            this.j = f;
        }

        public float getTrimPathOffset() {
            return this.k;
        }

        public void setTrimPathOffset(float f) {
            this.k = f;
        }
    }
}
