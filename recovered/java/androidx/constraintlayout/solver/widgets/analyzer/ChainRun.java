package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    public final ArrayList e;
    public int f;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        super(constraintWidget);
        this.e = new ArrayList();
        this.orientation = i;
        ConstraintWidget constraintWidget3 = this.f760a;
        ConstraintWidget previousChainMember = constraintWidget3.getPreviousChainMember(i);
        while (true) {
            ConstraintWidget constraintWidget4 = previousChainMember;
            constraintWidget2 = constraintWidget3;
            constraintWidget3 = constraintWidget4;
            if (constraintWidget3 == null) {
                break;
            } else {
                previousChainMember = constraintWidget3.getPreviousChainMember(this.orientation);
            }
        }
        this.f760a = constraintWidget2;
        WidgetRun run = constraintWidget2.getRun(this.orientation);
        ArrayList arrayList = this.e;
        arrayList.add(run);
        ConstraintWidget nextChainMember = constraintWidget2.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            arrayList.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it.next();
            int i2 = this.orientation;
            if (i2 == 0) {
                widgetRun.f760a.horizontalChainRun = this;
            } else if (i2 == 1) {
                widgetRun.f760a.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.f760a.getParent()).isRtl() && arrayList.size() > 1) {
            this.f760a = ((WidgetRun) arrayList.get(arrayList.size() - 1)).f760a;
        }
        this.f = this.orientation == 0 ? this.f760a.getHorizontalChainStyle() : this.f760a.getVerticalChainStyle();
    }

    public String toString() {
        String strConcat = "ChainRun ".concat(this.orientation == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it.next();
            strConcat = _COROUTINE.a.z(_COROUTINE.a.z(strConcat, "<") + widgetRun, "> ");
        }
        return strConcat;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean c() {
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((WidgetRun) arrayList.get(i)).c()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            wrapDimension = r5.end.c + ((WidgetRun) arrayList.get(i)).getWrapDimension() + wrapDimension + r5.start.c;
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void b() {
        this.f761b = null;
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x01dc A[PHI: r10 r25 r26
      0x01dc: PHI (r10v53 int) = (r10v49 int), (r10v58 int) binds: [B:120:0x01da, B:111:0x01b6] A[DONT_GENERATE, DONT_INLINE]
      0x01dc: PHI (r25v1 int) = (r25v0 int), (r25v3 int) binds: [B:120:0x01da, B:111:0x01b6] A[DONT_GENERATE, DONT_INLINE]
      0x01dc: PHI (r26v1 int) = (r26v0 int), (r26v3 int) binds: [B:120:0x01da, B:111:0x01b6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0163  */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(androidx.constraintlayout.solver.widgets.analyzer.Dependency r28) {
        /*
            Method dump skipped, instructions count: 1073
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.ChainRun.update(androidx.constraintlayout.solver.widgets.analyzer.Dependency):void");
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.e;
            if (i >= arrayList.size()) {
                return;
            }
            ((WidgetRun) arrayList.get(i)).applyToWidget();
            i++;
        }
    }

    public final ConstraintWidget d() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.e;
            if (i >= arrayList.size()) {
                return null;
            }
            WidgetRun widgetRun = (WidgetRun) arrayList.get(i);
            if (widgetRun.f760a.getVisibility() != 8) {
                return widgetRun.f760a;
            }
            i++;
        }
    }

    public final ConstraintWidget e() {
        ArrayList arrayList = this.e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = (WidgetRun) arrayList.get(size);
            if (widgetRun.f760a.getVisibility() != 8) {
                return widgetRun.f760a;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void a() {
        ArrayList arrayList = this.e;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).a();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(0)).f760a;
        ConstraintWidget constraintWidget2 = ((WidgetRun) arrayList.get(size - 1)).f760a;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget constraintWidgetD = d();
            if (constraintWidgetD != null) {
                margin = constraintWidgetD.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget constraintWidgetE = e();
            if (constraintWidgetE != null) {
                margin2 = constraintWidgetE.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget constraintWidgetD2 = d();
            if (constraintWidgetD2 != null) {
                margin3 = constraintWidgetD2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget constraintWidgetE2 = e();
            if (constraintWidgetE2 != null) {
                margin4 = constraintWidgetE2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }
}
