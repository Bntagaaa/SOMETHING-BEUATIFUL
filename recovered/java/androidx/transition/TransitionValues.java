package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2265a = new ArrayList();

    @Deprecated
    public TransitionValues() {
    }

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.view == transitionValues.view && this.values.equals(transitionValues.values);
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbQ = _COROUTINE.a.q("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbQ.append(this.view);
        sbQ.append("\n");
        String strZ = _COROUTINE.a.z(sbQ.toString(), "    values:");
        for (String str : this.values.keySet()) {
            strZ = strZ + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return strZ;
    }
}
