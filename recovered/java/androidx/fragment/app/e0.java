package androidx.fragment.app;

import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
class e0 implements ActivityResultCallback<ActivityResult> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentManager f1688a;

    public e0(FragmentManager fragmentManager) {
        this.f1688a = fragmentManager;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(ActivityResult activityResult) {
        FragmentManager fragmentManager = this.f1688a;
        FragmentManager.h hVar = (FragmentManager.h) fragmentManager.B.pollFirst();
        if (hVar != null) {
            l0 l0Var = fragmentManager.c;
            String str = hVar.f1629a;
            Fragment fragmentC = l0Var.c(str);
            if (fragmentC == null) {
                Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                return;
            } else {
                fragmentC.onActivityResult(hVar.f1630b, activityResult.getResultCode(), activityResult.getData());
                return;
            }
        }
        Log.w("FragmentManager", "No Activities were started for result for " + this);
    }
}
