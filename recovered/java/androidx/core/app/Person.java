package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public class Person {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f919a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f920b;
    public String c;
    public String d;
    public boolean e;
    public boolean f;

    @NonNull
    public static Person fromBundle(@NonNull Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        return new Builder().setName(bundle.getCharSequence("name")).setIcon(bundle2 != null ? IconCompat.createFromBundle(bundle2) : null).setUri(bundle.getString("uri")).setKey(bundle.getString("key")).setBot(bundle.getBoolean("isBot")).setImportant(bundle.getBoolean("isImportant")).build();
    }

    @NonNull
    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Person fromPersistableBundle(@NonNull PersistableBundle persistableBundle) {
        return a.a(persistableBundle);
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Person fromAndroidPerson(@NonNull android.app.Person person) {
        return b.a(person);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f919a);
        IconCompat iconCompat = this.f920b;
        bundle.putBundle("icon", iconCompat != null ? iconCompat.toBundle() : null);
        bundle.putString("uri", this.c);
        bundle.putString("key", this.d);
        bundle.putBoolean("isBot", this.e);
        bundle.putBoolean("isImportant", this.f);
        return bundle;
    }

    @NonNull
    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PersistableBundle toPersistableBundle() {
        return a.b(this);
    }

    @NonNull
    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.f921a = this.f919a;
        builder.f922b = this.f920b;
        builder.c = this.c;
        builder.d = this.d;
        builder.e = this.e;
        builder.f = this.f;
        return builder;
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public android.app.Person toAndroidPerson() {
        return b.b(this);
    }

    @Nullable
    public CharSequence getName() {
        return this.f919a;
    }

    @Nullable
    public IconCompat getIcon() {
        return this.f920b;
    }

    @Nullable
    public String getUri() {
        return this.c;
    }

    @Nullable
    public String getKey() {
        return this.d;
    }

    public boolean isBot() {
        return this.e;
    }

    public boolean isImportant() {
        return this.f;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public String resolveToLegacyUri() {
        String str = this.c;
        if (str != null) {
            return str;
        }
        CharSequence charSequence = this.f919a;
        if (charSequence != null) {
            return "name:" + ((Object) charSequence);
        }
        return "";
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public CharSequence f921a;

        /* renamed from: b, reason: collision with root package name */
        public IconCompat f922b;
        public String c;
        public String d;
        public boolean e;
        public boolean f;

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f921a = charSequence;
            return this;
        }

        @NonNull
        public Builder setIcon(@Nullable IconCompat iconCompat) {
            this.f922b = iconCompat;
            return this;
        }

        @NonNull
        public Builder setUri(@Nullable String str) {
            this.c = str;
            return this;
        }

        @NonNull
        public Builder setKey(@Nullable String str) {
            this.d = str;
            return this;
        }

        @NonNull
        public Builder setBot(boolean z) {
            this.e = z;
            return this;
        }

        @NonNull
        public Builder setImportant(boolean z) {
            this.f = z;
            return this;
        }

        @NonNull
        public Person build() {
            Person person = new Person();
            person.f919a = this.f921a;
            person.f920b = this.f922b;
            person.c = this.c;
            person.d = this.d;
            person.e = this.e;
            person.f = this.f;
            return person;
        }
    }

    @RequiresApi(22)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Person a(PersistableBundle persistableBundle) {
            return new Builder().setName(persistableBundle.getString("name")).setUri(persistableBundle.getString("uri")).setKey(persistableBundle.getString("key")).setBot(persistableBundle.getBoolean("isBot")).setImportant(persistableBundle.getBoolean("isImportant")).build();
        }

        @DoNotInline
        public static PersistableBundle b(Person person) {
            PersistableBundle persistableBundle = new PersistableBundle();
            CharSequence charSequence = person.f919a;
            persistableBundle.putString("name", charSequence != null ? charSequence.toString() : null);
            persistableBundle.putString("uri", person.c);
            persistableBundle.putString("key", person.d);
            persistableBundle.putBoolean("isBot", person.e);
            persistableBundle.putBoolean("isImportant", person.f);
            return persistableBundle;
        }
    }

    @RequiresApi(28)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Person a(android.app.Person person) {
            return new Builder().setName(person.getName()).setIcon(person.getIcon() != null ? IconCompat.createFromIcon(person.getIcon()) : null).setUri(person.getUri()).setKey(person.getKey()).setBot(person.isBot()).setImportant(person.isImportant()).build();
        }

        @DoNotInline
        public static android.app.Person b(Person person) {
            return new Person.Builder().setName(person.getName()).setIcon(person.getIcon() != null ? person.getIcon().toIcon() : null).setUri(person.getUri()).setKey(person.getKey()).setBot(person.isBot()).setImportant(person.isImportant()).build();
        }
    }
}
