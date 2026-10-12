package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;

/* loaded from: classes.dex */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {
    @Nullable
    Resources.Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources.Theme theme);

    public static final class Helper {

        /* renamed from: a, reason: collision with root package name */
        public final Context f429a;

        /* renamed from: b, reason: collision with root package name */
        public final LayoutInflater f430b;
        public LayoutInflater c;

        public Helper(@NonNull Context context) {
            this.f429a = context;
            this.f430b = LayoutInflater.from(context);
        }

        public void setDropDownViewTheme(@Nullable Resources.Theme theme) {
            if (theme == null) {
                this.c = null;
                return;
            }
            Context context = this.f429a;
            if (theme.equals(context.getTheme())) {
                this.c = this.f430b;
            } else {
                this.c = LayoutInflater.from(new ContextThemeWrapper(context, theme));
            }
        }

        @Nullable
        public Resources.Theme getDropDownViewTheme() {
            LayoutInflater layoutInflater = this.c;
            if (layoutInflater == null) {
                return null;
            }
            return layoutInflater.getContext().getTheme();
        }

        @NonNull
        public LayoutInflater getDropDownViewInflater() {
            LayoutInflater layoutInflater = this.c;
            return layoutInflater != null ? layoutInflater : this.f430b;
        }
    }
}
