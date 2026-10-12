package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AlignVerticallyReference extends HelperReference {
    public float c;
    public Object d;
    public Object e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f722g;

    public AlignVerticallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.c = 0.5f;
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it.next());
            constraintReferenceConstraints.clearVertical();
            Object obj = this.d;
            if (obj != null) {
                constraintReferenceConstraints.topToTop(obj);
            } else {
                Object obj2 = this.e;
                if (obj2 != null) {
                    constraintReferenceConstraints.topToBottom(obj2);
                } else {
                    constraintReferenceConstraints.topToTop(State.PARENT);
                }
            }
            Object obj3 = this.f;
            if (obj3 != null) {
                constraintReferenceConstraints.bottomToTop(obj3);
            } else {
                Object obj4 = this.f722g;
                if (obj4 != null) {
                    constraintReferenceConstraints.bottomToBottom(obj4);
                } else {
                    constraintReferenceConstraints.bottomToBottom(State.PARENT);
                }
            }
            float f = this.c;
            if (f != 0.5f) {
                constraintReferenceConstraints.verticalBias(f);
            }
        }
    }

    public void topToTop(Object obj) {
        this.d = obj;
    }

    public void topToBottom(Object obj) {
        this.e = obj;
    }

    public void bottomToTop(Object obj) {
        this.f = obj;
    }

    public void bottomToBottom(Object obj) {
        this.f722g = obj;
    }

    public void bias(float f) {
        this.c = f;
    }
}
