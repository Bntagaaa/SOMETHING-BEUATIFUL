package androidx.core.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import gnu.expr.Declaration;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable<Intent> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f937a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final Context f938b;

    public interface SupportParentable {
        @Nullable
        Intent getSupportParentActivityIntent();
    }

    public TaskStackBuilder(Context context) {
        this.f938b = context;
    }

    @NonNull
    public static TaskStackBuilder create(@NonNull Context context) {
        return new TaskStackBuilder(context);
    }

    @Deprecated
    public static TaskStackBuilder from(Context context) {
        return create(context);
    }

    @NonNull
    public TaskStackBuilder addNextIntent(@NonNull Intent intent) {
        this.f937a.add(intent);
        return this;
    }

    @NonNull
    public TaskStackBuilder addNextIntentWithParentStack(@NonNull Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.f938b.getPackageManager());
        }
        if (component != null) {
            addParentStack(component);
        }
        addNextIntent(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public TaskStackBuilder addParentStack(@NonNull Activity activity) {
        Intent supportParentActivityIntent = activity instanceof SupportParentable ? ((SupportParentable) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = NavUtils.getParentActivityIntent(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f938b.getPackageManager());
            }
            addParentStack(component);
            addNextIntent(supportParentActivityIntent);
        }
        return this;
    }

    @NonNull
    public TaskStackBuilder addParentStack(@NonNull Class<?> cls) {
        return addParentStack(new ComponentName(this.f938b, cls));
    }

    @NonNull
    public TaskStackBuilder addParentStack(@NonNull ComponentName componentName) {
        Context context = this.f938b;
        ArrayList arrayList = this.f937a;
        int size = arrayList.size();
        try {
            for (Intent parentActivityIntent = NavUtils.getParentActivityIntent(context, componentName); parentActivityIntent != null; parentActivityIntent = NavUtils.getParentActivityIntent(context, parentActivityIntent.getComponent())) {
                arrayList.add(size, parentActivityIntent);
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public int getIntentCount() {
        return this.f937a.size();
    }

    @Deprecated
    public Intent getIntent(int i) {
        return editIntentAt(i);
    }

    @Nullable
    public Intent editIntentAt(int i) {
        return (Intent) this.f937a.get(i);
    }

    @Override // java.lang.Iterable
    @NonNull
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f937a.iterator();
    }

    public void startActivities() {
        startActivities(null);
    }

    public void startActivities(@Nullable Bundle bundle) {
        ArrayList arrayList = this.f937a;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        Context context = this.f938b;
        if (ContextCompat.startActivities(context, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(Declaration.IS_DYNAMIC);
        context.startActivity(intent);
    }

    @Nullable
    public PendingIntent getPendingIntent(int i, int i2) {
        return getPendingIntent(i, i2, null);
    }

    @Nullable
    public PendingIntent getPendingIntent(int i, int i2, @Nullable Bundle bundle) {
        ArrayList arrayList = this.f937a;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        return a.a(this.f938b, i, intentArr, i2, bundle);
    }

    @NonNull
    public Intent[] getIntents() {
        ArrayList arrayList = this.f937a;
        int size = arrayList.size();
        Intent[] intentArr = new Intent[size];
        if (size != 0) {
            intentArr[0] = new Intent((Intent) arrayList.get(0)).addFlags(268484608);
            for (int i = 1; i < size; i++) {
                intentArr[i] = new Intent((Intent) arrayList.get(i));
            }
        }
        return intentArr;
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static PendingIntent a(Context context, int i, Intent[] intentArr, int i2, Bundle bundle) {
            return PendingIntent.getActivities(context, i, intentArr, i2, bundle);
        }
    }
}
