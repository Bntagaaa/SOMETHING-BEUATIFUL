package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {

    /* renamed from: a, reason: collision with root package name */
    public ConstraintWidget f760a;

    /* renamed from: b, reason: collision with root package name */
    public e f761b;
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    public final androidx.constraintlayout.solver.widgets.analyzer.b c = new androidx.constraintlayout.solver.widgets.analyzer.b(this);
    public int orientation = 0;
    public boolean d = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected b mRunType = b.f763a;

    public abstract void a();

    public abstract void applyToWidget();

    public abstract void b();

    public abstract boolean c();

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    public void updateRunEnd(Dependency dependency) {
    }

    public void updateRunStart(Dependency dependency) {
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f760a = constraintWidget;
    }

    public boolean isDimensionResolved() {
        return this.c.resolved;
    }

    public boolean isCenterConnection() {
        int size = this.start.f754g.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (((DependencyNode) this.start.f754g.get(i2)).f752a != this) {
                i++;
            }
        }
        int size2 = this.end.f754g.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (((DependencyNode) this.end.f754g.get(i3)).f752a != this) {
                i++;
            }
        }
        return i >= 2;
    }

    public long wrapSize(int i) {
        androidx.constraintlayout.solver.widgets.analyzer.b bVar = this.c;
        if (!bVar.resolved) {
            return 0L;
        }
        long j = bVar.value;
        if (isCenterConnection()) {
            return j + (this.start.c - this.end.c);
        }
        if (i == 0) {
            return j + this.start.c;
        }
        return j - this.end.c;
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i = a.f762a[constraintAnchor2.mType.ordinal()];
        if (i == 1) {
            return constraintWidget.horizontalRun.start;
        }
        if (i == 2) {
            return constraintWidget.horizontalRun.end;
        }
        if (i == 3) {
            return constraintWidget.verticalRun.start;
        }
        if (i == 4) {
            return constraintWidget.verticalRun.baseline;
        }
        if (i != 5) {
            return null;
        }
        return constraintWidget.verticalRun.end;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f762a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f762a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f762a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f762a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f762a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f762a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRunCenter(androidx.constraintlayout.solver.widgets.analyzer.Dependency r12, androidx.constraintlayout.solver.widgets.ConstraintAnchor r13, androidx.constraintlayout.solver.widgets.ConstraintAnchor r14, int r15) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun.updateRunCenter(androidx.constraintlayout.solver.widgets.analyzer.Dependency, androidx.constraintlayout.solver.widgets.ConstraintAnchor, androidx.constraintlayout.solver.widgets.ConstraintAnchor, int):void");
    }

    public final int getLimitedDimension(int i, int i2) {
        if (i2 == 0) {
            ConstraintWidget constraintWidget = this.f760a;
            int i3 = constraintWidget.mMatchConstraintMaxWidth;
            int iMax = Math.max(constraintWidget.mMatchConstraintMinWidth, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax != i) {
                return iMax;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.f760a;
            int i4 = constraintWidget2.mMatchConstraintMaxHeight;
            int iMax2 = Math.max(constraintWidget2.mMatchConstraintMinHeight, i);
            if (i4 > 0) {
                iMax2 = Math.min(i4, i);
            }
            if (iMax2 != i) {
                return iMax2;
            }
        }
        return i;
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int i2 = a.f762a[constraintAnchor2.mType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.f754g.add(dependencyNode2);
        dependencyNode.c = i;
        dependencyNode2.f.add(dependencyNode);
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, androidx.constraintlayout.solver.widgets.analyzer.b bVar) {
        dependencyNode.f754g.add(dependencyNode2);
        dependencyNode.f754g.add(this.c);
        dependencyNode.d = i;
        dependencyNode.e = bVar;
        dependencyNode2.f.add(dependencyNode);
        bVar.f.add(dependencyNode);
    }

    public long getWrapDimension() {
        if (this.c.resolved) {
            return r0.value;
        }
        return 0L;
    }

    public boolean isResolved() {
        return this.d;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f763a;

        /* renamed from: b, reason: collision with root package name */
        public static final b f764b;
        public static final /* synthetic */ b[] c;

        static {
            b bVar = new b("NONE", 0);
            f763a = bVar;
            b bVar2 = new b("START", 1);
            b bVar3 = new b("END", 2);
            b bVar4 = new b("CENTER", 3);
            f764b = bVar4;
            c = new b[]{bVar, bVar2, bVar3, bVar4};
        }

        public static b[] values() {
            return (b[]) c.clone();
        }
    }
}
