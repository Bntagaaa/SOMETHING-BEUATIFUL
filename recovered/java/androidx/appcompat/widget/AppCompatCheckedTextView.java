package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CheckedTextViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCheckedTextView;
import androidx.core.widget.TintableCompoundDrawablesView;

/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements TintableCheckedTextView, TintableBackgroundView, EmojiCompatConfigurationView, TintableCompoundDrawablesView {

    /* renamed from: a, reason: collision with root package name */
    public final d f315a;

    /* renamed from: b, reason: collision with root package name */
    public final c f316b;
    public final q c;
    public g d;

    public AppCompatCheckedTextView(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int resourceId;
        int resourceId2;
        super(TintContextWrapper.wrap(context), attributeSet, i);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        q qVar = new q(this);
        this.c = qVar;
        qVar.f(attributeSet, i);
        qVar.b();
        c cVar = new c(this);
        this.f316b = cVar;
        cVar.d(attributeSet, i);
        this.f315a = new d(this);
        Context context2 = getContext();
        int[] iArr = R.styleable.CheckedTextView;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, getContext(), iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        try {
            int i2 = R.styleable.CheckedTextView_checkMarkCompat;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i2) && (resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(i2, 0)) != 0) {
                try {
                    setCheckMarkDrawable(AppCompatResources.getDrawable(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else {
                int i3 = R.styleable.CheckedTextView_android_checkMark;
                if (tintTypedArrayObtainStyledAttributes.hasValue(i3) && (resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(i3, 0)) != 0) {
                    setCheckMarkDrawable(AppCompatResources.getDrawable(getContext(), resourceId));
                }
            }
            int i4 = R.styleable.CheckedTextView_checkMarkTint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i4)) {
                CheckedTextViewCompat.setCheckMarkTintList(this, tintTypedArrayObtainStyledAttributes.getColorStateList(i4));
            }
            int i5 = R.styleable.CheckedTextView_checkMarkTintMode;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i5)) {
                CheckedTextViewCompat.setCheckMarkTintMode(this, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(i5, -1), null));
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            a().a(attributeSet, i);
        } catch (Throwable th) {
            tintTypedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        d dVar = this.f315a;
        if (dVar != null) {
            if (dVar.f) {
                dVar.f = false;
            } else {
                dVar.f = true;
                dVar.a();
            }
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i) {
        setCheckMarkDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCheckMarkTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f315a;
        if (dVar != null) {
            dVar.f470b = colorStateList;
            dVar.d = true;
            dVar.a();
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCheckMarkTintList() {
        d dVar = this.f315a;
        if (dVar != null) {
            return dVar.f470b;
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCheckMarkTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f315a;
        if (dVar != null) {
            dVar.c = mode;
            dVar.e = true;
            dVar.a();
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        d dVar = this.f315a;
        if (dVar != null) {
            return dVar.c;
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.f316b;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f316b;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f316b;
        if (cVar != null) {
            cVar.i(mode);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f316b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f316b;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        c cVar = this.f316b;
        if (cVar != null) {
            cVar.f(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i) {
        super.setTextAppearance(context, i);
        q qVar = this.c;
        if (qVar != null) {
            qVar.g(context, i);
        }
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        q qVar = this.c;
        if (qVar != null) {
            qVar.b();
        }
        c cVar = this.f316b;
        if (cVar != null) {
            cVar.a();
        }
        d dVar = this.f315a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        h.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public final g a() {
        if (this.d == null) {
            this.d = new g(this);
        }
        return this.d;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        a().b(z);
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z) {
        a().c(z);
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return a().isEnabled();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.c;
        if (qVar != null) {
            qVar.b();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.c;
        if (qVar != null) {
            qVar.b();
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        q qVar = this.c;
        qVar.k(colorStateList);
        qVar.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        q qVar = this.c;
        qVar.l(mode);
        qVar.b();
    }
}
