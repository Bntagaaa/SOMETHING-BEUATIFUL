package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AlignHorizontallyReference extends HelperReference {
    public float c;
    public Object d;
    public Object e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f721g;

    public AlignHorizontallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.c = 0.5f;
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it.next());
            constraintReferenceConstraints.clearHorizontal();
            Object obj = this.d;
            if (obj != null) {
                constraintReferenceConstraints.startToStart(obj);
            } else {
                Object obj2 = this.e;
                if (obj2 != null) {
                    constraintReferenceConstraints.startToEnd(obj2);
                } else {
                    constraintReferenceConstraints.startToStart(State.PARENT);
                }
            }
            Object obj3 = this.f;
            if (obj3 != null) {
                constraintReferenceConstraints.endToStart(obj3);
            } else {
                Object obj4 = this.f721g;
                if (obj4 != null) {
                    constraintReferenceConstraints.endToEnd(obj4);
                } else {
                    constraintReferenceConstraints.endToEnd(State.PARENT);
                }
            }
            float f = this.c;
            if (f != 0.5f) {
                constraintReferenceConstraints.horizontalBias(f);
            }
        }
    }

    public void startToStart(Object obj) {
        this.d = obj;
    }

    public void startToEnd(Object obj) {
        this.e = obj;
    }

    public void endToStart(Object obj) {
        this.f = obj;
    }

    public void endToEnd(Object obj) {
        this.f721g = obj;
    }

    public void bias(float f) {
        this.c = f;
    }
}
