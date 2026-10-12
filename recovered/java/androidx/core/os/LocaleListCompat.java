package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.Size;
import androidx.appcompat.app.q;
import androidx.core.os.BuildCompat;
import androidx.core.text.ICUCompat;
import java.util.Locale;

/* loaded from: classes.dex */
public final class LocaleListCompat {

    /* renamed from: b, reason: collision with root package name */
    public static final LocaleListCompat f1132b = create(new Locale[0]);

    /* renamed from: a, reason: collision with root package name */
    public final e f1133a;

    public LocaleListCompat(e eVar) {
        this.f1133a = eVar;
    }

    @RequiresApi(24)
    @Deprecated
    public static LocaleListCompat wrap(Object obj) {
        return wrap(q.i(obj));
    }

    @NonNull
    @RequiresApi(24)
    public static LocaleListCompat wrap(@NonNull LocaleList localeList) {
        return new LocaleListCompat(new g(localeList));
    }

    @Nullable
    public Object unwrap() {
        return this.f1133a.getLocaleList();
    }

    @NonNull
    public static LocaleListCompat create(@NonNull Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return wrap(b.a(localeArr));
        }
        return new LocaleListCompat(new d(localeArr));
    }

    @Nullable
    public Locale get(int i) {
        return this.f1133a.get(i);
    }

    public boolean isEmpty() {
        return this.f1133a.isEmpty();
    }

    @IntRange(from = 0)
    public int size() {
        return this.f1133a.size();
    }

    @IntRange(from = -1)
    public int indexOf(@Nullable Locale locale) {
        return this.f1133a.indexOf(locale);
    }

    @NonNull
    public String toLanguageTags() {
        return this.f1133a.toLanguageTags();
    }

    @Nullable
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return this.f1133a.getFirstMatch(strArr);
    }

    @NonNull
    public static LocaleListCompat getEmptyLocaleList() {
        return f1132b;
    }

    @NonNull
    public static LocaleListCompat forLanguageTags(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            return getEmptyLocaleList();
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = a.a(strArrSplit[i]);
        }
        return create(localeArr);
    }

    public static Locale a(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException(_COROUTINE.a.A("Can not parse language tag: [", str, "]"));
    }

    @NonNull
    @Size(min = 1)
    public static LocaleListCompat getAdjustedDefault() {
        return Build.VERSION.SDK_INT >= 24 ? wrap(b.b()) : create(Locale.getDefault());
    }

    @NonNull
    @Size(min = 1)
    public static LocaleListCompat getDefault() {
        return Build.VERSION.SDK_INT >= 24 ? wrap(b.c()) : create(Locale.getDefault());
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    @RequiresApi(21)
    public static boolean matchesLanguageAndScript(@NonNull Locale locale, @NonNull Locale locale2) {
        if (BuildCompat.isAtLeastT()) {
            return LocaleList.matchesLanguageAndScript(locale, locale2);
        }
        return a.b(locale, locale2);
    }

    @RequiresApi(21)
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final Locale[] f1134a = {new Locale("en", "XA"), new Locale("ar", "XB")};

        private a() {
        }

        @DoNotInline
        public static boolean b(@NonNull Locale locale, @NonNull Locale locale2) {
            if (locale.equals(locale2)) {
                return true;
            }
            if (locale.getLanguage().equals(locale2.getLanguage())) {
                Locale[] localeArr = f1134a;
                for (Locale locale3 : localeArr) {
                    if (locale3.equals(locale)) {
                        return false;
                    }
                }
                for (Locale locale4 : localeArr) {
                    if (locale4.equals(locale2)) {
                        return false;
                    }
                }
                String strMaximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
                if (strMaximizeAndGetScript.isEmpty()) {
                    String country = locale.getCountry();
                    if (country.isEmpty() || country.equals(locale2.getCountry())) {
                        return true;
                    }
                } else {
                    return strMaximizeAndGetScript.equals(ICUCompat.maximizeAndGetScript(locale2));
                }
            }
            return false;
        }

        @DoNotInline
        public static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocaleListCompat) {
            return this.f1133a.equals(((LocaleListCompat) obj).f1133a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1133a.hashCode();
    }

    @NonNull
    public String toString() {
        return this.f1133a.toString();
    }

    @RequiresApi(24)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }

        @DoNotInline
        public static LocaleList b() {
            return LocaleList.getAdjustedDefault();
        }

        @DoNotInline
        public static LocaleList c() {
            return LocaleList.getDefault();
        }
    }
}
