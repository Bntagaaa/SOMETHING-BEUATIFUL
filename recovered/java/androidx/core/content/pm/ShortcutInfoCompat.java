package androidx.core.content.pm;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.net.UriCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ShortcutInfoCompat {
    public static final int SURFACE_LAUNCHER = 1;
    public int A;
    public int B;

    /* renamed from: a, reason: collision with root package name */
    public Context f989a;

    /* renamed from: b, reason: collision with root package name */
    public String f990b;
    public String c;
    public Intent[] d;
    public ComponentName e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f991g;
    public CharSequence h;
    public IconCompat i;
    public boolean j;
    public Person[] k;
    public Set l;
    public LocusIdCompat m;
    public boolean n;
    public int o;
    public PersistableBundle p;
    public Bundle q;
    public long r;
    public UserHandle s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y = true;
    public boolean z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Surface {
    }

    @RequiresApi(25)
    public ShortcutInfo toShortcutInfo() {
        androidx.core.content.pm.a.n();
        ShortcutInfo.Builder intents = androidx.core.content.pm.a.d(this.f989a, this.f990b).setShortLabel(this.f).setIntents(this.d);
        IconCompat iconCompat = this.i;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.toIcon(this.f989a));
        }
        if (!TextUtils.isEmpty(this.f991g)) {
            intents.setLongLabel(this.f991g);
        }
        if (!TextUtils.isEmpty(this.h)) {
            intents.setDisabledMessage(this.h);
        }
        ComponentName componentName = this.e;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set set = this.l;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.o);
        PersistableBundle persistableBundle = this.p;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        int i = 0;
        if (Build.VERSION.SDK_INT >= 29) {
            Person[] personArr = this.k;
            if (personArr != null && personArr.length > 0) {
                int length = personArr.length;
                android.app.Person[] personArr2 = new android.app.Person[length];
                while (i < length) {
                    personArr2[i] = this.k[i].toAndroidPerson();
                    i++;
                }
                intents.setPersons(personArr2);
            }
            LocusIdCompat locusIdCompat = this.m;
            if (locusIdCompat != null) {
                intents.setLocusId(locusIdCompat.toLocusId());
            }
            intents.setLongLived(this.n);
        } else {
            if (this.p == null) {
                this.p = new PersistableBundle();
            }
            Person[] personArr3 = this.k;
            if (personArr3 != null && personArr3.length > 0) {
                this.p.putInt("extraPersonCount", personArr3.length);
                while (i < this.k.length) {
                    PersistableBundle persistableBundle2 = this.p;
                    StringBuilder sb = new StringBuilder("extraPerson_");
                    int i2 = i + 1;
                    sb.append(i2);
                    persistableBundle2.putPersistableBundle(sb.toString(), this.k[i].toPersistableBundle());
                    i = i2;
                }
            }
            LocusIdCompat locusIdCompat2 = this.m;
            if (locusIdCompat2 != null) {
                this.p.putString("extraLocusId", locusIdCompat2.getId());
            }
            this.p.putBoolean("extraLongLived", this.n);
            intents.setExtras(this.p);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            a.a(intents, this.B);
        }
        return intents.build();
    }

    public final void a(Intent intent) throws PackageManager.NameNotFoundException {
        intent.putExtra("android.intent.extra.shortcut.INTENT", this.d[r0.length - 1]).putExtra("android.intent.extra.shortcut.NAME", this.f.toString());
        if (this.i != null) {
            Drawable activityIcon = null;
            if (this.j) {
                PackageManager packageManager = this.f989a.getPackageManager();
                ComponentName componentName = this.e;
                if (componentName != null) {
                    try {
                        activityIcon = packageManager.getActivityIcon(componentName);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                if (activityIcon == null) {
                    activityIcon = this.f989a.getApplicationInfo().loadIcon(packageManager);
                }
            }
            this.i.addToShortcutIntent(intent, activityIcon, this.f989a);
        }
    }

    @NonNull
    public String getId() {
        return this.f990b;
    }

    @NonNull
    public String getPackage() {
        return this.c;
    }

    @Nullable
    public ComponentName getActivity() {
        return this.e;
    }

    @NonNull
    public CharSequence getShortLabel() {
        return this.f;
    }

    @Nullable
    public CharSequence getLongLabel() {
        return this.f991g;
    }

    @Nullable
    public CharSequence getDisabledMessage() {
        return this.h;
    }

    public int getDisabledReason() {
        return this.A;
    }

    @NonNull
    public Intent getIntent() {
        return this.d[r0.length - 1];
    }

    @NonNull
    public Intent[] getIntents() {
        Intent[] intentArr = this.d;
        return (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
    }

    @Nullable
    public Set<String> getCategories() {
        return this.l;
    }

    @Nullable
    public LocusIdCompat getLocusId() {
        return this.m;
    }

    public int getRank() {
        return this.o;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public IconCompat getIcon() {
        return this.i;
    }

    public static ArrayList b(Context context, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Builder(context, androidx.core.content.pm.a.h(it.next())).build());
        }
        return arrayList;
    }

    @Nullable
    public PersistableBundle getExtras() {
        return this.p;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Bundle getTransientExtras() {
        return this.q;
    }

    @Nullable
    public UserHandle getUserHandle() {
        return this.s;
    }

    public long getLastChangedTimestamp() {
        return this.r;
    }

    public boolean isCached() {
        return this.t;
    }

    public boolean isDynamic() {
        return this.u;
    }

    public boolean isPinned() {
        return this.v;
    }

    public boolean isDeclaredInManifest() {
        return this.w;
    }

    public boolean isImmutable() {
        return this.x;
    }

    public boolean isEnabled() {
        return this.y;
    }

    public boolean hasKeyFieldsOnly() {
        return this.z;
    }

    public boolean isExcludedFromSurfaces(int i) {
        return (i & this.B) != 0;
    }

    public int getExcludedFromSurfaces() {
        return this.B;
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final ShortcutInfoCompat f992a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f993b;
        public HashSet c;
        public HashMap d;
        public Uri e;

        public Builder(@NonNull Context context, @NonNull String str) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.f992a = shortcutInfoCompat;
            shortcutInfoCompat.f989a = context;
            shortcutInfoCompat.f990b = str;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(@NonNull ShortcutInfoCompat shortcutInfoCompat) {
            ShortcutInfoCompat shortcutInfoCompat2 = new ShortcutInfoCompat();
            this.f992a = shortcutInfoCompat2;
            shortcutInfoCompat2.f989a = shortcutInfoCompat.f989a;
            shortcutInfoCompat2.f990b = shortcutInfoCompat.f990b;
            shortcutInfoCompat2.c = shortcutInfoCompat.c;
            Intent[] intentArr = shortcutInfoCompat.d;
            shortcutInfoCompat2.d = (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
            shortcutInfoCompat2.e = shortcutInfoCompat.e;
            shortcutInfoCompat2.f = shortcutInfoCompat.f;
            shortcutInfoCompat2.f991g = shortcutInfoCompat.f991g;
            shortcutInfoCompat2.h = shortcutInfoCompat.h;
            shortcutInfoCompat2.A = shortcutInfoCompat.A;
            shortcutInfoCompat2.i = shortcutInfoCompat.i;
            shortcutInfoCompat2.j = shortcutInfoCompat.j;
            shortcutInfoCompat2.s = shortcutInfoCompat.s;
            shortcutInfoCompat2.r = shortcutInfoCompat.r;
            shortcutInfoCompat2.t = shortcutInfoCompat.t;
            shortcutInfoCompat2.u = shortcutInfoCompat.u;
            shortcutInfoCompat2.v = shortcutInfoCompat.v;
            shortcutInfoCompat2.w = shortcutInfoCompat.w;
            shortcutInfoCompat2.x = shortcutInfoCompat.x;
            shortcutInfoCompat2.y = shortcutInfoCompat.y;
            shortcutInfoCompat2.m = shortcutInfoCompat.m;
            shortcutInfoCompat2.n = shortcutInfoCompat.n;
            shortcutInfoCompat2.z = shortcutInfoCompat.z;
            shortcutInfoCompat2.o = shortcutInfoCompat.o;
            Person[] personArr = shortcutInfoCompat.k;
            if (personArr != null) {
                shortcutInfoCompat2.k = (Person[]) Arrays.copyOf(personArr, personArr.length);
            }
            if (shortcutInfoCompat.l != null) {
                shortcutInfoCompat2.l = new HashSet(shortcutInfoCompat.l);
            }
            PersistableBundle persistableBundle = shortcutInfoCompat.p;
            if (persistableBundle != null) {
                shortcutInfoCompat2.p = persistableBundle;
            }
            shortcutInfoCompat2.B = shortcutInfoCompat.B;
        }

        @RequiresApi(25)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(@NonNull Context context, @NonNull ShortcutInfo shortcutInfo) {
            Person[] personArr;
            String string;
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.f992a = shortcutInfoCompat;
            shortcutInfoCompat.f989a = context;
            shortcutInfoCompat.f990b = shortcutInfo.getId();
            shortcutInfoCompat.c = shortcutInfo.getPackage();
            Intent[] intents = shortcutInfo.getIntents();
            shortcutInfoCompat.d = (Intent[]) Arrays.copyOf(intents, intents.length);
            shortcutInfoCompat.e = shortcutInfo.getActivity();
            shortcutInfoCompat.f = shortcutInfo.getShortLabel();
            shortcutInfoCompat.f991g = shortcutInfo.getLongLabel();
            shortcutInfoCompat.h = shortcutInfo.getDisabledMessage();
            int i = 0;
            if (Build.VERSION.SDK_INT >= 28) {
                shortcutInfoCompat.A = shortcutInfo.getDisabledReason();
            } else {
                shortcutInfoCompat.A = shortcutInfo.isEnabled() ? 0 : 3;
            }
            shortcutInfoCompat.l = shortcutInfo.getCategories();
            PersistableBundle extras = shortcutInfo.getExtras();
            LocusIdCompat locusIdCompat = null;
            if (extras == null || !extras.containsKey("extraPersonCount")) {
                personArr = null;
            } else {
                int i2 = extras.getInt("extraPersonCount");
                personArr = new Person[i2];
                while (i < i2) {
                    StringBuilder sb = new StringBuilder("extraPerson_");
                    int i3 = i + 1;
                    sb.append(i3);
                    personArr[i] = Person.fromPersistableBundle(extras.getPersistableBundle(sb.toString()));
                    i = i3;
                }
            }
            shortcutInfoCompat.k = personArr;
            this.f992a.s = shortcutInfo.getUserHandle();
            this.f992a.r = shortcutInfo.getLastChangedTimestamp();
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 30) {
                this.f992a.t = shortcutInfo.isCached();
            }
            this.f992a.u = shortcutInfo.isDynamic();
            this.f992a.v = shortcutInfo.isPinned();
            this.f992a.w = shortcutInfo.isDeclaredInManifest();
            this.f992a.x = shortcutInfo.isImmutable();
            this.f992a.y = shortcutInfo.isEnabled();
            this.f992a.z = shortcutInfo.hasKeyFieldsOnly();
            ShortcutInfoCompat shortcutInfoCompat2 = this.f992a;
            if (i4 >= 29) {
                if (shortcutInfo.getLocusId() != null) {
                    locusIdCompat = LocusIdCompat.toLocusIdCompat(shortcutInfo.getLocusId());
                }
            } else {
                PersistableBundle extras2 = shortcutInfo.getExtras();
                if (extras2 != null && (string = extras2.getString("extraLocusId")) != null) {
                    locusIdCompat = new LocusIdCompat(string);
                }
            }
            shortcutInfoCompat2.m = locusIdCompat;
            this.f992a.o = shortcutInfo.getRank();
            this.f992a.p = shortcutInfo.getExtras();
        }

        @NonNull
        public Builder setShortLabel(@NonNull CharSequence charSequence) {
            this.f992a.f = charSequence;
            return this;
        }

        @NonNull
        public Builder setLongLabel(@NonNull CharSequence charSequence) {
            this.f992a.f991g = charSequence;
            return this;
        }

        @NonNull
        public Builder setDisabledMessage(@NonNull CharSequence charSequence) {
            this.f992a.h = charSequence;
            return this;
        }

        @NonNull
        public Builder setIntent(@NonNull Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        @NonNull
        public Builder setIntents(@NonNull Intent[] intentArr) {
            this.f992a.d = intentArr;
            return this;
        }

        @NonNull
        public Builder setIcon(IconCompat iconCompat) {
            this.f992a.i = iconCompat;
            return this;
        }

        @NonNull
        public Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
            this.f992a.m = locusIdCompat;
            return this;
        }

        @NonNull
        public Builder setIsConversation() {
            this.f993b = true;
            return this;
        }

        @NonNull
        public Builder setActivity(@NonNull ComponentName componentName) {
            this.f992a.e = componentName;
            return this;
        }

        @NonNull
        public Builder setAlwaysBadged() {
            this.f992a.j = true;
            return this;
        }

        @NonNull
        public Builder setPerson(@NonNull Person person) {
            return setPersons(new Person[]{person});
        }

        @NonNull
        public Builder setPersons(@NonNull Person[] personArr) {
            this.f992a.k = personArr;
            return this;
        }

        @NonNull
        public Builder setCategories(@NonNull Set<String> set) {
            this.f992a.l = set;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setLongLived() {
            this.f992a.n = true;
            return this;
        }

        @NonNull
        public Builder setLongLived(boolean z) {
            this.f992a.n = z;
            return this;
        }

        @NonNull
        public Builder setExcludedFromSurfaces(int i) {
            this.f992a.B = i;
            return this;
        }

        @NonNull
        public Builder setRank(int i) {
            this.f992a.o = i;
            return this;
        }

        @NonNull
        public Builder setExtras(@NonNull PersistableBundle persistableBundle) {
            this.f992a.p = persistableBundle;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder setTransientExtras(@NonNull Bundle bundle) {
            this.f992a.q = (Bundle) Preconditions.checkNotNull(bundle);
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addCapabilityBinding(@NonNull String str) {
            if (this.c == null) {
                this.c = new HashSet();
            }
            this.c.add(str);
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addCapabilityBinding(@NonNull String str, @NonNull String str2, @NonNull List<String> list) {
            addCapabilityBinding(str);
            if (!list.isEmpty()) {
                if (this.d == null) {
                    this.d = new HashMap();
                }
                if (this.d.get(str) == null) {
                    this.d.put(str, new HashMap());
                }
                ((Map) this.d.get(str)).put(str2, list);
            }
            return this;
        }

        @NonNull
        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder setSliceUri(@NonNull Uri uri) {
            this.e = uri;
            return this;
        }

        @NonNull
        public ShortcutInfoCompat build() {
            ShortcutInfoCompat shortcutInfoCompat = this.f992a;
            if (TextUtils.isEmpty(shortcutInfoCompat.f)) {
                throw new IllegalArgumentException("Shortcut must have a non-empty label");
            }
            Intent[] intentArr = shortcutInfoCompat.d;
            if (intentArr == null || intentArr.length == 0) {
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
            if (this.f993b) {
                if (shortcutInfoCompat.m == null) {
                    shortcutInfoCompat.m = new LocusIdCompat(shortcutInfoCompat.f990b);
                }
                shortcutInfoCompat.n = true;
            }
            if (this.c != null) {
                if (shortcutInfoCompat.l == null) {
                    shortcutInfoCompat.l = new HashSet();
                }
                shortcutInfoCompat.l.addAll(this.c);
            }
            if (this.d != null) {
                if (shortcutInfoCompat.p == null) {
                    shortcutInfoCompat.p = new PersistableBundle();
                }
                for (String str : this.d.keySet()) {
                    Map map = (Map) this.d.get(str);
                    shortcutInfoCompat.p.putStringArray(str, (String[]) map.keySet().toArray(new String[0]));
                    for (String str2 : map.keySet()) {
                        List list = (List) map.get(str2);
                        shortcutInfoCompat.p.putStringArray(_COROUTINE.a.j(str, "/", str2), list == null ? new String[0] : (String[]) list.toArray(new String[0]));
                    }
                }
            }
            if (this.e != null) {
                if (shortcutInfoCompat.p == null) {
                    shortcutInfoCompat.p = new PersistableBundle();
                }
                shortcutInfoCompat.p.putString("extraSliceUri", UriCompat.toSafeString(this.e));
            }
            return shortcutInfoCompat;
        }
    }

    @RequiresApi(33)
    public static class a {
        private a() {
        }

        public static void a(ShortcutInfo.Builder builder, int i) {
            builder.setExcludedFromSurfaces(i);
        }
    }
}
