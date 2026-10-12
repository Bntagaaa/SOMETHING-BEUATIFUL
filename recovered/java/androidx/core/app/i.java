package androidx.core.app;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.RequiresApi;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

@RequiresApi(16)
/* loaded from: classes.dex */
class i {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f955a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f956b = null;

    public static RemoteInput[] a(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[bundleArr.length];
        for (int i = 0; i < bundleArr.length; i++) {
            Bundle bundle = bundleArr[i];
            ArrayList<String> stringArrayList = bundle.getStringArrayList("allowedDataTypes");
            HashSet hashSet = new HashSet();
            if (stringArrayList != null) {
                Iterator<String> it = stringArrayList.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next());
                }
            }
            remoteInputArr[i] = new RemoteInput(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray(PropertyTypeConstants.PROPERTY_TYPE_CHOICES), bundle.getBoolean("allowFreeFormInput"), 0, bundle.getBundle("extras"), hashSet);
        }
        return remoteInputArr;
    }

    public static Bundle[] b(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    private i() {
    }
}
