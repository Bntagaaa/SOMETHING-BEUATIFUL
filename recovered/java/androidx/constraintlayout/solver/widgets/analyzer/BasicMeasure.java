package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f746a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final Measure f747b = new Measure();
    public final ConstraintWidgetContainer c;

    public static class Measure {
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public boolean useCurrentDimensions;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    public enum MeasureType {
    }

    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateHierarchy(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r8) {
        /*
            r7 = this;
            java.util.ArrayList r0 = r7.f746a
            r0.clear()
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r1 = r8.mChildren
            int r1 = r1.size()
            r2 = 0
        Lc:
            if (r2 >= r1) goto L38
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r3 = r8.mChildren
            java.lang.Object r3 = r3.get(r2)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r3 = (androidx.constraintlayout.solver.widgets.ConstraintWidget) r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = r3.getHorizontalDimensionBehaviour()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r4 == r5) goto L32
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = r3.getHorizontalDimensionBehaviour()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_PARENT
            if (r4 == r6) goto L32
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = r3.getVerticalDimensionBehaviour()
            if (r4 == r5) goto L32
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = r3.getVerticalDimensionBehaviour()
            if (r4 != r6) goto L35
        L32:
            r0.add(r3)
        L35:
            int r2 = r2 + 1
            goto Lc
        L38:
            r8.invalidateGraph()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.updateHierarchy(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer):void");
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.c = constraintWidgetContainer;
    }

    public final void b(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2) {
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i);
        constraintWidgetContainer.setHeight(i2);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.c.layout();
    }

    public long solverMeasure(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        long j;
        boolean zDirectMeasure;
        int i10;
        long j2;
        boolean z;
        boolean z2;
        ArrayList arrayList;
        int i11;
        int i12;
        boolean z3;
        boolean z4;
        int i13;
        boolean z5;
        long j3;
        boolean zDirectMeasureWithOrientation;
        int i14;
        Metrics metrics;
        Measurer measurer = constraintWidgetContainer.getMeasurer();
        int size = constraintWidgetContainer.mChildren.size();
        int width = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean zEnabled = Optimizer.enabled(i, 128);
        boolean z6 = zEnabled || Optimizer.enabled(i, 64);
        if (z6) {
            for (int i15 = 0; i15 < size; i15++) {
                ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i15);
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z7 = (horizontalDimensionBehaviour == dimensionBehaviour) && (constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour) && constraintWidget.getDimensionRatio() > 0.0f;
                if ((constraintWidget.isInHorizontalChain() && z7) || ((constraintWidget.isInVerticalChain() && z7) || (constraintWidget instanceof VirtualLayout) || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain())) {
                    z6 = false;
                    break;
                }
            }
        }
        if (z6 && (metrics = LinearSystem.sMetrics) != null) {
            metrics.measures++;
        }
        if (z6 && ((i4 == 1073741824 && i6 == 1073741824) || zEnabled)) {
            int iMin = Math.min(constraintWidgetContainer.getMaxWidth(), i5);
            j = 1;
            int iMin2 = Math.min(constraintWidgetContainer.getMaxHeight(), i7);
            if (i4 == 1073741824 && constraintWidgetContainer.getWidth() != iMin) {
                constraintWidgetContainer.setWidth(iMin);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i6 == 1073741824 && constraintWidgetContainer.getHeight() != iMin2) {
                constraintWidgetContainer.setHeight(iMin2);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                zDirectMeasure = constraintWidgetContainer.directMeasure(zEnabled);
                i10 = 2;
            } else {
                boolean zDirectMeasureSetup = constraintWidgetContainer.directMeasureSetup(zEnabled);
                if (i4 == 1073741824) {
                    zDirectMeasureWithOrientation = zDirectMeasureSetup & constraintWidgetContainer.directMeasureWithOrientation(zEnabled, 0);
                    i14 = 1;
                } else {
                    zDirectMeasureWithOrientation = zDirectMeasureSetup;
                    i14 = 0;
                }
                if (i6 == 1073741824) {
                    boolean zDirectMeasureWithOrientation2 = constraintWidgetContainer.directMeasureWithOrientation(zEnabled, 1) & zDirectMeasureWithOrientation;
                    i10 = i14 + 1;
                    zDirectMeasure = zDirectMeasureWithOrientation2;
                } else {
                    i10 = i14;
                    zDirectMeasure = zDirectMeasureWithOrientation;
                }
            }
            if (zDirectMeasure) {
                constraintWidgetContainer.updateFromRuns(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            j = 1;
            zDirectMeasure = false;
            i10 = 0;
        }
        long j4 = 0;
        if (zDirectMeasure && i10 == 2) {
            return 0L;
        }
        if (size > 0) {
            int size2 = constraintWidgetContainer.mChildren.size();
            Measurer measurer2 = constraintWidgetContainer.getMeasurer();
            int i16 = 0;
            while (i16 < size2) {
                ConstraintWidget constraintWidget2 = constraintWidgetContainer.mChildren.get(i16);
                if ((constraintWidget2 instanceof Guideline) || (constraintWidget2.horizontalRun.c.resolved && constraintWidget2.verticalRun.c.resolved)) {
                    j3 = j4;
                } else {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(0);
                    j3 = j4;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidget2.getDimensionBehaviour(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour2 != dimensionBehaviour4 || constraintWidget2.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour3 != dimensionBehaviour4 || constraintWidget2.mMatchConstraintDefaultHeight == 1) {
                        a(measurer2, constraintWidget2, false);
                        Metrics metrics2 = constraintWidgetContainer.mMetrics;
                        if (metrics2 != null) {
                            metrics2.measuredWidgets += j;
                        }
                    }
                }
                i16++;
                j4 = j3;
            }
            j2 = j4;
            measurer2.didMeasures();
        } else {
            j2 = 0;
        }
        int optimizationLevel = constraintWidgetContainer.getOptimizationLevel();
        ArrayList arrayList2 = this.f746a;
        int size3 = arrayList2.size();
        if (size > 0) {
            b(constraintWidgetContainer, width, height);
        }
        if (size3 > 0) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z8 = horizontalDimensionBehaviour2 == dimensionBehaviour5;
            boolean z9 = constraintWidgetContainer.getVerticalDimensionBehaviour() == dimensionBehaviour5;
            int width2 = constraintWidgetContainer.getWidth();
            ConstraintWidgetContainer constraintWidgetContainer2 = this.c;
            int iMax = Math.max(width2, constraintWidgetContainer2.getMinWidth());
            int iMax2 = Math.max(constraintWidgetContainer.getHeight(), constraintWidgetContainer2.getMinHeight());
            int i17 = 0;
            boolean zNeedSolverPass = false;
            while (i17 < size3) {
                ConstraintWidget constraintWidget3 = (ConstraintWidget) arrayList2.get(i17);
                if (constraintWidget3 instanceof VirtualLayout) {
                    int width3 = constraintWidget3.getWidth();
                    z3 = z9;
                    int height2 = constraintWidget3.getHeight();
                    z4 = z8;
                    boolean zA = zNeedSolverPass | a(measurer, constraintWidget3, true);
                    Metrics metrics3 = constraintWidgetContainer.mMetrics;
                    i13 = i17;
                    if (metrics3 != null) {
                        metrics3.measuredMatchWidgets += j;
                    }
                    int width4 = constraintWidget3.getWidth();
                    int height3 = constraintWidget3.getHeight();
                    if (width4 != width3) {
                        constraintWidget3.setWidth(width4);
                        if (z4 && constraintWidget3.getRight() > iMax) {
                            iMax = Math.max(iMax, constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin() + constraintWidget3.getRight());
                        }
                        z5 = true;
                    } else {
                        z5 = zA;
                    }
                    if (height3 != height2) {
                        constraintWidget3.setHeight(height3);
                        if (z3 && constraintWidget3.getBottom() > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget3.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin() + constraintWidget3.getBottom());
                        }
                        z5 = true;
                    }
                    zNeedSolverPass = z5 | ((VirtualLayout) constraintWidget3).needSolverPass();
                } else {
                    z3 = z9;
                    z4 = z8;
                    i13 = i17;
                }
                i17 = i13 + 1;
                z9 = z3;
                z8 = z4;
            }
            boolean z10 = z9;
            boolean z11 = z8;
            int i18 = 0;
            while (i18 < 2) {
                boolean z12 = zNeedSolverPass;
                int i19 = 0;
                while (i19 < size3) {
                    ConstraintWidget constraintWidget4 = (ConstraintWidget) arrayList2.get(i19);
                    if (((constraintWidget4 instanceof Helper) && !(constraintWidget4 instanceof VirtualLayout)) || (constraintWidget4 instanceof Guideline) || constraintWidget4.getVisibility() == 8 || ((constraintWidget4.horizontalRun.c.resolved && constraintWidget4.verticalRun.c.resolved) || (constraintWidget4 instanceof VirtualLayout))) {
                        arrayList = arrayList2;
                        i11 = size3;
                        i12 = i19;
                    } else {
                        int width5 = constraintWidget4.getWidth();
                        int height4 = constraintWidget4.getHeight();
                        arrayList = arrayList2;
                        int baselineDistance = constraintWidget4.getBaselineDistance();
                        i11 = size3;
                        boolean zA2 = z12 | a(measurer, constraintWidget4, true);
                        Metrics metrics4 = constraintWidgetContainer.mMetrics;
                        boolean z13 = zA2;
                        i12 = i19;
                        if (metrics4 != null) {
                            metrics4.measuredMatchWidgets += j;
                        }
                        int width6 = constraintWidget4.getWidth();
                        int height5 = constraintWidget4.getHeight();
                        if (width6 != width5) {
                            constraintWidget4.setWidth(width6);
                            if (z11 && constraintWidget4.getRight() > iMax) {
                                iMax = Math.max(iMax, constraintWidget4.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin() + constraintWidget4.getRight());
                            }
                            z13 = true;
                        }
                        if (height5 != height4) {
                            constraintWidget4.setHeight(height5);
                            if (z10 && constraintWidget4.getBottom() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget4.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin() + constraintWidget4.getBottom());
                            }
                            z12 = true;
                        } else {
                            z12 = z13;
                        }
                        if (constraintWidget4.hasBaseline() && baselineDistance != constraintWidget4.getBaselineDistance()) {
                            z12 = true;
                        }
                    }
                    i19 = i12 + 1;
                    size3 = i11;
                    arrayList2 = arrayList;
                }
                ArrayList arrayList3 = arrayList2;
                int i20 = size3;
                if (z12) {
                    b(constraintWidgetContainer, width, height);
                    zNeedSolverPass = false;
                } else {
                    zNeedSolverPass = z12;
                }
                i18++;
                size3 = i20;
                arrayList2 = arrayList3;
            }
            if (zNeedSolverPass) {
                b(constraintWidgetContainer, width, height);
                if (constraintWidgetContainer.getWidth() < iMax) {
                    constraintWidgetContainer.setWidth(iMax);
                    z = true;
                } else {
                    z = false;
                }
                if (constraintWidgetContainer.getHeight() < iMax2) {
                    constraintWidgetContainer.setHeight(iMax2);
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    b(constraintWidgetContainer, width, height);
                }
            }
        }
        constraintWidgetContainer.setOptimizationLevel(optimizationLevel);
        return j2;
    }

    public final boolean a(Measurer measurer, ConstraintWidget constraintWidget, boolean z) {
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
        Measure measure = this.f747b;
        measure.horizontalBehavior = horizontalDimensionBehaviour;
        measure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        measure.horizontalDimension = constraintWidget.getWidth();
        measure.verticalDimension = constraintWidget.getHeight();
        measure.measuredNeedsSolverPass = false;
        measure.useCurrentDimensions = z;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z2 = dimensionBehaviour == dimensionBehaviour2;
        boolean z3 = measure.verticalBehavior == dimensionBehaviour2;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z5 = z3 && constraintWidget.mDimensionRatio > 0.0f;
        if (z4 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z5 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, measure);
        constraintWidget.setWidth(measure.measuredWidth);
        constraintWidget.setHeight(measure.measuredHeight);
        constraintWidget.setHasBaseline(measure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(measure.measuredBaseline);
        measure.useCurrentDimensions = false;
        return measure.measuredNeedsSolverPass;
    }
}
