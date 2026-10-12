package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;

/* loaded from: classes.dex */
public class VerticalWidgetRun extends WidgetRun {
    public DependencyNode baseline;
    public androidx.constraintlayout.solver.widgets.analyzer.a e;

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.baseline = dependencyNode;
        this.e = null;
        this.start.f753b = DependencyNode.a.f;
        this.end.f753b = DependencyNode.a.f757g;
        dependencyNode.f753b = DependencyNode.a.h;
        this.orientation = 1;
    }

    public String toString() {
        return "VerticalRun " + this.f760a.getDebugName();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void b() {
        this.f761b = null;
        this.start.clear();
        this.end.clear();
        this.baseline.clear();
        this.c.clear();
        this.d = false;
    }

    public final void d() {
        this.d = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.baseline.clear();
        this.baseline.resolved = false;
        this.c.resolved = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean c() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f760a.mMatchConstraintDefaultHeight == 0;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f759a;

        static {
            int[] iArr = new int[WidgetRun.b.values().length];
            f759a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f759a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f759a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        float f;
        float dimensionRatio;
        int dimensionRatio2;
        int iOrdinal = this.mRunType.ordinal();
        if (iOrdinal == 1) {
            updateRunStart(dependency);
        } else if (iOrdinal == 2) {
            updateRunEnd(dependency);
        } else if (iOrdinal == 3) {
            ConstraintWidget constraintWidget = this.f760a;
            updateRunCenter(dependency, constraintWidget.mTop, constraintWidget.mBottom, 1);
            return;
        }
        b bVar = this.c;
        if (bVar.readyToSolve && !bVar.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f760a;
            int i = constraintWidget2.mMatchConstraintDefaultHeight;
            if (i != 2) {
                if (i == 3 && constraintWidget2.horizontalRun.c.resolved) {
                    int dimensionRatioSide = constraintWidget2.getDimensionRatioSide();
                    if (dimensionRatioSide == -1) {
                        ConstraintWidget constraintWidget3 = this.f760a;
                        f = constraintWidget3.horizontalRun.c.value;
                        dimensionRatio = constraintWidget3.getDimensionRatio();
                    } else {
                        if (dimensionRatioSide == 0) {
                            dimensionRatio2 = (int) ((this.f760a.getDimensionRatio() * r0.horizontalRun.c.value) + 0.5f);
                        } else if (dimensionRatioSide != 1) {
                            dimensionRatio2 = 0;
                        } else {
                            ConstraintWidget constraintWidget4 = this.f760a;
                            f = constraintWidget4.horizontalRun.c.value;
                            dimensionRatio = constraintWidget4.getDimensionRatio();
                        }
                        bVar.resolve(dimensionRatio2);
                    }
                    dimensionRatio2 = (int) ((f / dimensionRatio) + 0.5f);
                    bVar.resolve(dimensionRatio2);
                }
            } else {
                ConstraintWidget parent = constraintWidget2.getParent();
                if (parent != null) {
                    if (parent.verticalRun.c.resolved) {
                        bVar.resolve((int) ((r0.value * this.f760a.mMatchConstraintPercentHeight) + 0.5f));
                    }
                }
            }
        }
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve) {
            DependencyNode dependencyNode2 = this.end;
            if (dependencyNode2.readyToSolve) {
                if (dependencyNode.resolved && dependencyNode2.resolved && bVar.resolved) {
                    return;
                }
                if (!bVar.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget5 = this.f760a;
                    if (constraintWidget5.mMatchConstraintDefaultWidth == 0 && !constraintWidget5.isInVerticalChain()) {
                        DependencyNode dependencyNode3 = (DependencyNode) this.start.f754g.get(0);
                        DependencyNode dependencyNode4 = (DependencyNode) this.end.f754g.get(0);
                        int i2 = dependencyNode3.value;
                        DependencyNode dependencyNode5 = this.start;
                        int i3 = i2 + dependencyNode5.c;
                        int i4 = dependencyNode4.value + this.end.c;
                        dependencyNode5.resolve(i3);
                        this.end.resolve(i4);
                        bVar.resolve(i4 - i3);
                        return;
                    }
                }
                if (!bVar.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.f754g.size() > 0 && this.end.f754g.size() > 0) {
                    DependencyNode dependencyNode6 = (DependencyNode) this.start.f754g.get(0);
                    int i5 = (((DependencyNode) this.end.f754g.get(0)).value + this.end.c) - (dependencyNode6.value + this.start.c);
                    int i6 = bVar.h;
                    if (i5 < i6) {
                        bVar.resolve(i5);
                    } else {
                        bVar.resolve(i6);
                    }
                }
                if (bVar.resolved && this.start.f754g.size() > 0 && this.end.f754g.size() > 0) {
                    DependencyNode dependencyNode7 = (DependencyNode) this.start.f754g.get(0);
                    DependencyNode dependencyNode8 = (DependencyNode) this.end.f754g.get(0);
                    int i7 = dependencyNode7.value + this.start.c;
                    int i8 = dependencyNode8.value + this.end.c;
                    float verticalBiasPercent = this.f760a.getVerticalBiasPercent();
                    if (dependencyNode7 == dependencyNode8) {
                        i7 = dependencyNode7.value;
                        i8 = dependencyNode8.value;
                        verticalBiasPercent = 0.5f;
                    }
                    this.start.resolve((int) ((((i8 - i7) - bVar.value) * verticalBiasPercent) + i7 + 0.5f));
                    this.end.resolve(this.start.value + bVar.value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void a() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.f760a;
        boolean z = constraintWidget.measured;
        b bVar = this.c;
        if (z) {
            bVar.resolve(constraintWidget.getHeight());
        }
        if (!bVar.resolved) {
            this.dimensionBehavior = this.f760a.getVerticalDimensionBehaviour();
            if (this.f760a.hasBaseline()) {
                this.e = new androidx.constraintlayout.solver.widgets.analyzer.a(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.dimensionBehavior;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent2 = this.f760a.getParent()) != null && parent2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int height = (parent2.getHeight() - this.f760a.mTop.getMargin()) - this.f760a.mBottom.getMargin();
                    addTarget(this.start, parent2.verticalRun.start, this.f760a.mTop.getMargin());
                    addTarget(this.end, parent2.verticalRun.end, -this.f760a.mBottom.getMargin());
                    bVar.resolve(height);
                    return;
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    bVar.resolve(this.f760a.getHeight());
                }
            }
        } else if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent = this.f760a.getParent()) != null && parent.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
            addTarget(this.start, parent.verticalRun.start, this.f760a.mTop.getMargin());
            addTarget(this.end, parent.verticalRun.end, -this.f760a.mBottom.getMargin());
            return;
        }
        boolean z2 = bVar.resolved;
        if (z2) {
            ConstraintWidget constraintWidget2 = this.f760a;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[3].mTarget != null) {
                    if (constraintWidget2.isInVerticalChain()) {
                        this.start.c = this.f760a.mListAnchors[2].getMargin();
                        this.end.c = -this.f760a.mListAnchors[3].getMargin();
                    } else {
                        DependencyNode target = getTarget(this.f760a.mListAnchors[2]);
                        if (target != null) {
                            addTarget(this.start, target, this.f760a.mListAnchors[2].getMargin());
                        }
                        DependencyNode target2 = getTarget(this.f760a.mListAnchors[3]);
                        if (target2 != null) {
                            addTarget(this.end, target2, -this.f760a.mListAnchors[3].getMargin());
                        }
                        this.start.delegateToWidgetRun = true;
                        this.end.delegateToWidgetRun = true;
                    }
                    if (this.f760a.hasBaseline()) {
                        addTarget(this.baseline, this.start, this.f760a.getBaselineDistance());
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode target3 = getTarget(constraintAnchor);
                    if (target3 != null) {
                        addTarget(this.start, target3, this.f760a.mListAnchors[2].getMargin());
                        addTarget(this.end, this.start, bVar.value);
                        if (this.f760a.hasBaseline()) {
                            addTarget(this.baseline, this.start, this.f760a.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode target4 = getTarget(constraintAnchor3);
                    if (target4 != null) {
                        addTarget(this.end, target4, -this.f760a.mListAnchors[3].getMargin());
                        addTarget(this.start, this.end, -bVar.value);
                    }
                    if (this.f760a.hasBaseline()) {
                        addTarget(this.baseline, this.start, this.f760a.getBaselineDistance());
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.mTarget != null) {
                    DependencyNode target5 = getTarget(constraintAnchor4);
                    if (target5 != null) {
                        addTarget(this.baseline, target5, 0);
                        addTarget(this.start, this.baseline, -this.f760a.getBaselineDistance());
                        addTarget(this.end, this.start, bVar.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.f760a.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                addTarget(this.start, this.f760a.getParent().verticalRun.start, this.f760a.getY());
                addTarget(this.end, this.start, bVar.value);
                if (this.f760a.hasBaseline()) {
                    addTarget(this.baseline, this.start, this.f760a.getBaselineDistance());
                    return;
                }
                return;
            }
        }
        if (!z2 && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f760a;
            int i = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i != 2) {
                if (i == 3 && !constraintWidget3.isInVerticalChain()) {
                    ConstraintWidget constraintWidget4 = this.f760a;
                    if (constraintWidget4.mMatchConstraintDefaultWidth != 3) {
                        b bVar2 = constraintWidget4.horizontalRun.c;
                        bVar.f754g.add(bVar2);
                        bVar2.f.add(bVar);
                        bVar.delegateToWidgetRun = true;
                        bVar.f.add(this.start);
                        bVar.f.add(this.end);
                    }
                }
            } else {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    b bVar3 = parent3.verticalRun.c;
                    bVar.f754g.add(bVar3);
                    bVar3.f.add(bVar);
                    bVar.delegateToWidgetRun = true;
                    bVar.f.add(this.start);
                    bVar.f.add(this.end);
                }
            }
        } else {
            bVar.addDependency(this);
        }
        ConstraintWidget constraintWidget5 = this.f760a;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.mListAnchors;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.mTarget;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].mTarget != null) {
            if (constraintWidget5.isInVerticalChain()) {
                this.start.c = this.f760a.mListAnchors[2].getMargin();
                this.end.c = -this.f760a.mListAnchors[3].getMargin();
            } else {
                DependencyNode target6 = getTarget(this.f760a.mListAnchors[2]);
                DependencyNode target7 = getTarget(this.f760a.mListAnchors[3]);
                target6.addDependency(this);
                target7.addDependency(this);
                this.mRunType = WidgetRun.b.f764b;
            }
            if (this.f760a.hasBaseline()) {
                addTarget(this.baseline, this.start, 1, this.e);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode target8 = getTarget(constraintAnchor5);
            if (target8 != null) {
                addTarget(this.start, target8, this.f760a.mListAnchors[2].getMargin());
                addTarget(this.end, this.start, 1, bVar);
                if (this.f760a.hasBaseline()) {
                    addTarget(this.baseline, this.start, 1, this.e);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.dimensionBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.f760a.getDimensionRatio() > 0.0f) {
                    HorizontalWidgetRun horizontalWidgetRun = this.f760a.horizontalRun;
                    if (horizontalWidgetRun.dimensionBehavior == dimensionBehaviour3) {
                        horizontalWidgetRun.c.f.add(bVar);
                        bVar.f754g.add(this.f760a.horizontalRun.c);
                        bVar.updateDelegate = this;
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.mTarget != null) {
                DependencyNode target9 = getTarget(constraintAnchor7);
                if (target9 != null) {
                    addTarget(this.end, target9, -this.f760a.mListAnchors[3].getMargin());
                    addTarget(this.start, this.end, -1, bVar);
                    if (this.f760a.hasBaseline()) {
                        addTarget(this.baseline, this.start, 1, this.e);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.mTarget != null) {
                    DependencyNode target10 = getTarget(constraintAnchor8);
                    if (target10 != null) {
                        addTarget(this.baseline, target10, 0);
                        addTarget(this.start, this.baseline, -1, this.e);
                        addTarget(this.end, this.start, 1, bVar);
                    }
                } else if (!(constraintWidget5 instanceof Helper) && constraintWidget5.getParent() != null) {
                    addTarget(this.start, this.f760a.getParent().verticalRun.start, this.f760a.getY());
                    addTarget(this.end, this.start, 1, bVar);
                    if (this.f760a.hasBaseline()) {
                        addTarget(this.baseline, this.start, 1, this.e);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.dimensionBehavior;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5 && this.f760a.getDimensionRatio() > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun2 = this.f760a.horizontalRun;
                        if (horizontalWidgetRun2.dimensionBehavior == dimensionBehaviour5) {
                            horizontalWidgetRun2.c.f.add(bVar);
                            bVar.f754g.add(this.f760a.horizontalRun.c);
                            bVar.updateDelegate = this;
                        }
                    }
                }
            }
        }
        if (bVar.f754g.size() == 0) {
            bVar.readyToSolve = true;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.f760a.setY(dependencyNode.value);
        }
    }
}
