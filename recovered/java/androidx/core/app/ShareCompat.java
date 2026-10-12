package androidx.core.app;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.content.IntentCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "androidx.core.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_ACTIVITY_INTEROP = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "androidx.core.app.EXTRA_CALLING_PACKAGE";
    public static final String EXTRA_CALLING_PACKAGE_INTEROP = "android.support.v4.app.EXTRA_CALLING_PACKAGE";

    private ShareCompat() {
    }

    @Nullable
    public static String getCallingPackage(@NonNull Activity activity) {
        Intent intent = activity.getIntent();
        String callingPackage = activity.getCallingPackage();
        if (callingPackage != null || intent == null) {
            return callingPackage;
        }
        String stringExtra = intent.getStringExtra(EXTRA_CALLING_PACKAGE);
        return stringExtra == null ? intent.getStringExtra(EXTRA_CALLING_PACKAGE_INTEROP) : stringExtra;
    }

    @Nullable
    public static ComponentName getCallingActivity(@NonNull Activity activity) {
        Intent intent = activity.getIntent();
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            return callingActivity;
        }
        ComponentName componentName = (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY);
        return componentName == null ? (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY_INTEROP) : componentName;
    }

    @Deprecated
    public static void configureMenuItem(@NonNull MenuItem menuItem, @NonNull IntentBuilder intentBuilder) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = menuItem.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(intentBuilder.f931a);
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(".sharecompat_".concat(intentBuilder.f931a.getClass().getName()));
        shareActionProvider.setShareIntent(intentBuilder.getIntent());
        menuItem.setActionProvider(shareActionProvider);
    }

    @Deprecated
    public static void configureMenuItem(@NonNull Menu menu, @IdRes int i, @NonNull IntentBuilder intentBuilder) {
        MenuItem menuItemFindItem = menu.findItem(i);
        if (menuItemFindItem == null) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i, "Could not find menu item with id ", " in the supplied menu"));
        }
        configureMenuItem(menuItemFindItem, intentBuilder);
    }

    public static class IntentBuilder {

        /* renamed from: a, reason: collision with root package name */
        public final Context f931a;

        /* renamed from: b, reason: collision with root package name */
        public final Intent f932b;
        public CharSequence c;
        public ArrayList d;
        public ArrayList e;
        public ArrayList f;

        /* renamed from: g, reason: collision with root package name */
        public ArrayList f933g;

        @NonNull
        @Deprecated
        public static IntentBuilder from(@NonNull Activity activity) {
            return new IntentBuilder(activity);
        }

        public IntentBuilder(@NonNull Context context) {
            Activity activity;
            this.f931a = (Context) Preconditions.checkNotNull(context);
            Intent action = new Intent().setAction("android.intent.action.SEND");
            this.f932b = action;
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE, context.getPackageName());
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE_INTEROP, context.getPackageName());
            action.addFlags(524288);
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                } else {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            if (activity != null) {
                ComponentName componentName = activity.getComponentName();
                this.f932b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY, componentName);
                this.f932b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY_INTEROP, componentName);
            }
        }

        @NonNull
        public Intent getIntent() {
            ArrayList arrayList = this.d;
            if (arrayList != null) {
                a("android.intent.extra.EMAIL", arrayList);
                this.d = null;
            }
            ArrayList arrayList2 = this.e;
            if (arrayList2 != null) {
                a("android.intent.extra.CC", arrayList2);
                this.e = null;
            }
            ArrayList arrayList3 = this.f;
            if (arrayList3 != null) {
                a("android.intent.extra.BCC", arrayList3);
                this.f = null;
            }
            ArrayList arrayList4 = this.f933g;
            Intent intent = this.f932b;
            if (arrayList4 == null || arrayList4.size() <= 1) {
                intent.setAction("android.intent.action.SEND");
                ArrayList arrayList5 = this.f933g;
                if (arrayList5 != null && !arrayList5.isEmpty()) {
                    intent.putExtra("android.intent.extra.STREAM", (Parcelable) this.f933g.get(0));
                    a.b(intent, this.f933g);
                } else {
                    intent.removeExtra("android.intent.extra.STREAM");
                    a.c(intent);
                }
            } else {
                intent.setAction("android.intent.action.SEND_MULTIPLE");
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.f933g);
                a.b(intent, this.f933g);
            }
            return intent;
        }

        public final void a(String str, ArrayList arrayList) {
            Intent intent = this.f932b;
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            intent.putExtra(str, strArr);
        }

        public final void b(String str, String[] strArr) {
            Intent intent = getIntent();
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            intent.putExtra(str, strArr2);
        }

        @NonNull
        public Intent createChooserIntent() {
            return Intent.createChooser(getIntent(), this.c);
        }

        public void startChooser() {
            this.f931a.startActivity(createChooserIntent());
        }

        @NonNull
        public IntentBuilder setChooserTitle(@Nullable CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        @NonNull
        public IntentBuilder setChooserTitle(@StringRes int i) {
            return setChooserTitle(this.f931a.getText(i));
        }

        @NonNull
        public IntentBuilder setType(@Nullable String str) {
            this.f932b.setType(str);
            return this;
        }

        @NonNull
        public IntentBuilder setText(@Nullable CharSequence charSequence) {
            this.f932b.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        @NonNull
        public IntentBuilder setHtmlText(@Nullable String str) {
            Intent intent = this.f932b;
            intent.putExtra(IntentCompat.EXTRA_HTML_TEXT, str);
            if (!intent.hasExtra("android.intent.extra.TEXT")) {
                setText(Html.fromHtml(str));
            }
            return this;
        }

        @NonNull
        public IntentBuilder setStream(@Nullable Uri uri) {
            this.f933g = null;
            if (uri != null) {
                addStream(uri);
            }
            return this;
        }

        @NonNull
        public IntentBuilder addStream(@NonNull Uri uri) {
            if (this.f933g == null) {
                this.f933g = new ArrayList();
            }
            this.f933g.add(uri);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailTo(@Nullable String[] strArr) {
            if (this.d != null) {
                this.d = null;
            }
            this.f932b.putExtra("android.intent.extra.EMAIL", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailTo(@NonNull String str) {
            if (this.d == null) {
                this.d = new ArrayList();
            }
            this.d.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailTo(@NonNull String[] strArr) {
            b("android.intent.extra.EMAIL", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailCc(@Nullable String[] strArr) {
            this.f932b.putExtra("android.intent.extra.CC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailCc(@NonNull String str) {
            if (this.e == null) {
                this.e = new ArrayList();
            }
            this.e.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailCc(@NonNull String[] strArr) {
            b("android.intent.extra.CC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailBcc(@Nullable String[] strArr) {
            this.f932b.putExtra("android.intent.extra.BCC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailBcc(@NonNull String str) {
            if (this.f == null) {
                this.f = new ArrayList();
            }
            this.f.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailBcc(@NonNull String[] strArr) {
            b("android.intent.extra.BCC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setSubject(@Nullable String str) {
            this.f932b.putExtra("android.intent.extra.SUBJECT", str);
            return this;
        }
    }

    public static class IntentReader {

        /* renamed from: a, reason: collision with root package name */
        public final Context f934a;

        /* renamed from: b, reason: collision with root package name */
        public final Intent f935b;
        public final String c;
        public final ComponentName d;
        public ArrayList e;

        @NonNull
        @Deprecated
        public static IntentReader from(@NonNull Activity activity) {
            return new IntentReader(activity);
        }

        public IntentReader(@NonNull Activity activity) {
            this((Context) Preconditions.checkNotNull(activity), activity.getIntent());
        }

        public IntentReader(@NonNull Context context, @NonNull Intent intent) {
            this.f934a = (Context) Preconditions.checkNotNull(context);
            this.f935b = (Intent) Preconditions.checkNotNull(intent);
            String stringExtra = intent.getStringExtra(ShareCompat.EXTRA_CALLING_PACKAGE);
            this.c = stringExtra == null ? intent.getStringExtra(ShareCompat.EXTRA_CALLING_PACKAGE_INTEROP) : stringExtra;
            ComponentName componentName = (ComponentName) intent.getParcelableExtra(ShareCompat.EXTRA_CALLING_ACTIVITY);
            this.d = componentName == null ? (ComponentName) intent.getParcelableExtra(ShareCompat.EXTRA_CALLING_ACTIVITY_INTEROP) : componentName;
        }

        public boolean isShareIntent() {
            String action = this.f935b.getAction();
            return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
        }

        public boolean isSingleShare() {
            return "android.intent.action.SEND".equals(this.f935b.getAction());
        }

        public boolean isMultipleShare() {
            return "android.intent.action.SEND_MULTIPLE".equals(this.f935b.getAction());
        }

        @Nullable
        public String getType() {
            return this.f935b.getType();
        }

        @Nullable
        public CharSequence getText() {
            return this.f935b.getCharSequenceExtra("android.intent.extra.TEXT");
        }

        @Nullable
        public String getHtmlText() {
            String stringExtra = this.f935b.getStringExtra(IntentCompat.EXTRA_HTML_TEXT);
            if (stringExtra != null) {
                return stringExtra;
            }
            CharSequence text = getText();
            if (text instanceof Spanned) {
                return Html.toHtml((Spanned) text);
            }
            return text != null ? a.a(text) : stringExtra;
        }

        @Nullable
        public Uri getStream() {
            return (Uri) this.f935b.getParcelableExtra("android.intent.extra.STREAM");
        }

        @Nullable
        public Uri getStream(int i) {
            ArrayList arrayList = this.e;
            Intent intent = this.f935b;
            if (arrayList == null && isMultipleShare()) {
                this.e = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            ArrayList arrayList2 = this.e;
            if (arrayList2 != null) {
                return (Uri) arrayList2.get(i);
            }
            if (i == 0) {
                return (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
            }
            throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i);
        }

        public int getStreamCount() {
            ArrayList arrayList = this.e;
            Intent intent = this.f935b;
            if (arrayList == null && isMultipleShare()) {
                this.e = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            ArrayList arrayList2 = this.e;
            if (arrayList2 != null) {
                return arrayList2.size();
            }
            return intent.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
        }

        @Nullable
        public String[] getEmailTo() {
            return this.f935b.getStringArrayExtra("android.intent.extra.EMAIL");
        }

        @Nullable
        public String[] getEmailCc() {
            return this.f935b.getStringArrayExtra("android.intent.extra.CC");
        }

        @Nullable
        public String[] getEmailBcc() {
            return this.f935b.getStringArrayExtra("android.intent.extra.BCC");
        }

        @Nullable
        public String getSubject() {
            return this.f935b.getStringExtra("android.intent.extra.SUBJECT");
        }

        @Nullable
        public String getCallingPackage() {
            return this.c;
        }

        @Nullable
        public ComponentName getCallingActivity() {
            return this.d;
        }

        @Nullable
        public Drawable getCallingActivityIcon() {
            ComponentName componentName = this.d;
            if (componentName == null) {
                return null;
            }
            try {
                return this.f934a.getPackageManager().getActivityIcon(componentName);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("IntentReader", "Could not retrieve icon for calling activity", e);
                return null;
            }
        }

        @Nullable
        public Drawable getCallingApplicationIcon() {
            String str = this.c;
            if (str == null) {
                return null;
            }
            try {
                return this.f934a.getPackageManager().getApplicationIcon(str);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("IntentReader", "Could not retrieve icon for calling application", e);
                return null;
            }
        }

        @Nullable
        public CharSequence getCallingApplicationLabel() {
            String str = this.c;
            if (str == null) {
                return null;
            }
            PackageManager packageManager = this.f934a.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0));
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("IntentReader", "Could not retrieve label for calling application", e);
                return null;
            }
        }
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void b(@NonNull Intent intent, @NonNull ArrayList<Uri> arrayList) {
            ClipData clipData = new ClipData(null, new String[]{intent.getType()}, new ClipData.Item(intent.getCharSequenceExtra("android.intent.extra.TEXT"), intent.getStringExtra(IntentCompat.EXTRA_HTML_TEXT), null, arrayList.get(0)));
            int size = arrayList.size();
            for (int i = 1; i < size; i++) {
                clipData.addItem(new ClipData.Item(arrayList.get(i)));
            }
            intent.setClipData(clipData);
            intent.addFlags(1);
        }

        @DoNotInline
        public static void c(@NonNull Intent intent) {
            intent.setClipData(null);
            intent.setFlags(intent.getFlags() & (-2));
        }

        @DoNotInline
        public static String a(CharSequence charSequence) {
            return Html.escapeHtml(charSequence);
        }
    }
}
