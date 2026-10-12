package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TintTypedArray {

    /* renamed from: a, reason: collision with root package name */
    public final Context f433a;

    /* renamed from: b, reason: collision with root package name */
    public final TypedArray f434b;
    public TypedValue c;

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int i, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i, iArr));
    }

    public TintTypedArray(Context context, TypedArray typedArray) {
        this.f433a = context;
        this.f434b = typedArray;
    }

    public TypedArray getWrappedTypeArray() {
        return this.f434b;
    }

    public Drawable getDrawable(int i) {
        int resourceId;
        TypedArray typedArray = this.f434b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            return AppCompatResources.getDrawable(this.f433a, resourceId);
        }
        return typedArray.getDrawable(i);
    }

    public Drawable getDrawableIfKnown(int i) {
        int resourceId;
        Drawable drawableD;
        if (!this.f434b.hasValue(i) || (resourceId = this.f434b.getResourceId(i, 0)) == 0) {
            return null;
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = this.f433a;
        synchronized (appCompatDrawableManager) {
            drawableD = appCompatDrawableManager.f318a.d(context, resourceId, true);
        }
        return drawableD;
    }

    @Nullable
    public Typeface getFont(@StyleableRes int i, int i2, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.f434b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return ResourcesCompat.getFont(this.f433a, resourceId, this.c, i2, fontCallback);
    }

    public int length() {
        return this.f434b.length();
    }

    public int getIndexCount() {
        return this.f434b.getIndexCount();
    }

    public int getIndex(int i) {
        return this.f434b.getIndex(i);
    }

    public Resources getResources() {
        return this.f434b.getResources();
    }

    public CharSequence getText(int i) {
        return this.f434b.getText(i);
    }

    public String getString(int i) {
        return this.f434b.getString(i);
    }

    public String getNonResourceString(int i) {
        return this.f434b.getNonResourceString(i);
    }

    public boolean getBoolean(int i, boolean z) {
        return this.f434b.getBoolean(i, z);
    }

    public int getInt(int i, int i2) {
        return this.f434b.getInt(i, i2);
    }

    public float getFloat(int i, float f) {
        return this.f434b.getFloat(i, f);
    }

    public int getColor(int i, int i2) {
        return this.f434b.getColor(i, i2);
    }

    public ColorStateList getColorStateList(int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = this.f434b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.f433a, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    public int getInteger(int i, int i2) {
        return this.f434b.getInteger(i, i2);
    }

    public float getDimension(int i, float f) {
        return this.f434b.getDimension(i, f);
    }

    public int getDimensionPixelOffset(int i, int i2) {
        return this.f434b.getDimensionPixelOffset(i, i2);
    }

    public int getDimensionPixelSize(int i, int i2) {
        return this.f434b.getDimensionPixelSize(i, i2);
    }

    public int getLayoutDimension(int i, String str) {
        return this.f434b.getLayoutDimension(i, str);
    }

    public int getLayoutDimension(int i, int i2) {
        return this.f434b.getLayoutDimension(i, i2);
    }

    public float getFraction(int i, int i2, int i3, float f) {
        return this.f434b.getFraction(i, i2, i3, f);
    }

    public int getResourceId(int i, int i2) {
        return this.f434b.getResourceId(i, i2);
    }

    public CharSequence[] getTextArray(int i) {
        return this.f434b.getTextArray(i);
    }

    public boolean getValue(int i, TypedValue typedValue) {
        return this.f434b.getValue(i, typedValue);
    }

    public int getType(int i) {
        return a.b(this.f434b, i);
    }

    public boolean hasValue(int i) {
        return this.f434b.hasValue(i);
    }

    public TypedValue peekValue(int i) {
        return this.f434b.peekValue(i);
    }

    public String getPositionDescription() {
        return this.f434b.getPositionDescription();
    }

    public void recycle() {
        this.f434b.recycle();
    }

    @RequiresApi(21)
    public int getChangingConfigurations() {
        return a.a(this.f434b);
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int b(TypedArray typedArray, int i) {
            return typedArray.getType(i);
        }

        @DoNotInline
        public static int a(TypedArray typedArray) {
            return typedArray.getChangingConfigurations();
        }
    }
}
