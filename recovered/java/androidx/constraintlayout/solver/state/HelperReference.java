package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.state.State;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HelperReference {

    /* renamed from: a, reason: collision with root package name */
    public final State.Helper f713a;

    /* renamed from: b, reason: collision with root package name */
    public HelperWidget f714b;
    protected ArrayList<Object> mReferences = new ArrayList<>();
    protected final State mState;

    public void apply() {
    }

    public HelperReference(State state, State.Helper helper) {
        this.mState = state;
        this.f713a = helper;
    }

    public State.Helper getType() {
        return this.f713a;
    }

    public HelperReference add(Object... objArr) {
        for (Object obj : objArr) {
            this.mReferences.add(obj);
        }
        return this;
    }

    public void setHelperWidget(HelperWidget helperWidget) {
        this.f714b = helperWidget;
    }

    public HelperWidget getHelperWidget() {
        return this.f714b;
    }
}
