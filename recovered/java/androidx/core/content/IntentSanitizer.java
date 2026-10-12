package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class IntentSanitizer {

    /* renamed from: a, reason: collision with root package name */
    public int f966a;

    /* renamed from: b, reason: collision with root package name */
    public Predicate f967b;
    public Predicate c;
    public Predicate d;
    public Predicate e;
    public Predicate f;

    /* renamed from: g, reason: collision with root package name */
    public Predicate f968g;
    public boolean h;
    public HashMap i;
    public boolean j;
    public Predicate k;
    public Predicate l;
    public boolean m;
    public boolean n;
    public boolean o;

    public /* synthetic */ IntentSanitizer(int i) {
        this();
    }

    private IntentSanitizer() {
    }

    @NonNull
    public Intent sanitizeByFiltering(@NonNull Intent intent) {
        return sanitize(intent, new androidx.core.content.b(1));
    }

    @NonNull
    public Intent sanitizeByThrowing(@NonNull Intent intent) {
        return sanitize(intent, new androidx.core.content.b(0));
    }

    @NonNull
    public Intent sanitize(@NonNull Intent intent, @NonNull Consumer<String> consumer) {
        Intent intent2 = new Intent();
        ComponentName component = intent.getComponent();
        if ((this.h && component == null) || this.f968g.test(component)) {
            intent2.setComponent(component);
        } else {
            consumer.accept("Component is not allowed: " + component);
            intent2.setComponent(new ComponentName("android", "java.lang.Void"));
        }
        String str = intent.getPackage();
        if (str == null || this.f.test(str)) {
            intent2.setPackage(str);
        } else {
            consumer.accept("Package is not allowed: ".concat(str));
        }
        int flags = this.f966a | intent.getFlags();
        int i = this.f966a;
        if (flags == i) {
            intent2.setFlags(intent.getFlags());
        } else {
            intent2.setFlags(intent.getFlags() & i);
            consumer.accept("The intent contains flags that are not allowed: 0x" + Integer.toHexString(intent.getFlags() & (~this.f966a)));
        }
        String action = intent.getAction();
        if (action == null || this.f967b.test(action)) {
            intent2.setAction(action);
        } else {
            consumer.accept("Action is not allowed: ".concat(action));
        }
        Uri data = intent.getData();
        if (data == null || this.c.test(data)) {
            intent2.setData(data);
        } else {
            consumer.accept("Data is not allowed: " + data);
        }
        String type = intent.getType();
        if (type == null || this.d.test(type)) {
            intent2.setDataAndType(intent2.getData(), type);
        } else {
            consumer.accept("Type is not allowed: ".concat(type));
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            for (String str2 : categories) {
                if (this.e.test(str2)) {
                    intent2.addCategory(str2);
                } else {
                    consumer.accept("Category is not allowed: " + str2);
                }
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str3 : extras.keySet()) {
                if (str3.equals("android.intent.extra.STREAM") && (this.f966a & 1) == 0) {
                    consumer.accept("Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag.");
                } else if (str3.equals("output") && ((~this.f966a) & 3) != 0) {
                    consumer.accept("Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags.");
                } else {
                    Object obj = extras.get(str3);
                    Predicate predicate = (Predicate) this.i.get(str3);
                    if (predicate == null || !predicate.test(obj)) {
                        consumer.accept("Extra is not allowed. Key: " + str3 + ". Value: " + obj);
                    } else if (obj == null) {
                        intent2.getExtras().putString(str3, null);
                    } else if (obj instanceof Parcelable) {
                        intent2.putExtra(str3, (Parcelable) obj);
                    } else if (obj instanceof Parcelable[]) {
                        intent2.putExtra(str3, (Parcelable[]) obj);
                    } else if (obj instanceof Serializable) {
                        intent2.putExtra(str3, (Serializable) obj);
                    } else {
                        throw new IllegalArgumentException("Unsupported type " + obj.getClass());
                    }
                }
            }
        }
        int i2 = Build.VERSION.SDK_INT;
        c.a(intent, intent2, this.l, this.j, this.k, consumer);
        if (i2 >= 29) {
            if (this.m) {
                d.b(intent2, d.a(intent));
            } else if (d.a(intent) != null) {
                consumer.accept("Identifier is not allowed: " + d.a(intent));
            }
        }
        if (this.n) {
            b.b(intent2, b.a(intent));
        } else if (b.a(intent) != null) {
            consumer.accept("Selector is not allowed: " + b.a(intent));
        }
        if (this.o) {
            intent2.setSourceBounds(intent.getSourceBounds());
            return intent2;
        }
        if (intent.getSourceBounds() != null) {
            consumer.accept("SourceBounds is not allowed: " + intent.getSourceBounds());
        }
        return intent2;
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public int f969a;
        public boolean h;
        public boolean i;
        public boolean n;
        public boolean o;
        public boolean p;

        /* renamed from: b, reason: collision with root package name */
        public Predicate f970b = new e(2);
        public Predicate c = new e(3);
        public Predicate d = new e(2);
        public Predicate e = new e(2);
        public Predicate f = new e(2);

        /* renamed from: g, reason: collision with root package name */
        public Predicate f971g = new e(4);
        public final HashMap j = new HashMap();
        public boolean k = false;
        public Predicate l = new e(3);
        public Predicate m = new e(5);

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowFlags(int i) {
            this.f969a = i | this.f969a;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowHistoryStackFlags() {
            this.f969a |= 2112614400;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowReceiverFlags() {
            this.f969a |= 2015363072;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAction(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            allowAction(new androidx.core.content.c(str, 3));
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAction(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f970b = this.f970b.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowDataWithAuthority(@NonNull String str) {
            Preconditions.checkNotNull(str);
            allowData(new androidx.core.content.c(str, 5));
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowData(@NonNull Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.c = this.c.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowType(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowType(new androidx.core.content.c(str, 3));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowType(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.d = this.d.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowCategory(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowCategory(new androidx.core.content.c(str, 3));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowCategory(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.e = this.e.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowPackage(@NonNull String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowPackage(new androidx.core.content.c(str, 3));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowPackage(@NonNull Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.f = this.f.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponent(@NonNull ComponentName componentName) {
            Preconditions.checkNotNull(componentName);
            Objects.requireNonNull(componentName);
            return allowComponent(new androidx.core.content.d(componentName, 0));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponent(@NonNull Predicate<ComponentName> predicate) {
            Preconditions.checkNotNull(predicate);
            this.i = true;
            this.f971g = this.f971g.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponentWithPackage(@NonNull String str) {
            Preconditions.checkNotNull(str);
            return allowComponent(new androidx.core.content.c(str, 4));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAnyComponent() {
            this.h = true;
            this.f971g = new e(0);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataText() {
            this.k = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataUriWithAuthority(@NonNull String str) {
            Preconditions.checkNotNull(str);
            return allowClipDataUri(new androidx.core.content.c(str, 1));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataUri(@NonNull Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.l = this.l.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipData(@NonNull Predicate<ClipData> predicate) {
            Preconditions.checkNotNull(predicate);
            this.m = this.m.or(predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtra(@NonNull String str, @NonNull Class<?> cls) {
            return allowExtra(str, cls, new e(6));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public <T> Builder allowExtra(@NonNull String str, @NonNull Class<T> cls, @NonNull Predicate<T> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(predicate);
            return allowExtra(str, new androidx.core.util.d(cls, predicate));
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtra(@NonNull String str, @NonNull Predicate<Object> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(predicate);
            HashMap map = this.j;
            Predicate eVar = (Predicate) map.get(str);
            if (eVar == null) {
                eVar = new e(1);
            }
            map.put(str, eVar.or(predicate));
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraStreamUriWithAuthority(@NonNull String str) {
            Preconditions.checkNotNull(str);
            allowExtra("android.intent.extra.STREAM", Uri.class, new androidx.core.content.c(str, 2));
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraStream(@NonNull Predicate<Uri> predicate) {
            allowExtra("android.intent.extra.STREAM", Uri.class, predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraOutput(@NonNull String str) {
            allowExtra("output", Uri.class, new androidx.core.content.c(str, 0));
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraOutput(@NonNull Predicate<Uri> predicate) {
            allowExtra("output", Uri.class, predicate);
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowIdentifier() {
            this.n = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowSelector() {
            this.o = true;
            return this;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public Builder allowSourceBounds() {
            this.p = true;
            return this;
        }

        @NonNull
        @SuppressLint({"SyntheticAccessor"})
        public IntentSanitizer build() {
            boolean z = this.h;
            if ((z && this.i) || (!z && !this.i)) {
                throw new SecurityException("You must call either allowAnyComponent or one or more of the allowComponent methods; but not both.");
            }
            IntentSanitizer intentSanitizer = new IntentSanitizer(0);
            intentSanitizer.f966a = this.f969a;
            intentSanitizer.f967b = this.f970b;
            intentSanitizer.c = this.c;
            intentSanitizer.d = this.d;
            intentSanitizer.e = this.e;
            intentSanitizer.f = this.f;
            intentSanitizer.h = this.h;
            intentSanitizer.f968g = this.f971g;
            intentSanitizer.i = this.j;
            intentSanitizer.j = this.k;
            intentSanitizer.k = this.l;
            intentSanitizer.l = this.m;
            intentSanitizer.m = this.n;
            intentSanitizer.n = this.o;
            intentSanitizer.o = this.p;
            return intentSanitizer;
        }
    }

    @RequiresApi(15)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void b(Intent intent, Intent intent2) {
            intent.setSelector(intent2);
        }

        @DoNotInline
        public static Intent a(Intent intent) {
            return intent.getSelector();
        }
    }

    @RequiresApi(16)
    public static class c {
        private c() {
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
        @androidx.annotation.DoNotInline
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void a(@androidx.annotation.NonNull android.content.Intent r7, android.content.Intent r8, androidx.core.util.Predicate<android.content.ClipData> r9, boolean r10, androidx.core.util.Predicate<android.net.Uri> r11, androidx.core.util.Consumer<java.lang.String> r12) {
            /*
                android.content.ClipData r7 = r7.getClipData()
                if (r7 != 0) goto L8
                goto Le2
            L8:
                if (r9 == 0) goto L14
                boolean r9 = r9.test(r7)
                if (r9 == 0) goto L14
                r8.setClipData(r7)
                return
            L14:
                r9 = 0
                r0 = 0
                r1 = r9
            L17:
                int r2 = r7.getItemCount()
                if (r0 >= r2) goto Ldd
                android.content.ClipData$Item r2 = r7.getItemAt(r0)
                int r3 = android.os.Build.VERSION.SDK_INT
                r4 = 31
                if (r3 < r4) goto L2b
                androidx.core.content.IntentSanitizer.c.a.a(r0, r2, r12)
                goto L50
            L2b:
                java.lang.String r3 = r2.getHtmlText()
                if (r3 != 0) goto L37
                android.content.Intent r3 = r2.getIntent()
                if (r3 == 0) goto L50
            L37:
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                java.lang.String r4 = "ClipData item at position "
                r3.<init>(r4)
                r3.append(r0)
                java.lang.String r4 = " contains htmlText, textLinks or intent: "
                r3.append(r4)
                r3.append(r2)
                java.lang.String r3 = r3.toString()
                r12.accept(r3)
            L50:
                if (r10 == 0) goto L57
                java.lang.CharSequence r3 = r2.getText()
                goto L74
            L57:
                java.lang.CharSequence r3 = r2.getText()
                if (r3 == 0) goto L73
                java.lang.String r3 = "Item text cannot contain value. Item position: "
                java.lang.String r4 = ". Text: "
                java.lang.StringBuilder r3 = _COROUTINE.a.o(r0, r3, r4)
                java.lang.CharSequence r4 = r2.getText()
                r3.append(r4)
                java.lang.String r3 = r3.toString()
                r12.accept(r3)
            L73:
                r3 = r9
            L74:
                java.lang.String r4 = ". URI: "
                java.lang.String r5 = "Item URI is not allowed. Item position: "
                if (r11 != 0) goto L93
                android.net.Uri r6 = r2.getUri()
                if (r6 == 0) goto Lb6
                java.lang.StringBuilder r4 = _COROUTINE.a.o(r0, r5, r4)
                android.net.Uri r2 = r2.getUri()
                r4.append(r2)
                java.lang.String r2 = r4.toString()
                r12.accept(r2)
                goto Lb6
            L93:
                android.net.Uri r6 = r2.getUri()
                if (r6 == 0) goto Lb8
                android.net.Uri r6 = r2.getUri()
                boolean r6 = r11.test(r6)
                if (r6 == 0) goto La4
                goto Lb8
            La4:
                java.lang.StringBuilder r4 = _COROUTINE.a.o(r0, r5, r4)
                android.net.Uri r2 = r2.getUri()
                r4.append(r2)
                java.lang.String r2 = r4.toString()
                r12.accept(r2)
            Lb6:
                r2 = r9
                goto Lbc
            Lb8:
                android.net.Uri r2 = r2.getUri()
            Lbc:
                if (r3 != 0) goto Lc0
                if (r2 == 0) goto Ld9
            Lc0:
                if (r1 != 0) goto Ld1
                android.content.ClipData r1 = new android.content.ClipData
                android.content.ClipDescription r4 = r7.getDescription()
                android.content.ClipData$Item r5 = new android.content.ClipData$Item
                r5.<init>(r3, r9, r2)
                r1.<init>(r4, r5)
                goto Ld9
            Ld1:
                android.content.ClipData$Item r4 = new android.content.ClipData$Item
                r4.<init>(r3, r9, r2)
                r1.addItem(r4)
            Ld9:
                int r0 = r0 + 1
                goto L17
            Ldd:
                if (r1 == 0) goto Le2
                r8.setClipData(r1)
            Le2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.IntentSanitizer.c.a(android.content.Intent, android.content.Intent, androidx.core.util.Predicate, boolean, androidx.core.util.Predicate, androidx.core.util.Consumer):void");
        }

        @RequiresApi(31)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static void a(int i, ClipData.Item item, Consumer<String> consumer) {
                if (item.getHtmlText() == null && item.getIntent() == null && item.getTextLinks() == null) {
                    return;
                }
                consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
            }
        }
    }

    @RequiresApi(29)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static Intent b(Intent intent, String str) {
            return intent.setIdentifier(str);
        }

        @DoNotInline
        public static String a(Intent intent) {
            return intent.getIdentifier();
        }
    }
}
