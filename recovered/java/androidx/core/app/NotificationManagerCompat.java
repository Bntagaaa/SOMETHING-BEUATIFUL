package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.appcompat.app.r;
import androidx.core.app.NotificationChannelGroupCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;
    public static String d;

    /* renamed from: g, reason: collision with root package name */
    public static h f908g;

    /* renamed from: a, reason: collision with root package name */
    public final Context f909a;

    /* renamed from: b, reason: collision with root package name */
    public final NotificationManager f910b;
    public static final Object c = new Object();
    public static HashSet e = new HashSet();
    public static final Object f = new Object();

    public interface i {
        void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException;
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroupCompat notificationChannelGroupCompat) {
        NotificationChannelGroup notificationChannelGroup;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            NotificationChannelGroup notificationChannelGroupA = NotificationChannelGroupCompat.a.a(notificationChannelGroupCompat.f872a, notificationChannelGroupCompat.f873b);
            if (i2 >= 28) {
                NotificationChannelGroupCompat.b.c(notificationChannelGroupA, notificationChannelGroupCompat.c);
            }
            notificationChannelGroup = notificationChannelGroupA;
        } else {
            notificationChannelGroupCompat.getClass();
            notificationChannelGroup = null;
        }
        createNotificationChannelGroup(notificationChannelGroup);
    }

    @NonNull
    public static NotificationManagerCompat from(@NonNull Context context) {
        return new NotificationManagerCompat(context);
    }

    public NotificationManagerCompat(Context context) {
        this.f909a = context;
        this.f910b = (NotificationManager) context.getSystemService("notification");
    }

    public void cancel(int i2) {
        cancel(null, i2);
    }

    public void cancel(@Nullable String str, int i2) {
        this.f910b.cancel(str, i2);
    }

    public void cancelAll() {
        this.f910b.cancelAll();
    }

    @RequiresPermission("android.permission.POST_NOTIFICATIONS")
    public void notify(int i2, @NonNull Notification notification) {
        notify(null, i2, notification);
    }

    public boolean areNotificationsEnabled() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        if (Build.VERSION.SDK_INT >= 24) {
            return a.a(this.f910b);
        }
        Context context = this.f909a;
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i2 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
            Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
            num.intValue();
            return ((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i2), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public int getImportance() {
        if (Build.VERSION.SDK_INT >= 24) {
            return a.b(this.f910b);
        }
        return -1000;
    }

    public void createNotificationChannel(@NonNull NotificationChannel notificationChannel) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.a(this.f910b, notificationChannel);
        }
    }

    public void createNotificationChannel(@NonNull NotificationChannelCompat notificationChannelCompat) {
        createNotificationChannel(notificationChannelCompat.a());
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroup notificationChannelGroup) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.b(this.f910b, notificationChannelGroup);
        }
    }

    public void createNotificationChannels(@NonNull List<NotificationChannel> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.d(this.f910b, list);
        }
    }

    public void createNotificationChannelsCompat(@NonNull List<NotificationChannelCompat> list) {
        if (Build.VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelCompat> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        b.d(this.f910b, arrayList);
    }

    public void createNotificationChannelGroups(@NonNull List<NotificationChannelGroup> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.c(this.f910b, list);
        }
    }

    public void createNotificationChannelGroupsCompat(@NonNull List<NotificationChannelGroupCompat> list) {
        NotificationChannelGroup notificationChannelGroup;
        if (Build.VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (NotificationChannelGroupCompat notificationChannelGroupCompat : list) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26) {
                NotificationChannelGroup notificationChannelGroupA = NotificationChannelGroupCompat.a.a(notificationChannelGroupCompat.f872a, notificationChannelGroupCompat.f873b);
                if (i2 >= 28) {
                    NotificationChannelGroupCompat.b.c(notificationChannelGroupA, notificationChannelGroupCompat.c);
                }
                notificationChannelGroup = notificationChannelGroupA;
            } else {
                notificationChannelGroupCompat.getClass();
                notificationChannelGroup = null;
            }
            arrayList.add(notificationChannelGroup);
        }
        b.c(this.f910b, arrayList);
    }

    public void deleteNotificationChannel(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.e(this.f910b, str);
        }
    }

    public void deleteNotificationChannelGroup(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            b.f(this.f910b, str);
        }
    }

    public void deleteUnlistedNotificationChannels(@NonNull Collection<String> collection) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = this.f910b;
            Iterator<NotificationChannel> it = b.k(notificationManager).iterator();
            while (it.hasNext()) {
                NotificationChannel notificationChannelG = r.g(it.next());
                if (!collection.contains(b.g(notificationChannelG)) && (Build.VERSION.SDK_INT < 30 || !collection.contains(d.b(notificationChannelG)))) {
                    b.e(notificationManager, b.g(notificationChannelG));
                }
            }
        }
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return b.i(this.f910b, str);
        }
        return null;
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT >= 30) {
            return d.a(this.f910b, str, str2);
        }
        return getNotificationChannel(str);
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str, @NonNull String str2) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str, str2)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    @Nullable
    public NotificationChannelGroup getNotificationChannelGroup(@NonNull String str) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return c.a(this.f910b, str);
        }
        if (i2 < 26) {
            return null;
        }
        Iterator<NotificationChannelGroup> it = getNotificationChannelGroups().iterator();
        while (it.hasNext()) {
            NotificationChannelGroup notificationChannelGroupH = r.h(it.next());
            if (b.h(notificationChannelGroupH).equals(str)) {
                return notificationChannelGroupH;
            }
        }
        return null;
    }

    @Nullable
    public NotificationChannelGroupCompat getNotificationChannelGroupCompat(@NonNull String str) {
        NotificationChannelGroup notificationChannelGroup;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            NotificationChannelGroup notificationChannelGroup2 = getNotificationChannelGroup(str);
            if (notificationChannelGroup2 != null) {
                return new NotificationChannelGroupCompat(notificationChannelGroup2);
            }
            return null;
        }
        if (i2 < 26 || (notificationChannelGroup = getNotificationChannelGroup(str)) == null) {
            return null;
        }
        return new NotificationChannelGroupCompat(notificationChannelGroup, getNotificationChannels());
    }

    @NonNull
    public List<NotificationChannel> getNotificationChannels() {
        if (Build.VERSION.SDK_INT >= 26) {
            return b.k(this.f910b);
        }
        return Collections.EMPTY_LIST;
    }

    @NonNull
    public List<NotificationChannelCompat> getNotificationChannelsCompat() {
        if (Build.VERSION.SDK_INT >= 26) {
            List<NotificationChannel> notificationChannels = getNotificationChannels();
            if (!notificationChannels.isEmpty()) {
                ArrayList arrayList = new ArrayList(notificationChannels.size());
                Iterator<NotificationChannel> it = notificationChannels.iterator();
                while (it.hasNext()) {
                    arrayList.add(new NotificationChannelCompat(r.g(it.next())));
                }
                return arrayList;
            }
        }
        return Collections.EMPTY_LIST;
    }

    @NonNull
    public List<NotificationChannelGroup> getNotificationChannelGroups() {
        if (Build.VERSION.SDK_INT >= 26) {
            return b.j(this.f910b);
        }
        return Collections.EMPTY_LIST;
    }

    @NonNull
    public List<NotificationChannelGroupCompat> getNotificationChannelGroupsCompat() {
        List<NotificationChannel> notificationChannels;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            List<NotificationChannelGroup> notificationChannelGroups = getNotificationChannelGroups();
            if (!notificationChannelGroups.isEmpty()) {
                if (i2 >= 28) {
                    notificationChannels = Collections.EMPTY_LIST;
                } else {
                    notificationChannels = getNotificationChannels();
                }
                ArrayList arrayList = new ArrayList(notificationChannelGroups.size());
                Iterator<NotificationChannelGroup> it = notificationChannelGroups.iterator();
                while (it.hasNext()) {
                    NotificationChannelGroup notificationChannelGroupH = r.h(it.next());
                    if (Build.VERSION.SDK_INT >= 28) {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroupH));
                    } else {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroupH, notificationChannels));
                    }
                }
                return arrayList;
            }
        }
        return Collections.EMPTY_LIST;
    }

    @NonNull
    public static Set<String> getEnabledListenerPackages(@NonNull Context context) {
        HashSet hashSet;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (c) {
            if (string != null) {
                try {
                    if (!string.equals(d)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet2 = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet2.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        e = hashSet2;
                        d = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            hashSet = e;
        }
        return hashSet;
    }

    @RequiresPermission("android.permission.POST_NOTIFICATIONS")
    public void notify(@Nullable String str, int i2, @NonNull Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        NotificationManager notificationManager = this.f910b;
        if (extras != null && extras.getBoolean(EXTRA_USE_SIDE_CHANNEL)) {
            f fVar = new f(this.f909a.getPackageName(), i2, str, notification);
            synchronized (f) {
                try {
                    if (f908g == null) {
                        f908g = new h(this.f909a.getApplicationContext());
                    }
                    f908g.queueTask(fVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            notificationManager.cancel(str, i2);
            return;
        }
        notificationManager.notify(str, i2, notification);
    }

    public static class h implements Handler.Callback, ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        public final Context f915a;

        /* renamed from: b, reason: collision with root package name */
        public final Handler f916b;
        public final HashMap c = new HashMap();
        public Set d = new HashSet();

        public h(Context context) {
            this.f915a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            handlerThread.start();
            this.f916b = new Handler(handlerThread.getLooper(), this);
        }

        public void queueTask(i iVar) {
            this.f916b.obtainMessage(0, iVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            HashMap map = this.c;
            Context context = this.f915a;
            if (i == 0) {
                i iVar = (i) message.obj;
                Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(context);
                if (!enabledListenerPackages.equals(this.d)) {
                    this.d = enabledListenerPackages;
                    List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(new Intent().setAction(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL), 0);
                    HashSet hashSet = new HashSet();
                    for (ResolveInfo resolveInfo : listQueryIntentServices) {
                        if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                            ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                            if (resolveInfo.serviceInfo.permission != null) {
                                Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                            } else {
                                hashSet.add(componentName);
                            }
                        }
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        ComponentName componentName2 = (ComponentName) it.next();
                        if (!map.containsKey(componentName2)) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                            }
                            map.put(componentName2, new a(componentName2));
                        }
                    }
                    Iterator it2 = map.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (!hashSet.contains(entry.getKey())) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Removing listener record for " + entry.getKey());
                            }
                            a aVar = (a) entry.getValue();
                            if (aVar.f918b) {
                                context.unbindService(this);
                                aVar.f918b = false;
                            }
                            aVar.c = null;
                            it2.remove();
                        }
                    }
                }
                for (a aVar2 : map.values()) {
                    aVar2.d.add(iVar);
                    a(aVar2);
                }
            } else if (i == 1) {
                g gVar = (g) message.obj;
                a aVar3 = (a) map.get(gVar.f913a);
                if (aVar3 != null) {
                    aVar3.c = INotificationSideChannel.Stub.asInterface(gVar.f914b);
                    aVar3.e = 0;
                    a(aVar3);
                    return true;
                }
            } else if (i == 2) {
                a aVar4 = (a) map.get((ComponentName) message.obj);
                if (aVar4 != null) {
                    if (aVar4.f918b) {
                        context.unbindService(this);
                        aVar4.f918b = false;
                    }
                    aVar4.c = null;
                    return true;
                }
            } else {
                if (i != 3) {
                    return false;
                }
                a aVar5 = (a) map.get((ComponentName) message.obj);
                if (aVar5 != null) {
                    a(aVar5);
                    return true;
                }
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f916b.obtainMessage(1, new g(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f916b.obtainMessage(2, componentName).sendToTarget();
        }

        public final void b(a aVar) {
            Handler handler = this.f916b;
            ComponentName componentName = aVar.f917a;
            if (handler.hasMessages(3, componentName)) {
                return;
            }
            int i = aVar.e;
            int i2 = i + 1;
            aVar.e = i2;
            if (i2 > 6) {
                StringBuilder sb = new StringBuilder("Giving up on delivering ");
                ArrayDeque arrayDeque = aVar.d;
                sb.append(arrayDeque.size());
                sb.append(" tasks to ");
                sb.append(componentName);
                sb.append(" after ");
                sb.append(aVar.e);
                sb.append(" retries");
                Log.w("NotifManCompat", sb.toString());
                arrayDeque.clear();
                return;
            }
            int i3 = (1 << i) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i3 + " ms");
            }
            handler.sendMessageDelayed(handler.obtainMessage(3, componentName), i3);
        }

        public final void a(a aVar) {
            boolean z;
            ArrayDeque arrayDeque;
            boolean zIsLoggable = Log.isLoggable("NotifManCompat", 3);
            ComponentName componentName = aVar.f917a;
            if (zIsLoggable) {
                Log.d("NotifManCompat", "Processing component " + componentName + ", " + aVar.d.size() + " queued tasks");
            }
            if (aVar.d.isEmpty()) {
                return;
            }
            if (aVar.f918b) {
                z = true;
            } else {
                Intent component = new Intent(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL).setComponent(componentName);
                Context context = this.f915a;
                boolean zBindService = context.bindService(component, this, 33);
                aVar.f918b = zBindService;
                if (zBindService) {
                    aVar.e = 0;
                } else {
                    Log.w("NotifManCompat", "Unable to bind to listener " + componentName);
                    context.unbindService(this);
                }
                z = aVar.f918b;
            }
            if (!z || aVar.c == null) {
                b(aVar);
                return;
            }
            while (true) {
                arrayDeque = aVar.d;
                i iVar = (i) arrayDeque.peek();
                if (iVar == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + iVar);
                    }
                    iVar.send(aVar.c);
                    arrayDeque.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + componentName);
                    }
                } catch (RemoteException e) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + componentName, e);
                }
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            b(aVar);
        }

        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public final ComponentName f917a;
            public INotificationSideChannel c;

            /* renamed from: b, reason: collision with root package name */
            public boolean f918b = false;
            public final ArrayDeque d = new ArrayDeque();
            public int e = 0;

            public a(ComponentName componentName) {
                this.f917a = componentName;
            }
        }
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public final ComponentName f913a;

        /* renamed from: b, reason: collision with root package name */
        public final IBinder f914b;

        public g(ComponentName componentName, IBinder iBinder) {
            this.f913a = componentName;
            this.f914b = iBinder;
        }
    }

    public static class f implements i {

        /* renamed from: a, reason: collision with root package name */
        public final String f911a;

        /* renamed from: b, reason: collision with root package name */
        public final int f912b;
        public final String c;
        public final Notification d;

        public f(String str, int i, String str2, Notification notification) {
            this.f911a = str;
            this.f912b = i;
            this.c = str2;
            this.d = notification;
        }

        @Override // androidx.core.app.NotificationManagerCompat.i
        public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            iNotificationSideChannel.notify(this.f911a, this.f912b, this.c, this.d);
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[packageName:");
            sb.append(this.f911a);
            sb.append(", id:");
            sb.append(this.f912b);
            sb.append(", tag:");
            return _COROUTINE.a.m(sb, this.c, "]");
        }
    }

    public static class e implements i {
        @Override // androidx.core.app.NotificationManagerCompat.i
        public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            throw null;
        }

        @NonNull
        public String toString() {
            throw null;
        }
    }

    @RequiresApi(24)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static boolean a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }

        @DoNotInline
        public static int b(NotificationManager notificationManager) {
            return notificationManager.getImportance();
        }
    }

    @RequiresApi(26)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void a(NotificationManager notificationManager, NotificationChannel notificationChannel) {
            notificationManager.createNotificationChannel(notificationChannel);
        }

        @DoNotInline
        public static NotificationChannel i(NotificationManager notificationManager, String str) {
            return notificationManager.getNotificationChannel(str);
        }

        @DoNotInline
        public static void d(NotificationManager notificationManager, List<NotificationChannel> list) {
            notificationManager.createNotificationChannels(list);
        }

        @DoNotInline
        public static List<NotificationChannel> k(NotificationManager notificationManager) {
            return notificationManager.getNotificationChannels();
        }

        @DoNotInline
        public static void b(NotificationManager notificationManager, NotificationChannelGroup notificationChannelGroup) {
            notificationManager.createNotificationChannelGroup(notificationChannelGroup);
        }

        @DoNotInline
        public static void c(NotificationManager notificationManager, List<NotificationChannelGroup> list) {
            notificationManager.createNotificationChannelGroups(list);
        }

        @DoNotInline
        public static List<NotificationChannelGroup> j(NotificationManager notificationManager) {
            return notificationManager.getNotificationChannelGroups();
        }

        @DoNotInline
        public static void e(NotificationManager notificationManager, String str) {
            notificationManager.deleteNotificationChannel(str);
        }

        @DoNotInline
        public static void f(NotificationManager notificationManager, String str) {
            notificationManager.deleteNotificationChannelGroup(str);
        }

        @DoNotInline
        public static String g(NotificationChannel notificationChannel) {
            return notificationChannel.getId();
        }

        @DoNotInline
        public static String h(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getId();
        }
    }

    @RequiresApi(28)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static NotificationChannelGroup a(NotificationManager notificationManager, String str) {
            return notificationManager.getNotificationChannelGroup(str);
        }
    }

    @RequiresApi(30)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static String b(NotificationChannel notificationChannel) {
            return notificationChannel.getParentChannelId();
        }

        @DoNotInline
        public static NotificationChannel a(NotificationManager notificationManager, String str, String str2) {
            return notificationManager.getNotificationChannel(str, str2);
        }
    }
}
