package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    public final WidgetRun f765a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f766b = new ArrayList();

    public e(WidgetRun widgetRun, int i) {
        this.f765a = null;
        this.f765a = widgetRun;
    }

    public void add(WidgetRun widgetRun) {
        this.f766b.add(widgetRun);
    }

    public static long c(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.f752a;
        if (widgetRun instanceof d) {
            return j;
        }
        ArrayList arrayList = dependencyNode.f;
        int size = arrayList.size();
        long jMax = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = (Dependency) arrayList.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.f752a != widgetRun) {
                    jMax = Math.max(jMax, c(dependencyNode2, dependencyNode2.c + j));
                }
            }
        }
        if (dependencyNode != widgetRun.start) {
            return jMax;
        }
        long wrapDimension = j + widgetRun.getWrapDimension();
        return Math.max(Math.max(jMax, c(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.c);
    }

    public static long b(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.f752a;
        if (widgetRun instanceof d) {
            return j;
        }
        ArrayList arrayList = dependencyNode.f;
        int size = arrayList.size();
        long jMin = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = (Dependency) arrayList.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.f752a != widgetRun) {
                    jMin = Math.min(jMin, b(dependencyNode2, dependencyNode2.c + j));
                }
            }
        }
        if (dependencyNode != widgetRun.end) {
            return jMin;
        }
        long wrapDimension = j - widgetRun.getWrapDimension();
        return Math.min(Math.min(jMin, b(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.c);
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        WidgetRun widgetRun = this.f765a;
        if (!(widgetRun instanceof ChainRun) ? i != 0 ? (widgetRun instanceof VerticalWidgetRun) : (widgetRun instanceof HorizontalWidgetRun) : ((ChainRun) widgetRun).orientation == i) {
            return 0L;
        }
        DependencyNode dependencyNode = (i == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (i == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean zContains = widgetRun.start.f754g.contains(dependencyNode);
        boolean zContains2 = widgetRun.end.f754g.contains(dependencyNode2);
        long wrapDimension = widgetRun.getWrapDimension();
        if (!zContains || !zContains2) {
            if (zContains) {
                return Math.max(c(widgetRun.start, r13.c), widgetRun.start.c + wrapDimension);
            }
            if (!zContains2) {
                return (widgetRun.getWrapDimension() + widgetRun.start.c) - widgetRun.end.c;
            }
            return Math.max(-b(widgetRun.end, r13.c), (-widgetRun.end.c) + wrapDimension);
        }
        long jC = c(widgetRun.start, 0L);
        long jB = b(widgetRun.end, 0L);
        long j = jC - wrapDimension;
        int i2 = widgetRun.end.c;
        if (j >= (-i2)) {
            j += i2;
        }
        long j2 = widgetRun.start.c;
        long j3 = ((-jB) - wrapDimension) - j2;
        if (j3 >= j2) {
            j3 -= j2;
        }
        float biasPercent = widgetRun.f760a.getBiasPercent(i);
        float f = biasPercent > 0.0f ? (long) ((j / (1.0f - biasPercent)) + (j3 / biasPercent)) : 0L;
        return (widgetRun.start.c + ((((long) ((f * biasPercent) + 0.5f)) + wrapDimension) + ((long) _COROUTINE.a.a(1.0f, biasPercent, f, 0.5f)))) - widgetRun.end.c;
    }

    public static void a(WidgetRun widgetRun, int i) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (widgetRun.f760a.isTerminalWidget[i]) {
            Iterator it = widgetRun.start.f.iterator();
            while (it.hasNext()) {
                Dependency dependency = (Dependency) it.next();
                if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).f752a) != widgetRun && dependencyNode2 == widgetRun3.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator it2 = ((ChainRun) widgetRun).e.iterator();
                        while (it2.hasNext()) {
                            a((WidgetRun) it2.next(), i);
                        }
                    } else if (!(widgetRun instanceof d)) {
                        widgetRun.f760a.isTerminalWidget[i] = false;
                    }
                    a(dependencyNode2.f752a, i);
                }
            }
            Iterator it3 = widgetRun.end.f.iterator();
            while (it3.hasNext()) {
                Dependency dependency2 = (Dependency) it3.next();
                if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).f752a) != widgetRun && dependencyNode == widgetRun2.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator it4 = ((ChainRun) widgetRun).e.iterator();
                        while (it4.hasNext()) {
                            a((WidgetRun) it4.next(), i);
                        }
                    } else if (!(widgetRun instanceof d)) {
                        widgetRun.f760a.isTerminalWidget[i] = false;
                    }
                    a(dependencyNode.f752a, i);
                }
            }
        }
    }

    public void defineTerminalWidgets(boolean z, boolean z2) {
        WidgetRun widgetRun = this.f765a;
        if (z && (widgetRun instanceof HorizontalWidgetRun)) {
            a(widgetRun, 0);
        }
        if (z2 && (widgetRun instanceof VerticalWidgetRun)) {
            a(widgetRun, 1);
        }
    }
}
