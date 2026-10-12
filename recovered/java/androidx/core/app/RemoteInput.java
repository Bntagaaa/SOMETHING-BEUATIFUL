package androidx.core.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class RemoteInput {
    public static final int EDIT_CHOICES_BEFORE_SENDING_AUTO = 0;
    public static final int EDIT_CHOICES_BEFORE_SENDING_DISABLED = 1;
    public static final int EDIT_CHOICES_BEFORE_SENDING_ENABLED = 2;
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    public static final int SOURCE_CHOICE = 1;
    public static final int SOURCE_FREE_FORM_INPUT = 0;

    /* renamed from: a, reason: collision with root package name */
    public final String f925a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f926b;
    public final CharSequence[] c;
    public final boolean d;
    public final int e;
    public final Bundle f;

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f927g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Source {
    }

    public RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, HashSet hashSet) {
        this.f925a = str;
        this.f926b = charSequence;
        this.c = charSequenceArr;
        this.d = z;
        this.e = i;
        this.f = bundle;
        this.f927g = hashSet;
        if (getEditChoicesBeforeSending() == 2 && !getAllowFreeFormInput()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    @NonNull
    public String getResultKey() {
        return this.f925a;
    }

    @Nullable
    public CharSequence getLabel() {
        return this.f926b;
    }

    @Nullable
    public CharSequence[] getChoices() {
        return this.c;
    }

    @Nullable
    public Set<String> getAllowedDataTypes() {
        return this.f927g;
    }

    public boolean isDataOnly() {
        if (getAllowFreeFormInput()) {
            return false;
        }
        return ((getChoices() != null && getChoices().length != 0) || getAllowedDataTypes() == null || getAllowedDataTypes().isEmpty()) ? false : true;
    }

    public boolean getAllowFreeFormInput() {
        return this.d;
    }

    public int getEditChoicesBeforeSending() {
        return this.e;
    }

    @NonNull
    public Bundle getExtras() {
        return this.f;
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final String f928a;
        public CharSequence d;
        public CharSequence[] e;

        /* renamed from: b, reason: collision with root package name */
        public final HashSet f929b = new HashSet();
        public final Bundle c = new Bundle();
        public boolean f = true;

        /* renamed from: g, reason: collision with root package name */
        public int f930g = 0;

        public Builder(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.f928a = str;
        }

        @NonNull
        public Builder setLabel(@Nullable CharSequence charSequence) {
            this.d = charSequence;
            return this;
        }

        @NonNull
        public Builder setChoices(@Nullable CharSequence[] charSequenceArr) {
            this.e = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder setAllowDataType(@NonNull String str, boolean z) {
            HashSet hashSet = this.f929b;
            if (z) {
                hashSet.add(str);
                return this;
            }
            hashSet.remove(str);
            return this;
        }

        @NonNull
        public Builder setAllowFreeFormInput(boolean z) {
            this.f = z;
            return this;
        }

        @NonNull
        public Builder setEditChoicesBeforeSending(int i) {
            this.f930g = i;
            return this;
        }

        @NonNull
        public Builder addExtras(@NonNull Bundle bundle) {
            if (bundle != null) {
                this.c.putAll(bundle);
            }
            return this;
        }

        @NonNull
        public Bundle getExtras() {
            return this.c;
        }

        @NonNull
        public RemoteInput build() {
            return new RemoteInput(this.f928a, this.d, this.e, this.f, this.f930g, this.c, this.f929b);
        }
    }

    @Nullable
    public static Map<String, Uri> getDataResultsFromIntent(@NonNull Intent intent, @NonNull String str) {
        String string;
        if (Build.VERSION.SDK_INT >= 26) {
            return c.c(intent, str);
        }
        Intent intentB = b(intent);
        if (intentB == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str2 : intentB.getExtras().keySet()) {
            if (str2.startsWith("android.remoteinput.dataTypeResultsData")) {
                String strSubstring = str2.substring(39);
                if (!strSubstring.isEmpty() && (string = intentB.getBundleExtra(str2).getString(str)) != null && !string.isEmpty()) {
                    map.put(strSubstring, Uri.parse(string));
                }
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    @Nullable
    public static Bundle getResultsFromIntent(@NonNull Intent intent) {
        return b.b(intent);
    }

    public static void addResultsToIntent(@NonNull RemoteInput[] remoteInputArr, @NonNull Intent intent, @NonNull Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.a(a(remoteInputArr), intent, bundle);
            return;
        }
        Bundle resultsFromIntent = getResultsFromIntent(intent);
        int resultsSource = getResultsSource(intent);
        if (resultsFromIntent != null) {
            resultsFromIntent.putAll(bundle);
            bundle = resultsFromIntent;
        }
        for (RemoteInput remoteInput : remoteInputArr) {
            Map<String, Uri> dataResultsFromIntent = getDataResultsFromIntent(intent, remoteInput.getResultKey());
            b.a(a(new RemoteInput[]{remoteInput}), intent, bundle);
            if (dataResultsFromIntent != null) {
                addDataResultToIntent(remoteInput, intent, dataResultsFromIntent);
            }
        }
        setResultsSource(intent, resultsSource);
    }

    public static void addDataResultToIntent(@NonNull RemoteInput remoteInput, @NonNull Intent intent, @NonNull Map<String, Uri> map) {
        if (Build.VERSION.SDK_INT >= 26) {
            c.a(remoteInput, intent, map);
            return;
        }
        Intent intentB = b(intent);
        if (intentB == null) {
            intentB = new Intent();
        }
        for (Map.Entry<String, Uri> entry : map.entrySet()) {
            String key = entry.getKey();
            Uri value = entry.getValue();
            if (key != null) {
                Bundle bundleExtra = intentB.getBundleExtra("android.remoteinput.dataTypeResultsData".concat(key));
                if (bundleExtra == null) {
                    bundleExtra = new Bundle();
                }
                bundleExtra.putString(remoteInput.getResultKey(), value.toString());
                intentB.putExtra("android.remoteinput.dataTypeResultsData".concat(key), bundleExtra);
            }
        }
        a.b(intent, ClipData.newIntent(RESULTS_CLIP_LABEL, intentB));
    }

    public static void setResultsSource(@NonNull Intent intent, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            d.b(intent, i);
            return;
        }
        Intent intentB = b(intent);
        if (intentB == null) {
            intentB = new Intent();
        }
        intentB.putExtra("android.remoteinput.resultsSource", i);
        a.b(intent, ClipData.newIntent(RESULTS_CLIP_LABEL, intentB));
    }

    public static int getResultsSource(@NonNull Intent intent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return d.a(intent);
        }
        Intent intentB = b(intent);
        if (intentB == null) {
            return 0;
        }
        return intentB.getExtras().getInt("android.remoteinput.resultsSource", 0);
    }

    public static android.app.RemoteInput[] a(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            remoteInputArr2[i] = b.fromCompat(remoteInputArr[i]);
        }
        return remoteInputArr2;
    }

    @RequiresApi(26)
    public static class c {
        @DoNotInline
        public static void a(RemoteInput remoteInput, Intent intent, Map<String, Uri> map) {
            android.app.RemoteInput.addDataResultToIntent(b.fromCompat(remoteInput), intent, map);
        }

        private c() {
        }

        @DoNotInline
        public static Map<String, Uri> c(Intent intent, String str) {
            return android.app.RemoteInput.getDataResultsFromIntent(intent, str);
        }

        @DoNotInline
        public static Set<String> b(Object obj) {
            return ((android.app.RemoteInput) obj).getAllowedDataTypes();
        }

        @DoNotInline
        public static RemoteInput.Builder d(RemoteInput.Builder builder, String str, boolean z) {
            return builder.setAllowDataType(str, z);
        }
    }

    public static Intent b(Intent intent) {
        ClipData clipDataA = a.a(intent);
        if (clipDataA == null) {
            return null;
        }
        ClipDescription description = clipDataA.getDescription();
        if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().toString().contentEquals(RESULTS_CLIP_LABEL)) {
            return clipDataA.getItemAt(0).getIntent();
        }
        return null;
    }

    @RequiresApi(20)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Bundle b(Intent intent) {
            return android.app.RemoteInput.getResultsFromIntent(intent);
        }

        @DoNotInline
        public static void a(Object obj, Intent intent, Bundle bundle) {
            android.app.RemoteInput.addResultsToIntent((android.app.RemoteInput[]) obj, intent, bundle);
        }

        public static android.app.RemoteInput fromCompat(RemoteInput remoteInput) {
            Set<String> allowedDataTypes;
            RemoteInput.Builder builderAddExtras = new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
            if (Build.VERSION.SDK_INT >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
                Iterator<String> it = allowedDataTypes.iterator();
                while (it.hasNext()) {
                    c.d(builderAddExtras, it.next(), true);
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                e.b(builderAddExtras, remoteInput.getEditChoicesBeforeSending());
            }
            return builderAddExtras.build();
        }
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static ClipData a(Intent intent) {
            return intent.getClipData();
        }

        @DoNotInline
        public static void b(Intent intent, ClipData clipData) {
            intent.setClipData(clipData);
        }
    }

    @RequiresApi(29)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static int a(Object obj) {
            return ((android.app.RemoteInput) obj).getEditChoicesBeforeSending();
        }

        @DoNotInline
        public static RemoteInput.Builder b(RemoteInput.Builder builder, int i) {
            return builder.setEditChoicesBeforeSending(i);
        }
    }

    @RequiresApi(28)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static void b(Intent intent, int i) {
            android.app.RemoteInput.setResultsSource(intent, i);
        }

        @DoNotInline
        public static int a(Intent intent) {
            return android.app.RemoteInput.getResultsSource(intent);
        }
    }
}
