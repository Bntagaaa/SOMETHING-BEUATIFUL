package androidx.core.content;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;

@Deprecated
/* loaded from: classes.dex */
public final class SharedPreferencesCompat {

    @Deprecated
    public static final class EditorCompat {

        /* renamed from: b, reason: collision with root package name */
        public static EditorCompat f974b;

        /* renamed from: a, reason: collision with root package name */
        public final a f975a = new a();

        public static class a {
            public void apply(@NonNull SharedPreferences.Editor editor) {
                try {
                    editor.apply();
                } catch (AbstractMethodError unused) {
                    editor.commit();
                }
            }
        }

        private EditorCompat() {
        }

        @Deprecated
        public static EditorCompat getInstance() {
            if (f974b == null) {
                f974b = new EditorCompat();
            }
            return f974b;
        }

        @Deprecated
        public void apply(@NonNull SharedPreferences.Editor editor) {
            this.f975a.apply(editor);
        }
    }

    private SharedPreferencesCompat() {
    }
}
