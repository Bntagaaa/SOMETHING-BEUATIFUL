package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
final class d extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f1054a;

    /* renamed from: b, reason: collision with root package name */
    public Drawable.ConstantState f1055b;
    public ColorStateList c;
    public PorterDuff.Mode d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        c cVar = new c();
        cVar.d = this;
        Drawable.ConstantState constantState = this.f1055b;
        if (constantState != null) {
            cVar.setWrappedDrawable(constantState.newDrawable(resources));
        }
        c.c();
        return cVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f1054a;
        Drawable.ConstantState constantState = this.f1055b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }
}
