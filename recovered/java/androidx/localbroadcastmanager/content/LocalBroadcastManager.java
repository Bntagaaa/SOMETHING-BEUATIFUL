package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
public final class LocalBroadcastManager {
    public static final Object f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public static LocalBroadcastManager f1926g;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1927a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1928b = new HashMap();
    public final HashMap c = new HashMap();
    public final ArrayList d = new ArrayList();
    public final Handler e;

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final IntentFilter f1931a;

        /* renamed from: b, reason: collision with root package name */
        public final BroadcastReceiver f1932b;
        public boolean c;
        public boolean d;

        public b(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
            this.f1931a = intentFilter;
            this.f1932b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f1932b);
            sb.append(" filter=");
            sb.append(this.f1931a);
            if (this.d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Intent f1929a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f1930b;

        public a(Intent intent, ArrayList arrayList) {
            this.f1929a = intent;
            this.f1930b = arrayList;
        }
    }

    @NonNull
    public static LocalBroadcastManager getInstance(@NonNull Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (f) {
            try {
                if (f1926g == null) {
                    f1926g = new LocalBroadcastManager(context.getApplicationContext());
                }
                localBroadcastManager = f1926g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return localBroadcastManager;
    }

    public LocalBroadcastManager(Context context) {
        this.f1927a = context;
        this.e = new androidx.localbroadcastmanager.content.a(this, context.getMainLooper());
    }

    public void registerReceiver(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.f1928b) {
            try {
                b bVar = new b(broadcastReceiver, intentFilter);
                ArrayList arrayList = (ArrayList) this.f1928b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f1928b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(bVar);
                for (int i = 0; i < intentFilter.countActions(); i++) {
                    String action = intentFilter.getAction(i);
                    ArrayList arrayList2 = (ArrayList) this.c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.c.put(action, arrayList2);
                    }
                    arrayList2.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterReceiver(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.f1928b) {
            try {
                ArrayList arrayList = (ArrayList) this.f1928b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    b bVar = (b) arrayList.get(size);
                    bVar.d = true;
                    for (int i = 0; i < bVar.f1931a.countActions(); i++) {
                        String action = bVar.f1931a.getAction(i);
                        ArrayList arrayList2 = (ArrayList) this.c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                b bVar2 = (b) arrayList2.get(size2);
                                if (bVar2.f1932b == broadcastReceiver) {
                                    bVar2.d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean sendBroadcast(@NonNull Intent intent) {
        ArrayList arrayList;
        String str;
        synchronized (this.f1928b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f1927a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList2 = (ArrayList) this.c.get(intent.getAction());
                if (arrayList2 != null) {
                    if (z) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList2);
                    }
                    ArrayList arrayList3 = null;
                    int i = 0;
                    while (i < arrayList2.size()) {
                        b bVar = (b) arrayList2.get(i);
                        if (z) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + bVar.f1931a);
                        }
                        if (bVar.c) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            arrayList = arrayList2;
                        } else {
                            int iMatch = bVar.f1931a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z) {
                                    StringBuilder sb = new StringBuilder();
                                    arrayList = arrayList2;
                                    sb.append("  Filter matched!  match=0x");
                                    sb.append(Integer.toHexString(iMatch));
                                    Log.v("LocalBroadcastManager", sb.toString());
                                } else {
                                    arrayList = arrayList2;
                                }
                                if (arrayList3 == null) {
                                    arrayList3 = new ArrayList();
                                }
                                arrayList3.add(bVar);
                                bVar.c = true;
                            } else {
                                arrayList = arrayList2;
                                if (z) {
                                    if (iMatch == -4) {
                                        str = "category";
                                    } else if (iMatch == -3) {
                                        str = "action";
                                    } else if (iMatch == -2) {
                                        str = "data";
                                    } else if (iMatch == -1) {
                                        str = "type";
                                    } else {
                                        str = "unknown reason";
                                    }
                                    Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                                }
                            }
                        }
                        i++;
                        arrayList2 = arrayList;
                    }
                    if (arrayList3 != null) {
                        for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                            ((b) arrayList3.get(i2)).c = false;
                        }
                        this.d.add(new a(intent, arrayList3));
                        if (!this.e.hasMessages(1)) {
                            this.e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendBroadcastSync(@NonNull Intent intent) {
        if (sendBroadcast(intent)) {
            a();
        }
    }

    public final void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f1928b) {
                try {
                    size = this.d.size();
                    if (size <= 0) {
                        return;
                    }
                    aVarArr = new a[size];
                    this.d.toArray(aVarArr);
                    this.d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i = 0; i < size; i++) {
                a aVar = aVarArr[i];
                int size2 = aVar.f1930b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    b bVar = (b) aVar.f1930b.get(i2);
                    if (!bVar.d) {
                        bVar.f1932b.onReceive(this.f1927a, aVar.f1929a);
                    }
                }
            }
        }
    }
}
