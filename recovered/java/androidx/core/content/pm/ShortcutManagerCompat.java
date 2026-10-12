package androidx.core.content.pm;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ShortcutManagerCompat {
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;

    /* renamed from: a, reason: collision with root package name */
    public static volatile ShortcutInfoCompatSaver f994a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile ArrayList f995b;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ShortcutMatchFlags {
    }

    private ShortcutManagerCompat() {
    }

    public static boolean isRequestPinShortcutSupported(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).isRequestPinShortcutSupported();
        }
        if (ContextCompat.checkSelfPermission(context, "com.android.launcher.permission.INSTALL_SHORTCUT") == 0) {
            Iterator<ResolveInfo> it = context.getPackageManager().queryBroadcastReceivers(new Intent("com.android.launcher.action.INSTALL_SHORTCUT"), 0).iterator();
            while (it.hasNext()) {
                String str = it.next().activityInfo.permission;
                if (TextUtils.isEmpty(str) || "com.android.launcher.permission.INSTALL_SHORTCUT".equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean requestPinShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat, @Nullable IntentSender intentSender) throws PackageManager.NameNotFoundException {
        int i = Build.VERSION.SDK_INT;
        if (i <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            return false;
        }
        if (i >= 26) {
            return androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
        }
        if (!isRequestPinShortcutSupported(context)) {
            return false;
        }
        Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        shortcutInfoCompat.a(intent);
        if (intentSender == null) {
            context.sendBroadcast(intent);
            return true;
        }
        context.sendOrderedBroadcast(intent, null, new a(intentSender), null, -1, null, null);
        return true;
    }

    public class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ IntentSender f996a;

        public a(IntentSender intentSender) {
            this.f996a = intentSender;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IntentSender.SendIntentException {
            try {
                this.f996a.sendIntent(context, 0, null, null, null);
            } catch (IntentSender.SendIntentException unused) {
            }
        }
    }

    @NonNull
    public static Intent createShortcutResultIntent(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) throws PackageManager.NameNotFoundException {
        Intent intentCreateShortcutResultIntent = Build.VERSION.SDK_INT >= 26 ? androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).createShortcutResultIntent(shortcutInfoCompat.toShortcutInfo()) : null;
        if (intentCreateShortcutResultIntent == null) {
            intentCreateShortcutResultIntent = new Intent();
        }
        shortcutInfoCompat.a(intentCreateShortcutResultIntent);
        return intentCreateShortcutResultIntent;
    }

    @NonNull
    public static List<ShortcutInfoCompat> getShortcuts(@NonNull Context context, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            return ShortcutInfoCompat.b(context, androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).getShortcuts(i));
        }
        if (i2 >= 25) {
            ShortcutManager shortcutManagerB = androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d()));
            ArrayList arrayList = new ArrayList();
            if ((i & 1) != 0) {
                arrayList.addAll(shortcutManagerB.getManifestShortcuts());
            }
            if ((i & 2) != 0) {
                arrayList.addAll(shortcutManagerB.getDynamicShortcuts());
            }
            if ((i & 4) != 0) {
                arrayList.addAll(shortcutManagerB.getPinnedShortcuts());
            }
            return ShortcutInfoCompat.b(context, arrayList);
        }
        if ((i & 2) != 0) {
            try {
                return e(context).getShortcuts();
            } catch (Exception unused) {
            }
        }
        return Collections.EMPTY_LIST;
    }

    public static boolean addDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> listF = f(list);
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            b(context, listF);
        }
        if (i >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            if (!androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).addDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        e(context).addShortcuts(listF);
        Iterator it2 = ((ArrayList) d(context)).iterator();
        while (it2.hasNext()) {
            ((ShortcutInfoChangeListener) it2.next()).onShortcutAdded(list);
        }
        return true;
    }

    public static int getMaxShortcutCountPerActivity(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).getMaxShortcutCountPerActivity();
        }
        return 5;
    }

    public static boolean isRateLimitingActive(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).isRateLimitingActive();
        }
        return getShortcuts(context, 3).size() == getMaxShortcutCountPerActivity(context);
    }

    public static int getIconMaxWidth(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).getIconMaxWidth();
        }
        return c(context, true);
    }

    public static int getIconMaxHeight(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).getIconMaxHeight();
        }
        return c(context, false);
    }

    public static void reportShortcutUsed(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).reportShortcutUsed(str);
        }
        Iterator it = ((ArrayList) d(context)).iterator();
        while (it.hasNext()) {
            ((ShortcutInfoChangeListener) it.next()).onShortcutUsageReported(Collections.singletonList(str));
        }
    }

    public static boolean setDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(list);
        List<ShortcutInfoCompat> listF = f(list);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(listF.size());
            Iterator<ShortcutInfoCompat> it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            if (!androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).setDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        e(context).removeAllShortcuts();
        e(context).addShortcuts(listF);
        Iterator it2 = ((ArrayList) d(context)).iterator();
        while (it2.hasNext()) {
            ShortcutInfoChangeListener shortcutInfoChangeListener = (ShortcutInfoChangeListener) it2.next();
            shortcutInfoChangeListener.onAllShortcutsRemoved();
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    @NonNull
    public static List<ShortcutInfoCompat> getDynamicShortcuts(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            List dynamicShortcuts = androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            Iterator it = dynamicShortcuts.iterator();
            while (it.hasNext()) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, androidx.core.content.pm.a.h(it.next())).build());
            }
            return arrayList;
        }
        try {
            return e(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static boolean updateShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> listF = f(list);
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            b(context, listF);
        }
        if (i >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            if (!androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).updateShortcuts(arrayList)) {
                return false;
            }
        }
        e(context).addShortcuts(listF);
        Iterator it2 = ((ArrayList) d(context)).iterator();
        while (it2.hasNext()) {
            ((ShortcutInfoChangeListener) it2.next()).onShortcutUpdated(list);
        }
        return true;
    }

    public static boolean a(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap bitmapDecodeStream;
        IconCompat iconCompatCreateWithBitmap;
        IconCompat iconCompat = shortcutInfoCompat.i;
        if (iconCompat == null) {
            return false;
        }
        int i = iconCompat.mType;
        if (i != 6 && i != 4) {
            return true;
        }
        InputStream uriInputStream = iconCompat.getUriInputStream(context);
        if (uriInputStream == null || (bitmapDecodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
            return false;
        }
        if (i == 6) {
            iconCompatCreateWithBitmap = IconCompat.createWithAdaptiveBitmap(bitmapDecodeStream);
        } else {
            iconCompatCreateWithBitmap = IconCompat.createWithBitmap(bitmapDecodeStream);
        }
        shortcutInfoCompat.i = iconCompatCreateWithBitmap;
        return true;
    }

    public static void b(Context context, List list) {
        Iterator it = new ArrayList(list).iterator();
        while (it.hasNext()) {
            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) it.next();
            if (!a(context, shortcutInfoCompat)) {
                list.remove(shortcutInfoCompat);
            }
        }
    }

    public static void disableShortcuts(@NonNull Context context, @NonNull List<String> list, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 25) {
            androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).disableShortcuts(list, charSequence);
        }
        e(context).removeShortcuts(list);
        Iterator it = ((ArrayList) d(context)).iterator();
        while (it.hasNext()) {
            ((ShortcutInfoChangeListener) it.next()).onShortcutRemoved(list);
        }
    }

    public static void enableShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> listF = f(list);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<ShortcutInfoCompat> it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().f990b);
            }
            androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).enableShortcuts(arrayList);
        }
        e(context).addShortcuts(listF);
        Iterator it2 = ((ArrayList) d(context)).iterator();
        while (it2.hasNext()) {
            ((ShortcutInfoChangeListener) it2.next()).onShortcutAdded(list);
        }
    }

    public static void removeDynamicShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).removeDynamicShortcuts(list);
        }
        e(context).removeShortcuts(list);
        Iterator it = ((ArrayList) d(context)).iterator();
        while (it.hasNext()) {
            ((ShortcutInfoChangeListener) it.next()).onShortcutRemoved(list);
        }
    }

    public static void removeAllDynamicShortcuts(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).removeAllDynamicShortcuts();
        }
        e(context).removeAllShortcuts();
        Iterator it = ((ArrayList) d(context)).iterator();
        while (it.hasNext()) {
            ((ShortcutInfoChangeListener) it.next()).onAllShortcutsRemoved();
        }
    }

    public static void removeLongLivedShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT < 30) {
            removeDynamicShortcuts(context, list);
            return;
        }
        androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).removeLongLivedShortcuts(list);
        e(context).removeShortcuts(list);
        Iterator it = ((ArrayList) d(context)).iterator();
        while (it.hasNext()) {
            ((ShortcutInfoChangeListener) it.next()).onShortcutRemoved(list);
        }
    }

    public static boolean pushDynamicShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int i = Build.VERSION.SDK_INT;
        if (i <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            Iterator it = ((ArrayList) d(context)).iterator();
            while (it.hasNext()) {
                ((ShortcutInfoChangeListener) it.next()).onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            return true;
        }
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity != 0) {
            if (i <= 29) {
                a(context, shortcutInfoCompat);
            }
            if (i >= 30) {
                androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d())).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
            } else if (i >= 25) {
                ShortcutManager shortcutManagerB = androidx.core.content.pm.b.b(context.getSystemService(androidx.core.content.pm.b.d()));
                if (!shortcutManagerB.isRateLimitingActive()) {
                    List dynamicShortcuts = shortcutManagerB.getDynamicShortcuts();
                    if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                        shortcutManagerB.removeDynamicShortcuts(Arrays.asList(b.a(dynamicShortcuts)));
                    }
                    shortcutManagerB.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
                }
            }
            ShortcutInfoCompatSaver shortcutInfoCompatSaverE = e(context);
            try {
                List<ShortcutInfoCompat> shortcuts = shortcutInfoCompatSaverE.getShortcuts();
                if (shortcuts.size() >= maxShortcutCountPerActivity) {
                    int rank = -1;
                    String id = null;
                    for (ShortcutInfoCompat shortcutInfoCompat2 : shortcuts) {
                        if (shortcutInfoCompat2.getRank() > rank) {
                            id = shortcutInfoCompat2.getId();
                            rank = shortcutInfoCompat2.getRank();
                        }
                    }
                    shortcutInfoCompatSaverE.removeShortcuts(Arrays.asList(id));
                }
                shortcutInfoCompatSaverE.addShortcuts(Arrays.asList(shortcutInfoCompat));
                Iterator it2 = ((ArrayList) d(context)).iterator();
                while (it2.hasNext()) {
                    ((ShortcutInfoChangeListener) it2.next()).onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
                }
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                return true;
            } catch (Exception unused) {
                Iterator it3 = ((ArrayList) d(context)).iterator();
                while (it3.hasNext()) {
                    ((ShortcutInfoChangeListener) it3.next()).onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
                }
                reportShortcutUsed(context, shortcutInfoCompat.getId());
            } catch (Throwable th) {
                Iterator it4 = ((ArrayList) d(context)).iterator();
                while (it4.hasNext()) {
                    ((ShortcutInfoChangeListener) it4.next()).onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
                }
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                throw th;
            }
        }
        return false;
    }

    public static int c(Context context, boolean z) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        int iMax = Math.max(1, (activityManager == null || activityManager.isLowRamDevice()) ? 48 : 96);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (iMax * ((z ? displayMetrics.xdpi : displayMetrics.ydpi) / 160.0f));
    }

    public static ShortcutInfoCompatSaver e(Context context) {
        if (f994a == null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    f994a = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
                } catch (Exception unused) {
                }
            }
            if (f994a == null) {
                f994a = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return f994a;
    }

    public static List d(Context context) {
        Bundle bundle;
        String string;
        if (f995b == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("androidx.core.content.pm.SHORTCUT_LISTENER");
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString("androidx.core.content.pm.shortcut_listener_impl")) != null) {
                    try {
                        arrayList.add((ShortcutInfoChangeListener) Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                    } catch (Exception unused) {
                    }
                }
            }
            if (f995b == null) {
                f995b = arrayList;
            }
        }
        return f995b;
    }

    public static List f(List list) {
        Objects.requireNonNull(list);
        if (Build.VERSION.SDK_INT > 32) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) it.next();
            if (shortcutInfoCompat.isExcludedFromSurfaces(1)) {
                arrayList.remove(shortcutInfoCompat);
            }
        }
        return arrayList;
    }

    @RequiresApi(25)
    public static class b {
        private b() {
        }

        public static String a(List list) {
            Iterator it = list.iterator();
            int rank = -1;
            String id = null;
            while (it.hasNext()) {
                ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                if (shortcutInfo.getRank() > rank) {
                    id = shortcutInfo.getId();
                    rank = shortcutInfo.getRank();
                }
            }
            return id;
        }
    }
}
