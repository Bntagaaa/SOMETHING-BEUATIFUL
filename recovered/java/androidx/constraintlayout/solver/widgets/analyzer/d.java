package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import java.util.Iterator;

/* loaded from: classes.dex */
class d extends WidgetRun {
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean c() {
        return false;
    }

    public d(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void b() {
        this.f761b = null;
        this.start.clear();
    }

    public final void d(DependencyNode dependencyNode) {
        this.start.f.add(dependencyNode);
        dependencyNode.f754g.add(this.start);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void a() {
        ConstraintWidget constraintWidget = this.f760a;
        if (constraintWidget instanceof Barrier) {
            this.start.delegateToWidgetRun = true;
            Barrier barrier = (Barrier) constraintWidget;
            int barrierType = barrier.getBarrierType();
            boolean zAllowsGoneWidget = barrier.allowsGoneWidget();
            int i = 0;
            if (barrierType == 0) {
                this.start.f753b = DependencyNode.a.d;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget2 = barrier.mWidgets[i];
                    if (zAllowsGoneWidget || constraintWidget2.getVisibility() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.horizontalRun.start;
                        dependencyNode.f.add(this.start);
                        this.start.f754g.add(dependencyNode);
                    }
                    i++;
                }
                d(this.f760a.horizontalRun.start);
                d(this.f760a.horizontalRun.end);
                return;
            }
            if (barrierType == 1) {
                this.start.f753b = DependencyNode.a.e;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget3 = barrier.mWidgets[i];
                    if (zAllowsGoneWidget || constraintWidget3.getVisibility() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.horizontalRun.end;
                        dependencyNode2.f.add(this.start);
                        this.start.f754g.add(dependencyNode2);
                    }
                    i++;
                }
                d(this.f760a.horizontalRun.start);
                d(this.f760a.horizontalRun.end);
                return;
            }
            if (barrierType == 2) {
                this.start.f753b = DependencyNode.a.f;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget4 = barrier.mWidgets[i];
                    if (zAllowsGoneWidget || constraintWidget4.getVisibility() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.verticalRun.start;
                        dependencyNode3.f.add(this.start);
                        this.start.f754g.add(dependencyNode3);
                    }
                    i++;
                }
                d(this.f760a.verticalRun.start);
                d(this.f760a.verticalRun.end);
                return;
            }
            if (barrierType != 3) {
                return;
            }
            this.start.f753b = DependencyNode.a.f757g;
            while (i < barrier.mWidgetsCount) {
                ConstraintWidget constraintWidget5 = barrier.mWidgets[i];
                if (zAllowsGoneWidget || constraintWidget5.getVisibility() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget5.verticalRun.end;
                    dependencyNode4.f.add(this.start);
                    this.start.f754g.add(dependencyNode4);
                }
                i++;
            }
            d(this.f760a.verticalRun.start);
            d(this.f760a.verticalRun.end);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        Barrier barrier = (Barrier) this.f760a;
        int barrierType = barrier.getBarrierType();
        Iterator it = this.start.f754g.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = ((DependencyNode) it.next()).value;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (barrierType == 0 || barrierType == 2) {
            this.start.resolve(barrier.getMargin() + i2);
        } else {
            this.start.resolve(barrier.getMargin() + i);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        ConstraintWidget constraintWidget = this.f760a;
        if (constraintWidget instanceof Barrier) {
            int barrierType = ((Barrier) constraintWidget).getBarrierType();
            if (barrierType == 0 || barrierType == 1) {
                this.f760a.setX(this.start.value);
            } else {
                this.f760a.setY(this.start.value);
            }
        }
    }
}
