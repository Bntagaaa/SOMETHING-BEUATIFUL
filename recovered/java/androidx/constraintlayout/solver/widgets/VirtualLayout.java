package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;

/* loaded from: classes.dex */
public class VirtualLayout extends HelperWidget {
    public int A = 0;
    public int B = 0;
    public int C = 0;
    public int D = 0;
    public int E = 0;
    public int F = 0;
    public boolean G = false;
    public int H = 0;
    public int I = 0;
    protected BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    public BasicMeasure.Measurer J = null;

    public void measure(int i, int i2, int i3, int i4) {
    }

    public void setPadding(int i) {
        this.A = i;
        this.B = i;
        this.C = i;
        this.D = i;
    }

    public void setPaddingStart(int i) {
        this.C = i;
        this.E = i;
        this.F = i;
    }

    public void setPaddingEnd(int i) {
        this.D = i;
    }

    public void setPaddingLeft(int i) {
        this.E = i;
    }

    public void applyRtl(boolean z) {
        int i = this.C;
        if (i > 0 || this.D > 0) {
            if (z) {
                this.E = this.D;
                this.F = i;
            } else {
                this.E = i;
                this.F = this.D;
            }
        }
    }

    public void setPaddingTop(int i) {
        this.A = i;
    }

    public void setPaddingRight(int i) {
        this.F = i;
    }

    public void setPaddingBottom(int i) {
        this.B = i;
    }

    public int getPaddingTop() {
        return this.A;
    }

    public int getPaddingBottom() {
        return this.B;
    }

    public int getPaddingLeft() {
        return this.E;
    }

    public int getPaddingRight() {
        return this.F;
    }

    public void needsCallbackFromSolver(boolean z) {
        this.G = z;
    }

    public boolean needSolverPass() {
        return this.G;
    }

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
        captureWidgets();
    }

    public void captureWidgets() {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (constraintWidget != null) {
                constraintWidget.setInVirtualLayout(true);
            }
        }
    }

    public int getMeasuredWidth() {
        return this.H;
    }

    public int getMeasuredHeight() {
        return this.I;
    }

    public void setMeasure(int i, int i2) {
        this.H = i;
        this.I = i2;
    }

    public boolean measureChildren() {
        ConstraintWidget constraintWidget = this.mParent;
        BasicMeasure.Measurer measurer = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).getMeasurer() : null;
        if (measurer == null) {
            return false;
        }
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour != dimensionBehaviour3 || constraintWidget2.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != dimensionBehaviour3 || constraintWidget2.mMatchConstraintDefaultHeight == 1) {
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure.Measure measure = this.mMeasure;
                    measure.horizontalBehavior = dimensionBehaviour;
                    measure.verticalBehavior = dimensionBehaviour2;
                    measure.horizontalDimension = constraintWidget2.getWidth();
                    this.mMeasure.verticalDimension = constraintWidget2.getHeight();
                    measurer.measure(constraintWidget2, this.mMeasure);
                    constraintWidget2.setWidth(this.mMeasure.measuredWidth);
                    constraintWidget2.setHeight(this.mMeasure.measuredHeight);
                    constraintWidget2.setBaselineDistance(this.mMeasure.measuredBaseline);
                }
            }
        }
        return true;
    }

    public void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        while (this.J == null && getParent() != null) {
            this.J = ((ConstraintWidgetContainer) getParent()).getMeasurer();
        }
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i;
        measure.verticalDimension = i2;
        this.J.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }
}
