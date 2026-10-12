package androidx.transition;

/* loaded from: classes.dex */
public class SidePropagation extends VisibilityPropagation {

    /* renamed from: b, reason: collision with root package name */
    public float f2248b = 3.0f;
    public int c = 80;

    public void setSide(int i) {
        this.c = i;
    }

    public void setPropagationSpeed(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.f2248b = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    @Override // androidx.transition.TransitionPropagation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getStartDelay(android.view.ViewGroup r20, androidx.transition.Transition r21, androidx.transition.TransitionValues r22, androidx.transition.TransitionValues r23) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.SidePropagation.getStartDelay(android.view.ViewGroup, androidx.transition.Transition, androidx.transition.TransitionValues, androidx.transition.TransitionValues):long");
    }
}
