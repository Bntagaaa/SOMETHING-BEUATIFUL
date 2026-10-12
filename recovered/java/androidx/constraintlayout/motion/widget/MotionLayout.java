package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Flow;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.widget.NestedScrollView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    public static boolean IS_IN_EDIT_MODE = false;
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    public float A;
    public float B;
    public long C;
    public float D;
    public boolean E;
    public boolean F;
    public TransitionListener G;
    public int H;
    public d I;
    public boolean J;
    public final StopLogic K;
    public final c L;
    public DesignTool M;
    public int N;
    public int O;
    public boolean P;
    public float Q;
    public float R;
    public long S;
    public float T;
    public boolean U;
    public ArrayList V;
    public ArrayList W;
    public ArrayList a0;
    public int b0;
    public long c0;
    public float d0;
    public int e0;
    public float f0;
    public int g0;
    public int h0;
    public int i0;
    public int j0;
    public int k0;
    public int l0;
    public float m0;
    protected boolean mMeasureDuringTransition;
    public final KeyCache n0;
    public MotionScene o;
    public boolean o0;
    public Interpolator p;
    public g p0;
    public float q;
    public h q0;
    public int r;
    public final e r0;
    public int s;
    public boolean s0;
    public int t;
    public final RectF t0;
    public int u;
    public View u0;
    public int v;
    public final ArrayList v0;
    public boolean w;
    public final HashMap x;
    public long y;
    public float z;

    public interface MotionTracker {
        void addMovement(MotionEvent motionEvent);

        void clear();

        void computeCurrentVelocity(int i);

        void computeCurrentVelocity(int i, float f);

        float getXVelocity();

        float getXVelocity(int i);

        float getYVelocity();

        float getYVelocity(int i);

        void recycle();
    }

    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int i, int i2, float f);

        void onTransitionCompleted(MotionLayout motionLayout, int i);

        void onTransitionStarted(MotionLayout motionLayout, int i, int i2);

        void onTransitionTrigger(MotionLayout motionLayout, int i, boolean z, float f);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
    }

    public class e {

        /* renamed from: a, reason: collision with root package name */
        public ConstraintWidgetContainer f650a = new ConstraintWidgetContainer();

        /* renamed from: b, reason: collision with root package name */
        public ConstraintWidgetContainer f651b = new ConstraintWidgetContainer();
        public ConstraintSet c = null;
        public ConstraintSet d = null;
        public int e;
        public int f;

        public void reEvaluateState() {
            MotionLayout motionLayout = MotionLayout.this;
            measure(motionLayout.u, motionLayout.v);
            int childCount = motionLayout.getChildCount();
            motionLayout.r0.build();
            motionLayout.F = true;
            int width = motionLayout.getWidth();
            int height = motionLayout.getHeight();
            int iGatPathMotionArc = motionLayout.o.gatPathMotionArc();
            HashMap map = motionLayout.x;
            int i = 0;
            if (iGatPathMotionArc != -1) {
                for (int i2 = 0; i2 < childCount; i2++) {
                    MotionController motionController = (MotionController) map.get(motionLayout.getChildAt(i2));
                    if (motionController != null) {
                        motionController.setPathMotionArc(iGatPathMotionArc);
                    }
                }
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                MotionController motionController2 = (MotionController) map.get(motionLayout.getChildAt(i3));
                if (motionController2 != null) {
                    motionLayout.o.getKeyFrames(motionController2);
                    motionController2.setup(width, height, motionLayout.z, motionLayout.getNanoTime());
                }
            }
            float staggered = motionLayout.o.getStaggered();
            if (staggered != 0.0f) {
                boolean z = ((double) staggered) < 0.0d;
                float fAbs = Math.abs(staggered);
                float fMax = -3.4028235E38f;
                float fMin = Float.MAX_VALUE;
                float fMin2 = Float.MAX_VALUE;
                float fMax2 = -3.4028235E38f;
                for (int i4 = 0; i4 < childCount; i4++) {
                    MotionController motionController3 = (MotionController) map.get(motionLayout.getChildAt(i4));
                    if (!Float.isNaN(motionController3.j)) {
                        for (int i5 = 0; i5 < childCount; i5++) {
                            MotionController motionController4 = (MotionController) map.get(motionLayout.getChildAt(i5));
                            if (!Float.isNaN(motionController4.j)) {
                                fMin = Math.min(fMin, motionController4.j);
                                fMax = Math.max(fMax, motionController4.j);
                            }
                        }
                        while (i < childCount) {
                            MotionController motionController5 = (MotionController) map.get(motionLayout.getChildAt(i));
                            if (!Float.isNaN(motionController5.j)) {
                                motionController5.l = 1.0f / (1.0f - fAbs);
                                if (z) {
                                    motionController5.k = fAbs - (((fMax - motionController5.j) / (fMax - fMin)) * fAbs);
                                } else {
                                    motionController5.k = fAbs - (((motionController5.j - fMin) * fAbs) / (fMax - fMin));
                                }
                            }
                            i++;
                        }
                        return;
                    }
                    androidx.constraintlayout.motion.widget.c cVar = motionController3.e;
                    float f = cVar.e;
                    float f2 = cVar.f;
                    float f3 = z ? f2 - f : f2 + f;
                    fMin2 = Math.min(fMin2, f3);
                    fMax2 = Math.max(fMax2, f3);
                }
                while (i < childCount) {
                    MotionController motionController6 = (MotionController) map.get(motionLayout.getChildAt(i));
                    androidx.constraintlayout.motion.widget.c cVar2 = motionController6.e;
                    float f4 = cVar2.e;
                    float f5 = cVar2.f;
                    float f6 = z ? f5 - f4 : f5 + f4;
                    motionController6.l = 1.0f / (1.0f - fAbs);
                    motionController6.k = fAbs - (((f6 - fMin2) * fAbs) / (fMax2 - fMin2));
                    i++;
                }
            }
        }

        public e() {
        }

        public static void a(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ConstraintWidget constraintWidget;
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> map = new HashMap<>();
            map.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.getChildren().clear();
            constraintWidgetContainer2.copy(constraintWidgetContainer, map);
            Iterator<ConstraintWidget> it = children.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                if (next instanceof Barrier) {
                    constraintWidget = new Barrier();
                } else if (next instanceof Guideline) {
                    constraintWidget = new Guideline();
                } else if (next instanceof Flow) {
                    constraintWidget = new Flow();
                } else if (next instanceof Helper) {
                    constraintWidget = new HelperWidget();
                } else {
                    constraintWidget = new ConstraintWidget();
                }
                constraintWidgetContainer2.add(constraintWidget);
                map.put(next, constraintWidget);
            }
            Iterator<ConstraintWidget> it2 = children.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                map.get(next2).copy(next2, map);
            }
        }

        public final void c(ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.c = constraintSet;
            this.d = constraintSet2;
            this.f650a = new ConstraintWidgetContainer();
            this.f651b = new ConstraintWidgetContainer();
            ConstraintWidgetContainer constraintWidgetContainer = this.f650a;
            MotionLayout motionLayout = MotionLayout.this;
            constraintWidgetContainer.setMeasurer(((ConstraintLayout) motionLayout).mLayoutWidget.getMeasurer());
            this.f651b.setMeasurer(((ConstraintLayout) motionLayout).mLayoutWidget.getMeasurer());
            this.f650a.removeAllChildren();
            this.f651b.removeAllChildren();
            a(((ConstraintLayout) motionLayout).mLayoutWidget, this.f650a);
            a(((ConstraintLayout) motionLayout).mLayoutWidget, this.f651b);
            if (motionLayout.B > 0.5d) {
                if (constraintSet != null) {
                    d(this.f650a, constraintSet);
                }
                d(this.f651b, constraintSet2);
            } else {
                d(this.f651b, constraintSet2);
                if (constraintSet != null) {
                    d(this.f650a, constraintSet);
                }
            }
            this.f650a.setRtl(motionLayout.isRtl());
            this.f650a.updateHierarchy();
            this.f651b.setRtl(motionLayout.isRtl());
            this.f651b.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f650a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.f651b.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer3 = this.f650a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer3.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.f651b.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void d(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            MotionLayout motionLayout = MotionLayout.this;
            sparseArray.put(motionLayout.getId(), constraintWidgetContainer);
            Iterator<ConstraintWidget> it = constraintWidgetContainer.getChildren().iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                sparseArray.put(((View) next.getCompanionWidget()).getId(), next);
            }
            Iterator<ConstraintWidget> it2 = constraintWidgetContainer.getChildren().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                View view = (View) next2.getCompanionWidget();
                constraintSet.applyToLayoutParams(view.getId(), layoutParams);
                next2.setWidth(constraintSet.getWidth(view.getId()));
                next2.setHeight(constraintSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    constraintSet.applyToHelper((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof androidx.constraintlayout.widget.Barrier) {
                        ((androidx.constraintlayout.widget.Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(motionLayout.getLayoutDirection());
                int i = MotionLayout.TOUCH_UP_COMPLETE;
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, next2, layoutParams, sparseArray);
                if (constraintSet.getVisibilityMode(view.getId()) == 1) {
                    next2.setVisibility(view.getVisibility());
                } else {
                    next2.setVisibility(constraintSet.getVisibility(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it3 = constraintWidgetContainer.getChildren().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next3 = it3.next();
                if (next3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) next3.getCompanionWidget();
                    Helper helper = (Helper) next3;
                    constraintHelper.updatePreLayout(constraintWidgetContainer, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        public static ConstraintWidget b(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.getCompanionWidget() == view) {
                return constraintWidgetContainer;
            }
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            int size = children.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = children.get(i);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        public void measure(int i, int i2) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.k0 = mode;
            motionLayout.l0 = mode2;
            int optimizationLevel = motionLayout.getOptimizationLevel();
            if (motionLayout.s == motionLayout.getStartState()) {
                motionLayout.resolveSystem(this.f651b, optimizationLevel, i, i2);
                if (this.c != null) {
                    motionLayout.resolveSystem(this.f650a, optimizationLevel, i, i2);
                }
            } else {
                if (this.c != null) {
                    motionLayout.resolveSystem(this.f650a, optimizationLevel, i, i2);
                }
                motionLayout.resolveSystem(this.f651b, optimizationLevel, i, i2);
            }
            if (!(motionLayout.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                motionLayout.k0 = mode;
                motionLayout.l0 = mode2;
                if (motionLayout.s == motionLayout.getStartState()) {
                    motionLayout.resolveSystem(this.f651b, optimizationLevel, i, i2);
                    if (this.c != null) {
                        motionLayout.resolveSystem(this.f650a, optimizationLevel, i, i2);
                    }
                } else {
                    if (this.c != null) {
                        motionLayout.resolveSystem(this.f650a, optimizationLevel, i, i2);
                    }
                    motionLayout.resolveSystem(this.f651b, optimizationLevel, i, i2);
                }
                motionLayout.g0 = this.f650a.getWidth();
                motionLayout.h0 = this.f650a.getHeight();
                motionLayout.i0 = this.f651b.getWidth();
                motionLayout.j0 = this.f651b.getHeight();
                motionLayout.mMeasureDuringTransition = (motionLayout.g0 == motionLayout.i0 && motionLayout.h0 == motionLayout.j0) ? false : true;
            }
            int i3 = motionLayout.g0;
            int i4 = motionLayout.h0;
            int i5 = motionLayout.k0;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                i3 = (int) ((motionLayout.m0 * (motionLayout.i0 - i3)) + i3);
            }
            int i6 = motionLayout.l0;
            if (i6 == Integer.MIN_VALUE || i6 == 0) {
                i4 = (int) ((motionLayout.m0 * (motionLayout.j0 - i4)) + i4);
            }
            MotionLayout.this.resolveMeasuredDimension(i, i2, i3, i4, this.f650a.isWidthMeasuredTooSmall() || this.f651b.isWidthMeasuredTooSmall(), this.f650a.isHeightMeasuredTooSmall() || this.f651b.isHeightMeasuredTooSmall());
        }

        public void build() {
            int i;
            MotionLayout motionLayout = MotionLayout.this;
            int childCount = motionLayout.getChildCount();
            motionLayout.x.clear();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = motionLayout.getChildAt(i3);
                motionLayout.x.put(childAt, new MotionController(childAt));
            }
            while (i2 < childCount) {
                View childAt2 = motionLayout.getChildAt(i2);
                MotionController motionController = (MotionController) motionLayout.x.get(childAt2);
                if (motionController == null) {
                    i = childCount;
                } else {
                    if (this.c != null) {
                        ConstraintWidget constraintWidgetB = b(this.f650a, childAt2);
                        if (constraintWidgetB != null) {
                            ConstraintSet constraintSet = this.c;
                            androidx.constraintlayout.motion.widget.c cVar = motionController.d;
                            cVar.c = 0.0f;
                            cVar.d = 0.0f;
                            motionController.g(cVar);
                            float x = constraintWidgetB.getX();
                            float y = constraintWidgetB.getY();
                            float width = constraintWidgetB.getWidth();
                            i = childCount;
                            float height = constraintWidgetB.getHeight();
                            cVar.e = x;
                            cVar.f = y;
                            cVar.f678g = width;
                            cVar.h = height;
                            ConstraintSet.Constraint parameters = constraintSet.getParameters(motionController.f641b);
                            cVar.applyParameters(parameters);
                            motionController.j = parameters.motion.mMotionStagger;
                            motionController.f.setState(constraintWidgetB, constraintSet, motionController.f641b);
                        } else {
                            i = childCount;
                            if (motionLayout.H != 0) {
                                Log.e("MotionLayout", Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                            }
                        }
                    } else {
                        i = childCount;
                    }
                    if (this.d != null) {
                        ConstraintWidget constraintWidgetB2 = b(this.f651b, childAt2);
                        if (constraintWidgetB2 != null) {
                            ConstraintSet constraintSet2 = this.d;
                            androidx.constraintlayout.motion.widget.c cVar2 = motionController.e;
                            cVar2.c = 1.0f;
                            cVar2.d = 1.0f;
                            motionController.g(cVar2);
                            float x2 = constraintWidgetB2.getX();
                            float y2 = constraintWidgetB2.getY();
                            float width2 = constraintWidgetB2.getWidth();
                            float height2 = constraintWidgetB2.getHeight();
                            cVar2.e = x2;
                            cVar2.f = y2;
                            cVar2.f678g = width2;
                            cVar2.h = height2;
                            cVar2.applyParameters(constraintSet2.getParameters(motionController.f641b));
                            motionController.f642g.setState(constraintWidgetB2, constraintSet2, motionController.f641b);
                        } else if (motionLayout.H != 0) {
                            Log.e("MotionLayout", Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
                i2++;
                childCount = i;
            }
        }

        public void setMeasuredId(int i, int i2) {
            this.e = i;
            this.f = i2;
        }

        public boolean isNotConfiguredWith(int i, int i2) {
            return (i == this.e && i2 == this.f) ? false : true;
        }
    }

    public class g {

        /* renamed from: a, reason: collision with root package name */
        public float f655a = Float.NaN;

        /* renamed from: b, reason: collision with root package name */
        public float f656b = Float.NaN;
        public int c = -1;
        public int d = -1;

        public void recordState() {
            MotionLayout motionLayout = MotionLayout.this;
            this.d = motionLayout.t;
            this.c = motionLayout.r;
            this.f656b = motionLayout.getVelocity();
            this.f655a = motionLayout.getProgress();
        }

        public g() {
        }

        public final void a() {
            int i = this.c;
            MotionLayout motionLayout = MotionLayout.this;
            if (i != -1 || this.d != -1) {
                if (i == -1) {
                    motionLayout.transitionToState(this.d);
                } else {
                    int i2 = this.d;
                    if (i2 == -1) {
                        motionLayout.setState(i, -1, -1);
                    } else {
                        motionLayout.setTransition(i, i2);
                    }
                }
                motionLayout.n(h.f658b);
            }
            if (Float.isNaN(this.f656b)) {
                if (Float.isNaN(this.f655a)) {
                    return;
                }
                motionLayout.setProgress(this.f655a);
            } else {
                motionLayout.setProgress(this.f655a, this.f656b);
                this.f655a = Float.NaN;
                this.f656b = Float.NaN;
                this.c = -1;
                this.d = -1;
            }
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f655a);
            bundle.putFloat("motion.velocity", this.f656b);
            bundle.putInt("motion.StartState", this.c);
            bundle.putInt("motion.EndState", this.d);
            return bundle;
        }

        public void setTransitionState(Bundle bundle) {
            this.f655a = bundle.getFloat("motion.progress");
            this.f656b = bundle.getFloat("motion.velocity");
            this.c = bundle.getInt("motion.StartState");
            this.d = bundle.getInt("motion.EndState");
        }

        public void setProgress(float f) {
            this.f655a = f;
        }

        public void setEndState(int i) {
            this.d = i;
        }

        public void setVelocity(float f) {
            this.f656b = f;
        }

        public void setStartState(int i) {
            this.c = i;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class h {

        /* renamed from: a, reason: collision with root package name */
        public static final h f657a;

        /* renamed from: b, reason: collision with root package name */
        public static final h f658b;
        public static final h c;
        public static final h d;
        public static final /* synthetic */ h[] e;

        public static h[] values() {
            return (h[]) e.clone();
        }

        static {
            h hVar = new h("UNDEFINED", 0);
            f657a = hVar;
            h hVar2 = new h("SETUP", 1);
            f658b = hVar2;
            h hVar3 = new h("MOVING", 2);
            c = hVar3;
            h hVar4 = new h("FINISHED", 3);
            d = hVar4;
            e = new h[]{hVar, hVar2, hVar3, hVar4};
        }
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.q = 0.0f;
        this.r = -1;
        this.s = -1;
        this.t = -1;
        this.u = 0;
        this.v = 0;
        this.w = true;
        this.x = new HashMap();
        this.y = 0L;
        this.z = 1.0f;
        this.A = 0.0f;
        this.B = 0.0f;
        this.D = 0.0f;
        this.F = false;
        this.H = 0;
        this.J = false;
        this.K = new StopLogic();
        this.L = new c();
        this.P = false;
        this.U = false;
        this.V = null;
        this.W = null;
        this.a0 = null;
        this.b0 = 0;
        this.c0 = -1L;
        this.d0 = 0.0f;
        this.e0 = 0;
        this.f0 = 0.0f;
        this.mMeasureDuringTransition = false;
        this.n0 = new KeyCache();
        this.o0 = false;
        this.q0 = h.f657a;
        this.r0 = new e();
        this.s0 = false;
        this.t0 = new RectF();
        this.u0 = null;
        this.v0 = new ArrayList();
        k(null);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = 0.0f;
        this.r = -1;
        this.s = -1;
        this.t = -1;
        this.u = 0;
        this.v = 0;
        this.w = true;
        this.x = new HashMap();
        this.y = 0L;
        this.z = 1.0f;
        this.A = 0.0f;
        this.B = 0.0f;
        this.D = 0.0f;
        this.F = false;
        this.H = 0;
        this.J = false;
        this.K = new StopLogic();
        this.L = new c();
        this.P = false;
        this.U = false;
        this.V = null;
        this.W = null;
        this.a0 = null;
        this.b0 = 0;
        this.c0 = -1L;
        this.d0 = 0.0f;
        this.e0 = 0;
        this.f0 = 0.0f;
        this.mMeasureDuringTransition = false;
        this.n0 = new KeyCache();
        this.o0 = false;
        this.q0 = h.f657a;
        this.r0 = new e();
        this.s0 = false;
        this.t0 = new RectF();
        this.u0 = null;
        this.v0 = new ArrayList();
        k(attributeSet);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = 0.0f;
        this.r = -1;
        this.s = -1;
        this.t = -1;
        this.u = 0;
        this.v = 0;
        this.w = true;
        this.x = new HashMap();
        this.y = 0L;
        this.z = 1.0f;
        this.A = 0.0f;
        this.B = 0.0f;
        this.D = 0.0f;
        this.F = false;
        this.H = 0;
        this.J = false;
        this.K = new StopLogic();
        this.L = new c();
        this.P = false;
        this.U = false;
        this.V = null;
        this.W = null;
        this.a0 = null;
        this.b0 = 0;
        this.c0 = -1L;
        this.d0 = 0.0f;
        this.e0 = 0;
        this.f0 = 0.0f;
        this.mMeasureDuringTransition = false;
        this.n0 = new KeyCache();
        this.o0 = false;
        this.q0 = h.f657a;
        this.r0 = new e();
        this.s0 = false;
        this.t0 = new RectF();
        this.u0 = null;
        this.v0 = new ArrayList();
        k(attributeSet);
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public MotionTracker obtainVelocityTracker() {
        return f.obtain();
    }

    public void enableTransition(int i, boolean z) {
        MotionScene.Transition transition = getTransition(i);
        if (z) {
            transition.setEnable(true);
            return;
        }
        MotionScene motionScene = this.o;
        if (transition == motionScene.c) {
            Iterator<MotionScene.Transition> it = motionScene.getTransitionsWithState(this.s).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it.next();
                if (next.isEnabled()) {
                    this.o.c = next;
                    break;
                }
            }
        }
        transition.setEnable(false);
    }

    public final void n(h hVar) {
        h hVar2 = h.d;
        if (hVar == hVar2 && this.s == -1) {
            return;
        }
        h hVar3 = this.q0;
        this.q0 = hVar;
        h hVar4 = h.c;
        if (hVar3 == hVar4 && hVar == hVar4) {
            h();
        }
        int iOrdinal = hVar3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && hVar == hVar2) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (hVar == hVar4) {
            h();
        }
        if (hVar == hVar2) {
            fireTransitionCompleted();
        }
    }

    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f644a;

        static {
            int[] iArr = new int[h.values().length];
            f644a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f644a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f644a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f644a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class f implements MotionTracker {

        /* renamed from: b, reason: collision with root package name */
        public static final f f653b = new f();

        /* renamed from: a, reason: collision with root package name */
        public VelocityTracker f654a;

        private f() {
        }

        public static f obtain() {
            f fVar = f653b;
            fVar.f654a = VelocityTracker.obtain();
            return fVar;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            this.f654a.recycle();
            this.f654a = null;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            this.f654a.clear();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f654a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i) {
            this.f654a.computeCurrentVelocity(i);
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i, float f) {
            this.f654a.computeCurrentVelocity(i, f);
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            return this.f654a.getXVelocity();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            return this.f654a.getYVelocity();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int i) {
            return this.f654a.getXVelocity(i);
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int i) {
            return getYVelocity(i);
        }
    }

    public void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.p0 == null) {
                this.p0 = new g();
            }
            this.p0.setStartState(i);
            this.p0.setEndState(i2);
            return;
        }
        MotionScene motionScene = this.o;
        if (motionScene != null) {
            this.r = i;
            this.t = i2;
            motionScene.l(i, i2);
            this.r0.c(this.o.b(i), this.o.b(i2));
            rebuildScene();
            this.B = 0.0f;
            transitionToStart();
        }
    }

    public void setTransition(int i) {
        float f2;
        if (this.o != null) {
            MotionScene.Transition transition = getTransition(i);
            this.r = transition.getStartConstraintSetId();
            this.t = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.p0 == null) {
                    this.p0 = new g();
                }
                this.p0.setStartState(this.r);
                this.p0.setEndState(this.t);
                return;
            }
            int i2 = this.s;
            if (i2 == this.r) {
                f2 = 0.0f;
            } else {
                f2 = i2 == this.t ? 1.0f : Float.NaN;
            }
            this.o.setTransition(transition);
            this.r0.c(this.o.b(this.r), this.o.b(this.t));
            rebuildScene();
            this.B = Float.isNaN(f2) ? 0.0f : f2;
            if (Float.isNaN(f2)) {
                Log.v("MotionLayout", Debug.getLocation() + " transitionToStart ");
                transitionToStart();
                return;
            }
            setProgress(f2);
        }
    }

    public void setTransition(MotionScene.Transition transition) {
        this.o.setTransition(transition);
        n(h.f658b);
        int i = this.s;
        MotionScene.Transition transition2 = this.o.c;
        if (i == (transition2 == null ? -1 : transition2.c)) {
            this.B = 1.0f;
            this.A = 1.0f;
            this.D = 1.0f;
        } else {
            this.B = 0.0f;
            this.A = 0.0f;
            this.D = 0.0f;
        }
        this.C = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int iG = this.o.g();
        MotionScene motionScene = this.o;
        MotionScene.Transition transition3 = motionScene.c;
        int i2 = transition3 != null ? transition3.c : -1;
        if (iG == this.r && i2 == this.t) {
            return;
        }
        this.r = iG;
        this.t = i2;
        motionScene.l(iG, i2);
        ConstraintSet constraintSetB = this.o.b(this.r);
        ConstraintSet constraintSetB2 = this.o.b(this.t);
        e eVar = this.r0;
        eVar.c(constraintSetB, constraintSetB2);
        eVar.setMeasuredId(this.r, this.t);
        eVar.reEvaluateState();
        rebuildScene();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i) {
        if (i != 0) {
            try {
                this.o = new MotionScene(getContext(), this, i);
                if (isAttachedToWindow()) {
                    this.o.k(this);
                    this.r0.c(this.o.b(this.r), this.o.b(this.t));
                    rebuildScene();
                    this.o.setRtl(isRtl());
                    return;
                }
                return;
            } catch (Exception e2) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e2);
            }
        }
        this.o = null;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i, int i2, int i3) {
        n(h.f658b);
        this.s = i;
        this.r = -1;
        this.t = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(i, i2, i3);
            return;
        }
        MotionScene motionScene = this.o;
        if (motionScene != null) {
            motionScene.b(i).applyTo(this);
        }
    }

    public void setInterpolatedProgress(float f2) {
        if (this.o != null) {
            n(h.c);
            Interpolator interpolator = this.o.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(f2));
                return;
            }
        }
        setProgress(f2);
    }

    public void setProgress(float f2, float f3) {
        if (!isAttachedToWindow()) {
            if (this.p0 == null) {
                this.p0 = new g();
            }
            this.p0.setProgress(f2);
            this.p0.setVelocity(f3);
            return;
        }
        setProgress(f2);
        n(h.c);
        this.q = f3;
        f(1.0f);
    }

    public void setTransitionState(Bundle bundle) {
        if (this.p0 == null) {
            this.p0 = new g();
        }
        this.p0.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.p0.a();
        }
    }

    public Bundle getTransitionState() {
        if (this.p0 == null) {
            this.p0 = new g();
        }
        this.p0.recordState();
        return this.p0.getTransitionState();
    }

    public void setProgress(float f2) {
        if (!isAttachedToWindow()) {
            if (this.p0 == null) {
                this.p0 = new g();
            }
            this.p0.setProgress(f2);
            return;
        }
        h hVar = h.d;
        if (f2 <= 0.0f) {
            this.s = this.r;
            if (this.B == 0.0f) {
                n(hVar);
            }
        } else if (f2 >= 1.0f) {
            this.s = this.t;
            if (this.B == 1.0f) {
                n(hVar);
            }
        } else {
            this.s = -1;
            n(h.c);
        }
        if (this.o == null) {
            return;
        }
        this.E = true;
        this.D = f2;
        this.A = f2;
        this.C = -1L;
        this.y = -1L;
        this.p = null;
        this.F = true;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void touchAnimateTo(int r11, float r12, float r13) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.touchAnimateTo(int, float, float):void");
    }

    public class c extends MotionInterpolator {

        /* renamed from: a, reason: collision with root package name */
        public float f645a = 0.0f;

        /* renamed from: b, reason: collision with root package name */
        public float f646b = 0.0f;
        public float c;

        public c() {
        }

        public void config(float f, float f2, float f3) {
            this.f645a = f;
            this.f646b = f2;
            this.c = f3;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = this.f645a;
            MotionLayout motionLayout = MotionLayout.this;
            if (f2 > 0.0f) {
                float f3 = this.c;
                if (f2 / f3 < f) {
                    f = f2 / f3;
                }
                motionLayout.q = f2 - (f3 * f);
                return ((f2 * f) - (((f3 * f) * f) / 2.0f)) + this.f646b;
            }
            float f4 = this.c;
            if ((-f2) / f4 < f) {
                f = (-f2) / f4;
            }
            motionLayout.q = (f4 * f) + f2;
            return (((f4 * f) * f) / 2.0f) + (f2 * f) + this.f646b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.q;
        }
    }

    public final void f(float f2) {
        if (this.o == null) {
            return;
        }
        float f3 = this.B;
        float f4 = this.A;
        if (f3 != f4 && this.E) {
            this.B = f4;
        }
        float f5 = this.B;
        if (f5 == f2) {
            return;
        }
        this.J = false;
        this.D = f2;
        this.z = r0.getDuration() / 1000.0f;
        setProgress(this.D);
        this.p = this.o.getInterpolator();
        this.E = false;
        this.y = getNanoTime();
        this.F = true;
        this.A = f5;
        this.B = f5;
        invalidate();
    }

    public void transitionToStart() {
        f(0.0f);
    }

    public void transitionToEnd() {
        f(1.0f);
    }

    public void transitionToState(int i) {
        if (!isAttachedToWindow()) {
            if (this.p0 == null) {
                this.p0 = new g();
            }
            this.p0.setEndState(i);
            return;
        }
        transitionToState(i, -1, -1);
    }

    public void transitionToState(int i, int i2, int i3) {
        StateSet stateSet;
        int iConvertToConstraintSet;
        MotionScene motionScene = this.o;
        if (motionScene != null && (stateSet = motionScene.f660b) != null && (iConvertToConstraintSet = stateSet.convertToConstraintSet(this.s, i, i2, i3)) != -1) {
            i = iConvertToConstraintSet;
        }
        int i4 = this.s;
        if (i4 == i) {
            return;
        }
        if (this.r == i) {
            f(0.0f);
            return;
        }
        if (this.t == i) {
            f(1.0f);
            return;
        }
        this.t = i;
        if (i4 != -1) {
            setTransition(i4, i);
            f(1.0f);
            this.B = 0.0f;
            transitionToEnd();
            return;
        }
        this.J = false;
        this.D = 1.0f;
        this.A = 0.0f;
        this.B = 0.0f;
        this.C = getNanoTime();
        this.y = getNanoTime();
        this.E = false;
        this.p = null;
        this.z = this.o.getDuration() / 1000.0f;
        this.r = -1;
        this.o.l(-1, this.t);
        this.o.g();
        int childCount = getChildCount();
        HashMap map = this.x;
        map.clear();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            map.put(childAt, new MotionController(childAt));
        }
        this.F = true;
        ConstraintSet constraintSetB = this.o.b(i);
        e eVar = this.r0;
        eVar.c(null, constraintSetB);
        rebuildScene();
        eVar.build();
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            View childAt2 = getChildAt(i6);
            MotionController motionController = (MotionController) map.get(childAt2);
            if (motionController != null) {
                androidx.constraintlayout.motion.widget.c cVar = motionController.d;
                cVar.c = 0.0f;
                cVar.d = 0.0f;
                float x = childAt2.getX();
                float y = childAt2.getY();
                float width = childAt2.getWidth();
                float height = childAt2.getHeight();
                cVar.e = x;
                cVar.f = y;
                cVar.f678g = width;
                cVar.h = height;
                motionController.f.setState(childAt2);
            }
        }
        int width2 = getWidth();
        int height2 = getHeight();
        for (int i7 = 0; i7 < childCount; i7++) {
            MotionController motionController2 = (MotionController) map.get(getChildAt(i7));
            this.o.getKeyFrames(motionController2);
            motionController2.setup(width2, height2, this.z, getNanoTime());
        }
        float staggered = this.o.getStaggered();
        if (staggered != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i8 = 0; i8 < childCount; i8++) {
                androidx.constraintlayout.motion.widget.c cVar2 = ((MotionController) map.get(getChildAt(i8))).e;
                float f2 = cVar2.f + cVar2.e;
                fMin = Math.min(fMin, f2);
                fMax = Math.max(fMax, f2);
            }
            for (int i9 = 0; i9 < childCount; i9++) {
                MotionController motionController3 = (MotionController) map.get(getChildAt(i9));
                androidx.constraintlayout.motion.widget.c cVar3 = motionController3.e;
                float f3 = cVar3.e;
                float f4 = cVar3.f;
                motionController3.l = 1.0f / (1.0f - staggered);
                motionController3.k = staggered - ((((f3 + f4) - fMin) * staggered) / (fMax - fMin));
            }
        }
        this.A = 0.0f;
        this.B = 0.0f;
        this.F = true;
        invalidate();
    }

    public float getVelocity() {
        return this.q;
    }

    public void getViewVelocity(View view, float f2, float f3, float[] fArr, int i) {
        float[] fArr2;
        float f4;
        char c2;
        char c3;
        double[] dArr;
        float velocity = this.q;
        float f5 = this.B;
        if (this.p != null) {
            float fSignum = Math.signum(this.D - f5);
            float interpolation = this.p.getInterpolation(this.B + 1.0E-5f);
            float interpolation2 = this.p.getInterpolation(this.B);
            velocity = (((interpolation - interpolation2) / 1.0E-5f) * fSignum) / this.z;
            f5 = interpolation2;
        }
        Interpolator interpolator = this.p;
        if (interpolator instanceof MotionInterpolator) {
            velocity = ((MotionInterpolator) interpolator).getVelocity();
        }
        float f6 = velocity;
        MotionController motionController = (MotionController) this.x.get(view);
        if ((i & 1) == 0) {
            int width = view.getWidth();
            int height = view.getHeight();
            float[] fArr3 = motionController.t;
            float fC = motionController.c(f5, fArr3);
            HashMap map = motionController.w;
            SplineSet splineSet = map == null ? null : (SplineSet) map.get("translationX");
            HashMap map2 = motionController.w;
            SplineSet splineSet2 = map2 == null ? null : (SplineSet) map2.get("translationY");
            HashMap map3 = motionController.w;
            SplineSet splineSet3 = map3 == null ? null : (SplineSet) map3.get("rotation");
            c2 = 1;
            HashMap map4 = motionController.w;
            c3 = 0;
            SplineSet splineSet4 = map4 == null ? null : (SplineSet) map4.get("scaleX");
            HashMap map5 = motionController.w;
            f4 = f6;
            SplineSet splineSet5 = map5 == null ? null : (SplineSet) map5.get("scaleY");
            HashMap map6 = motionController.x;
            KeyCycleOscillator keyCycleOscillator = map6 == null ? null : (KeyCycleOscillator) map6.get("translationX");
            HashMap map7 = motionController.x;
            KeyCycleOscillator keyCycleOscillator2 = map7 == null ? null : (KeyCycleOscillator) map7.get("translationY");
            HashMap map8 = motionController.x;
            KeyCycleOscillator keyCycleOscillator3 = map8 == null ? null : (KeyCycleOscillator) map8.get("rotation");
            HashMap map9 = motionController.x;
            KeyCycleOscillator keyCycleOscillator4 = map9 == null ? null : (KeyCycleOscillator) map9.get("scaleX");
            HashMap map10 = motionController.x;
            KeyCycleOscillator keyCycleOscillator5 = map10 == null ? null : (KeyCycleOscillator) map10.get("scaleY");
            VelocityMatrix velocityMatrix = new VelocityMatrix();
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, fC);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, fC);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, fC);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, fC);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, fC);
            velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, fC);
            CurveFit curveFit = motionController.i;
            if (curveFit != null) {
                double[] dArr2 = motionController.n;
                if (dArr2.length > 0) {
                    double d2 = fC;
                    curveFit.getPos(d2, dArr2);
                    motionController.i.getSlope(d2, motionController.o);
                    int[] iArr = motionController.m;
                    double[] dArr3 = motionController.o;
                    double[] dArr4 = motionController.n;
                    motionController.d.getClass();
                    androidx.constraintlayout.motion.widget.c.d(f2, f3, fArr, iArr, dArr3, dArr4);
                }
                velocityMatrix.applyTransform(f2, f3, width, height, fArr);
            } else if (motionController.h != null) {
                double dC = motionController.c(fC, fArr3);
                motionController.h[0].getSlope(dC, motionController.o);
                motionController.h[0].getPos(dC, motionController.n);
                float f7 = fArr3[0];
                int i2 = 0;
                while (true) {
                    dArr = motionController.o;
                    if (i2 >= dArr.length) {
                        break;
                    }
                    dArr[i2] = dArr[i2] * f7;
                    i2++;
                }
                int[] iArr2 = motionController.m;
                double[] dArr5 = motionController.n;
                motionController.d.getClass();
                androidx.constraintlayout.motion.widget.c.d(f2, f3, fArr, iArr2, dArr, dArr5);
                velocityMatrix.applyTransform(f2, f3, width, height, fArr);
            } else {
                androidx.constraintlayout.motion.widget.c cVar = motionController.e;
                float f8 = cVar.e;
                androidx.constraintlayout.motion.widget.c cVar2 = motionController.d;
                float f9 = f8 - cVar2.e;
                float f10 = cVar.f - cVar2.f;
                float f11 = cVar.f678g - cVar2.f678g;
                float f12 = f10 + (cVar.h - cVar2.h);
                fArr[0] = ((f9 + f11) * f2) + ((1.0f - f2) * f9);
                fArr[1] = (f12 * f3) + ((1.0f - f3) * f10);
                velocityMatrix.clear();
                velocityMatrix.setRotationVelocity(splineSet3, fC);
                velocityMatrix.setTranslationVelocity(splineSet, splineSet2, fC);
                velocityMatrix.setScaleVelocity(splineSet4, splineSet5, fC);
                velocityMatrix.setRotationVelocity(keyCycleOscillator3, fC);
                velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, fC);
                velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, fC);
                fArr2 = fArr;
                velocityMatrix.applyTransform(f2, f3, width, height, fArr2);
            }
            fArr2 = fArr;
        } else {
            fArr2 = fArr;
            f4 = f6;
            c2 = 1;
            c3 = 0;
            motionController.d(f5, f2, f3, fArr2);
        }
        if (i < 2) {
            fArr2[c3] = fArr2[c3] * f4;
            fArr2[c2] = fArr2[c2] * f4;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (this.mMeasureDuringTransition || this.s != -1 || (motionScene = this.o) == null || (transition = motionScene.c) == null || transition.getLayoutDuringTransition() != 0) {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.r) + "->" + Debug.getName(context, this.t) + " (pos:" + this.B + " Dpos/Dt:" + this.q;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        if (this.o == null) {
            super.onMeasure(i, i2);
            return;
        }
        boolean z2 = true;
        boolean z3 = (this.u == i && this.v == i2) ? false : true;
        if (this.s0) {
            this.s0 = false;
            l();
            m();
            z3 = true;
        }
        if (this.mDirtyHierarchy) {
            z3 = true;
        }
        this.u = i;
        this.v = i2;
        int iG = this.o.g();
        MotionScene.Transition transition = this.o.c;
        int i3 = transition == null ? -1 : transition.c;
        e eVar = this.r0;
        if ((z3 || eVar.isNotConfiguredWith(iG, i3)) && this.r != -1) {
            super.onMeasure(i, i2);
            eVar.c(this.o.b(iG), this.o.b(i3));
            eVar.reEvaluateState();
            eVar.setMeasuredId(iG, i3);
            z = false;
        } else {
            z = true;
        }
        if (this.mMeasureDuringTransition || z) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int width = this.mLayoutWidget.getWidth() + getPaddingRight() + getPaddingLeft();
            int height = this.mLayoutWidget.getHeight() + paddingBottom;
            int i4 = this.k0;
            if (i4 == Integer.MIN_VALUE || i4 == 0) {
                width = (int) ((this.m0 * (this.i0 - r1)) + this.g0);
                requestLayout();
            }
            int i5 = this.l0;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                height = (int) ((this.m0 * (this.j0 - r2)) + this.h0);
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        float fSignum = Math.signum(this.D - this.B);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.p;
        float interpolation = this.B + (!(interpolator instanceof StopLogic) ? (((nanoTime - this.C) * fSignum) * 1.0E-9f) / this.z : 0.0f);
        if (this.E) {
            interpolation = this.D;
        }
        if ((fSignum <= 0.0f || interpolation < this.D) && (fSignum > 0.0f || interpolation > this.D)) {
            z2 = false;
        } else {
            interpolation = this.D;
        }
        if (interpolator != null && !z2) {
            if (this.J) {
                interpolation = interpolator.getInterpolation((nanoTime - this.y) * 1.0E-9f);
            } else {
                interpolation = interpolator.getInterpolation(interpolation);
            }
        }
        if ((fSignum > 0.0f && interpolation >= this.D) || (fSignum <= 0.0f && interpolation <= this.D)) {
            interpolation = this.D;
        }
        float f2 = interpolation;
        this.m0 = f2;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            MotionController motionController = (MotionController) this.x.get(childAt);
            if (motionController != null) {
                motionController.f(childAt, f2, nanoTime2, this.n0);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.o;
        return (motionScene == null || (transition = motionScene.c) == null || transition.getTouchResponse() == null || (this.o.c.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        androidx.constraintlayout.motion.widget.g gVar;
        MotionScene motionScene = this.o;
        if (motionScene == null) {
            return;
        }
        float f2 = this.Q;
        float f3 = this.T;
        float f4 = f2 / f3;
        float f5 = this.R / f3;
        MotionScene.Transition transition = motionScene.c;
        if (transition == null || (gVar = transition.l) == null) {
            return;
        }
        gVar.k = false;
        MotionLayout motionLayout = gVar.o;
        float progress = motionLayout.getProgress();
        gVar.o.i(gVar.d, progress, gVar.h, gVar.f681g, gVar.l);
        float f6 = gVar.i;
        float[] fArr = gVar.l;
        float f7 = f6 != 0.0f ? (f4 * f6) / fArr[0] : (f5 * gVar.j) / fArr[1];
        if (!Float.isNaN(f7)) {
            progress += f7 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z = progress != 1.0f;
            int i2 = gVar.c;
            if ((i2 != 3) && z) {
                motionLayout.touchAnimateTo(i2, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f7);
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.P || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.P = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v6 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        MotionScene.Transition transition;
        char c2;
        ?? r15;
        androidx.constraintlayout.motion.widget.g gVar;
        float f2;
        float f3;
        androidx.constraintlayout.motion.widget.g gVar2;
        androidx.constraintlayout.motion.widget.g gVar3;
        androidx.constraintlayout.motion.widget.g touchResponse;
        int i4;
        MotionScene motionScene = this.o;
        if (motionScene == null || (transition = motionScene.c) == null || !transition.isEnabled()) {
            return;
        }
        MotionScene.Transition transition2 = this.o.c;
        if (transition2 == null || !transition2.isEnabled() || (touchResponse = transition2.getTouchResponse()) == null || (i4 = touchResponse.e) == -1 || view.getId() == i4) {
            MotionScene motionScene2 = this.o;
            if (motionScene2 != null) {
                MotionScene.Transition transition3 = motionScene2.c;
                if ((transition3 == null || (gVar3 = transition3.l) == null) ? false : gVar3.r) {
                    float f4 = this.A;
                    if ((f4 == 1.0f || f4 == 0.0f) && view.canScrollVertically(-1)) {
                        return;
                    }
                }
            }
            if (transition2.getTouchResponse() != null && (this.o.c.getTouchResponse().getFlags() & 1) != 0) {
                float f5 = i;
                float f6 = i2;
                MotionScene.Transition transition4 = this.o.c;
                if (transition4 == null || (gVar2 = transition4.l) == null) {
                    f3 = 0.0f;
                } else {
                    gVar2.o.i(gVar2.d, gVar2.o.getProgress(), gVar2.h, gVar2.f681g, gVar2.l);
                    float f7 = gVar2.i;
                    float[] fArr = gVar2.l;
                    if (f7 != 0.0f) {
                        if (fArr[0] == 0.0f) {
                            fArr[0] = 1.0E-7f;
                        }
                        f3 = (f5 * f7) / fArr[0];
                    } else {
                        if (fArr[1] == 0.0f) {
                            fArr[1] = 1.0E-7f;
                        }
                        f3 = (f6 * gVar2.j) / fArr[1];
                    }
                }
                float f8 = this.B;
                if ((f8 <= 0.0f && f3 < 0.0f) || (f8 >= 1.0f && f3 > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new a(view));
                    return;
                }
            }
            float f9 = this.A;
            long nanoTime = getNanoTime();
            float f10 = i;
            this.Q = f10;
            float f11 = i2;
            this.R = f11;
            this.T = (float) ((nanoTime - this.S) * 1.0E-9d);
            this.S = nanoTime;
            MotionScene.Transition transition5 = this.o.c;
            if (transition5 == null || (gVar = transition5.l) == null) {
                c2 = 1;
                r15 = 0;
            } else {
                MotionLayout motionLayout = gVar.o;
                float progress = motionLayout.getProgress();
                if (!gVar.k) {
                    gVar.k = true;
                    motionLayout.setProgress(progress);
                }
                c2 = 1;
                gVar.o.i(gVar.d, progress, gVar.h, gVar.f681g, gVar.l);
                float f12 = gVar.i;
                float[] fArr2 = gVar.l;
                r15 = 0;
                r15 = 0;
                if (Math.abs((gVar.j * fArr2[1]) + (f12 * fArr2[0])) < 0.01d) {
                    fArr2[0] = 0.01f;
                    fArr2[1] = 0.01f;
                }
                float f13 = gVar.i;
                if (f13 != 0.0f) {
                    f2 = (f10 * f13) / fArr2[0];
                } else {
                    f2 = (f11 * gVar.j) / fArr2[1];
                }
                float fMax = Math.max(Math.min(progress + f2, 1.0f), 0.0f);
                if (fMax != motionLayout.getProgress()) {
                    motionLayout.setProgress(fMax);
                }
            }
            if (f9 != this.A) {
                iArr[r15] = i;
                iArr[c2] = i2;
            }
            g(r15);
            if (iArr[r15] == 0 && iArr[c2] == 0) {
                return;
            }
            this.P = true;
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f643a;

        public a(View view) {
            this.f643a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f643a.setNestedScrollingEnabled(true);
        }
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        public float[] f647a;

        /* renamed from: b, reason: collision with root package name */
        public final int[] f648b;
        public final float[] c;
        public Path d;
        public final Paint e;
        public final Paint f;

        /* renamed from: g, reason: collision with root package name */
        public final Paint f649g;
        public final Paint h;
        public final Paint i;
        public final float[] j;
        public int k;
        public final Rect l = new Rect();
        public final int m = 1;

        public d() {
            Paint paint = new Paint();
            this.e = paint;
            paint.setAntiAlias(true);
            paint.setColor(-21965);
            paint.setStrokeWidth(2.0f);
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            Paint paint2 = new Paint();
            this.f = paint2;
            paint2.setAntiAlias(true);
            paint2.setColor(-2067046);
            paint2.setStrokeWidth(2.0f);
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.f649g = paint3;
            paint3.setAntiAlias(true);
            paint3.setColor(-13391360);
            paint3.setStrokeWidth(2.0f);
            paint3.setStyle(style);
            Paint paint4 = new Paint();
            this.h = paint4;
            paint4.setAntiAlias(true);
            paint4.setColor(-13391360);
            paint4.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.j = new float[8];
            Paint paint5 = new Paint();
            this.i = paint5;
            paint5.setAntiAlias(true);
            paint3.setPathEffect(new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f));
            this.c = new float[100];
            this.f648b = new int[50];
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> map, int i, int i2) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            MotionLayout motionLayout = MotionLayout.this;
            boolean zIsInEditMode = motionLayout.isInEditMode();
            Paint paint = this.e;
            if (!zIsInEditMode && (i2 & 1) == 2) {
                String str = motionLayout.getContext().getResources().getResourceName(motionLayout.t) + ":" + motionLayout.getProgress();
                canvas.drawText(str, 10.0f, motionLayout.getHeight() - 30, this.h);
                canvas.drawText(str, 11.0f, motionLayout.getHeight() - 29, paint);
            }
            for (MotionController motionController : map.values()) {
                int drawPath = motionController.getDrawPath();
                if (i2 > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.k = motionController.a(this.c, this.f648b);
                    if (drawPath >= 1) {
                        int i3 = i / 16;
                        float[] fArr = this.f647a;
                        if (fArr == null || fArr.length != i3 * 2) {
                            this.f647a = new float[i3 * 2];
                            this.d = new Path();
                        }
                        int i4 = this.m;
                        float f = i4;
                        canvas.translate(f, f);
                        paint.setColor(1996488704);
                        Paint paint2 = this.i;
                        paint2.setColor(1996488704);
                        Paint paint3 = this.f;
                        paint3.setColor(1996488704);
                        Paint paint4 = this.f649g;
                        paint4.setColor(1996488704);
                        motionController.b(this.f647a, i3);
                        drawAll(canvas, drawPath, this.k, motionController);
                        paint.setColor(-21965);
                        paint3.setColor(-2067046);
                        paint2.setColor(-2067046);
                        paint4.setColor(-13391360);
                        float f2 = -i4;
                        canvas.translate(f2, f2);
                        drawAll(canvas, drawPath, this.k, motionController);
                        if (drawPath == 5) {
                            this.d.reset();
                            for (int i5 = 0; i5 <= 50; i5++) {
                                motionController.h[0].getPos(motionController.c(i5 / 50, null), motionController.n);
                                int[] iArr = motionController.m;
                                double[] dArr = motionController.n;
                                androidx.constraintlayout.motion.widget.c cVar = motionController.d;
                                float[] fArr2 = this.j;
                                cVar.c(iArr, dArr, fArr2, 0);
                                this.d.moveTo(fArr2[0], fArr2[1]);
                                this.d.lineTo(fArr2[2], fArr2[3]);
                                this.d.lineTo(fArr2[4], fArr2[5]);
                                this.d.lineTo(fArr2[6], fArr2[7]);
                                this.d.close();
                            }
                            paint.setColor(1140850688);
                            canvas.translate(2.0f, 2.0f);
                            canvas.drawPath(this.d, paint);
                            canvas.translate(-2.0f, -2.0f);
                            paint.setColor(-65536);
                            canvas.drawPath(this.d, paint);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int i, int i2, MotionController motionController) {
            Canvas canvas2;
            int width;
            int height;
            float f;
            int[] iArr = this.f648b;
            int i3 = 4;
            if (i == 4) {
                boolean z = false;
                boolean z2 = false;
                for (int i4 = 0; i4 < this.k; i4++) {
                    int i5 = iArr[i4];
                    if (i5 == 1) {
                        z = true;
                    }
                    if (i5 == 2) {
                        z2 = true;
                    }
                }
                if (z) {
                    float[] fArr = this.f647a;
                    canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f649g);
                }
                if (z2) {
                    a(canvas);
                }
            }
            if (i == 2) {
                float[] fArr2 = this.f647a;
                canvas2 = canvas;
                canvas2.drawLine(fArr2[0], fArr2[1], fArr2[fArr2.length - 2], fArr2[fArr2.length - 1], this.f649g);
            } else {
                canvas2 = canvas;
            }
            if (i == 3) {
                a(canvas);
            }
            canvas2.drawLines(this.f647a, this.e);
            View view = motionController.f640a;
            if (view != null) {
                width = view.getWidth();
                height = motionController.f640a.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            int i6 = 1;
            while (i6 < i2 - 1) {
                if (i != i3 || iArr[i6 - 1] != 0) {
                    int i7 = i6 * 2;
                    float[] fArr3 = this.c;
                    float f2 = fArr3[i7];
                    float f3 = fArr3[i7 + 1];
                    this.d.reset();
                    this.d.moveTo(f2, f3 + 10.0f);
                    this.d.lineTo(f2 + 10.0f, f3);
                    this.d.lineTo(f2, f3 - 10.0f);
                    this.d.lineTo(f2 - 10.0f, f3);
                    this.d.close();
                    int i8 = i6 - 1;
                    Paint paint = this.i;
                    if (i == i3) {
                        int i9 = iArr[i8];
                        if (i9 == 1) {
                            c(canvas2, f2 - 0.0f, f3 - 0.0f);
                        } else if (i9 == 2) {
                            b(canvas2, f2 - 0.0f, f3 - 0.0f);
                        } else {
                            if (i9 == 3) {
                                f = f3;
                                d(canvas2, f2 - 0.0f, f - 0.0f, width, height);
                            }
                            canvas2.drawPath(this.d, paint);
                        }
                        f = f3;
                        canvas2.drawPath(this.d, paint);
                    } else {
                        f = f3;
                    }
                    if (i == 2) {
                        c(canvas2, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 3) {
                        b(canvas2, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 6) {
                        d(canvas2, f2 - 0.0f, f - 0.0f, width, height);
                    }
                    canvas2.drawPath(this.d, paint);
                }
                i6++;
                i3 = 4;
            }
            float[] fArr4 = this.f647a;
            if (fArr4.length > 1) {
                float f4 = fArr4[0];
                float f5 = fArr4[1];
                Paint paint2 = this.f;
                canvas2.drawCircle(f4, f5, 8.0f, paint2);
                float[] fArr5 = this.f647a;
                canvas2.drawCircle(fArr5[fArr5.length - 2], fArr5[fArr5.length - 1], 8.0f, paint2);
            }
        }

        public final void c(Canvas canvas, float f, float f2) {
            float[] fArr = this.f647a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f3 - f5, f4 - f6);
            float f7 = f5 - f3;
            float f8 = f6 - f4;
            float f9 = (((f2 - f4) * f8) + ((f - f3) * f7)) / (fHypot * fHypot);
            float f10 = (f7 * f9) + f3;
            float f11 = (f9 * f8) + f4;
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f10, f11);
            float fHypot2 = (float) Math.hypot(f10 - f, f11 - f2);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            Paint paint = this.h;
            paint.getTextBounds(str, 0, str.length(), this.l);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.l.width() / 2), -20.0f, paint);
            canvas.drawLine(f, f2, f10, f11, this.f649g);
        }

        public final void a(Canvas canvas) {
            float[] fArr = this.f647a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            float fMin = Math.min(f, f3);
            float fMax = Math.max(f2, f4);
            float fMax2 = Math.max(f, f3);
            float fMax3 = Math.max(f2, f4);
            Paint paint = this.f649g;
            canvas.drawLine(fMin, fMax, fMax2, fMax3, paint);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), paint);
        }

        public final void b(Canvas canvas, float f, float f2) {
            float[] fArr = this.f647a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float fMin = Math.min(f3, f5);
            float fMax = Math.max(f4, f6);
            float fMin2 = f - Math.min(f3, f5);
            float fMax2 = Math.max(f4, f6) - f2;
            String str = "" + (((int) (((fMin2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            Paint paint = this.h;
            paint.getTextBounds(str, 0, str.length(), this.l);
            Rect rect = this.l;
            canvas.drawText(str, ((fMin2 / 2.0f) - (rect.width() / 2)) + fMin, f2 - 20.0f, paint);
            float fMin3 = Math.min(f3, f5);
            Paint paint2 = this.f649g;
            canvas.drawLine(f, f2, fMin3, f2, paint2);
            String str2 = "" + (((int) (((fMax2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            paint.getTextBounds(str2, 0, str2.length(), this.l);
            canvas.drawText(str2, f + 5.0f, fMax - ((fMax2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), paint2);
        }

        public final void d(Canvas canvas, float f, float f2, int i, int i2) {
            StringBuilder sb = new StringBuilder("");
            MotionLayout motionLayout = MotionLayout.this;
            sb.append(((int) ((((f - (i / 2)) * 100.0f) / (motionLayout.getWidth() - i)) + 0.5d)) / 100.0f);
            String string = sb.toString();
            Paint paint = this.h;
            paint.getTextBounds(string, 0, string.length(), this.l);
            Rect rect = this.l;
            canvas.drawText(string, ((f / 2.0f) - (rect.width() / 2)) + 0.0f, f2 - 20.0f, paint);
            float fMin = Math.min(0.0f, 1.0f);
            Paint paint2 = this.f649g;
            canvas.drawLine(f, f2, fMin, f2, paint2);
            String str = "" + (((int) ((((f2 - (i2 / 2)) * 100.0f) / (motionLayout.getHeight() - i2)) + 0.5d)) / 100.0f);
            paint.getTextBounds(str, 0, str.length(), this.l);
            canvas.drawText(str, f + 5.0f, 0.0f - ((f2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), paint2);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        g(false);
        super.dispatchDraw(canvas);
        if (this.o == null) {
            return;
        }
        if ((this.H & 1) == 1 && !isInEditMode()) {
            this.b0++;
            long nanoTime = getNanoTime();
            long j = this.c0;
            if (j != -1) {
                if (nanoTime - j > 200000000) {
                    this.d0 = ((int) ((this.b0 / (r5 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.b0 = 0;
                    this.c0 = nanoTime;
                }
            } else {
                this.c0 = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            StringBuilder sbP = _COROUTINE.a.p(this.d0 + " fps " + Debug.getState(this, this.r) + " -> ");
            sbP.append(Debug.getState(this, this.t));
            sbP.append(" (progress: ");
            sbP.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sbP.append(" ) state=");
            int i = this.s;
            sbP.append(i == -1 ? "undefined" : Debug.getState(this, i));
            String string = sbP.toString();
            paint.setColor(-16777216);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.H > 1) {
            if (this.I == null) {
                this.I = new d();
            }
            this.I.draw(canvas, this.x, this.o.getDuration(), this.H);
        }
    }

    public final void g(boolean z) {
        float f2;
        boolean z2;
        float f3;
        int i;
        float interpolation;
        boolean z3;
        if (this.C == -1) {
            this.C = getNanoTime();
        }
        float f4 = this.B;
        if (f4 > 0.0f && f4 < 1.0f) {
            this.s = -1;
        }
        boolean z4 = false;
        if (this.U || (this.F && (z || this.D != f4))) {
            float fSignum = Math.signum(this.D - f4);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.p;
            if (interpolator instanceof MotionInterpolator) {
                f2 = 0.0f;
            } else {
                f2 = (((nanoTime - this.C) * fSignum) * 1.0E-9f) / this.z;
                this.q = f2;
            }
            float f5 = this.B + f2;
            if (this.E) {
                f5 = this.D;
            }
            if ((fSignum <= 0.0f || f5 < this.D) && (fSignum > 0.0f || f5 > this.D)) {
                z2 = false;
            } else {
                f5 = this.D;
                this.F = false;
                z2 = true;
            }
            this.B = f5;
            this.A = f5;
            this.C = nanoTime;
            if (interpolator != null && !z2) {
                if (this.J) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.y) * 1.0E-9f);
                    this.B = interpolation;
                    this.C = nanoTime;
                    Interpolator interpolator2 = this.p;
                    if (interpolator2 instanceof MotionInterpolator) {
                        float velocity = ((MotionInterpolator) interpolator2).getVelocity();
                        this.q = velocity;
                        if (Math.abs(velocity) * this.z <= 1.0E-5f) {
                            this.F = false;
                        }
                        if (velocity > 0.0f && interpolation >= 1.0f) {
                            this.B = 1.0f;
                            this.F = false;
                            interpolation = 1.0f;
                        }
                        if (velocity < 0.0f && interpolation <= 0.0f) {
                            this.B = 0.0f;
                            this.F = false;
                            f5 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f5);
                    Interpolator interpolator3 = this.p;
                    if (interpolator3 instanceof MotionInterpolator) {
                        this.q = ((MotionInterpolator) interpolator3).getVelocity();
                    } else {
                        this.q = ((interpolator3.getInterpolation(f5 + f2) - interpolation) * fSignum) / f2;
                    }
                }
                f5 = interpolation;
            }
            if (Math.abs(this.q) > 1.0E-5f) {
                n(h.c);
            }
            if ((fSignum > 0.0f && f5 >= this.D) || (fSignum <= 0.0f && f5 <= this.D)) {
                f5 = this.D;
                this.F = false;
            }
            h hVar = h.d;
            if (f5 >= 1.0f || f5 <= 0.0f) {
                this.F = false;
                n(hVar);
            }
            int childCount = getChildCount();
            this.U = false;
            long nanoTime2 = getNanoTime();
            this.m0 = f5;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                MotionController motionController = (MotionController) this.x.get(childAt);
                if (motionController != null) {
                    this.U = motionController.f(childAt, f5, nanoTime2, this.n0) | this.U;
                }
            }
            f3 = 1.0f;
            boolean z5 = (fSignum > 0.0f && f5 >= this.D) || (fSignum <= 0.0f && f5 <= this.D);
            if (!this.U && !this.F && z5) {
                n(hVar);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            this.U = (!z5) | this.U;
            if (f5 <= 0.0f && (i = this.r) != -1 && this.s != i) {
                this.s = i;
                this.o.b(i).applyCustomAttributes(this);
                n(hVar);
                z4 = true;
            }
            if (f5 >= 1.0d) {
                int i3 = this.s;
                int i4 = this.t;
                if (i3 != i4) {
                    this.s = i4;
                    this.o.b(i4).applyCustomAttributes(this);
                    n(hVar);
                    z4 = true;
                }
            }
            if (this.U || this.F) {
                invalidate();
            } else if ((fSignum > 0.0f && f5 == 1.0f) || (fSignum < 0.0f && f5 == 0.0f)) {
                n(hVar);
            }
            if ((!this.U && this.F && fSignum > 0.0f && f5 == 1.0f) || (fSignum < 0.0f && f5 == 0.0f)) {
                l();
            }
        } else {
            f3 = 1.0f;
        }
        float f6 = this.B;
        if (f6 >= f3) {
            int i5 = this.s;
            int i6 = this.t;
            z3 = i5 == i6 ? z4 : true;
            this.s = i6;
        } else {
            if (f6 <= 0.0f) {
                int i7 = this.s;
                int i8 = this.r;
                z3 = i7 == i8 ? z4 : true;
                this.s = i8;
            }
            this.s0 |= z4;
            if (z4 && !this.o0) {
                requestLayout();
            }
            this.A = this.B;
        }
        z4 = z3;
        this.s0 |= z4;
        if (z4) {
            requestLayout();
        }
        this.A = this.B;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws Throwable {
        MotionLayout motionLayout;
        this.o0 = true;
        try {
            if (this.o == null) {
                super.onLayout(z, i, i2, i3, i4);
                this.o0 = false;
                return;
            }
            motionLayout = this;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            try {
                if (motionLayout.N != i5 || motionLayout.O != i6) {
                    rebuildScene();
                    g(true);
                }
                motionLayout.N = i5;
                motionLayout.O = i6;
                motionLayout.o0 = false;
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                motionLayout.o0 = false;
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            motionLayout = this;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void parseLayoutDescription(int i) {
        this.mConstraintLayoutSpec = null;
    }

    public final void k(AttributeSet attributeSet) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.MotionLayout_layoutDescription) {
                    this.o = new MotionScene(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R.styleable.MotionLayout_currentState) {
                    this.s = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R.styleable.MotionLayout_motionProgress) {
                    this.D = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.F = true;
                } else if (index == R.styleable.MotionLayout_applyMotionScene) {
                    z = typedArrayObtainStyledAttributes.getBoolean(index, z);
                } else if (index == R.styleable.MotionLayout_showPaths) {
                    if (this.H == 0) {
                        this.H = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R.styleable.MotionLayout_motionDebug) {
                    this.H = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.o == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.o = null;
            }
        }
        if (this.H != 0) {
            MotionScene motionScene2 = this.o;
            if (motionScene2 == null) {
                Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            } else {
                int iG = motionScene2.g();
                MotionScene motionScene3 = this.o;
                ConstraintSet constraintSetB = motionScene3.b(motionScene3.g());
                String name = Debug.getName(getContext(), iG);
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    int id = childAt.getId();
                    if (id == -1) {
                        StringBuilder sbR = _COROUTINE.a.r("CHECK: ", name, " ALL VIEWS SHOULD HAVE ID's ");
                        sbR.append(childAt.getClass().getName());
                        sbR.append(" does not!");
                        Log.w("MotionLayout", sbR.toString());
                    }
                    if (constraintSetB.getConstraint(id) == null) {
                        StringBuilder sbR2 = _COROUTINE.a.r("CHECK: ", name, " NO CONSTRAINTS for ");
                        sbR2.append(Debug.getName(childAt));
                        Log.w("MotionLayout", sbR2.toString());
                    }
                }
                int[] knownIds = constraintSetB.getKnownIds();
                for (int i3 = 0; i3 < knownIds.length; i3++) {
                    int i4 = knownIds[i3];
                    String name2 = Debug.getName(getContext(), i4);
                    if (findViewById(knownIds[i3]) == null) {
                        Log.w("MotionLayout", "CHECK: " + name + " NO View matches id " + name2);
                    }
                    if (constraintSetB.getHeight(i4) == -1) {
                        Log.w("MotionLayout", _COROUTINE.a.k("CHECK: ", name, "(", name2, ") no LAYOUT_HEIGHT"));
                    }
                    if (constraintSetB.getWidth(i4) == -1) {
                        Log.w("MotionLayout", _COROUTINE.a.k("CHECK: ", name, "(", name2, ") no LAYOUT_HEIGHT"));
                    }
                }
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator<MotionScene.Transition> it = this.o.getDefinedTransitions().iterator();
                while (it.hasNext()) {
                    MotionScene.Transition next = it.next();
                    if (next == this.o.c) {
                        Log.v("MotionLayout", "CHECK: CURRENT");
                    }
                    Log.v("MotionLayout", "CHECK: transition = " + next.debugString(getContext()));
                    Log.v("MotionLayout", "CHECK: transition.setDuration = " + next.getDuration());
                    if (next.getStartConstraintSetId() == next.getEndConstraintSetId()) {
                        Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
                    }
                    int startConstraintSetId = next.getStartConstraintSetId();
                    int endConstraintSetId = next.getEndConstraintSetId();
                    String name3 = Debug.getName(getContext(), startConstraintSetId);
                    String name4 = Debug.getName(getContext(), endConstraintSetId);
                    if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                        Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + name3 + "->" + name4);
                    }
                    if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                        Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + name3 + "->" + name4);
                    }
                    sparseIntArray.put(startConstraintSetId, endConstraintSetId);
                    sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
                    if (this.o.b(startConstraintSetId) == null) {
                        _COROUTINE.a.w(" no such constraintSetStart ", name3, "MotionLayout");
                    }
                    if (this.o.b(endConstraintSetId) == null) {
                        _COROUTINE.a.w(" no such constraintSetEnd ", name3, "MotionLayout");
                    }
                }
            }
        }
        if (this.s != -1 || (motionScene = this.o) == null) {
            return;
        }
        this.s = motionScene.g();
        this.r = this.o.g();
        MotionScene.Transition transition = this.o.c;
        this.t = transition != null ? transition.c : -1;
    }

    public void setScene(MotionScene motionScene) {
        this.o = motionScene;
        motionScene.setRtl(isRtl());
        rebuildScene();
    }

    public void setDebugMode(int i) {
        this.H = i;
        invalidate();
    }

    public void getDebugMode(boolean z) {
        this.H = z ? 2 : 1;
        invalidate();
    }

    public final boolean j(float f2, float f3, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (j(view.getLeft() + f2, view.getTop() + f3, viewGroup.getChildAt(i), motionEvent)) {
                    return true;
                }
            }
        }
        RectF rectF = this.t0;
        rectF.set(view.getLeft() + f2, view.getTop() + f3, f2 + view.getRight(), f3 + view.getBottom());
        if (motionEvent.getAction() == 0) {
            if (rectF.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent)) {
                return true;
            }
        } else if (view.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionScene.Transition transition;
        androidx.constraintlayout.motion.widget.g touchResponse;
        int i;
        RectF rectFA;
        MotionScene motionScene = this.o;
        if (motionScene == null || !this.w || (transition = motionScene.c) == null || !transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null) {
            return false;
        }
        if ((motionEvent.getAction() == 0 && (rectFA = touchResponse.a(this, new RectF())) != null && !rectFA.contains(motionEvent.getX(), motionEvent.getY())) || (i = touchResponse.e) == -1) {
            return false;
        }
        View view = this.u0;
        if (view == null || view.getId() != i) {
            this.u0 = findViewById(i);
        }
        View view2 = this.u0;
        if (view2 == null) {
            return false;
        }
        float left = view2.getLeft();
        float top = this.u0.getTop();
        float right = this.u0.getRight();
        float bottom = this.u0.getBottom();
        RectF rectF = this.t0;
        rectF.set(left, top, right, bottom);
        if (!rectF.contains(motionEvent.getX(), motionEvent.getY()) || j(0.0f, 0.0f, this.u0, motionEvent)) {
            return false;
        }
        return onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x02f6  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r27) {
        /*
            Method dump skipped, instructions count: 803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        int i;
        super.onAttachedToWindow();
        MotionScene motionScene = this.o;
        if (motionScene != null && (i = this.s) != -1) {
            ConstraintSet constraintSetB = motionScene.b(i);
            this.o.k(this);
            if (constraintSetB != null) {
                constraintSetB.applyTo(this);
            }
            this.r = this.s;
        }
        l();
        g gVar = this.p0;
        if (gVar != null) {
            gVar.a();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        MotionScene motionScene = this.o;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    public final void l() {
        MotionScene.Transition transition;
        androidx.constraintlayout.motion.widget.g gVar;
        View viewFindViewById;
        MotionScene motionScene = this.o;
        if (motionScene == null) {
            return;
        }
        if (motionScene.a(this, this.s)) {
            requestLayout();
            return;
        }
        int i = this.s;
        if (i != -1) {
            this.o.addOnClickListeners(this, i);
        }
        if (!this.o.m() || (transition = this.o.c) == null || (gVar = transition.l) == null) {
            return;
        }
        int i2 = gVar.d;
        if (i2 != -1) {
            MotionLayout motionLayout = gVar.o;
            viewFindViewById = motionLayout.findViewById(i2);
            if (viewFindViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + Debug.getName(motionLayout.getContext(), gVar.d));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new androidx.constraintlayout.motion.widget.e());
            nestedScrollView.setOnScrollChangeListener(new androidx.constraintlayout.motion.widget.f());
        }
    }

    public int getCurrentState() {
        return this.s;
    }

    public float getProgress() {
        return this.B;
    }

    public final void i(int i, float f2, float f3, float f4, float[] fArr) {
        View viewById = getViewById(i);
        MotionController motionController = (MotionController) this.x.get(viewById);
        if (motionController != null) {
            motionController.d(f2, f3, f4, fArr);
            viewById.getY();
        } else {
            Log.w("MotionLayout", "WARNING could not find view id " + (viewById == null ? _COROUTINE.a.d(i, "") : viewById.getContext().getResources().getResourceName(i)));
        }
    }

    public long getTransitionTimeMs() {
        if (this.o != null) {
            this.z = r0.getDuration() / 1000.0f;
        }
        return (long) (this.z * 1000.0f);
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.G = transitionListener;
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        if (this.a0 == null) {
            this.a0 = new ArrayList();
        }
        this.a0.add(transitionListener);
    }

    public boolean removeTransitionListener(TransitionListener transitionListener) {
        ArrayList arrayList = this.a0;
        if (arrayList == null) {
            return false;
        }
        return arrayList.remove(transitionListener);
    }

    public void fireTrigger(int i, boolean z, float f2) {
        TransitionListener transitionListener = this.G;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, i, z, f2);
        }
        ArrayList arrayList = this.a0;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((TransitionListener) it.next()).onTransitionTrigger(this, i, z, f2);
            }
        }
    }

    public final void h() {
        ArrayList arrayList;
        if ((this.G == null && ((arrayList = this.a0) == null || arrayList.isEmpty())) || this.f0 == this.A) {
            return;
        }
        if (this.e0 != -1) {
            TransitionListener transitionListener = this.G;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.r, this.t);
            }
            ArrayList arrayList2 = this.a0;
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((TransitionListener) it.next()).onTransitionStarted(this, this.r, this.t);
                }
            }
        }
        this.e0 = -1;
        float f2 = this.A;
        this.f0 = f2;
        TransitionListener transitionListener2 = this.G;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.r, this.t, f2);
        }
        ArrayList arrayList3 = this.a0;
        if (arrayList3 != null) {
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                ((TransitionListener) it2.next()).onTransitionChange(this, this.r, this.t, this.A);
            }
        }
    }

    public void fireTransitionCompleted() {
        ArrayList arrayList;
        if ((this.G != null || ((arrayList = this.a0) != null && !arrayList.isEmpty())) && this.e0 == -1) {
            this.e0 = this.s;
            ArrayList arrayList2 = this.v0;
            int iIntValue = !arrayList2.isEmpty() ? ((Integer) arrayList2.get(arrayList2.size() - 1)).intValue() : -1;
            int i = this.s;
            if (iIntValue != i && i != -1) {
                arrayList2.add(Integer.valueOf(i));
            }
        }
        m();
    }

    public final void m() {
        ArrayList arrayList;
        if (this.G == null && ((arrayList = this.a0) == null || arrayList.isEmpty())) {
            return;
        }
        ArrayList arrayList2 = this.v0;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            TransitionListener transitionListener = this.G;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, num.intValue());
            }
            ArrayList arrayList3 = this.a0;
            if (arrayList3 != null) {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    ((TransitionListener) it2.next()).onTransitionCompleted(this, num.intValue());
                }
            }
        }
        arrayList2.clear();
    }

    public DesignTool getDesignTool() {
        if (this.M == null) {
            this.M = new DesignTool(this);
        }
        return this.M;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.a0 == null) {
                this.a0 = new ArrayList();
            }
            this.a0.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.V == null) {
                    this.V = new ArrayList();
                }
                this.V.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.W == null) {
                    this.W = new ArrayList();
                }
                this.W.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.V;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.W;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public void setOnShow(float f2) {
        ArrayList arrayList = this.V;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((MotionHelper) this.V.get(i)).setProgress(f2);
            }
        }
    }

    public void setOnHide(float f2) {
        ArrayList arrayList = this.W;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((MotionHelper) this.W.get(i)).setProgress(f2);
            }
        }
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.o;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    public ConstraintSet getConstraintSet(int i) {
        MotionScene motionScene = this.o;
        if (motionScene == null) {
            return null;
        }
        return motionScene.b(i);
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e("MotionLayout", "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.r0.reEvaluateState();
        invalidate();
    }

    public void updateState(int i, ConstraintSet constraintSet) {
        MotionScene motionScene = this.o;
        if (motionScene != null) {
            motionScene.setConstraintSet(i, constraintSet);
        }
        updateState();
        if (this.s == i) {
            constraintSet.applyTo(this);
        }
    }

    public void updateState() {
        this.r0.c(this.o.b(this.r), this.o.b(this.t));
        rebuildScene();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.o;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public int getStartState() {
        return this.r;
    }

    public int getEndState() {
        return this.t;
    }

    public float getTargetPosition() {
        return this.D;
    }

    public void setTransitionDuration(int i) {
        MotionScene motionScene = this.o;
        if (motionScene == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            motionScene.setDuration(i);
        }
    }

    public MotionScene.Transition getTransition(int i) {
        return this.o.getTransitionById(i);
    }

    public void setInteractionEnabled(boolean z) {
        this.w = z;
    }

    public boolean isInteractionEnabled() {
        return this.w;
    }
}
