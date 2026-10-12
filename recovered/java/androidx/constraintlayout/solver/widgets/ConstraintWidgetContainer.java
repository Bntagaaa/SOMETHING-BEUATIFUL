package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    public final BasicMeasure A;
    public boolean B;
    public int C;
    public int D;
    public int E;
    public int F;
    public ChainHead[] G;
    public ChainHead[] H;
    public int I;
    public boolean J;
    public boolean K;
    public DependencyGraph mDependencyGraph;
    public boolean mGroupsWrapOptimized;
    public boolean mHorizontalWrapOptimized;
    protected BasicMeasure.Measurer mMeasurer;
    public Metrics mMetrics;
    public boolean mSkipSolver;
    protected LinearSystem mSystem;
    public boolean mVerticalWrapOptimized;
    public int mWrapFixedHeight;
    public int mWrapFixedWidth;

    public boolean handlesInternalConstraints() {
        return false;
    }

    public void invalidateGraph() {
        this.mDependencyGraph.invalidateGraph();
    }

    public void invalidateMeasures() {
        this.mDependencyGraph.invalidateMeasures();
    }

    public boolean directMeasure(boolean z) {
        return this.mDependencyGraph.directMeasure(z);
    }

    public boolean directMeasureSetup(boolean z) {
        return this.mDependencyGraph.directMeasureSetup(z);
    }

    public boolean directMeasureWithOrientation(boolean z, int i) {
        return this.mDependencyGraph.directMeasureWithOrientation(z, i);
    }

    public void defineTerminalWidgets() {
        this.mDependencyGraph.defineTerminalWidgets(getHorizontalDimensionBehaviour(), getVerticalDimensionBehaviour());
    }

    public long measure(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.C = i8;
        this.D = i9;
        return this.A.solverMeasure(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }

    public void updateHierarchy() {
        this.A.updateHierarchy(this);
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
        this.mDependencyGraph.setMeasurer(measurer);
    }

    public BasicMeasure.Measurer getMeasurer() {
        return this.mMeasurer;
    }

    public void fillMetrics(Metrics metrics) {
        this.mMetrics = metrics;
        this.mSystem.fillMetrics(metrics);
    }

    public ConstraintWidgetContainer() {
        this.A = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.B = false;
        this.mSystem = new LinearSystem();
        this.E = 0;
        this.F = 0;
        this.G = new ChainHead[4];
        this.H = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.I = Optimizer.OPTIMIZATION_STANDARD;
        this.mSkipSolver = false;
        this.J = false;
        this.K = false;
    }

    public ConstraintWidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.A = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.B = false;
        this.mSystem = new LinearSystem();
        this.E = 0;
        this.F = 0;
        this.G = new ChainHead[4];
        this.H = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.I = Optimizer.OPTIMIZATION_STANDARD;
        this.mSkipSolver = false;
        this.J = false;
        this.K = false;
    }

    public ConstraintWidgetContainer(int i, int i2) {
        super(i, i2);
        this.A = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.B = false;
        this.mSystem = new LinearSystem();
        this.E = 0;
        this.F = 0;
        this.G = new ChainHead[4];
        this.H = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.I = Optimizer.OPTIMIZATION_STANDARD;
        this.mSkipSolver = false;
        this.J = false;
        this.K = false;
    }

    public void setOptimizationLevel(int i) {
        this.I = i;
        LinearSystem.OPTIMIZED_ENGINE = Optimizer.enabled(i, 256);
    }

    public int getOptimizationLevel() {
        return this.I;
    }

    public boolean optimizeFor(int i) {
        return (this.I & i) == i;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.C = 0;
        this.D = 0;
        this.mSkipSolver = false;
        super.reset();
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.J;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.K;
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem) {
        addToSolver(linearSystem);
        int size = this.mChildren.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.setInBarrier(0, false);
            constraintWidget.setInBarrier(1, false);
            if (constraintWidget instanceof Barrier) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i2);
                if (constraintWidget2 instanceof Barrier) {
                    ((Barrier) constraintWidget2).markWidgets();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i3);
            constraintWidget3.getClass();
            if ((constraintWidget3 instanceof VirtualLayout) || (constraintWidget3 instanceof Guideline)) {
                constraintWidget3.addToSolver(linearSystem);
            }
        }
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget4 = this.mChildren.get(i4);
            if (!(constraintWidget4 instanceof ConstraintWidgetContainer)) {
                constraintWidget4.mHorizontalResolution = -1;
                constraintWidget4.mVerticalResolution = -1;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.mListDimensionBehaviors[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget4.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    int i5 = constraintWidget4.mLeft.mMargin;
                    int width = getWidth() - constraintWidget4.mRight.mMargin;
                    ConstraintAnchor constraintAnchor = constraintWidget4.mLeft;
                    constraintAnchor.c = linearSystem.createObjectVariable(constraintAnchor);
                    ConstraintAnchor constraintAnchor2 = constraintWidget4.mRight;
                    constraintAnchor2.c = linearSystem.createObjectVariable(constraintAnchor2);
                    linearSystem.addEquality(constraintWidget4.mLeft.c, i5);
                    linearSystem.addEquality(constraintWidget4.mRight.c, width);
                    constraintWidget4.mHorizontalResolution = 2;
                    constraintWidget4.setHorizontalDimension(i5, width);
                }
                if (this.mListDimensionBehaviors[1] != dimensionBehaviour2 && constraintWidget4.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    int i6 = constraintWidget4.mTop.mMargin;
                    int height = getHeight() - constraintWidget4.mBottom.mMargin;
                    ConstraintAnchor constraintAnchor3 = constraintWidget4.mTop;
                    constraintAnchor3.c = linearSystem.createObjectVariable(constraintAnchor3);
                    ConstraintAnchor constraintAnchor4 = constraintWidget4.mBottom;
                    constraintAnchor4.c = linearSystem.createObjectVariable(constraintAnchor4);
                    linearSystem.addEquality(constraintWidget4.mTop.c, i6);
                    linearSystem.addEquality(constraintWidget4.mBottom.c, height);
                    if (constraintWidget4.o > 0 || constraintWidget4.getVisibility() == 8) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget4.h;
                        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintAnchor5);
                        constraintAnchor5.c = solverVariableCreateObjectVariable;
                        linearSystem.addEquality(solverVariableCreateObjectVariable, constraintWidget4.o + i6);
                    }
                    constraintWidget4.mVerticalResolution = 2;
                    constraintWidget4.setVerticalDimension(i6, height);
                }
                if (!(constraintWidget4 instanceof VirtualLayout) && !(constraintWidget4 instanceof Guideline)) {
                    constraintWidget4.addToSolver(linearSystem);
                }
            } else {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget4.mListDimensionBehaviors;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[1];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour3 == dimensionBehaviour5) {
                    constraintWidget4.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour4 == dimensionBehaviour5) {
                    constraintWidget4.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget4.addToSolver(linearSystem);
                if (dimensionBehaviour3 == dimensionBehaviour5) {
                    constraintWidget4.setHorizontalDimensionBehaviour(dimensionBehaviour3);
                }
                if (dimensionBehaviour4 == dimensionBehaviour5) {
                    constraintWidget4.setVerticalDimensionBehaviour(dimensionBehaviour4);
                }
            }
        }
        if (this.E > 0) {
            a.a(this, linearSystem, 0);
        }
        if (this.F > 0) {
            a.a(this, linearSystem, 1);
        }
        return true;
    }

    public void updateChildrenFromSolver(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        updateFromSolver(linearSystem);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            this.mChildren.get(i).updateFromSolver(linearSystem);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void updateFromRuns(boolean z, boolean z2) {
        super.updateFromRuns(z, z2);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            this.mChildren.get(i).updateFromRuns(z, z2);
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.C = i;
        this.D = i2;
    }

    public void setRtl(boolean z) {
        this.B = z;
    }

    public boolean isRtl() {
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x01c4 A[PHI: r0 r12
      0x01c4: PHI (r0v23 boolean) = (r0v22 boolean), (r0v25 boolean), (r0v25 boolean), (r0v25 boolean) binds: [B:70:0x0189, B:78:0x01ac, B:79:0x01ae, B:81:0x01b4] A[DONT_GENERATE, DONT_INLINE]
      0x01c4: PHI (r12v5 boolean) = (r12v4 boolean), (r12v7 boolean), (r12v7 boolean), (r12v7 boolean) binds: [B:70:0x0189, B:78:0x01ac, B:79:0x01ae, B:81:0x01b4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer.layout():void");
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    public final void d(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            int i2 = this.E + 1;
            ChainHead[] chainHeadArr = this.H;
            if (i2 >= chainHeadArr.length) {
                this.H = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
            }
            this.H[this.E] = new ChainHead(constraintWidget, 0, isRtl());
            this.E++;
            return;
        }
        if (i == 1) {
            int i3 = this.F + 1;
            ChainHead[] chainHeadArr2 = this.G;
            if (i3 >= chainHeadArr2.length) {
                this.G = (ChainHead[]) Arrays.copyOf(chainHeadArr2, chainHeadArr2.length * 2);
            }
            this.G[this.F] = new ChainHead(constraintWidget, 1, isRtl());
            this.F++;
        }
    }
}
