package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DependencyGraph {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintWidgetContainer f749a;
    public final ConstraintWidgetContainer d;
    public BasicMeasure.Measurer f;

    /* renamed from: g, reason: collision with root package name */
    public final BasicMeasure.Measure f751g;
    public final ArrayList h;

    /* renamed from: b, reason: collision with root package name */
    public boolean f750b = true;
    public boolean c = true;
    public final ArrayList e = new ArrayList();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        new ArrayList();
        this.f = null;
        this.f751g = new BasicMeasure.Measure();
        this.h = new ArrayList();
        this.f749a = constraintWidgetContainer;
        this.d = constraintWidgetContainer;
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.f = measurer;
    }

    public final int c(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, ((e) arrayList.get(i2)).computeWrapSize(constraintWidgetContainer, i));
        }
        return (int) jMax;
    }

    public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2) {
        if (this.f750b) {
            buildGraph();
            Iterator<ConstraintWidget> it = this.f749a.mChildren.iterator();
            boolean z = false;
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                boolean[] zArr = next.isTerminalWidget;
                zArr[0] = true;
                zArr[1] = true;
                if (next instanceof Barrier) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Iterator it2 = this.h.iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                eVar.defineTerminalWidgets(dimensionBehaviour == dimensionBehaviour3, dimensionBehaviour2 == dimensionBehaviour3);
            }
        }
    }

    public boolean directMeasure(boolean z) {
        boolean z2;
        boolean z3 = this.f750b;
        ConstraintWidgetContainer constraintWidgetContainer = this.f749a;
        boolean z4 = false;
        if (z3 || this.c) {
            Iterator<ConstraintWidget> it = constraintWidgetContainer.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.measured = false;
                next.horizontalRun.e();
                next.verticalRun.d();
            }
            constraintWidgetContainer.measured = false;
            constraintWidgetContainer.horizontalRun.e();
            constraintWidgetContainer.verticalRun.d();
            this.c = false;
        }
        b(this.d);
        constraintWidgetContainer.setX(0);
        constraintWidgetContainer.setY(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidgetContainer.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidgetContainer.getDimensionBehaviour(1);
        if (this.f750b) {
            buildGraph();
        }
        int x = constraintWidgetContainer.getX();
        int y = constraintWidgetContainer.getY();
        constraintWidgetContainer.horizontalRun.start.resolve(x);
        constraintWidgetContainer.verticalRun.start.resolve(y);
        measureWidgets();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        ArrayList arrayList = this.e;
        if (dimensionBehaviour == dimensionBehaviour3 || dimensionBehaviour2 == dimensionBehaviour3) {
            if (z) {
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (!((WidgetRun) it2.next()).c()) {
                        z = false;
                        break;
                    }
                }
            }
            if (z && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setWidth(c(constraintWidgetContainer, 0));
                constraintWidgetContainer.horizontalRun.c.resolve(constraintWidgetContainer.getWidth());
            }
            if (z && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setHeight(c(constraintWidgetContainer, 1));
                constraintWidgetContainer.verticalRun.c.resolve(constraintWidgetContainer.getHeight());
            }
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour4 == dimensionBehaviour5 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int width = constraintWidgetContainer.getWidth() + x;
            constraintWidgetContainer.horizontalRun.end.resolve(width);
            constraintWidgetContainer.horizontalRun.c.resolve(width - x);
            measureWidgets();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = constraintWidgetContainer.mListDimensionBehaviors[1];
            if (dimensionBehaviour6 == dimensionBehaviour5 || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer.getHeight() + y;
                constraintWidgetContainer.verticalRun.end.resolve(height);
                constraintWidgetContainer.verticalRun.c.resolve(height - y);
            }
            measureWidgets();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it3.next();
            if (widgetRun.f760a != constraintWidgetContainer || widgetRun.d) {
                widgetRun.applyToWidget();
            }
        }
        Iterator it4 = arrayList.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z4 = true;
                break;
            }
            WidgetRun widgetRun2 = (WidgetRun) it4.next();
            if (z2 || widgetRun2.f760a != constraintWidgetContainer) {
                if (!widgetRun2.start.resolved || ((!widgetRun2.end.resolved && !(widgetRun2 instanceof c)) || (!widgetRun2.c.resolved && !(widgetRun2 instanceof ChainRun) && !(widgetRun2 instanceof c)))) {
                    break;
                }
            }
        }
        constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
        constraintWidgetContainer.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z4;
    }

    public boolean directMeasureSetup(boolean z) {
        boolean z2 = this.f750b;
        ConstraintWidgetContainer constraintWidgetContainer = this.f749a;
        if (z2) {
            Iterator<ConstraintWidget> it = constraintWidgetContainer.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.measured = false;
                HorizontalWidgetRun horizontalWidgetRun = next.horizontalRun;
                horizontalWidgetRun.c.resolved = false;
                horizontalWidgetRun.d = false;
                horizontalWidgetRun.e();
                VerticalWidgetRun verticalWidgetRun = next.verticalRun;
                verticalWidgetRun.c.resolved = false;
                verticalWidgetRun.d = false;
                verticalWidgetRun.d();
            }
            constraintWidgetContainer.measured = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.horizontalRun;
            horizontalWidgetRun2.c.resolved = false;
            horizontalWidgetRun2.d = false;
            horizontalWidgetRun2.e();
            VerticalWidgetRun verticalWidgetRun2 = constraintWidgetContainer.verticalRun;
            verticalWidgetRun2.c.resolved = false;
            verticalWidgetRun2.d = false;
            verticalWidgetRun2.d();
            buildGraph();
        }
        b(this.d);
        constraintWidgetContainer.setX(0);
        constraintWidgetContainer.setY(0);
        constraintWidgetContainer.horizontalRun.start.resolve(0);
        constraintWidgetContainer.verticalRun.start.resolve(0);
        return true;
    }

    public boolean directMeasureWithOrientation(boolean z, int i) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidgetContainer constraintWidgetContainer = this.f749a;
        boolean z3 = false;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidgetContainer.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidgetContainer.getDimensionBehaviour(1);
        int x = constraintWidgetContainer.getX();
        int y = constraintWidgetContainer.getY();
        ArrayList arrayList = this.e;
        if (z && (dimensionBehaviour2 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour3 == dimensionBehaviour)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun widgetRun = (WidgetRun) it.next();
                if (widgetRun.orientation == i && !widgetRun.c()) {
                    z = false;
                    break;
                }
            }
            if (i == 0) {
                if (z && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidgetContainer.setWidth(c(constraintWidgetContainer, 0));
                    constraintWidgetContainer.horizontalRun.c.resolve(constraintWidgetContainer.getWidth());
                }
            } else if (z && dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setHeight(c(constraintWidgetContainer, 1));
                constraintWidgetContainer.verticalRun.c.resolve(constraintWidgetContainer.getHeight());
            }
        }
        if (i == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer.mListDimensionBehaviors[0];
            if (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = constraintWidgetContainer.getWidth() + x;
                constraintWidgetContainer.horizontalRun.end.resolve(width);
                constraintWidgetContainer.horizontalRun.c.resolve(width - x);
                z2 = true;
            }
            z2 = false;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer.mListDimensionBehaviors[1];
            if (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer.getHeight() + y;
                constraintWidgetContainer.verticalRun.end.resolve(height);
                constraintWidgetContainer.verticalRun.c.resolve(height - y);
                z2 = true;
            }
            z2 = false;
        }
        measureWidgets();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            WidgetRun widgetRun2 = (WidgetRun) it2.next();
            if (widgetRun2.orientation == i && (widgetRun2.f760a != constraintWidgetContainer || widgetRun2.d)) {
                widgetRun2.applyToWidget();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z3 = true;
                break;
            }
            WidgetRun widgetRun3 = (WidgetRun) it3.next();
            if (widgetRun3.orientation == i && (z2 || widgetRun3.f760a != constraintWidgetContainer)) {
                if (!widgetRun3.start.resolved || !widgetRun3.end.resolved || (!(widgetRun3 instanceof ChainRun) && !widgetRun3.c.resolved)) {
                    break;
                }
            }
        }
        constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour2);
        constraintWidgetContainer.setVerticalDimensionBehaviour(dimensionBehaviour3);
        return z3;
    }

    public final void e(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        BasicMeasure.Measure measure = this.f751g;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i;
        measure.verticalDimension = i2;
        this.f.measure(constraintWidget, measure);
        constraintWidget.setWidth(measure.measuredWidth);
        constraintWidget.setHeight(measure.measuredHeight);
        constraintWidget.setHasBaseline(measure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(measure.measuredBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x027d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0008 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r19) {
        /*
            Method dump skipped, instructions count: 833
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph.b(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer):void");
    }

    public void measureWidgets() {
        a aVar;
        Iterator<ConstraintWidget> it = this.f749a.mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            if (!next.measured) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = next.mListDimensionBehaviors;
                boolean z = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i = next.mMatchConstraintDefaultWidth;
                int i2 = next.mMatchConstraintDefaultHeight;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z2 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                b bVar = next.horizontalRun.c;
                boolean z3 = bVar.resolved;
                b bVar2 = next.verticalRun.c;
                boolean z4 = bVar2.resolved;
                if (z3 && z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    e(next, dimensionBehaviour4, bVar.value, dimensionBehaviour4, bVar2.value);
                    next.measured = true;
                } else if (z3 && z) {
                    e(next, ConstraintWidget.DimensionBehaviour.FIXED, bVar.value, dimensionBehaviour3, bVar2.value);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        next.verticalRun.c.h = next.getHeight();
                    } else {
                        next.verticalRun.c.resolve(next.getHeight());
                        next.measured = true;
                    }
                } else if (z4 && z2) {
                    e(next, dimensionBehaviour3, bVar.value, ConstraintWidget.DimensionBehaviour.FIXED, bVar2.value);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        next.horizontalRun.c.h = next.getWidth();
                    } else {
                        next.horizontalRun.c.resolve(next.getWidth());
                        next.measured = true;
                    }
                }
                if (next.measured && (aVar = next.verticalRun.e) != null) {
                    aVar.resolve(next.getBaselineDistance());
                }
            }
        }
    }

    public void invalidateGraph() {
        this.f750b = true;
    }

    public void invalidateMeasures() {
        this.c = true;
    }

    public void buildGraph() {
        buildGraph(this.e);
        ArrayList arrayList = this.h;
        arrayList.clear();
        ConstraintWidgetContainer constraintWidgetContainer = this.f749a;
        d(constraintWidgetContainer.horizontalRun, 0, arrayList);
        d(constraintWidgetContainer.verticalRun, 1, arrayList);
        this.f750b = false;
    }

    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        ConstraintWidgetContainer constraintWidgetContainer = this.d;
        constraintWidgetContainer.horizontalRun.b();
        constraintWidgetContainer.verticalRun.b();
        arrayList.add(constraintWidgetContainer.horizontalRun);
        arrayList.add(constraintWidgetContainer.verticalRun);
        Iterator<ConstraintWidget> it = constraintWidgetContainer.mChildren.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            if (next instanceof Guideline) {
                arrayList.add(new c(next));
            } else {
                if (next.isInHorizontalChain()) {
                    if (next.horizontalChainRun == null) {
                        next.horizontalChainRun = new ChainRun(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.horizontalChainRun);
                } else {
                    arrayList.add(next.horizontalRun);
                }
                if (next.isInVerticalChain()) {
                    if (next.verticalChainRun == null) {
                        next.verticalChainRun = new ChainRun(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.verticalChainRun);
                } else {
                    arrayList.add(next.verticalRun);
                }
                if (next instanceof HelperWidget) {
                    arrayList.add(new d(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.f760a != constraintWidgetContainer) {
                next2.a();
            }
        }
    }

    public final void a(DependencyNode dependencyNode, int i, int i2, ArrayList arrayList, e eVar) {
        int i3;
        ArrayList arrayList2;
        WidgetRun widgetRun = dependencyNode.f752a;
        if (widgetRun.f761b == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f749a;
            if (widgetRun == constraintWidgetContainer.horizontalRun || widgetRun == constraintWidgetContainer.verticalRun) {
                return;
            }
            if (eVar == null) {
                eVar = new e(widgetRun, i2);
                arrayList.add(eVar);
            }
            e eVar2 = eVar;
            widgetRun.f761b = eVar2;
            eVar2.add(widgetRun);
            Iterator it = widgetRun.start.f.iterator();
            while (it.hasNext()) {
                Dependency dependency = (Dependency) it.next();
                if (dependency instanceof DependencyNode) {
                    i3 = i;
                    arrayList2 = arrayList;
                    a((DependencyNode) dependency, i3, 0, arrayList2, eVar2);
                } else {
                    i3 = i;
                    arrayList2 = arrayList;
                }
                i = i3;
                arrayList = arrayList2;
            }
            int i4 = i;
            ArrayList arrayList3 = arrayList;
            Iterator it2 = widgetRun.end.f.iterator();
            while (it2.hasNext()) {
                Dependency dependency2 = (Dependency) it2.next();
                if (dependency2 instanceof DependencyNode) {
                    a((DependencyNode) dependency2, i4, 1, arrayList3, eVar2);
                }
            }
            if (i4 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it3 = ((VerticalWidgetRun) widgetRun).baseline.f.iterator();
                while (it3.hasNext()) {
                    Dependency dependency3 = (Dependency) it3.next();
                    if (dependency3 instanceof DependencyNode) {
                        a((DependencyNode) dependency3, i4, 2, arrayList3, eVar2);
                    }
                }
            }
            Iterator it4 = widgetRun.start.f754g.iterator();
            while (it4.hasNext()) {
                a((DependencyNode) it4.next(), i4, 0, arrayList3, eVar2);
            }
            Iterator it5 = widgetRun.end.f754g.iterator();
            while (it5.hasNext()) {
                a((DependencyNode) it5.next(), i4, 1, arrayList3, eVar2);
            }
            if (i4 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it6 = ((VerticalWidgetRun) widgetRun).baseline.f754g.iterator();
                while (it6.hasNext()) {
                    a((DependencyNode) it6.next(), i4, 2, arrayList3, eVar2);
                }
            }
        }
    }

    public final void d(WidgetRun widgetRun, int i, ArrayList arrayList) {
        Iterator it = widgetRun.start.f.iterator();
        while (it.hasNext()) {
            Dependency dependency = (Dependency) it.next();
            if (dependency instanceof DependencyNode) {
                a((DependencyNode) dependency, i, 0, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                a(((WidgetRun) dependency).start, i, 0, arrayList, null);
            }
        }
        Iterator it2 = widgetRun.end.f.iterator();
        while (it2.hasNext()) {
            Dependency dependency2 = (Dependency) it2.next();
            if (dependency2 instanceof DependencyNode) {
                a((DependencyNode) dependency2, i, 1, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                a(((WidgetRun) dependency2).end, i, 1, arrayList, null);
            }
        }
        int i2 = i;
        if (i2 == 1) {
            Iterator it3 = ((VerticalWidgetRun) widgetRun).baseline.f.iterator();
            while (it3.hasNext()) {
                Dependency dependency3 = (Dependency) it3.next();
                if (dependency3 instanceof DependencyNode) {
                    a((DependencyNode) dependency3, i2, 2, arrayList, null);
                }
                i2 = i;
            }
        }
    }
}
