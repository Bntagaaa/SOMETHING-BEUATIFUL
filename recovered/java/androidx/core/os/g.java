package androidx.core.os;

import android.os.LocaleList;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.q;
import java.util.Locale;

@RequiresApi(24)
/* loaded from: classes.dex */
final class g implements e {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f1148a;

    public g(Object obj) {
        this.f1148a = q.i(obj);
    }

    @Override // androidx.core.os.e
    public Object getLocaleList() {
        return this.f1148a;
    }

    @Override // androidx.core.os.e
    public Locale get(int i) {
        return this.f1148a.get(i);
    }

    @Override // androidx.core.os.e
    public boolean isEmpty() {
        return this.f1148a.isEmpty();
    }

    @Override // androidx.core.os.e
    public int size() {
        return this.f1148a.size();
    }

    @Override // androidx.core.os.e
    public int indexOf(Locale locale) {
        return this.f1148a.indexOf(locale);
    }

    public boolean equals(Object obj) {
        return this.f1148a.equals(((e) obj).getLocaleList());
    }

    public int hashCode() {
        return this.f1148a.hashCode();
    }

    public String toString() {
        return this.f1148a.toString();
    }

    @Override // androidx.core.os.e
    public String toLanguageTags() {
        return this.f1148a.toLanguageTags();
    }

    @Override // androidx.core.os.e
    @Nullable
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return this.f1148a.getFirstMatch(strArr);
    }
}
