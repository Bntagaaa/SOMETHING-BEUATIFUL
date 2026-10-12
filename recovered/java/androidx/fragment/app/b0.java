package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
class b0 implements ActivityResultCallback<Map<String, Boolean>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentManager f1665a;

    public b0(FragmentManager fragmentManager) {
        this.f1665a = fragmentManager;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    @SuppressLint({"SyntheticAccessor"})
    public void onActivityResult(Map<String, Boolean> map) {
        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
        ArrayList arrayList = new ArrayList(map.values());
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
        }
        FragmentManager fragmentManager = this.f1665a;
        FragmentManager.h hVar = (FragmentManager.h) fragmentManager.B.pollFirst();
        if (hVar != null) {
            l0 l0Var = fragmentManager.c;
            String str = hVar.f1629a;
            Fragment fragmentC = l0Var.c(str);
            if (fragmentC == null) {
                Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                return;
            }
            fragmentC.onRequestPermissionsResult(hVar.f1630b, strArr, iArr);
            return;
        }
        Log.w("FragmentManager", "No permissions were requested for " + this);
    }
}
