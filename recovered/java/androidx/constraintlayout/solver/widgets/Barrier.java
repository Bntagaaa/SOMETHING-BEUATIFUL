package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    public int A = 0;
    public boolean B = true;
    public int C = 0;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    public int getBarrierType() {
        return this.A;
    }

    public void setBarrierType(int i) {
        this.A = i;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.B = z;
    }

    public boolean allowsGoneWidget() {
        return this.B;
    }

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.A = barrier.A;
        this.B = barrier.B;
        this.C = barrier.C;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public String toString() {
        String string = "[Barrier] " + getDebugName() + " {";
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (i > 0) {
                string = _COROUTINE.a.z(string, ", ");
            }
            StringBuilder sbP = _COROUTINE.a.p(string);
            sbP.append(constraintWidget.getDebugName());
            string = sbP.toString();
        }
        return _COROUTINE.a.z(string, "}");
    }

    public void markWidgets() {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            int i2 = this.A;
            if (i2 == 0 || i2 == 1) {
                constraintWidget.setInBarrier(0, true);
            } else if (i2 == 2 || i2 == 3) {
                constraintWidget.setInBarrier(1, true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z;
        int i;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i4 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i4 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i4];
            constraintAnchor.c = linearSystem.createObjectVariable(constraintAnchor);
            i4++;
        }
        int i5 = this.A;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i5];
        for (int i6 = 0; i6 < this.mWidgetsCount; i6++) {
            ConstraintWidget constraintWidget = this.mWidgets[i6];
            if ((this.B || constraintWidget.allowedInBarrier()) && ((((i2 = this.A) == 0 || i2 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i3 = this.A) == 2 || i3 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z = true;
                break;
            }
        }
        z = false;
        boolean z2 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z3 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i7 = !(!z && (((i = this.A) == 0 && z2) || ((i == 2 && z3) || ((i == 1 && z2) || (i == 3 && z3))))) ? 4 : 5;
        for (int i8 = 0; i8 < this.mWidgetsCount; i8++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i8];
            if (this.B || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.A]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int i9 = this.A;
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i9];
                constraintAnchor3.c = solverVariableCreateObjectVariable;
                ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                int i10 = (constraintAnchor4 == null || constraintAnchor4.mOwner != this) ? 0 : constraintAnchor3.mMargin;
                if (i9 == 0 || i9 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor2.c, solverVariableCreateObjectVariable, this.C - i10, z);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor2.c, solverVariableCreateObjectVariable, this.C + i10, z);
                }
                linearSystem.addEquality(constraintAnchor2.c, solverVariableCreateObjectVariable, this.C + i10, i7);
            }
        }
        int i11 = this.A;
        if (i11 == 0) {
            linearSystem.addEquality(this.mRight.c, this.mLeft.c, 0, 8);
            linearSystem.addEquality(this.mLeft.c, this.mParent.mRight.c, 0, 4);
            linearSystem.addEquality(this.mLeft.c, this.mParent.mLeft.c, 0, 0);
            return;
        }
        if (i11 == 1) {
            linearSystem.addEquality(this.mLeft.c, this.mRight.c, 0, 8);
            linearSystem.addEquality(this.mLeft.c, this.mParent.mLeft.c, 0, 4);
            linearSystem.addEquality(this.mLeft.c, this.mParent.mRight.c, 0, 0);
        } else if (i11 == 2) {
            linearSystem.addEquality(this.mBottom.c, this.mTop.c, 0, 8);
            linearSystem.addEquality(this.mTop.c, this.mParent.mBottom.c, 0, 4);
            linearSystem.addEquality(this.mTop.c, this.mParent.mTop.c, 0, 0);
        } else if (i11 == 3) {
            linearSystem.addEquality(this.mTop.c, this.mBottom.c, 0, 8);
            linearSystem.addEquality(this.mTop.c, this.mParent.mTop.c, 0, 4);
            linearSystem.addEquality(this.mTop.c, this.mParent.mBottom.c, 0, 0);
        }
    }

    public void setMargin(int i) {
        this.C = i;
    }

    public int getMargin() {
        return this.C;
    }
}
