package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DesignTool implements d {
    public static final HashMap f;

    /* renamed from: g, reason: collision with root package name */
    public static final HashMap f615g;

    /* renamed from: a, reason: collision with root package name */
    public final MotionLayout f616a;

    /* renamed from: b, reason: collision with root package name */
    public String f617b = null;
    public String c = null;
    public int d = -1;
    public int e = -1;

    public DesignTool(MotionLayout motionLayout) {
        this.f616a = motionLayout;
    }

    static {
        HashMap map = new HashMap();
        f = map;
        HashMap map2 = new HashMap();
        f615g = map2;
        map.put(Pair.create(4, 4), "layout_constraintBottom_toBottomOf");
        map.put(Pair.create(4, 3), "layout_constraintBottom_toTopOf");
        map.put(Pair.create(3, 4), "layout_constraintTop_toBottomOf");
        map.put(Pair.create(3, 3), "layout_constraintTop_toTopOf");
        map.put(Pair.create(6, 6), "layout_constraintStart_toStartOf");
        map.put(Pair.create(6, 7), "layout_constraintStart_toEndOf");
        map.put(Pair.create(7, 6), "layout_constraintEnd_toStartOf");
        map.put(Pair.create(7, 7), "layout_constraintEnd_toEndOf");
        map.put(Pair.create(1, 1), "layout_constraintLeft_toLeftOf");
        map.put(Pair.create(1, 2), "layout_constraintLeft_toRightOf");
        map.put(Pair.create(2, 2), "layout_constraintRight_toRightOf");
        map.put(Pair.create(2, 1), "layout_constraintRight_toLeftOf");
        map.put(Pair.create(5, 5), "layout_constraintBaseline_toBaselineOf");
        map2.put("layout_constraintBottom_toBottomOf", "layout_marginBottom");
        map2.put("layout_constraintBottom_toTopOf", "layout_marginBottom");
        map2.put("layout_constraintTop_toBottomOf", "layout_marginTop");
        map2.put("layout_constraintTop_toTopOf", "layout_marginTop");
        map2.put("layout_constraintStart_toStartOf", "layout_marginStart");
        map2.put("layout_constraintStart_toEndOf", "layout_marginStart");
        map2.put("layout_constraintEnd_toStartOf", "layout_marginEnd");
        map2.put("layout_constraintEnd_toEndOf", "layout_marginEnd");
        map2.put("layout_constraintLeft_toLeftOf", "layout_marginLeft");
        map2.put("layout_constraintLeft_toRightOf", "layout_marginLeft");
        map2.put("layout_constraintRight_toRightOf", "layout_marginRight");
        map2.put("layout_constraintRight_toLeftOf", "layout_marginRight");
    }

    public static int b(int i, String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(100)) == -1) {
            return 0;
        }
        return (int) ((Integer.valueOf(str.substring(0, iIndexOf)).intValue() * i) / 160.0f);
    }

    public static void a(int i, ConstraintSet constraintSet, View view, HashMap map, int i2, int i3) {
        String str = (String) f.get(Pair.create(Integer.valueOf(i2), Integer.valueOf(i3)));
        String str2 = (String) map.get(str);
        if (str2 != null) {
            String str3 = (String) f615g.get(str);
            constraintSet.connect(view.getId(), i2, Integer.parseInt(str2), i3, str3 != null ? b(i, (String) map.get(str3)) : 0);
        }
    }

    public static void c(ConstraintSet constraintSet, View view, HashMap map, int i) {
        String str;
        if (i != 1) {
            str = "layout_constraintHorizontal_bias";
        } else {
            str = "layout_constraintVertical_bias";
        }
        String str2 = (String) map.get(str);
        if (str2 != null) {
            if (i == 0) {
                constraintSet.setHorizontalBias(view.getId(), Float.parseFloat(str2));
            } else if (i == 1) {
                constraintSet.setVerticalBias(view.getId(), Float.parseFloat(str2));
            }
        }
    }

    public static void d(int i, ConstraintSet constraintSet, View view, HashMap map, int i2) {
        String str;
        if (i2 != 1) {
            str = "layout_width";
        } else {
            str = "layout_height";
        }
        String str2 = (String) map.get(str);
        if (str2 != null) {
            int iB = !str2.equalsIgnoreCase("wrap_content") ? b(i, str2) : -2;
            if (i2 == 0) {
                constraintSet.constrainWidth(view.getId(), iB);
            } else {
                constraintSet.constrainHeight(view.getId(), iB);
            }
        }
    }

    public int getAnimationPath(Object obj, float[] fArr, int i) {
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            return -1;
        }
        MotionController motionController = (MotionController) motionLayout.x.get(obj);
        if (motionController == null) {
            return 0;
        }
        motionController.b(fArr, i);
        return i;
    }

    public void getAnimationRectangles(Object obj, float[] fArr) {
        MotionLayout motionLayout = this.f616a;
        MotionScene motionScene = motionLayout.o;
        if (motionScene == null) {
            return;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = (MotionController) motionLayout.x.get(obj);
        if (motionController == null) {
            return;
        }
        float f2 = 1.0f / (duration - 1);
        for (int i = 0; i < duration; i++) {
            motionController.h[0].getPos(motionController.c(i * f2, null), motionController.n);
            motionController.d.c(motionController.m, motionController.n, fArr, i * 8);
        }
    }

    public int getAnimationKeyFrames(Object obj, float[] fArr) {
        MotionLayout motionLayout = this.f616a;
        MotionScene motionScene = motionLayout.o;
        if (motionScene == null) {
            return -1;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = (MotionController) motionLayout.x.get(obj);
        if (motionController == null) {
            return 0;
        }
        motionController.a(fArr, null);
        return duration;
    }

    public void setToolPosition(float f2) {
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            motionLayout.o = null;
        }
        motionLayout.setProgress(f2);
        motionLayout.g(true);
        motionLayout.requestLayout();
        motionLayout.invalidate();
    }

    public void setState(String str) {
        if (str == null) {
            str = "motion_base";
        }
        if (this.f617b == str) {
            return;
        }
        this.f617b = str;
        this.c = null;
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            motionLayout.o = null;
        }
        MotionScene motionScene = motionLayout.o;
        int iLookUpConstraintId = motionScene == null ? 0 : motionScene.lookUpConstraintId(str);
        this.d = iLookUpConstraintId;
        if (iLookUpConstraintId != 0) {
            if (iLookUpConstraintId == motionLayout.getStartState()) {
                motionLayout.setProgress(0.0f);
            } else if (iLookUpConstraintId == motionLayout.getEndState()) {
                motionLayout.setProgress(1.0f);
            } else {
                motionLayout.transitionToState(iLookUpConstraintId);
                motionLayout.setProgress(1.0f);
            }
        }
        motionLayout.requestLayout();
    }

    public String getStartState() {
        MotionLayout motionLayout = this.f616a;
        int startState = motionLayout.getStartState();
        if (this.d == startState) {
            return this.f617b;
        }
        MotionScene motionScene = motionLayout.o;
        String strLookUpConstraintName = motionScene == null ? null : motionScene.lookUpConstraintName(startState);
        if (strLookUpConstraintName != null) {
            this.f617b = strLookUpConstraintName;
            this.d = startState;
        }
        MotionScene motionScene2 = motionLayout.o;
        if (motionScene2 == null) {
            return null;
        }
        return motionScene2.lookUpConstraintName(startState);
    }

    public String getEndState() {
        MotionLayout motionLayout = this.f616a;
        int endState = motionLayout.getEndState();
        if (this.e == endState) {
            return this.c;
        }
        MotionScene motionScene = motionLayout.o;
        String strLookUpConstraintName = motionScene == null ? null : motionScene.lookUpConstraintName(endState);
        if (strLookUpConstraintName != null) {
            this.c = strLookUpConstraintName;
            this.e = endState;
        }
        return strLookUpConstraintName;
    }

    public float getProgress() {
        return this.f616a.getProgress();
    }

    public String getState() {
        if (this.f617b != null && this.c != null) {
            float progress = getProgress();
            if (progress <= 0.01f) {
                return this.f617b;
            }
            if (progress >= 0.99f) {
                return this.c;
            }
        }
        return this.f617b;
    }

    public boolean isInTransition() {
        return (this.f617b == null || this.c == null) ? false : true;
    }

    public void setTransition(String str, String str2) {
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            motionLayout.o = null;
        }
        MotionScene motionScene = motionLayout.o;
        int iLookUpConstraintId = motionScene == null ? 0 : motionScene.lookUpConstraintId(str);
        MotionScene motionScene2 = motionLayout.o;
        int iLookUpConstraintId2 = motionScene2 != null ? motionScene2.lookUpConstraintId(str2) : 0;
        motionLayout.setTransition(iLookUpConstraintId, iLookUpConstraintId2);
        this.d = iLookUpConstraintId;
        this.e = iLookUpConstraintId2;
        this.f617b = str;
        this.c = str2;
    }

    public long getTransitionTimeMs() {
        return this.f616a.getTransitionTimeMs();
    }

    public int getKeyFramePositions(Object obj, int[] iArr, float[] fArr) {
        MotionController motionController = (MotionController) this.f616a.x.get((View) obj);
        if (motionController == null) {
            return 0;
        }
        return motionController.getkeyFramePositions(iArr, fArr);
    }

    public int getKeyFrameInfo(Object obj, int i, int[] iArr) {
        MotionController motionController = (MotionController) this.f616a.x.get((View) obj);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFrameInfo(i, iArr);
    }

    public float getKeyFramePosition(Object obj, int i, float f2, float f3) {
        return ((MotionController) this.f616a.x.get((View) obj)).e(f2, f3, i);
    }

    public void setKeyFrame(Object obj, int i, String str, Object obj2) {
        MotionLayout motionLayout = this.f616a;
        MotionScene motionScene = motionLayout.o;
        if (motionScene != null) {
            motionScene.setKeyframe((View) obj, i, str, obj2);
            motionLayout.D = i / 100.0f;
            motionLayout.B = 0.0f;
            motionLayout.rebuildScene();
            motionLayout.g(true);
        }
    }

    public boolean setKeyFramePosition(Object obj, int i, int i2, float f2, float f3) {
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            return false;
        }
        MotionController motionController = (MotionController) motionLayout.x.get(obj);
        int i3 = (int) (motionLayout.A * 100.0f);
        if (motionController == null) {
            return false;
        }
        View view = (View) obj;
        MotionScene.Transition transition = motionLayout.o.c;
        if (transition == null) {
            return false;
        }
        Iterator it = transition.k.iterator();
        while (it.hasNext()) {
            Iterator<Key> it2 = ((KeyFrames) it.next()).getKeyFramesForView(view.getId()).iterator();
            while (it2.hasNext()) {
                if (it2.next().f618a == i3) {
                    float fE = motionController.e(f2, f3, 2);
                    float fE2 = motionController.e(f2, f3, 5);
                    motionLayout.o.setKeyframe(view, i3, "motion:percentX", Float.valueOf(fE));
                    motionLayout.o.setKeyframe(view, i3, "motion:percentY", Float.valueOf(fE2));
                    motionLayout.rebuildScene();
                    motionLayout.g(true);
                    motionLayout.invalidate();
                    return true;
                }
            }
        }
        return false;
    }

    public void setViewDebug(Object obj, int i) {
        MotionLayout motionLayout = this.f616a;
        MotionController motionController = (MotionController) motionLayout.x.get(obj);
        if (motionController != null) {
            motionController.setDrawPath(i);
            motionLayout.invalidate();
        }
    }

    public int designAccess(int i, String str, Object obj, float[] fArr, int i2, float[] fArr2, int i3) {
        MotionController motionController;
        View view = (View) obj;
        MotionLayout motionLayout = this.f616a;
        if (i == 0) {
            motionController = null;
        } else if (motionLayout.o == null || view == null || (motionController = (MotionController) motionLayout.x.get(view)) == null) {
            return -1;
        }
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            int duration = motionLayout.o.getDuration() / 16;
            motionController.b(fArr2, duration);
            return duration;
        }
        if (i == 2) {
            int duration2 = motionLayout.o.getDuration() / 16;
            motionController.a(fArr2, null);
            return duration2;
        }
        if (i != 3) {
            return -1;
        }
        motionLayout.o.getDuration();
        SplineSet splineSet = (SplineSet) motionController.w.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i4 = 0; i4 < fArr2.length; i4++) {
            fArr2[i4] = splineSet.get(i4 / (fArr2.length - 1));
        }
        return fArr2.length;
    }

    public Object getKeyframe(int i, int i2, int i3) {
        MotionLayout motionLayout = this.f616a;
        MotionScene motionScene = motionLayout.o;
        if (motionScene == null) {
            return null;
        }
        motionLayout.getContext();
        return motionScene.e(i, i2, i3);
    }

    public Object getKeyframeAtLocation(Object obj, float f2, float f3) {
        MotionController motionController;
        float f4;
        float f5;
        View view = (View) obj;
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            return -1;
        }
        if (view == null || (motionController = (MotionController) motionLayout.x.get(view)) == null) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        RectF rectF = new RectF();
        c cVar = motionController.d;
        float f6 = cVar.e;
        rectF.left = f6;
        float f7 = cVar.f;
        rectF.top = f7;
        rectF.right = f6 + cVar.f678g;
        rectF.bottom = f7 + cVar.h;
        RectF rectF2 = new RectF();
        c cVar2 = motionController.e;
        float f8 = cVar2.e;
        rectF2.left = f8;
        float f9 = cVar2.f;
        rectF2.top = f9;
        rectF2.right = f8 + cVar2.f678g;
        rectF2.bottom = f9 + cVar2.h;
        Iterator it = motionController.u.iterator();
        while (it.hasNext()) {
            Key key = (Key) it.next();
            if (key instanceof a) {
                a aVar = (a) key;
                f4 = f2;
                f5 = f3;
                if (aVar.intersects(width, height, rectF, rectF2, f4, f5)) {
                    return aVar;
                }
            } else {
                f4 = f2;
                f5 = f3;
            }
            f2 = f4;
            f3 = f5;
        }
        return null;
    }

    public Boolean getPositionKeyframe(Object obj, Object obj2, float f2, float f3, String[] strArr, float[] fArr) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            MotionLayout motionLayout = this.f616a;
            View view = (View) obj2;
            MotionController motionController = (MotionController) motionLayout.x.get(view);
            motionController.getClass();
            RectF rectF = new RectF();
            c cVar = motionController.d;
            float f4 = cVar.e;
            rectF.left = f4;
            float f5 = cVar.f;
            rectF.top = f5;
            rectF.right = f4 + cVar.f678g;
            rectF.bottom = f5 + cVar.h;
            RectF rectF2 = new RectF();
            c cVar2 = motionController.e;
            float f6 = cVar2.e;
            rectF2.left = f6;
            float f7 = cVar2.f;
            rectF2.top = f7;
            rectF2.right = f6 + cVar2.f678g;
            rectF2.bottom = f7 + cVar2.h;
            aVar.positionAttributes(view, rectF, rectF2, f2, f3, strArr, fArr);
            motionLayout.rebuildScene();
            motionLayout.F = true;
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    public Object getKeyframe(Object obj, int i, int i2) {
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            return null;
        }
        int id = ((View) obj).getId();
        MotionScene motionScene = motionLayout.o;
        motionLayout.getContext();
        return motionScene.e(i, id, i2);
    }

    public void setKeyframe(Object obj, String str, Object obj2) {
        if (obj instanceof Key) {
            ((Key) obj).setValue(str, obj2);
            MotionLayout motionLayout = this.f616a;
            motionLayout.rebuildScene();
            motionLayout.F = true;
        }
    }

    public void setAttributes(int i, String str, Object obj, Object obj2) {
        View view = (View) obj;
        HashMap map = (HashMap) obj2;
        MotionLayout motionLayout = this.f616a;
        MotionScene motionScene = motionLayout.o;
        int iLookUpConstraintId = motionScene == null ? 0 : motionScene.lookUpConstraintId(str);
        ConstraintSet constraintSetB = motionLayout.o.b(iLookUpConstraintId);
        if (constraintSetB == null) {
            return;
        }
        constraintSetB.clear(view.getId());
        d(i, constraintSetB, view, map, 0);
        d(i, constraintSetB, view, map, 1);
        a(i, constraintSetB, view, map, 6, 6);
        a(i, constraintSetB, view, map, 6, 7);
        a(i, constraintSetB, view, map, 7, 7);
        a(i, constraintSetB, view, map, 7, 6);
        a(i, constraintSetB, view, map, 1, 1);
        a(i, constraintSetB, view, map, 1, 2);
        a(i, constraintSetB, view, map, 2, 2);
        a(i, constraintSetB, view, map, 2, 1);
        a(i, constraintSetB, view, map, 3, 3);
        a(i, constraintSetB, view, map, 3, 4);
        a(i, constraintSetB, view, map, 4, 3);
        a(i, constraintSetB, view, map, 4, 4);
        a(i, constraintSetB, view, map, 5, 5);
        c(constraintSetB, view, map, 0);
        c(constraintSetB, view, map, 1);
        String str2 = (String) map.get("layout_editor_absoluteX");
        if (str2 != null) {
            constraintSetB.setEditorAbsoluteX(view.getId(), b(i, str2));
        }
        String str3 = (String) map.get("layout_editor_absoluteY");
        if (str3 != null) {
            constraintSetB.setEditorAbsoluteY(view.getId(), b(i, str3));
        }
        motionLayout.updateState(iLookUpConstraintId, constraintSetB);
        motionLayout.requestLayout();
    }

    public void dumpConstraintSet(String str) {
        MotionLayout motionLayout = this.f616a;
        if (motionLayout.o == null) {
            motionLayout.o = null;
        }
        MotionScene motionScene = motionLayout.o;
        int iLookUpConstraintId = motionScene == null ? 0 : motionScene.lookUpConstraintId(str);
        System.out.println(" dumping  " + str + " (" + iLookUpConstraintId + ")");
        try {
            motionLayout.o.b(iLookUpConstraintId).dump(motionLayout.o, new int[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void disableAutoTransition(boolean z) {
        MotionScene motionScene = this.f616a.o;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(z);
    }
}
