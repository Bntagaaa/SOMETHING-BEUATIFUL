package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;

/* loaded from: classes.dex */
public class HorizontalWidgetRun extends WidgetRun {
    public static final int[] e = new int[2];

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.f753b = DependencyNode.a.d;
        this.end.f753b = DependencyNode.a.e;
        this.orientation = 0;
    }

    public String toString() {
        return "HorizontalRun " + this.f760a.getDebugName();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void b() {
        this.f761b = null;
        this.start.clear();
        this.end.clear();
        this.c.clear();
        this.d = false;
    }

    public final void e() {
        this.d = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.c.resolved = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean c() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f760a.mMatchConstraintDefaultWidth == 0;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void a() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.f760a;
        boolean z = constraintWidget.measured;
        b bVar = this.c;
        if (z) {
            bVar.resolve(constraintWidget.getWidth());
        }
        if (!bVar.resolved) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = this.f760a.getHorizontalDimensionBehaviour();
            this.dimensionBehavior = horizontalDimensionBehaviour;
            if (horizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (horizontalDimensionBehaviour == dimensionBehaviour && (((parent2 = this.f760a.getParent()) != null && parent2.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) || parent2.getHorizontalDimensionBehaviour() == dimensionBehaviour)) {
                    int width = (parent2.getWidth() - this.f760a.mLeft.getMargin()) - this.f760a.mRight.getMargin();
                    addTarget(this.start, parent2.horizontalRun.start, this.f760a.mLeft.getMargin());
                    addTarget(this.end, parent2.horizontalRun.end, -this.f760a.mRight.getMargin());
                    bVar.resolve(width);
                    return;
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    bVar.resolve(this.f760a.getWidth());
                }
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.dimensionBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour2 == dimensionBehaviour3 && (((parent = this.f760a.getParent()) != null && parent.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) || parent.getHorizontalDimensionBehaviour() == dimensionBehaviour3)) {
                addTarget(this.start, parent.horizontalRun.start, this.f760a.mLeft.getMargin());
                addTarget(this.end, parent.horizontalRun.end, -this.f760a.mRight.getMargin());
                return;
            }
        }
        if (bVar.resolved) {
            ConstraintWidget constraintWidget2 = this.f760a;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[1].mTarget != null) {
                    if (constraintWidget2.isInHorizontalChain()) {
                        this.start.c = this.f760a.mListAnchors[0].getMargin();
                        this.end.c = -this.f760a.mListAnchors[1].getMargin();
                        return;
                    }
                    DependencyNode target = getTarget(this.f760a.mListAnchors[0]);
                    if (target != null) {
                        addTarget(this.start, target, this.f760a.mListAnchors[0].getMargin());
                    }
                    DependencyNode target2 = getTarget(this.f760a.mListAnchors[1]);
                    if (target2 != null) {
                        addTarget(this.end, target2, -this.f760a.mListAnchors[1].getMargin());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode target3 = getTarget(constraintAnchor);
                    if (target3 != null) {
                        addTarget(this.start, target3, this.f760a.mListAnchors[0].getMargin());
                        addTarget(this.end, this.start, bVar.value);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode target4 = getTarget(constraintAnchor3);
                    if (target4 != null) {
                        addTarget(this.end, target4, -this.f760a.mListAnchors[1].getMargin());
                        addTarget(this.start, this.end, -bVar.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.f760a.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                addTarget(this.start, this.f760a.getParent().horizontalRun.start, this.f760a.getX());
                addTarget(this.end, this.start, bVar.value);
                return;
            }
        }
        if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f760a;
            int i = constraintWidget3.mMatchConstraintDefaultWidth;
            if (i == 2) {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    b bVar2 = parent3.verticalRun.c;
                    bVar.f754g.add(bVar2);
                    bVar2.f.add(bVar);
                    bVar.delegateToWidgetRun = true;
                    bVar.f.add(this.start);
                    bVar.f.add(this.end);
                }
            } else if (i == 3) {
                if (constraintWidget3.mMatchConstraintDefaultHeight == 3) {
                    this.start.updateDelegate = this;
                    this.end.updateDelegate = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget3.verticalRun;
                    verticalWidgetRun.start.updateDelegate = this;
                    verticalWidgetRun.end.updateDelegate = this;
                    bVar.updateDelegate = this;
                    if (constraintWidget3.isInVerticalChain()) {
                        bVar.f754g.add(this.f760a.verticalRun.c);
                        this.f760a.verticalRun.c.f.add(bVar);
                        VerticalWidgetRun verticalWidgetRun2 = this.f760a.verticalRun;
                        verticalWidgetRun2.c.updateDelegate = this;
                        bVar.f754g.add(verticalWidgetRun2.start);
                        bVar.f754g.add(this.f760a.verticalRun.end);
                        this.f760a.verticalRun.start.f.add(bVar);
                        this.f760a.verticalRun.end.f.add(bVar);
                    } else if (this.f760a.isInHorizontalChain()) {
                        this.f760a.verticalRun.c.f754g.add(bVar);
                        bVar.f.add(this.f760a.verticalRun.c);
                    } else {
                        this.f760a.verticalRun.c.f754g.add(bVar);
                    }
                } else {
                    b bVar3 = constraintWidget3.verticalRun.c;
                    bVar.f754g.add(bVar3);
                    bVar3.f.add(bVar);
                    this.f760a.verticalRun.start.f.add(bVar);
                    this.f760a.verticalRun.end.f.add(bVar);
                    bVar.delegateToWidgetRun = true;
                    bVar.f.add(this.start);
                    bVar.f.add(this.end);
                    this.start.f754g.add(bVar);
                    this.end.f754g.add(bVar);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.f760a;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.mListAnchors;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].mTarget != null) {
            if (constraintWidget4.isInHorizontalChain()) {
                this.start.c = this.f760a.mListAnchors[0].getMargin();
                this.end.c = -this.f760a.mListAnchors[1].getMargin();
                return;
            }
            DependencyNode target5 = getTarget(this.f760a.mListAnchors[0]);
            DependencyNode target6 = getTarget(this.f760a.mListAnchors[1]);
            target5.addDependency(this);
            target6.addDependency(this);
            this.mRunType = WidgetRun.b.f764b;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode target7 = getTarget(constraintAnchor4);
            if (target7 != null) {
                addTarget(this.start, target7, this.f760a.mListAnchors[0].getMargin());
                addTarget(this.end, this.start, 1, bVar);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.mTarget != null) {
            DependencyNode target8 = getTarget(constraintAnchor6);
            if (target8 != null) {
                addTarget(this.end, target8, -this.f760a.mListAnchors[1].getMargin());
                addTarget(this.start, this.end, -1, bVar);
                return;
            }
            return;
        }
        if ((constraintWidget4 instanceof Helper) || constraintWidget4.getParent() == null) {
            return;
        }
        addTarget(this.start, this.f760a.getParent().horizontalRun.start, this.f760a.getX());
        addTarget(this.end, this.start, 1, bVar);
    }

    public static void d(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f758a;

        static {
            int[] iArr = new int[WidgetRun.b.values().length];
            f758a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f758a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f758a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x02b8  */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(androidx.constraintlayout.solver.widgets.analyzer.Dependency r21) {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun.update(androidx.constraintlayout.solver.widgets.analyzer.Dependency):void");
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.f760a.setX(dependencyNode.value);
        }
    }
}
