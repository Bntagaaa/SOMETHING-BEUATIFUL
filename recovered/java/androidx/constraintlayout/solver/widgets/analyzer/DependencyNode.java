package androidx.constraintlayout.solver.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DependencyNode implements Dependency {

    /* renamed from: a, reason: collision with root package name */
    public final WidgetRun f752a;
    public int c;
    public int value;
    public Dependency updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;

    /* renamed from: b, reason: collision with root package name */
    public a f753b = a.f755a;
    public int d = 1;
    public b e = null;
    public boolean resolved = false;
    public final ArrayList f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f754g = new ArrayList();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f755a = new a("UNKNOWN", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final a f756b = new a("HORIZONTAL_DIMENSION", 1);
        public static final a c = new a("VERTICAL_DIMENSION", 2);
        public static final a d = new a("LEFT", 3);
        public static final a e = new a("RIGHT", 4);
        public static final a f = new a("TOP", 5);

        /* renamed from: g, reason: collision with root package name */
        public static final a f757g = new a("BOTTOM", 6);
        public static final a h = new a("BASELINE", 7);
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f752a = widgetRun;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f752a.f760a.getDebugName());
        sb.append(":");
        sb.append(this.f753b);
        sb.append("(");
        sb.append(this.resolved ? Integer.valueOf(this.value) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f754g.size());
        sb.append(":d=");
        sb.append(this.f.size());
        sb.append(">");
        return sb.toString();
    }

    public void resolve(int i) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i;
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            Dependency dependency = (Dependency) it.next();
            dependency.update(dependency);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        ArrayList arrayList = this.f754g;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((DependencyNode) it.next()).resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        Dependency dependency2 = this.updateDelegate;
        if (dependency2 != null) {
            dependency2.update(this);
        }
        if (this.delegateToWidgetRun) {
            this.f752a.update(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        DependencyNode dependencyNode = null;
        int i = 0;
        while (it2.hasNext()) {
            DependencyNode dependencyNode2 = (DependencyNode) it2.next();
            if (!(dependencyNode2 instanceof b)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.resolved) {
            b bVar = this.e;
            if (bVar != null) {
                if (!bVar.resolved) {
                    return;
                } else {
                    this.c = this.d * bVar.value;
                }
            }
            resolve(dependencyNode.value + this.c);
        }
        Dependency dependency3 = this.updateDelegate;
        if (dependency3 != null) {
            dependency3.update(this);
        }
    }

    public void addDependency(Dependency dependency) {
        this.f.add(dependency);
        if (this.resolved) {
            dependency.update(dependency);
        }
    }

    public String name() {
        String debugName = this.f752a.f760a.getDebugName();
        a aVar = this.f753b;
        StringBuilder sbQ = _COROUTINE.a.q((aVar == a.d || aVar == a.e) ? _COROUTINE.a.z(debugName, "_HORIZONTAL") : _COROUTINE.a.z(debugName, "_VERTICAL"), ":");
        sbQ.append(this.f753b.name());
        return sbQ.toString();
    }

    public void clear() {
        this.f754g.clear();
        this.f.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }
}
