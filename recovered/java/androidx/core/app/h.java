package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.LocusId;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class h implements NotificationBuilderWithBuilderAccessor {

    /* renamed from: a, reason: collision with root package name */
    public final Context f952a;

    /* renamed from: b, reason: collision with root package name */
    public final Notification.Builder f953b;
    public final NotificationCompat.Builder c;
    public final RemoteViews d;
    public final RemoteViews e;
    public final Bundle f;

    /* renamed from: g, reason: collision with root package name */
    public final int f954g;
    public final RemoteViews h;

    public h(NotificationCompat.Builder builder) {
        String str;
        ArrayList<String> arrayList;
        int i2;
        Object obj;
        Bundle bundle;
        Bundle[] bundleArr;
        Notification.Action.Builder builderE;
        Bundle bundle2;
        new ArrayList();
        this.f = new Bundle();
        this.c = builder;
        Context context = builder.mContext;
        this.f952a = context;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f953b = C0010h.a(context, builder.I);
        } else {
            this.f953b = new Notification.Builder(builder.mContext);
        }
        Notification notification = builder.R;
        this.f953b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, builder.f).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(builder.f891b).setContentText(builder.c).setContentInfo(builder.h).setContentIntent(builder.d).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(builder.e, (notification.flags & 128) != 0).setLargeIcon(builder.f892g).setNumber(builder.i).setProgress(builder.r, builder.s, builder.t);
        a.b(a.d(a.c(this.f953b, builder.o), builder.l), builder.j);
        Iterator<NotificationCompat.Action> it = builder.mActions.iterator();
        while (true) {
            str = "android.support.allowGeneratedReplies";
            if (!it.hasNext()) {
                break;
            }
            NotificationCompat.Action next = it.next();
            int i3 = Build.VERSION.SDK_INT;
            IconCompat iconCompat = next.getIconCompat();
            if (i3 >= 23) {
                builderE = f.a(iconCompat != null ? iconCompat.toIcon() : null, next.getTitle(), next.getActionIntent());
            } else {
                builderE = d.e(iconCompat != null ? iconCompat.getResId() : 0, next.getTitle(), next.getActionIntent());
            }
            if (next.getRemoteInputs() != null) {
                for (android.app.RemoteInput remoteInput : RemoteInput.a(next.getRemoteInputs())) {
                    d.c(builderE, remoteInput);
                }
            }
            if (next.getExtras() != null) {
                bundle2 = new Bundle(next.getExtras());
            } else {
                bundle2 = new Bundle();
            }
            bundle2.putBoolean("android.support.allowGeneratedReplies", next.getAllowGeneratedReplies());
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 24) {
                g.a(builderE, next.getAllowGeneratedReplies());
            }
            bundle2.putInt("android.support.action.semanticAction", next.getSemanticAction());
            if (i4 >= 28) {
                i.b(builderE, next.getSemanticAction());
            }
            if (i4 >= 29) {
                j.c(builderE, next.isContextual());
            }
            if (i4 >= 31) {
                k.a(builderE, next.isAuthenticationRequired());
            }
            bundle2.putBoolean("android.support.action.showsUserInterface", next.getShowsUserInterface());
            d.b(builderE, bundle2);
            d.a(this.f953b, d.d(builderE));
        }
        Bundle bundle3 = builder.B;
        if (bundle3 != null) {
            this.f.putAll(bundle3);
        }
        int i5 = Build.VERSION.SDK_INT;
        this.d = builder.F;
        this.e = builder.G;
        b.a(this.f953b, builder.k);
        d.i(this.f953b, builder.x);
        d.g(this.f953b, builder.u);
        d.j(this.f953b, builder.w);
        d.h(this.f953b, builder.v);
        this.f954g = builder.N;
        e.b(this.f953b, builder.A);
        e.c(this.f953b, builder.C);
        e.f(this.f953b, builder.D);
        e.d(this.f953b, builder.E);
        e.e(this.f953b, notification.sound, notification.audioAttributes);
        if (i5 < 28) {
            ArrayList<Person> arrayList2 = builder.mPersonList;
            if (arrayList2 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>(arrayList2.size());
                Iterator<Person> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().resolveToLegacyUri());
                }
            }
            ArrayList<String> arrayList3 = builder.mPeople;
            if (arrayList == null) {
                arrayList = arrayList3;
            } else if (arrayList3 != null) {
                ArraySet arraySet = new ArraySet(arrayList3.size() + arrayList.size());
                arraySet.addAll(arrayList);
                arraySet.addAll(arrayList3);
                arrayList = new ArrayList<>(arraySet);
            }
        } else {
            arrayList = builder.mPeople;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<String> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                e.a(this.f953b, it3.next());
            }
        }
        this.h = builder.H;
        ArrayList arrayList4 = builder.f890a;
        if (arrayList4.size() > 0) {
            Bundle bundle4 = builder.getExtras().getBundle("android.car.EXTENSIONS");
            bundle4 = bundle4 == null ? new Bundle() : bundle4;
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            int i6 = 0;
            while (i6 < arrayList4.size()) {
                String string = Integer.toString(i6);
                NotificationCompat.Action action = (NotificationCompat.Action) arrayList4.get(i6);
                Bundle bundle7 = new Bundle();
                IconCompat iconCompat2 = action.getIconCompat();
                bundle7.putInt("icon", iconCompat2 != null ? iconCompat2.getResId() : 0);
                bundle7.putCharSequence("title", action.getTitle());
                bundle7.putParcelable("actionIntent", action.getActionIntent());
                if (action.getExtras() != null) {
                    bundle = new Bundle(action.getExtras());
                } else {
                    bundle = new Bundle();
                }
                bundle.putBoolean(str, action.getAllowGeneratedReplies());
                bundle7.putBundle("extras", bundle);
                RemoteInput[] remoteInputs = action.getRemoteInputs();
                if (remoteInputs == null) {
                    bundleArr = null;
                } else {
                    Bundle[] bundleArr2 = new Bundle[remoteInputs.length];
                    int i7 = 0;
                    while (i7 < remoteInputs.length) {
                        RemoteInput remoteInput2 = remoteInputs[i7];
                        ArrayList arrayList5 = arrayList4;
                        Bundle bundle8 = new Bundle();
                        RemoteInput[] remoteInputArr = remoteInputs;
                        String str2 = str;
                        bundle8.putString("resultKey", remoteInput2.getResultKey());
                        bundle8.putCharSequence("label", remoteInput2.getLabel());
                        bundle8.putCharSequenceArray(PropertyTypeConstants.PROPERTY_TYPE_CHOICES, remoteInput2.getChoices());
                        bundle8.putBoolean("allowFreeFormInput", remoteInput2.getAllowFreeFormInput());
                        bundle8.putBundle("extras", remoteInput2.getExtras());
                        Set<String> allowedDataTypes = remoteInput2.getAllowedDataTypes();
                        if (allowedDataTypes != null && !allowedDataTypes.isEmpty()) {
                            ArrayList<String> arrayList6 = new ArrayList<>(allowedDataTypes.size());
                            Iterator<String> it4 = allowedDataTypes.iterator();
                            while (it4.hasNext()) {
                                arrayList6.add(it4.next());
                            }
                            bundle8.putStringArrayList("allowedDataTypes", arrayList6);
                        }
                        bundleArr2[i7] = bundle8;
                        i7++;
                        arrayList4 = arrayList5;
                        remoteInputs = remoteInputArr;
                        str = str2;
                    }
                    bundleArr = bundleArr2;
                }
                ArrayList arrayList7 = arrayList4;
                String str3 = str;
                bundle7.putParcelableArray("remoteInputs", bundleArr);
                bundle7.putBoolean("showsUserInterface", action.getShowsUserInterface());
                bundle7.putInt("semanticAction", action.getSemanticAction());
                bundle6.putBundle(string, bundle7);
                i6++;
                arrayList4 = arrayList7;
                str = str3;
            }
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            builder.getExtras().putBundle("android.car.EXTENSIONS", bundle4);
            this.f.putBundle("android.car.EXTENSIONS", bundle5);
        }
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 23 && (obj = builder.T) != null) {
            f.b(this.f953b, obj);
        }
        if (i8 >= 24) {
            c.a(this.f953b, builder.B);
            g.e(this.f953b, builder.q);
            RemoteViews remoteViews = builder.F;
            if (remoteViews != null) {
                g.c(this.f953b, remoteViews);
            }
            RemoteViews remoteViews2 = builder.G;
            if (remoteViews2 != null) {
                g.b(this.f953b, remoteViews2);
            }
            RemoteViews remoteViews3 = builder.H;
            if (remoteViews3 != null) {
                g.d(this.f953b, remoteViews3);
            }
        }
        if (i8 >= 26) {
            C0010h.b(this.f953b, builder.J);
            C0010h.e(this.f953b, builder.p);
            C0010h.f(this.f953b, builder.K);
            C0010h.g(this.f953b, builder.M);
            C0010h.d(this.f953b, builder.N);
            if (builder.z) {
                C0010h.c(this.f953b, builder.y);
            }
            if (!TextUtils.isEmpty(builder.I)) {
                this.f953b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i8 >= 28) {
            Iterator<Person> it5 = builder.mPersonList.iterator();
            while (it5.hasNext()) {
                i.a(this.f953b, it5.next().toAndroidPerson());
            }
        }
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 29) {
            j.a(this.f953b, builder.P);
            j.b(this.f953b, NotificationCompat.BubbleMetadata.toPlatform(builder.Q));
            LocusIdCompat locusIdCompat = builder.L;
            if (locusIdCompat != null) {
                j.d(this.f953b, locusIdCompat.toLocusId());
            }
        }
        if (i9 >= 31 && (i2 = builder.O) != 0) {
            k.b(this.f953b, i2);
        }
        if (builder.S) {
            if (this.c.v) {
                this.f954g = 2;
            } else {
                this.f954g = 1;
            }
            this.f953b.setVibrate(null);
            this.f953b.setSound(null);
            int i10 = notification.defaults & (-4);
            notification.defaults = i10;
            this.f953b.setDefaults(i10);
            if (i9 >= 26) {
                if (TextUtils.isEmpty(this.c.u)) {
                    d.g(this.f953b, NotificationCompat.GROUP_KEY_SILENT);
                }
                C0010h.d(this.f953b, this.f954g);
            }
        }
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification.Builder getBuilder() {
        return this.f953b;
    }

    public Notification build() {
        Bundle extras;
        RemoteViews remoteViewsMakeHeadsUpContentView;
        RemoteViews remoteViewsMakeBigContentView;
        NotificationCompat.Builder builder = this.c;
        NotificationCompat.Style style = builder.n;
        if (style != null) {
            style.apply(this);
        }
        RemoteViews remoteViewsMakeContentView = style != null ? style.makeContentView(this) : null;
        Notification notificationBuildInternal = buildInternal();
        if (remoteViewsMakeContentView != null) {
            notificationBuildInternal.contentView = remoteViewsMakeContentView;
        } else {
            RemoteViews remoteViews = builder.F;
            if (remoteViews != null) {
                notificationBuildInternal.contentView = remoteViews;
            }
        }
        if (style != null && (remoteViewsMakeBigContentView = style.makeBigContentView(this)) != null) {
            notificationBuildInternal.bigContentView = remoteViewsMakeBigContentView;
        }
        if (style != null && (remoteViewsMakeHeadsUpContentView = builder.n.makeHeadsUpContentView(this)) != null) {
            notificationBuildInternal.headsUpContentView = remoteViewsMakeHeadsUpContentView;
        }
        if (style != null && (extras = NotificationCompat.getExtras(notificationBuildInternal)) != null) {
            style.addCompatExtras(extras);
        }
        return notificationBuildInternal;
    }

    public Notification buildInternal() {
        int i2 = Build.VERSION.SDK_INT;
        Notification.Builder builder = this.f953b;
        if (i2 >= 26) {
            return a.a(builder);
        }
        int i3 = this.f954g;
        if (i2 >= 24) {
            Notification notificationA = a.a(builder);
            if (i3 != 0) {
                if (d.f(notificationA) != null && (notificationA.flags & 512) != 0 && i3 == 2) {
                    a(notificationA);
                }
                if (d.f(notificationA) != null && (notificationA.flags & 512) == 0 && i3 == 1) {
                    a(notificationA);
                }
            }
            return notificationA;
        }
        c.a(builder, this.f);
        Notification notificationA2 = a.a(builder);
        RemoteViews remoteViews = this.d;
        if (remoteViews != null) {
            notificationA2.contentView = remoteViews;
        }
        RemoteViews remoteViews2 = this.e;
        if (remoteViews2 != null) {
            notificationA2.bigContentView = remoteViews2;
        }
        RemoteViews remoteViews3 = this.h;
        if (remoteViews3 != null) {
            notificationA2.headsUpContentView = remoteViews3;
        }
        if (i3 != 0) {
            if (d.f(notificationA2) != null && (notificationA2.flags & 512) != 0 && i3 == 2) {
                a(notificationA2);
            }
            if (d.f(notificationA2) != null && (notificationA2.flags & 512) == 0 && i3 == 1) {
                a(notificationA2);
            }
        }
        return notificationA2;
    }

    public static void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Notification.Builder c(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSubText(charSequence);
        }

        @DoNotInline
        public static Notification.Builder d(Notification.Builder builder, boolean z) {
            return builder.setUsesChronometer(z);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, int i) {
            return builder.setPriority(i);
        }

        @DoNotInline
        public static Notification a(Notification.Builder builder) {
            return builder.build();
        }
    }

    @RequiresApi(17)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Notification.Builder a(Notification.Builder builder, boolean z) {
            return builder.setShowWhen(z);
        }
    }

    @RequiresApi(19)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static Notification.Builder a(Notification.Builder builder, Bundle bundle) {
            return builder.setExtras(bundle);
        }
    }

    @RequiresApi(20)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static Notification.Action.Builder e(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(i, charSequence, pendingIntent);
        }

        @DoNotInline
        public static Notification.Action.Builder c(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        @DoNotInline
        public static Notification.Action.Builder b(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        @DoNotInline
        public static Notification.Builder a(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        @DoNotInline
        public static Notification.Action d(Notification.Action.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        public static String f(Notification notification) {
            return notification.getGroup();
        }

        @DoNotInline
        public static Notification.Builder g(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        @DoNotInline
        public static Notification.Builder h(Notification.Builder builder, boolean z) {
            return builder.setGroupSummary(z);
        }

        @DoNotInline
        public static Notification.Builder i(Notification.Builder builder, boolean z) {
            return builder.setLocalOnly(z);
        }

        @DoNotInline
        public static Notification.Builder j(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    @RequiresApi(21)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static Notification.Builder a(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        @DoNotInline
        public static Notification.Builder c(Notification.Builder builder, int i) {
            return builder.setColor(i);
        }

        @DoNotInline
        public static Notification.Builder f(Notification.Builder builder, int i) {
            return builder.setVisibility(i);
        }

        @DoNotInline
        public static Notification.Builder d(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        @DoNotInline
        public static Notification.Builder e(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }
    }

    @RequiresApi(23)
    public static class f {
        private f() {
        }

        @DoNotInline
        public static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }
    }

    @RequiresApi(24)
    public static class g {
        private g() {
        }

        @DoNotInline
        public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z) {
            return builder.setAllowGeneratedReplies(z);
        }

        @DoNotInline
        public static Notification.Builder e(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }

        @DoNotInline
        public static Notification.Builder c(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        @DoNotInline
        public static Notification.Builder d(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.h$h, reason: collision with other inner class name */
    public static class C0010h {
        private C0010h() {
        }

        @DoNotInline
        public static Notification.Builder a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        @DoNotInline
        public static Notification.Builder d(Notification.Builder builder, int i) {
            return builder.setGroupAlertBehavior(i);
        }

        @DoNotInline
        public static Notification.Builder c(Notification.Builder builder, boolean z) {
            return builder.setColorized(z);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, int i) {
            return builder.setBadgeIconType(i);
        }

        @DoNotInline
        public static Notification.Builder e(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        @DoNotInline
        public static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        @DoNotInline
        public static Notification.Builder g(Notification.Builder builder, long j) {
            return builder.setTimeoutAfter(j);
        }
    }

    @RequiresApi(28)
    public static class i {
        private i() {
        }

        @DoNotInline
        public static Notification.Action.Builder b(Notification.Action.Builder builder, int i) {
            return builder.setSemanticAction(i);
        }

        @DoNotInline
        public static Notification.Builder a(Notification.Builder builder, android.app.Person person) {
            return builder.addPerson(person);
        }
    }

    @RequiresApi(29)
    public static class j {
        private j() {
        }

        @DoNotInline
        public static Notification.Action.Builder c(Notification.Action.Builder builder, boolean z) {
            return builder.setContextual(z);
        }

        @DoNotInline
        public static Notification.Builder d(Notification.Builder builder, Object obj) {
            return builder.setLocusId((LocusId) obj);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        @DoNotInline
        public static Notification.Builder a(Notification.Builder builder, boolean z) {
            return builder.setAllowSystemGeneratedContextualActions(z);
        }
    }

    @RequiresApi(31)
    public static class k {
        private k() {
        }

        @DoNotInline
        public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z) {
            return builder.setAuthenticationRequired(z);
        }

        @DoNotInline
        public static Notification.Builder b(Notification.Builder builder, int i) {
            return builder.setForegroundServiceBehavior(i);
        }
    }
}
