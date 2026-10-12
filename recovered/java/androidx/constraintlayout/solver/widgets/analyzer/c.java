package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Guideline;

/* loaded from: classes.dex */
class c extends WidgetRun {
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean c() {
        return false;
    }

    public c(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.horizontalRun.b();
        constraintWidget.verticalRun.b();
        this.orientation = ((Guideline) constraintWidget).getOrientation();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void b() {
        this.start.clear();
    }

    public final void d(DependencyNode dependencyNode) {
        this.start.f.add(dependencyNode);
        dependencyNode.f754g.add(this.start);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve && !dependencyNode.resolved) {
            DependencyNode dependencyNode2 = (DependencyNode) dependencyNode.f754g.get(0);
            this.start.resolve((int) ((((Guideline) this.f760a).getRelativePercent() * dependencyNode2.value) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void a() {
        Guideline guideline = (Guideline) this.f760a;
        int relativeBegin = guideline.getRelativeBegin();
        int relativeEnd = guideline.getRelativeEnd();
        guideline.getRelativePercent();
        if (guideline.getOrientation() == 1) {
            if (relativeBegin != -1) {
                this.start.f754g.add(this.f760a.mParent.horizontalRun.start);
                this.f760a.mParent.horizontalRun.start.f.add(this.start);
                this.start.c = relativeBegin;
            } else if (relativeEnd != -1) {
                this.start.f754g.add(this.f760a.mParent.horizontalRun.end);
                this.f760a.mParent.horizontalRun.end.f.add(this.start);
                this.start.c = -relativeEnd;
            } else {
                DependencyNode dependencyNode = this.start;
                dependencyNode.delegateToWidgetRun = true;
                dependencyNode.f754g.add(this.f760a.mParent.horizontalRun.end);
                this.f760a.mParent.horizontalRun.end.f.add(this.start);
            }
            d(this.f760a.horizontalRun.start);
            d(this.f760a.horizontalRun.end);
            return;
        }
        if (relativeBegin != -1) {
            this.start.f754g.add(this.f760a.mParent.verticalRun.start);
            this.f760a.mParent.verticalRun.start.f.add(this.start);
            this.start.c = relativeBegin;
        } else if (relativeEnd != -1) {
            this.start.f754g.add(this.f760a.mParent.verticalRun.end);
            this.f760a.mParent.verticalRun.end.f.add(this.start);
            this.start.c = -relativeEnd;
        } else {
            DependencyNode dependencyNode2 = this.start;
            dependencyNode2.delegateToWidgetRun = true;
            dependencyNode2.f754g.add(this.f760a.mParent.verticalRun.end);
            this.f760a.mParent.verticalRun.end.f.add(this.start);
        }
        d(this.f760a.verticalRun.start);
        d(this.f760a.verticalRun.end);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        if (((Guideline) this.f760a).getOrientation() == 1) {
            this.f760a.setX(this.start.value);
        } else {
            this.f760a.setY(this.start.value);
        }
    }
}
