package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintSet {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int END = 7;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_GUIDELINE = 0;
    public static final int INVISIBLE = 4;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_GUIDELINE = 1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 0;
    public static final int WRAP_CONTENT = -2;
    public static final int[] d = {0, 4, 8};
    public static final SparseIntArray e;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f805a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public boolean f806b = true;
    public final HashMap c = new HashMap();

    public void setValidateOnParse(boolean z) {
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        sparseIntArray.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        sparseIntArray.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        sparseIntArray.append(R.styleable.Constraint_android_orientation, 27);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        sparseIntArray.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintLeft_creator, 82);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTop_creator, 82);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintRight_creator, 82);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBottom_creator, 82);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintBaseline_creator, 82);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginRight, 28);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginStart, 31);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginTop, 34);
        sparseIntArray.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        sparseIntArray.append(R.styleable.Constraint_android_layout_width, 23);
        sparseIntArray.append(R.styleable.Constraint_android_layout_height, 21);
        sparseIntArray.append(R.styleable.Constraint_android_visibility, 22);
        sparseIntArray.append(R.styleable.Constraint_android_alpha, 43);
        sparseIntArray.append(R.styleable.Constraint_android_elevation, 44);
        sparseIntArray.append(R.styleable.Constraint_android_rotationX, 45);
        sparseIntArray.append(R.styleable.Constraint_android_rotationY, 46);
        sparseIntArray.append(R.styleable.Constraint_android_rotation, 60);
        sparseIntArray.append(R.styleable.Constraint_android_scaleX, 47);
        sparseIntArray.append(R.styleable.Constraint_android_scaleY, 48);
        sparseIntArray.append(R.styleable.Constraint_android_transformPivotX, 49);
        sparseIntArray.append(R.styleable.Constraint_android_transformPivotY, 50);
        sparseIntArray.append(R.styleable.Constraint_android_translationX, 51);
        sparseIntArray.append(R.styleable.Constraint_android_translationY, 52);
        sparseIntArray.append(R.styleable.Constraint_android_translationZ, 53);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircle, 61);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        sparseIntArray.append(R.styleable.Constraint_animate_relativeTo, 64);
        sparseIntArray.append(R.styleable.Constraint_transitionEasing, 65);
        sparseIntArray.append(R.styleable.Constraint_drawPath, 66);
        sparseIntArray.append(R.styleable.Constraint_transitionPathRotate, 67);
        sparseIntArray.append(R.styleable.Constraint_motionStagger, 79);
        sparseIntArray.append(R.styleable.Constraint_android_id, 38);
        sparseIntArray.append(R.styleable.Constraint_motionProgress, 68);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        sparseIntArray.append(R.styleable.Constraint_chainUseRtl, 71);
        sparseIntArray.append(R.styleable.Constraint_barrierDirection, 72);
        sparseIntArray.append(R.styleable.Constraint_barrierMargin, 73);
        sparseIntArray.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        sparseIntArray.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        sparseIntArray.append(R.styleable.Constraint_pathMotionArc, 76);
        sparseIntArray.append(R.styleable.Constraint_layout_constraintTag, 77);
        sparseIntArray.append(R.styleable.Constraint_visibilityMode, 78);
        sparseIntArray.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        sparseIntArray.append(R.styleable.Constraint_layout_constrainedHeight, 81);
    }

    public HashMap<String, ConstraintAttribute> getCustomAttributeSet() {
        return this.f805a;
    }

    public Constraint getParameters(int i) {
        return f(i);
    }

    public void readFallback(ConstraintSet constraintSet) {
        for (Integer num : constraintSet.c.keySet()) {
            num.intValue();
            Constraint constraint = (Constraint) constraintSet.c.get(num);
            HashMap map = this.c;
            if (!map.containsKey(num)) {
                map.put(num, new Constraint());
            }
            Constraint constraint2 = (Constraint) map.get(num);
            Layout layout = constraint2.layout;
            if (!layout.mApply) {
                layout.copyFrom(constraint.layout);
            }
            PropertySet propertySet = constraint2.propertySet;
            if (!propertySet.mApply) {
                propertySet.copyFrom(constraint.propertySet);
            }
            Transform transform = constraint2.transform;
            if (!transform.mApply) {
                transform.copyFrom(constraint.transform);
            }
            Motion motion = constraint2.motion;
            if (!motion.mApply) {
                motion.copyFrom(constraint.motion);
            }
            for (String str : constraint.mCustomConstraints.keySet()) {
                if (!constraint2.mCustomConstraints.containsKey(str)) {
                    constraint2.mCustomConstraints.put(str, constraint.mCustomConstraints.get(str));
                }
            }
        }
    }

    public void readFallback(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f806b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            HashMap map = this.c;
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) map.get(Integer.valueOf(id));
            if (!constraint.layout.mApply) {
                constraint.a(id, layoutParams);
                if (childAt instanceof ConstraintHelper) {
                    constraint.layout.mReferenceIds = ((ConstraintHelper) childAt).getReferencedIds();
                    if (childAt instanceof Barrier) {
                        Barrier barrier = (Barrier) childAt;
                        constraint.layout.mBarrierAllowsGoneWidgets = barrier.allowsGoneWidget();
                        constraint.layout.mBarrierDirection = barrier.getType();
                        constraint.layout.mBarrierMargin = barrier.getMargin();
                    }
                }
                constraint.layout.mApply = true;
            }
            PropertySet propertySet = constraint.propertySet;
            if (!propertySet.mApply) {
                propertySet.visibility = childAt.getVisibility();
                constraint.propertySet.alpha = childAt.getAlpha();
                constraint.propertySet.mApply = true;
            }
            Transform transform = constraint.transform;
            if (!transform.mApply) {
                transform.mApply = true;
                transform.rotation = childAt.getRotation();
                constraint.transform.rotationX = childAt.getRotationX();
                constraint.transform.rotationY = childAt.getRotationY();
                constraint.transform.scaleX = childAt.getScaleX();
                constraint.transform.scaleY = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    Transform transform2 = constraint.transform;
                    transform2.transformPivotX = pivotX;
                    transform2.transformPivotY = pivotY;
                }
                constraint.transform.translationX = childAt.getTranslationX();
                constraint.transform.translationY = childAt.getTranslationY();
                constraint.transform.translationZ = childAt.getTranslationZ();
                Transform transform3 = constraint.transform;
                if (transform3.applyElevation) {
                    transform3.elevation = childAt.getElevation();
                }
            }
        }
    }

    public static class Layout {
        public static final int UNSET = -1;

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f808a;
        public String mConstraintTag;
        public int mHeight;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        public int mWidth;
        public boolean mIsGuideline = false;
        public boolean mApply = false;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int topToTop = -1;
        public int topToBottom = -1;
        public int bottomToTop = -1;
        public int bottomToBottom = -1;
        public int baselineToBaseline = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int endToStart = -1;
        public int endToEnd = -1;
        public float horizontalBias = 0.5f;
        public float verticalBias = 0.5f;
        public String dimensionRatio = null;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public float circleAngle = 0.0f;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int orientation = -1;
        public int leftMargin = -1;
        public int rightMargin = -1;
        public int topMargin = -1;
        public int bottomMargin = -1;
        public int endMargin = -1;
        public int startMargin = -1;
        public int goneLeftMargin = -1;
        public int goneTopMargin = -1;
        public int goneRightMargin = -1;
        public int goneBottomMargin = -1;
        public int goneEndMargin = -1;
        public int goneStartMargin = -1;
        public float verticalWeight = -1.0f;
        public float horizontalWeight = -1.0f;
        public int horizontalChainStyle = 0;
        public int verticalChainStyle = 0;
        public int widthDefault = 0;
        public int heightDefault = 0;
        public int widthMax = -1;
        public int heightMax = -1;
        public int widthMin = -1;
        public int heightMin = -1;
        public float widthPercent = 1.0f;
        public float heightPercent = 1.0f;
        public int mBarrierDirection = -1;
        public int mBarrierMargin = 0;
        public int mHelperType = -1;
        public boolean constrainedWidth = false;
        public boolean constrainedHeight = false;
        public boolean mBarrierAllowsGoneWidgets = true;

        public void copyFrom(Layout layout) {
            this.mIsGuideline = layout.mIsGuideline;
            this.mWidth = layout.mWidth;
            this.mApply = layout.mApply;
            this.mHeight = layout.mHeight;
            this.guideBegin = layout.guideBegin;
            this.guideEnd = layout.guideEnd;
            this.guidePercent = layout.guidePercent;
            this.leftToLeft = layout.leftToLeft;
            this.leftToRight = layout.leftToRight;
            this.rightToLeft = layout.rightToLeft;
            this.rightToRight = layout.rightToRight;
            this.topToTop = layout.topToTop;
            this.topToBottom = layout.topToBottom;
            this.bottomToTop = layout.bottomToTop;
            this.bottomToBottom = layout.bottomToBottom;
            this.baselineToBaseline = layout.baselineToBaseline;
            this.startToEnd = layout.startToEnd;
            this.startToStart = layout.startToStart;
            this.endToStart = layout.endToStart;
            this.endToEnd = layout.endToEnd;
            this.horizontalBias = layout.horizontalBias;
            this.verticalBias = layout.verticalBias;
            this.dimensionRatio = layout.dimensionRatio;
            this.circleConstraint = layout.circleConstraint;
            this.circleRadius = layout.circleRadius;
            this.circleAngle = layout.circleAngle;
            this.editorAbsoluteX = layout.editorAbsoluteX;
            this.editorAbsoluteY = layout.editorAbsoluteY;
            this.orientation = layout.orientation;
            this.leftMargin = layout.leftMargin;
            this.rightMargin = layout.rightMargin;
            this.topMargin = layout.topMargin;
            this.bottomMargin = layout.bottomMargin;
            this.endMargin = layout.endMargin;
            this.startMargin = layout.startMargin;
            this.goneLeftMargin = layout.goneLeftMargin;
            this.goneTopMargin = layout.goneTopMargin;
            this.goneRightMargin = layout.goneRightMargin;
            this.goneBottomMargin = layout.goneBottomMargin;
            this.goneEndMargin = layout.goneEndMargin;
            this.goneStartMargin = layout.goneStartMargin;
            this.verticalWeight = layout.verticalWeight;
            this.horizontalWeight = layout.horizontalWeight;
            this.horizontalChainStyle = layout.horizontalChainStyle;
            this.verticalChainStyle = layout.verticalChainStyle;
            this.widthDefault = layout.widthDefault;
            this.heightDefault = layout.heightDefault;
            this.widthMax = layout.widthMax;
            this.heightMax = layout.heightMax;
            this.widthMin = layout.widthMin;
            this.heightMin = layout.heightMin;
            this.widthPercent = layout.widthPercent;
            this.heightPercent = layout.heightPercent;
            this.mBarrierDirection = layout.mBarrierDirection;
            this.mBarrierMargin = layout.mBarrierMargin;
            this.mHelperType = layout.mHelperType;
            this.mConstraintTag = layout.mConstraintTag;
            int[] iArr = layout.mReferenceIds;
            if (iArr != null) {
                this.mReferenceIds = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.mReferenceIds = null;
            }
            this.mReferenceIdString = layout.mReferenceIdString;
            this.constrainedWidth = layout.constrainedWidth;
            this.constrainedHeight = layout.constrainedHeight;
            this.mBarrierAllowsGoneWidgets = layout.mBarrierAllowsGoneWidgets;
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f808a = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            sparseIntArray.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            sparseIntArray.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            sparseIntArray.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            sparseIntArray.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            sparseIntArray.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            sparseIntArray.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            sparseIntArray.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            sparseIntArray.append(R.styleable.Layout_android_orientation, 26);
            sparseIntArray.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            sparseIntArray.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            sparseIntArray.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            sparseIntArray.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginTop, 16);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginRight, 14);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginStart, 15);
            sparseIntArray.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            sparseIntArray.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            sparseIntArray.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintTop_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintRight_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBottom_creator, 76);
            sparseIntArray.append(R.styleable.Layout_layout_constraintBaseline_creator, 76);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginLeft, 23);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginRight, 27);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginStart, 30);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginEnd, 8);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginTop, 33);
            sparseIntArray.append(R.styleable.Layout_android_layout_marginBottom, 2);
            sparseIntArray.append(R.styleable.Layout_android_layout_width, 22);
            sparseIntArray.append(R.styleable.Layout_android_layout_height, 21);
            sparseIntArray.append(R.styleable.Layout_layout_constraintCircle, 61);
            sparseIntArray.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            sparseIntArray.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            sparseIntArray.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            sparseIntArray.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            sparseIntArray.append(R.styleable.Layout_chainUseRtl, 71);
            sparseIntArray.append(R.styleable.Layout_barrierDirection, 72);
            sparseIntArray.append(R.styleable.Layout_barrierMargin, 73);
            sparseIntArray.append(R.styleable.Layout_constraint_referenced_ids, 74);
            sparseIntArray.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                SparseIntArray sparseIntArray = f808a;
                int i2 = sparseIntArray.get(index);
                if (i2 == 80) {
                    this.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.baselineToBaseline = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.baselineToBaseline);
                            break;
                        case 2:
                            this.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                            break;
                        case 3:
                            this.bottomToBottom = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.bottomToBottom);
                            break;
                        case 4:
                            this.bottomToTop = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.bottomToTop);
                            break;
                        case 5:
                            this.dimensionRatio = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                            break;
                        case 7:
                            this.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                            break;
                        case 8:
                            this.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                            break;
                        case 9:
                            this.endToEnd = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.endToEnd);
                            break;
                        case 10:
                            this.endToStart = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.endToStart);
                            break;
                        case 11:
                            this.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                            break;
                        case 12:
                            this.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                            break;
                        case 13:
                            this.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                            break;
                        case 14:
                            this.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                            break;
                        case 15:
                            this.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                            break;
                        case 16:
                            this.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                            break;
                        case 17:
                            this.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                            break;
                        case 18:
                            this.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                            break;
                        case 19:
                            this.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, this.guidePercent);
                            break;
                        case 20:
                            this.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalBias);
                            break;
                        case 21:
                            this.mHeight = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                            break;
                        case 22:
                            this.mWidth = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                            break;
                        case 23:
                            this.leftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                            break;
                        case 24:
                            this.leftToLeft = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.leftToLeft);
                            break;
                        case 25:
                            this.leftToRight = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.leftToRight);
                            break;
                        case 26:
                            this.orientation = typedArrayObtainStyledAttributes.getInt(index, this.orientation);
                            break;
                        case 27:
                            this.rightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                            break;
                        case 28:
                            this.rightToLeft = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.rightToLeft);
                            break;
                        case 29:
                            this.rightToRight = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.rightToRight);
                            break;
                        case 30:
                            this.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                            break;
                        case 31:
                            this.startToEnd = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.startToEnd);
                            break;
                        case 32:
                            this.startToStart = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.startToStart);
                            break;
                        case 33:
                            this.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                            break;
                        case 34:
                            this.topToBottom = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.topToBottom);
                            break;
                        case 35:
                            this.topToTop = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.topToTop);
                            break;
                        case 36:
                            this.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, this.verticalBias);
                            break;
                        case 37:
                            this.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalWeight);
                            break;
                        case 38:
                            this.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.verticalWeight);
                            break;
                        case 39:
                            this.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                            break;
                        case 40:
                            this.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.verticalChainStyle);
                            break;
                        default:
                            switch (i2) {
                                case 54:
                                    this.widthDefault = typedArrayObtainStyledAttributes.getInt(index, this.widthDefault);
                                    break;
                                case 55:
                                    this.heightDefault = typedArrayObtainStyledAttributes.getInt(index, this.heightDefault);
                                    break;
                                case 56:
                                    this.widthMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                                    break;
                                case 57:
                                    this.heightMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                                    break;
                                case 58:
                                    this.widthMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                                    break;
                                case 59:
                                    this.heightMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                                    break;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.circleConstraint = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.circleConstraint);
                                            break;
                                        case 62:
                                            this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                                            break;
                                        case 63:
                                            this.circleAngle = typedArrayObtainStyledAttributes.getFloat(index, this.circleAngle);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.widthPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.heightPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    break;
                                                case 72:
                                                    this.mBarrierDirection = typedArrayObtainStyledAttributes.getInt(index, this.mBarrierDirection);
                                                    break;
                                                case 73:
                                                    this.mBarrierMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                                                    break;
                                                case 74:
                                                    this.mReferenceIdString = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.mBarrierAllowsGoneWidgets = typedArrayObtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                                                    break;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                    break;
                                                case 77:
                                                    this.mConstraintTag = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                    break;
                                            }
                                    }
                            }
                    }
                } else {
                    this.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public void dump(MotionScene motionScene, StringBuilder sb) throws IllegalAccessException, IllegalArgumentException {
            Field[] declaredFields = getClass().getDeclaredFields();
            sb.append("\n");
            for (Field field : declaredFields) {
                String name = field.getName();
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        Object obj = field.get(this);
                        Class<?> type = field.getType();
                        if (type == Integer.TYPE) {
                            Integer num = (Integer) obj;
                            if (num.intValue() != -1) {
                                Object objLookUpConstraintName = motionScene.lookUpConstraintName(num.intValue());
                                sb.append("    ");
                                sb.append(name);
                                sb.append(" = \"");
                                sb.append(objLookUpConstraintName == null ? num : objLookUpConstraintName);
                                sb.append("\"\n");
                            }
                        } else if (type == Float.TYPE) {
                            Float f = (Float) obj;
                            if (f.floatValue() != -1.0f) {
                                sb.append("    ");
                                sb.append(name);
                                sb.append(" = \"");
                                sb.append(f);
                                sb.append("\"\n");
                            }
                        }
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static class Transform {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f810a;
        public boolean mApply = false;
        public float rotation = 0.0f;
        public float rotationX = 0.0f;
        public float rotationY = 0.0f;
        public float scaleX = 1.0f;
        public float scaleY = 1.0f;
        public float transformPivotX = Float.NaN;
        public float transformPivotY = Float.NaN;
        public float translationX = 0.0f;
        public float translationY = 0.0f;
        public float translationZ = 0.0f;
        public boolean applyElevation = false;
        public float elevation = 0.0f;

        public void copyFrom(Transform transform) {
            this.mApply = transform.mApply;
            this.rotation = transform.rotation;
            this.rotationX = transform.rotationX;
            this.rotationY = transform.rotationY;
            this.scaleX = transform.scaleX;
            this.scaleY = transform.scaleY;
            this.transformPivotX = transform.transformPivotX;
            this.transformPivotY = transform.transformPivotY;
            this.translationX = transform.translationX;
            this.translationY = transform.translationY;
            this.translationZ = transform.translationZ;
            this.applyElevation = transform.applyElevation;
            this.elevation = transform.elevation;
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f810a = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            sparseIntArray.append(R.styleable.Transform_android_rotationX, 2);
            sparseIntArray.append(R.styleable.Transform_android_rotationY, 3);
            sparseIntArray.append(R.styleable.Transform_android_scaleX, 4);
            sparseIntArray.append(R.styleable.Transform_android_scaleY, 5);
            sparseIntArray.append(R.styleable.Transform_android_transformPivotX, 6);
            sparseIntArray.append(R.styleable.Transform_android_transformPivotY, 7);
            sparseIntArray.append(R.styleable.Transform_android_translationX, 8);
            sparseIntArray.append(R.styleable.Transform_android_translationY, 9);
            sparseIntArray.append(R.styleable.Transform_android_translationZ, 10);
            sparseIntArray.append(R.styleable.Transform_android_elevation, 11);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (f810a.get(index)) {
                    case 1:
                        this.rotation = typedArrayObtainStyledAttributes.getFloat(index, this.rotation);
                        break;
                    case 2:
                        this.rotationX = typedArrayObtainStyledAttributes.getFloat(index, this.rotationX);
                        break;
                    case 3:
                        this.rotationY = typedArrayObtainStyledAttributes.getFloat(index, this.rotationY);
                        break;
                    case 4:
                        this.scaleX = typedArrayObtainStyledAttributes.getFloat(index, this.scaleX);
                        break;
                    case 5:
                        this.scaleY = typedArrayObtainStyledAttributes.getFloat(index, this.scaleY);
                        break;
                    case 6:
                        this.transformPivotX = typedArrayObtainStyledAttributes.getDimension(index, this.transformPivotX);
                        break;
                    case 7:
                        this.transformPivotY = typedArrayObtainStyledAttributes.getDimension(index, this.transformPivotY);
                        break;
                    case 8:
                        this.translationX = typedArrayObtainStyledAttributes.getDimension(index, this.translationX);
                        break;
                    case 9:
                        this.translationY = typedArrayObtainStyledAttributes.getDimension(index, this.translationY);
                        break;
                    case 10:
                        this.translationZ = typedArrayObtainStyledAttributes.getDimension(index, this.translationZ);
                        break;
                    case 11:
                        this.applyElevation = true;
                        this.elevation = typedArrayObtainStyledAttributes.getDimension(index, this.elevation);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class PropertySet {
        public boolean mApply = false;
        public int visibility = 0;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;

        public void copyFrom(PropertySet propertySet) {
            this.mApply = propertySet.mApply;
            this.visibility = propertySet.visibility;
            this.alpha = propertySet.alpha;
            this.mProgress = propertySet.mProgress;
            this.mVisibilityMode = propertySet.mVisibilityMode;
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.alpha = typedArrayObtainStyledAttributes.getFloat(index, this.alpha);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    int i2 = typedArrayObtainStyledAttributes.getInt(index, this.visibility);
                    this.visibility = i2;
                    this.visibility = ConstraintSet.d[i2];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.mVisibilityMode = typedArrayObtainStyledAttributes.getInt(index, this.mVisibilityMode);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.mProgress = typedArrayObtainStyledAttributes.getFloat(index, this.mProgress);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Motion {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f809a;
        public boolean mApply = false;
        public int mAnimateRelativeTo = -1;
        public String mTransitionEasing = null;
        public int mPathMotionArc = -1;
        public int mDrawPath = 0;
        public float mMotionStagger = Float.NaN;
        public float mPathRotate = Float.NaN;

        public void copyFrom(Motion motion) {
            this.mApply = motion.mApply;
            this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
            this.mTransitionEasing = motion.mTransitionEasing;
            this.mPathMotionArc = motion.mPathMotionArc;
            this.mDrawPath = motion.mDrawPath;
            this.mPathRotate = motion.mPathRotate;
            this.mMotionStagger = motion.mMotionStagger;
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f809a = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            sparseIntArray.append(R.styleable.Motion_pathMotionArc, 2);
            sparseIntArray.append(R.styleable.Motion_transitionEasing, 3);
            sparseIntArray.append(R.styleable.Motion_drawPath, 4);
            sparseIntArray.append(R.styleable.Motion_animate_relativeTo, 5);
            sparseIntArray.append(R.styleable.Motion_motionStagger, 6);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (f809a.get(index)) {
                    case 1:
                        this.mPathRotate = typedArrayObtainStyledAttributes.getFloat(index, this.mPathRotate);
                        break;
                    case 2:
                        this.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, this.mPathMotionArc);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.mTransitionEasing = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.mTransitionEasing = Easing.NAMED_EASING[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.mDrawPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.mAnimateRelativeTo = ConstraintSet.g(typedArrayObtainStyledAttributes, index, this.mAnimateRelativeTo);
                        break;
                    case 6:
                        this.mMotionStagger = typedArrayObtainStyledAttributes.getFloat(index, this.mMotionStagger);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Constraint {

        /* renamed from: a, reason: collision with root package name */
        public int f807a;
        public final PropertySet propertySet = new PropertySet();
        public final Motion motion = new Motion();
        public final Layout layout = new Layout();
        public final Transform transform = new Transform();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        public final ConstraintAttribute c(String str, ConstraintAttribute.AttributeType attributeType) {
            if (this.mCustomConstraints.containsKey(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str);
                if (constraintAttribute.getType() == attributeType) {
                    return constraintAttribute;
                }
                throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
            }
            ConstraintAttribute constraintAttribute2 = new ConstraintAttribute(str, attributeType);
            this.mCustomConstraints.put(str, constraintAttribute2);
            return constraintAttribute2;
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Constraint m2clone() {
            Constraint constraint = new Constraint();
            constraint.layout.copyFrom(this.layout);
            constraint.motion.copyFrom(this.motion);
            constraint.propertySet.copyFrom(this.propertySet);
            constraint.transform.copyFrom(this.transform);
            constraint.f807a = this.f807a;
            return constraint;
        }

        public final void b(int i, Constraints.LayoutParams layoutParams) {
            a(i, layoutParams);
            this.propertySet.alpha = layoutParams.alpha;
            Transform transform = this.transform;
            transform.rotation = layoutParams.rotation;
            transform.rotationX = layoutParams.rotationX;
            transform.rotationY = layoutParams.rotationY;
            transform.scaleX = layoutParams.scaleX;
            transform.scaleY = layoutParams.scaleY;
            transform.transformPivotX = layoutParams.transformPivotX;
            transform.transformPivotY = layoutParams.transformPivotY;
            transform.translationX = layoutParams.translationX;
            transform.translationY = layoutParams.translationY;
            transform.translationZ = layoutParams.translationZ;
            transform.elevation = layoutParams.elevation;
            transform.applyElevation = layoutParams.applyElevation;
        }

        public final void a(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f807a = i;
            Layout layout = this.layout;
            layout.leftToLeft = layoutParams.leftToLeft;
            layout.leftToRight = layoutParams.leftToRight;
            layout.rightToLeft = layoutParams.rightToLeft;
            layout.rightToRight = layoutParams.rightToRight;
            layout.topToTop = layoutParams.topToTop;
            layout.topToBottom = layoutParams.topToBottom;
            layout.bottomToTop = layoutParams.bottomToTop;
            layout.bottomToBottom = layoutParams.bottomToBottom;
            layout.baselineToBaseline = layoutParams.baselineToBaseline;
            layout.startToEnd = layoutParams.startToEnd;
            layout.startToStart = layoutParams.startToStart;
            layout.endToStart = layoutParams.endToStart;
            layout.endToEnd = layoutParams.endToEnd;
            layout.horizontalBias = layoutParams.horizontalBias;
            layout.verticalBias = layoutParams.verticalBias;
            layout.dimensionRatio = layoutParams.dimensionRatio;
            layout.circleConstraint = layoutParams.circleConstraint;
            layout.circleRadius = layoutParams.circleRadius;
            layout.circleAngle = layoutParams.circleAngle;
            layout.editorAbsoluteX = layoutParams.editorAbsoluteX;
            layout.editorAbsoluteY = layoutParams.editorAbsoluteY;
            layout.orientation = layoutParams.orientation;
            layout.guidePercent = layoutParams.guidePercent;
            layout.guideBegin = layoutParams.guideBegin;
            layout.guideEnd = layoutParams.guideEnd;
            layout.mWidth = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            layout.mHeight = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            layout.leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            layout.rightMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            layout.topMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout.bottomMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            layout.verticalWeight = layoutParams.verticalWeight;
            layout.horizontalWeight = layoutParams.horizontalWeight;
            layout.verticalChainStyle = layoutParams.verticalChainStyle;
            layout.horizontalChainStyle = layoutParams.horizontalChainStyle;
            layout.constrainedWidth = layoutParams.constrainedWidth;
            layout.constrainedHeight = layoutParams.constrainedHeight;
            layout.widthDefault = layoutParams.matchConstraintDefaultWidth;
            layout.heightDefault = layoutParams.matchConstraintDefaultHeight;
            layout.widthMax = layoutParams.matchConstraintMaxWidth;
            layout.heightMax = layoutParams.matchConstraintMaxHeight;
            layout.widthMin = layoutParams.matchConstraintMinWidth;
            layout.heightMin = layoutParams.matchConstraintMinHeight;
            layout.widthPercent = layoutParams.matchConstraintPercentWidth;
            layout.heightPercent = layoutParams.matchConstraintPercentHeight;
            layout.mConstraintTag = layoutParams.constraintTag;
            layout.goneTopMargin = layoutParams.goneTopMargin;
            layout.goneBottomMargin = layoutParams.goneBottomMargin;
            layout.goneLeftMargin = layoutParams.goneLeftMargin;
            layout.goneRightMargin = layoutParams.goneRightMargin;
            layout.goneStartMargin = layoutParams.goneStartMargin;
            layout.goneEndMargin = layoutParams.goneEndMargin;
            layout.endMargin = layoutParams.getMarginEnd();
            this.layout.startMargin = layoutParams.getMarginStart();
        }

        public void applyTo(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.layout;
            layoutParams.leftToLeft = layout.leftToLeft;
            layoutParams.leftToRight = layout.leftToRight;
            layoutParams.rightToLeft = layout.rightToLeft;
            layoutParams.rightToRight = layout.rightToRight;
            layoutParams.topToTop = layout.topToTop;
            layoutParams.topToBottom = layout.topToBottom;
            layoutParams.bottomToTop = layout.bottomToTop;
            layoutParams.bottomToBottom = layout.bottomToBottom;
            layoutParams.baselineToBaseline = layout.baselineToBaseline;
            layoutParams.startToEnd = layout.startToEnd;
            layoutParams.startToStart = layout.startToStart;
            layoutParams.endToStart = layout.endToStart;
            layoutParams.endToEnd = layout.endToEnd;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.leftMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.rightMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.topMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.bottomMargin;
            layoutParams.goneStartMargin = layout.goneStartMargin;
            layoutParams.goneEndMargin = layout.goneEndMargin;
            layoutParams.goneTopMargin = layout.goneTopMargin;
            layoutParams.goneBottomMargin = layout.goneBottomMargin;
            layoutParams.horizontalBias = layout.horizontalBias;
            layoutParams.verticalBias = layout.verticalBias;
            layoutParams.circleConstraint = layout.circleConstraint;
            layoutParams.circleRadius = layout.circleRadius;
            layoutParams.circleAngle = layout.circleAngle;
            layoutParams.dimensionRatio = layout.dimensionRatio;
            layoutParams.editorAbsoluteX = layout.editorAbsoluteX;
            layoutParams.editorAbsoluteY = layout.editorAbsoluteY;
            layoutParams.verticalWeight = layout.verticalWeight;
            layoutParams.horizontalWeight = layout.horizontalWeight;
            layoutParams.verticalChainStyle = layout.verticalChainStyle;
            layoutParams.horizontalChainStyle = layout.horizontalChainStyle;
            layoutParams.constrainedWidth = layout.constrainedWidth;
            layoutParams.constrainedHeight = layout.constrainedHeight;
            layoutParams.matchConstraintDefaultWidth = layout.widthDefault;
            layoutParams.matchConstraintDefaultHeight = layout.heightDefault;
            layoutParams.matchConstraintMaxWidth = layout.widthMax;
            layoutParams.matchConstraintMaxHeight = layout.heightMax;
            layoutParams.matchConstraintMinWidth = layout.widthMin;
            layoutParams.matchConstraintMinHeight = layout.heightMin;
            layoutParams.matchConstraintPercentWidth = layout.widthPercent;
            layoutParams.matchConstraintPercentHeight = layout.heightPercent;
            layoutParams.orientation = layout.orientation;
            layoutParams.guidePercent = layout.guidePercent;
            layoutParams.guideBegin = layout.guideBegin;
            layoutParams.guideEnd = layout.guideEnd;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.mWidth;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.mHeight;
            String str = layout.mConstraintTag;
            if (str != null) {
                layoutParams.constraintTag = str;
            }
            layoutParams.setMarginStart(layout.startMargin);
            layoutParams.setMarginEnd(this.layout.endMargin);
            layoutParams.validate();
        }
    }

    public void clone(Context context, int i) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    public void clone(ConstraintSet constraintSet) {
        HashMap map = this.c;
        map.clear();
        for (Integer num : constraintSet.c.keySet()) {
            map.put(num, ((Constraint) constraintSet.c.get(num)).m2clone());
        }
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashMap map = this.c;
        map.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f806b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) map.get(Integer.valueOf(id));
            constraint.mCustomConstraints = ConstraintAttribute.extractAttributes(this.f805a, childAt);
            constraint.a(id, layoutParams);
            constraint.propertySet.visibility = childAt.getVisibility();
            constraint.propertySet.alpha = childAt.getAlpha();
            constraint.transform.rotation = childAt.getRotation();
            constraint.transform.rotationX = childAt.getRotationX();
            constraint.transform.rotationY = childAt.getRotationY();
            constraint.transform.scaleX = childAt.getScaleX();
            constraint.transform.scaleY = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                Transform transform = constraint.transform;
                transform.transformPivotX = pivotX;
                transform.transformPivotY = pivotY;
            }
            constraint.transform.translationX = childAt.getTranslationX();
            constraint.transform.translationY = childAt.getTranslationY();
            constraint.transform.translationZ = childAt.getTranslationZ();
            Transform transform2 = constraint.transform;
            if (transform2.applyElevation) {
                transform2.elevation = childAt.getElevation();
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                constraint.layout.mBarrierAllowsGoneWidgets = barrier.allowsGoneWidget();
                constraint.layout.mReferenceIds = barrier.getReferencedIds();
                constraint.layout.mBarrierDirection = barrier.getType();
                constraint.layout.mBarrierMargin = barrier.getMargin();
            }
        }
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        HashMap map = this.c;
        map.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f806b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) map.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                ConstraintHelper constraintHelper = (ConstraintHelper) childAt;
                constraint.b(id, layoutParams);
                if (constraintHelper instanceof Barrier) {
                    Layout layout = constraint.layout;
                    layout.mHelperType = 1;
                    Barrier barrier = (Barrier) constraintHelper;
                    layout.mBarrierDirection = barrier.getType();
                    constraint.layout.mReferenceIds = barrier.getReferencedIds();
                    constraint.layout.mBarrierMargin = barrier.getMargin();
                }
            }
            constraint.b(id, layoutParams);
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        b(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void applyToWithoutCustom(ConstraintLayout constraintLayout) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b(constraintLayout, false);
        constraintLayout.setConstraintSet(null);
    }

    public void applyCustomAttributes(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            HashMap map = this.c;
            if (map.containsKey(Integer.valueOf(id))) {
                if (this.f806b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (map.containsKey(Integer.valueOf(id))) {
                    ConstraintAttribute.setAttributes(childAt, ((Constraint) map.get(Integer.valueOf(id))).mCustomConstraints);
                }
            } else {
                Log.v("ConstraintSet", "id unknown " + Debug.getName(childAt));
            }
        }
    }

    public void applyToHelper(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        int id = constraintHelper.getId();
        HashMap map = this.c;
        if (map.containsKey(Integer.valueOf(id))) {
            Constraint constraint = (Constraint) map.get(Integer.valueOf(id));
            if (constraintWidget instanceof HelperWidget) {
                constraintHelper.loadParameters(constraint, (HelperWidget) constraintWidget, layoutParams, sparseArray);
            }
        }
    }

    public void applyToLayoutParams(int i, ConstraintLayout.LayoutParams layoutParams) {
        HashMap map = this.c;
        if (map.containsKey(Integer.valueOf(i))) {
            ((Constraint) map.get(Integer.valueOf(i))).applyTo(layoutParams);
        }
    }

    public final void b(ConstraintLayout constraintLayout, boolean z) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int childCount = constraintLayout.getChildCount();
        HashMap map = this.c;
        HashSet hashSet = new HashSet(map.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (map.containsKey(Integer.valueOf(id))) {
                if (this.f806b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (map.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        Constraint constraint = (Constraint) map.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            constraint.layout.mHelperType = 1;
                        }
                        int i2 = constraint.layout.mHelperType;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(constraint.layout.mBarrierDirection);
                            barrier.setMargin(constraint.layout.mBarrierMargin);
                            barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
                            Layout layout = constraint.layout;
                            int[] iArr = layout.mReferenceIds;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = layout.mReferenceIdString;
                                if (str != null) {
                                    layout.mReferenceIds = c(barrier, str);
                                    barrier.setReferencedIds(constraint.layout.mReferenceIds);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.validate();
                        constraint.applyTo(layoutParams);
                        if (z) {
                            ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                        }
                        childAt.setLayoutParams(layoutParams);
                        PropertySet propertySet = constraint.propertySet;
                        if (propertySet.mVisibilityMode == 0) {
                            childAt.setVisibility(propertySet.visibility);
                        }
                        childAt.setAlpha(constraint.propertySet.alpha);
                        childAt.setRotation(constraint.transform.rotation);
                        childAt.setRotationX(constraint.transform.rotationX);
                        childAt.setRotationY(constraint.transform.rotationY);
                        childAt.setScaleX(constraint.transform.scaleX);
                        childAt.setScaleY(constraint.transform.scaleY);
                        if (!Float.isNaN(constraint.transform.transformPivotX)) {
                            childAt.setPivotX(constraint.transform.transformPivotX);
                        }
                        if (!Float.isNaN(constraint.transform.transformPivotY)) {
                            childAt.setPivotY(constraint.transform.transformPivotY);
                        }
                        childAt.setTranslationX(constraint.transform.translationX);
                        childAt.setTranslationY(constraint.transform.translationY);
                        childAt.setTranslationZ(constraint.transform.translationZ);
                        Transform transform = constraint.transform;
                        if (transform.applyElevation) {
                            childAt.setElevation(transform.elevation);
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            } else {
                Log.w("ConstraintSet", "id unknown " + Debug.getName(childAt));
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = (Constraint) map.get(num);
            int i3 = constraint2.layout.mHelperType;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                Layout layout2 = constraint2.layout;
                int[] iArr2 = layout2.mReferenceIds;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = layout2.mReferenceIdString;
                    if (str2 != null) {
                        layout2.mReferenceIds = c(barrier2, str2);
                        barrier2.setReferencedIds(constraint2.layout.mReferenceIds);
                    }
                }
                barrier2.setType(constraint2.layout.mBarrierDirection);
                barrier2.setMargin(constraint2.layout.mBarrierMargin);
                ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.validateParams();
                constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams);
                constraintLayout.addView(barrier2, layoutParamsGenerateDefaultLayoutParams);
            }
            if (constraint2.layout.mIsGuideline) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams2);
                constraintLayout.addView(guideline, layoutParamsGenerateDefaultLayoutParams2);
            }
        }
    }

    public void center(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        if (i4 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (i7 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (f <= 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        HashMap map = this.c;
        if (i3 == 1 || i3 == 2) {
            connect(i, 1, i2, i3, i4);
            connect(i, 2, i5, i6, i7);
            ((Constraint) map.get(Integer.valueOf(i))).layout.horizontalBias = f;
        } else if (i3 == 6 || i3 == 7) {
            connect(i, 6, i2, i3, i4);
            connect(i, 7, i5, i6, i7);
            ((Constraint) map.get(Integer.valueOf(i))).layout.horizontalBias = f;
        } else {
            connect(i, 3, i2, i3, i4);
            connect(i, 4, i5, i6, i7);
            ((Constraint) map.get(Integer.valueOf(i))).layout.verticalBias = f;
        }
    }

    public void centerHorizontally(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        connect(i, 1, i2, i3, i4);
        connect(i, 2, i5, i6, i7);
        ((Constraint) this.c.get(Integer.valueOf(i))).layout.horizontalBias = f;
    }

    public void centerHorizontallyRtl(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        connect(i, 6, i2, i3, i4);
        connect(i, 7, i5, i6, i7);
        ((Constraint) this.c.get(Integer.valueOf(i))).layout.horizontalBias = f;
    }

    public void centerVertically(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        connect(i, 3, i2, i3, i4);
        connect(i, 4, i5, i6, i7);
        ((Constraint) this.c.get(Integer.valueOf(i))).layout.verticalBias = f;
    }

    public void createVerticalChain(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != iArr.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            f(iArr[0]).layout.verticalWeight = fArr[0];
        }
        f(iArr[0]).layout.verticalChainStyle = i5;
        connect(iArr[0], 3, i, i2, 0);
        for (int i6 = 1; i6 < iArr.length; i6++) {
            int i7 = i6 - 1;
            connect(iArr[i6], 3, iArr[i7], 4, 0);
            connect(iArr[i7], 4, iArr[i6], 3, 0);
            if (fArr != null) {
                f(iArr[i6]).layout.verticalWeight = fArr[i6];
            }
        }
        connect(iArr[iArr.length - 1], 4, i3, i4, 0);
    }

    public void createHorizontalChain(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5) {
        d(i, i2, i3, i4, iArr, fArr, i5, 1, 2);
    }

    public void createHorizontalChainRtl(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5) {
        d(i, i2, i3, i4, iArr, fArr, i5, 6, 7);
    }

    public final void d(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5, int i6, int i7) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != iArr.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            f(iArr[0]).layout.horizontalWeight = fArr[0];
        }
        f(iArr[0]).layout.horizontalChainStyle = i5;
        connect(iArr[0], i6, i, i2, -1);
        for (int i8 = 1; i8 < iArr.length; i8++) {
            int i9 = i8 - 1;
            connect(iArr[i8], i6, iArr[i9], i7, -1);
            connect(iArr[i9], i7, iArr[i8], i6, -1);
            if (fArr != null) {
                f(iArr[i8]).layout.horizontalWeight = fArr[i8];
            }
        }
        connect(iArr[iArr.length - 1], i7, i3, i4, -1);
    }

    public void connect(int i, int i2, int i3, int i4, int i5) {
        HashMap map = this.c;
        if (!map.containsKey(Integer.valueOf(i))) {
            map.put(Integer.valueOf(i), new Constraint());
        }
        Constraint constraint = (Constraint) map.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    Layout layout = constraint.layout;
                    layout.leftToLeft = i3;
                    layout.leftToRight = -1;
                } else if (i4 == 2) {
                    Layout layout2 = constraint.layout;
                    layout2.leftToRight = i3;
                    layout2.leftToLeft = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + h(i4) + " undefined");
                }
                constraint.layout.leftMargin = i5;
                return;
            case 2:
                if (i4 == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.rightToLeft = i3;
                    layout3.rightToRight = -1;
                } else {
                    if (i4 != 2) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout4 = constraint.layout;
                    layout4.rightToRight = i3;
                    layout4.rightToLeft = -1;
                }
                constraint.layout.rightMargin = i5;
                return;
            case 3:
                if (i4 == 3) {
                    Layout layout5 = constraint.layout;
                    layout5.topToTop = i3;
                    layout5.topToBottom = -1;
                    layout5.baselineToBaseline = -1;
                } else {
                    if (i4 != 4) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout6 = constraint.layout;
                    layout6.topToBottom = i3;
                    layout6.topToTop = -1;
                    layout6.baselineToBaseline = -1;
                }
                constraint.layout.topMargin = i5;
                return;
            case 4:
                if (i4 == 4) {
                    Layout layout7 = constraint.layout;
                    layout7.bottomToBottom = i3;
                    layout7.bottomToTop = -1;
                    layout7.baselineToBaseline = -1;
                } else {
                    if (i4 != 3) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout8 = constraint.layout;
                    layout8.bottomToTop = i3;
                    layout8.bottomToBottom = -1;
                    layout8.baselineToBaseline = -1;
                }
                constraint.layout.bottomMargin = i5;
                return;
            case 5:
                if (i4 != 5) {
                    throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                }
                Layout layout9 = constraint.layout;
                layout9.baselineToBaseline = i3;
                layout9.bottomToBottom = -1;
                layout9.bottomToTop = -1;
                layout9.topToTop = -1;
                layout9.topToBottom = -1;
                return;
            case 6:
                if (i4 == 6) {
                    Layout layout10 = constraint.layout;
                    layout10.startToStart = i3;
                    layout10.startToEnd = -1;
                } else {
                    if (i4 != 7) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout11 = constraint.layout;
                    layout11.startToEnd = i3;
                    layout11.startToStart = -1;
                }
                constraint.layout.startMargin = i5;
                return;
            case 7:
                if (i4 == 7) {
                    Layout layout12 = constraint.layout;
                    layout12.endToEnd = i3;
                    layout12.endToStart = -1;
                } else {
                    if (i4 != 6) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout13 = constraint.layout;
                    layout13.endToStart = i3;
                    layout13.endToEnd = -1;
                }
                constraint.layout.endMargin = i5;
                return;
            default:
                throw new IllegalArgumentException(h(i2) + " to " + h(i4) + " unknown");
        }
    }

    public void connect(int i, int i2, int i3, int i4) {
        HashMap map = this.c;
        if (!map.containsKey(Integer.valueOf(i))) {
            map.put(Integer.valueOf(i), new Constraint());
        }
        Constraint constraint = (Constraint) map.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    Layout layout = constraint.layout;
                    layout.leftToLeft = i3;
                    layout.leftToRight = -1;
                    return;
                } else if (i4 == 2) {
                    Layout layout2 = constraint.layout;
                    layout2.leftToRight = i3;
                    layout2.leftToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + h(i4) + " undefined");
                }
            case 2:
                if (i4 == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.rightToLeft = i3;
                    layout3.rightToRight = -1;
                    return;
                } else {
                    if (i4 != 2) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout4 = constraint.layout;
                    layout4.rightToRight = i3;
                    layout4.rightToLeft = -1;
                    return;
                }
            case 3:
                if (i4 == 3) {
                    Layout layout5 = constraint.layout;
                    layout5.topToTop = i3;
                    layout5.topToBottom = -1;
                    layout5.baselineToBaseline = -1;
                    return;
                }
                if (i4 != 4) {
                    throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                }
                Layout layout6 = constraint.layout;
                layout6.topToBottom = i3;
                layout6.topToTop = -1;
                layout6.baselineToBaseline = -1;
                return;
            case 4:
                if (i4 == 4) {
                    Layout layout7 = constraint.layout;
                    layout7.bottomToBottom = i3;
                    layout7.bottomToTop = -1;
                    layout7.baselineToBaseline = -1;
                    return;
                }
                if (i4 != 3) {
                    throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                }
                Layout layout8 = constraint.layout;
                layout8.bottomToTop = i3;
                layout8.bottomToBottom = -1;
                layout8.baselineToBaseline = -1;
                return;
            case 5:
                if (i4 != 5) {
                    throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                }
                Layout layout9 = constraint.layout;
                layout9.baselineToBaseline = i3;
                layout9.bottomToBottom = -1;
                layout9.bottomToTop = -1;
                layout9.topToTop = -1;
                layout9.topToBottom = -1;
                return;
            case 6:
                if (i4 == 6) {
                    Layout layout10 = constraint.layout;
                    layout10.startToStart = i3;
                    layout10.startToEnd = -1;
                    return;
                } else {
                    if (i4 != 7) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout11 = constraint.layout;
                    layout11.startToEnd = i3;
                    layout11.startToStart = -1;
                    return;
                }
            case 7:
                if (i4 == 7) {
                    Layout layout12 = constraint.layout;
                    layout12.endToEnd = i3;
                    layout12.endToStart = -1;
                    return;
                } else {
                    if (i4 != 6) {
                        throw new IllegalArgumentException("right to " + h(i4) + " undefined");
                    }
                    Layout layout13 = constraint.layout;
                    layout13.endToStart = i3;
                    layout13.endToEnd = -1;
                    return;
                }
            default:
                throw new IllegalArgumentException(h(i2) + " to " + h(i4) + " unknown");
        }
    }

    public void centerHorizontally(int i, int i2) {
        if (i2 == 0) {
            center(i, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(i, i2, 2, 0, i2, 1, 0, 0.5f);
        }
    }

    public void centerHorizontallyRtl(int i, int i2) {
        if (i2 == 0) {
            center(i, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(i, i2, 7, 0, i2, 6, 0, 0.5f);
        }
    }

    public void centerVertically(int i, int i2) {
        if (i2 == 0) {
            center(i, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(i, i2, 4, 0, i2, 3, 0, 0.5f);
        }
    }

    public void clear(int i) {
        this.c.remove(Integer.valueOf(i));
    }

    public void clear(int i, int i2) {
        HashMap map = this.c;
        if (map.containsKey(Integer.valueOf(i))) {
            Constraint constraint = (Constraint) map.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    Layout layout = constraint.layout;
                    layout.leftToRight = -1;
                    layout.leftToLeft = -1;
                    layout.leftMargin = -1;
                    layout.goneLeftMargin = -1;
                    return;
                case 2:
                    Layout layout2 = constraint.layout;
                    layout2.rightToRight = -1;
                    layout2.rightToLeft = -1;
                    layout2.rightMargin = -1;
                    layout2.goneRightMargin = -1;
                    return;
                case 3:
                    Layout layout3 = constraint.layout;
                    layout3.topToBottom = -1;
                    layout3.topToTop = -1;
                    layout3.topMargin = -1;
                    layout3.goneTopMargin = -1;
                    return;
                case 4:
                    Layout layout4 = constraint.layout;
                    layout4.bottomToTop = -1;
                    layout4.bottomToBottom = -1;
                    layout4.bottomMargin = -1;
                    layout4.goneBottomMargin = -1;
                    return;
                case 5:
                    constraint.layout.baselineToBaseline = -1;
                    return;
                case 6:
                    Layout layout5 = constraint.layout;
                    layout5.startToEnd = -1;
                    layout5.startToStart = -1;
                    layout5.startMargin = -1;
                    layout5.goneStartMargin = -1;
                    return;
                case 7:
                    Layout layout6 = constraint.layout;
                    layout6.endToStart = -1;
                    layout6.endToEnd = -1;
                    layout6.endMargin = -1;
                    layout6.goneEndMargin = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    public void setMargin(int i, int i2, int i3) {
        Constraint constraintF = f(i);
        switch (i2) {
            case 1:
                constraintF.layout.leftMargin = i3;
                return;
            case 2:
                constraintF.layout.rightMargin = i3;
                return;
            case 3:
                constraintF.layout.topMargin = i3;
                return;
            case 4:
                constraintF.layout.bottomMargin = i3;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                constraintF.layout.startMargin = i3;
                return;
            case 7:
                constraintF.layout.endMargin = i3;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setGoneMargin(int i, int i2, int i3) {
        Constraint constraintF = f(i);
        switch (i2) {
            case 1:
                constraintF.layout.goneLeftMargin = i3;
                return;
            case 2:
                constraintF.layout.goneRightMargin = i3;
                return;
            case 3:
                constraintF.layout.goneTopMargin = i3;
                return;
            case 4:
                constraintF.layout.goneBottomMargin = i3;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                constraintF.layout.goneStartMargin = i3;
                return;
            case 7:
                constraintF.layout.goneEndMargin = i3;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setHorizontalBias(int i, float f) {
        f(i).layout.horizontalBias = f;
    }

    public void setVerticalBias(int i, float f) {
        f(i).layout.verticalBias = f;
    }

    public void setDimensionRatio(int i, String str) {
        f(i).layout.dimensionRatio = str;
    }

    public void setVisibility(int i, int i2) {
        f(i).propertySet.visibility = i2;
    }

    public void setVisibilityMode(int i, int i2) {
        f(i).propertySet.mVisibilityMode = i2;
    }

    public int getVisibilityMode(int i) {
        return f(i).propertySet.mVisibilityMode;
    }

    public int getVisibility(int i) {
        return f(i).propertySet.visibility;
    }

    public int getHeight(int i) {
        return f(i).layout.mHeight;
    }

    public int getWidth(int i) {
        return f(i).layout.mWidth;
    }

    public void setAlpha(int i, float f) {
        f(i).propertySet.alpha = f;
    }

    public boolean getApplyElevation(int i) {
        return f(i).transform.applyElevation;
    }

    public void setApplyElevation(int i, boolean z) {
        f(i).transform.applyElevation = z;
    }

    public void setElevation(int i, float f) {
        f(i).transform.elevation = f;
        f(i).transform.applyElevation = true;
    }

    public void setRotation(int i, float f) {
        f(i).transform.rotation = f;
    }

    public void setRotationX(int i, float f) {
        f(i).transform.rotationX = f;
    }

    public void setRotationY(int i, float f) {
        f(i).transform.rotationY = f;
    }

    public void setScaleX(int i, float f) {
        f(i).transform.scaleX = f;
    }

    public void setScaleY(int i, float f) {
        f(i).transform.scaleY = f;
    }

    public void setTransformPivotX(int i, float f) {
        f(i).transform.transformPivotX = f;
    }

    public void setTransformPivotY(int i, float f) {
        f(i).transform.transformPivotY = f;
    }

    public void setTransformPivot(int i, float f, float f2) {
        Transform transform = f(i).transform;
        transform.transformPivotY = f2;
        transform.transformPivotX = f;
    }

    public void setTranslationX(int i, float f) {
        f(i).transform.translationX = f;
    }

    public void setTranslationY(int i, float f) {
        f(i).transform.translationY = f;
    }

    public void setTranslation(int i, float f, float f2) {
        Transform transform = f(i).transform;
        transform.translationX = f;
        transform.translationY = f2;
    }

    public void setTranslationZ(int i, float f) {
        f(i).transform.translationZ = f;
    }

    public void setEditorAbsoluteX(int i, int i2) {
        f(i).layout.editorAbsoluteX = i2;
    }

    public void setEditorAbsoluteY(int i, int i2) {
        f(i).layout.editorAbsoluteY = i2;
    }

    public void constrainHeight(int i, int i2) {
        f(i).layout.mHeight = i2;
    }

    public void constrainWidth(int i, int i2) {
        f(i).layout.mWidth = i2;
    }

    public void constrainCircle(int i, int i2, int i3, float f) {
        Layout layout = f(i).layout;
        layout.circleConstraint = i2;
        layout.circleRadius = i3;
        layout.circleAngle = f;
    }

    public void constrainMaxHeight(int i, int i2) {
        f(i).layout.heightMax = i2;
    }

    public void constrainMaxWidth(int i, int i2) {
        f(i).layout.widthMax = i2;
    }

    public void constrainMinHeight(int i, int i2) {
        f(i).layout.heightMin = i2;
    }

    public void constrainMinWidth(int i, int i2) {
        f(i).layout.widthMin = i2;
    }

    public void constrainPercentWidth(int i, float f) {
        f(i).layout.widthPercent = f;
    }

    public void constrainPercentHeight(int i, float f) {
        f(i).layout.heightPercent = f;
    }

    public void constrainDefaultHeight(int i, int i2) {
        f(i).layout.heightDefault = i2;
    }

    public void constrainedWidth(int i, boolean z) {
        f(i).layout.constrainedWidth = z;
    }

    public void constrainedHeight(int i, boolean z) {
        f(i).layout.constrainedHeight = z;
    }

    public void constrainDefaultWidth(int i, int i2) {
        f(i).layout.widthDefault = i2;
    }

    public void setHorizontalWeight(int i, float f) {
        f(i).layout.horizontalWeight = f;
    }

    public void setVerticalWeight(int i, float f) {
        f(i).layout.verticalWeight = f;
    }

    public void setHorizontalChainStyle(int i, int i2) {
        f(i).layout.horizontalChainStyle = i2;
    }

    public void setVerticalChainStyle(int i, int i2) {
        f(i).layout.verticalChainStyle = i2;
    }

    public void addToHorizontalChain(int i, int i2, int i3) {
        connect(i, 1, i2, i2 == 0 ? 1 : 2, 0);
        connect(i, 2, i3, i3 == 0 ? 2 : 1, 0);
        if (i2 != 0) {
            connect(i2, 2, i, 1, 0);
        }
        if (i3 != 0) {
            connect(i3, 1, i, 2, 0);
        }
    }

    public void addToHorizontalChainRTL(int i, int i2, int i3) {
        connect(i, 6, i2, i2 == 0 ? 6 : 7, 0);
        connect(i, 7, i3, i3 == 0 ? 7 : 6, 0);
        if (i2 != 0) {
            connect(i2, 7, i, 6, 0);
        }
        if (i3 != 0) {
            connect(i3, 6, i, 7, 0);
        }
    }

    public void addToVerticalChain(int i, int i2, int i3) {
        connect(i, 3, i2, i2 == 0 ? 3 : 4, 0);
        connect(i, 4, i3, i3 == 0 ? 4 : 3, 0);
        if (i2 != 0) {
            connect(i2, 4, i, 3, 0);
        }
        if (i3 != 0) {
            connect(i3, 3, i, 4, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeFromVerticalChain(int r10) {
        /*
            r9 = this;
            java.util.HashMap r0 = r9.c
            java.lang.Integer r1 = java.lang.Integer.valueOf(r10)
            boolean r1 = r0.containsKey(r1)
            if (r1 == 0) goto L22
            java.lang.Integer r1 = java.lang.Integer.valueOf(r10)
            java.lang.Object r0 = r0.get(r1)
            androidx.constraintlayout.widget.ConstraintSet$Constraint r0 = (androidx.constraintlayout.widget.ConstraintSet.Constraint) r0
            androidx.constraintlayout.widget.ConstraintSet$Layout r0 = r0.layout
            int r2 = r0.topToBottom
            int r4 = r0.bottomToTop
            r1 = -1
            if (r2 != r1) goto L24
            if (r4 == r1) goto L22
            goto L24
        L22:
            r1 = r9
            goto L57
        L24:
            if (r2 == r1) goto L39
            if (r4 == r1) goto L39
            r5 = 3
            r6 = 0
            r3 = 4
            r1 = r9
            r1.connect(r2, r3, r4, r5, r6)
            r5 = 4
            r3 = 3
            r1 = r4
            r4 = r2
            r2 = r1
            r1 = r9
            r1.connect(r2, r3, r4, r5, r6)
            goto L57
        L39:
            if (r2 != r1) goto L3d
            if (r4 == r1) goto L22
        L3d:
            r3 = r4
            int r4 = r0.bottomToBottom
            if (r4 == r1) goto L4a
            r5 = 4
            r6 = 0
            r3 = 4
            r1 = r9
            r1.connect(r2, r3, r4, r5, r6)
            goto L57
        L4a:
            int r6 = r0.topToTop
            if (r6 == r1) goto L22
            r7 = 3
            r8 = 0
            r5 = 3
            r4 = r3
            r3 = r9
            r3.connect(r4, r5, r6, r7, r8)
            r1 = r3
        L57:
            r0 = 3
            r9.clear(r10, r0)
            r0 = 4
            r9.clear(r10, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.removeFromVerticalChain(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeFromHorizontalChain(int r14) {
        /*
            Method dump skipped, instructions count: 169
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.removeFromHorizontalChain(int):void");
    }

    public void create(int i, int i2) {
        Layout layout = f(i).layout;
        layout.mIsGuideline = true;
        layout.orientation = i2;
    }

    public void createBarrier(int i, int i2, int i3, int... iArr) {
        Layout layout = f(i).layout;
        layout.mHelperType = 1;
        layout.mBarrierDirection = i2;
        layout.mBarrierMargin = i3;
        layout.mIsGuideline = false;
        layout.mReferenceIds = iArr;
    }

    public void setGuidelineBegin(int i, int i2) {
        f(i).layout.guideBegin = i2;
        f(i).layout.guideEnd = -1;
        f(i).layout.guidePercent = -1.0f;
    }

    public void setGuidelineEnd(int i, int i2) {
        f(i).layout.guideEnd = i2;
        f(i).layout.guideBegin = -1;
        f(i).layout.guidePercent = -1.0f;
    }

    public void setGuidelinePercent(int i, float f) {
        f(i).layout.guidePercent = f;
        f(i).layout.guideEnd = -1;
        f(i).layout.guideBegin = -1;
    }

    public int[] getReferencedIds(int i) {
        int[] iArr = f(i).layout.mReferenceIds;
        if (iArr == null) {
            return new int[0];
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    public void setReferencedIds(int i, int... iArr) {
        f(i).layout.mReferenceIds = iArr;
    }

    public void setBarrierType(int i, int i2) {
        f(i).layout.mHelperType = i2;
    }

    public void removeAttribute(String str) {
        this.f805a.remove(str);
    }

    public void setIntValue(int i, String str, int i2) {
        f(i).c(str, ConstraintAttribute.AttributeType.INT_TYPE).setIntValue(i2);
    }

    public void setColorValue(int i, String str, int i2) {
        f(i).c(str, ConstraintAttribute.AttributeType.COLOR_TYPE).setColorValue(i2);
    }

    public void setFloatValue(int i, String str, float f) {
        f(i).c(str, ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(f);
    }

    public void setStringValue(int i, String str, String str2) {
        f(i).c(str, ConstraintAttribute.AttributeType.STRING_TYPE).setStringValue(str2);
    }

    public final void a(ConstraintAttribute.AttributeType attributeType, String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            HashMap map = this.f805a;
            if (map.containsKey(strArr[i])) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) map.get(strArr[i]);
                if (constraintAttribute.getType() != attributeType) {
                    throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
                }
            } else {
                map.put(strArr[i], new ConstraintAttribute(strArr[i], attributeType));
            }
        }
    }

    public void parseIntAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split("=");
            if (strArrSplit2.length != 2) {
                Log.w("ConstraintSet", " Unable to parse " + strArrSplit[i]);
            } else {
                constraint.c(strArrSplit2[0], ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(Integer.decode(strArrSplit2[1]).intValue());
            }
        }
    }

    public void parseColorAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split("=");
            if (strArrSplit2.length != 2) {
                Log.w("ConstraintSet", " Unable to parse " + strArrSplit[i]);
            } else {
                constraint.c(strArrSplit2[0], ConstraintAttribute.AttributeType.COLOR_TYPE).setColorValue(Color.parseColor(strArrSplit2[1]));
            }
        }
    }

    public void parseFloatAttributes(Constraint constraint, String str) throws NumberFormatException {
        String[] strArrSplit = str.split(",");
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split("=");
            if (strArrSplit2.length != 2) {
                Log.w("ConstraintSet", " Unable to parse " + strArrSplit[i]);
            } else {
                constraint.c(strArrSplit2[0], ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(Float.parseFloat(strArrSplit2[1]));
            }
        }
    }

    public void parseStringAttributes(Constraint constraint, String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c = charArray[i2];
            if (c == ',' && !z) {
                arrayList.add(new String(charArray, i, i2 - i));
                i = i2 + 1;
            } else if (c == '\"') {
                z = !z;
            }
        }
        arrayList.add(new String(charArray, i, charArray.length - i));
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        for (int i3 = 0; i3 < strArr.length; i3++) {
            String[] strArrSplit = strArr[i3].split("=");
            Log.w("ConstraintSet", " Unable to parse " + strArr[i3]);
            constraint.c(strArrSplit[0], ConstraintAttribute.AttributeType.STRING_TYPE).setStringValue(strArrSplit[1]);
        }
    }

    public void addIntAttributes(String... strArr) {
        a(ConstraintAttribute.AttributeType.INT_TYPE, strArr);
    }

    public void addColorAttributes(String... strArr) {
        a(ConstraintAttribute.AttributeType.COLOR_TYPE, strArr);
    }

    public void addFloatAttributes(String... strArr) {
        a(ConstraintAttribute.AttributeType.FLOAT_TYPE, strArr);
    }

    public void addStringAttributes(String... strArr) {
        a(ConstraintAttribute.AttributeType.STRING_TYPE, strArr);
    }

    public final Constraint f(int i) {
        HashMap map = this.c;
        if (!map.containsKey(Integer.valueOf(i))) {
            map.put(Integer.valueOf(i), new Constraint());
        }
        return (Constraint) map.get(Integer.valueOf(i));
    }

    public static String h(int i) {
        switch (i) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public void load(Context context, int i) throws XmlPullParserException, Resources.NotFoundException, IOException {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    Constraint constraintE = e(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        constraintE.layout.mIsGuideline = true;
                    }
                    this.c.put(Integer.valueOf(constraintE.f807a), constraintE);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x017e, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(android.content.Context r9, org.xmlpull.v1.XmlPullParser r10) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public static int g(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    public static Constraint e(Context context, AttributeSet attributeSet) {
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Constraint);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index && R.styleable.Constraint_android_layout_marginEnd != index) {
                constraint.motion.mApply = true;
                constraint.layout.mApply = true;
                constraint.propertySet.mApply = true;
                constraint.transform.mApply = true;
            }
            SparseIntArray sparseIntArray = e;
            switch (sparseIntArray.get(index)) {
                case 1:
                    Layout layout = constraint.layout;
                    layout.baselineToBaseline = g(typedArrayObtainStyledAttributes, index, layout.baselineToBaseline);
                    break;
                case 2:
                    Layout layout2 = constraint.layout;
                    layout2.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout2.bottomMargin);
                    break;
                case 3:
                    Layout layout3 = constraint.layout;
                    layout3.bottomToBottom = g(typedArrayObtainStyledAttributes, index, layout3.bottomToBottom);
                    break;
                case 4:
                    Layout layout4 = constraint.layout;
                    layout4.bottomToTop = g(typedArrayObtainStyledAttributes, index, layout4.bottomToTop);
                    break;
                case 5:
                    constraint.layout.dimensionRatio = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    Layout layout5 = constraint.layout;
                    layout5.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout5.editorAbsoluteX);
                    break;
                case 7:
                    Layout layout6 = constraint.layout;
                    layout6.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout6.editorAbsoluteY);
                    break;
                case 8:
                    Layout layout7 = constraint.layout;
                    layout7.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout7.endMargin);
                    break;
                case 9:
                    Layout layout8 = constraint.layout;
                    layout8.endToEnd = g(typedArrayObtainStyledAttributes, index, layout8.endToEnd);
                    break;
                case 10:
                    Layout layout9 = constraint.layout;
                    layout9.endToStart = g(typedArrayObtainStyledAttributes, index, layout9.endToStart);
                    break;
                case 11:
                    Layout layout10 = constraint.layout;
                    layout10.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout10.goneBottomMargin);
                    break;
                case 12:
                    Layout layout11 = constraint.layout;
                    layout11.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout11.goneEndMargin);
                    break;
                case 13:
                    Layout layout12 = constraint.layout;
                    layout12.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout12.goneLeftMargin);
                    break;
                case 14:
                    Layout layout13 = constraint.layout;
                    layout13.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout13.goneRightMargin);
                    break;
                case 15:
                    Layout layout14 = constraint.layout;
                    layout14.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout14.goneStartMargin);
                    break;
                case 16:
                    Layout layout15 = constraint.layout;
                    layout15.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout15.goneTopMargin);
                    break;
                case 17:
                    Layout layout16 = constraint.layout;
                    layout16.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout16.guideBegin);
                    break;
                case 18:
                    Layout layout17 = constraint.layout;
                    layout17.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout17.guideEnd);
                    break;
                case 19:
                    Layout layout18 = constraint.layout;
                    layout18.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, layout18.guidePercent);
                    break;
                case 20:
                    Layout layout19 = constraint.layout;
                    layout19.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, layout19.horizontalBias);
                    break;
                case 21:
                    Layout layout20 = constraint.layout;
                    layout20.mHeight = typedArrayObtainStyledAttributes.getLayoutDimension(index, layout20.mHeight);
                    break;
                case 22:
                    PropertySet propertySet = constraint.propertySet;
                    propertySet.visibility = typedArrayObtainStyledAttributes.getInt(index, propertySet.visibility);
                    PropertySet propertySet2 = constraint.propertySet;
                    propertySet2.visibility = d[propertySet2.visibility];
                    break;
                case 23:
                    Layout layout21 = constraint.layout;
                    layout21.mWidth = typedArrayObtainStyledAttributes.getLayoutDimension(index, layout21.mWidth);
                    break;
                case 24:
                    Layout layout22 = constraint.layout;
                    layout22.leftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout22.leftMargin);
                    break;
                case 25:
                    Layout layout23 = constraint.layout;
                    layout23.leftToLeft = g(typedArrayObtainStyledAttributes, index, layout23.leftToLeft);
                    break;
                case 26:
                    Layout layout24 = constraint.layout;
                    layout24.leftToRight = g(typedArrayObtainStyledAttributes, index, layout24.leftToRight);
                    break;
                case 27:
                    Layout layout25 = constraint.layout;
                    layout25.orientation = typedArrayObtainStyledAttributes.getInt(index, layout25.orientation);
                    break;
                case 28:
                    Layout layout26 = constraint.layout;
                    layout26.rightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout26.rightMargin);
                    break;
                case 29:
                    Layout layout27 = constraint.layout;
                    layout27.rightToLeft = g(typedArrayObtainStyledAttributes, index, layout27.rightToLeft);
                    break;
                case 30:
                    Layout layout28 = constraint.layout;
                    layout28.rightToRight = g(typedArrayObtainStyledAttributes, index, layout28.rightToRight);
                    break;
                case 31:
                    Layout layout29 = constraint.layout;
                    layout29.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout29.startMargin);
                    break;
                case 32:
                    Layout layout30 = constraint.layout;
                    layout30.startToEnd = g(typedArrayObtainStyledAttributes, index, layout30.startToEnd);
                    break;
                case 33:
                    Layout layout31 = constraint.layout;
                    layout31.startToStart = g(typedArrayObtainStyledAttributes, index, layout31.startToStart);
                    break;
                case 34:
                    Layout layout32 = constraint.layout;
                    layout32.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout32.topMargin);
                    break;
                case 35:
                    Layout layout33 = constraint.layout;
                    layout33.topToBottom = g(typedArrayObtainStyledAttributes, index, layout33.topToBottom);
                    break;
                case 36:
                    Layout layout34 = constraint.layout;
                    layout34.topToTop = g(typedArrayObtainStyledAttributes, index, layout34.topToTop);
                    break;
                case 37:
                    Layout layout35 = constraint.layout;
                    layout35.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, layout35.verticalBias);
                    break;
                case 38:
                    constraint.f807a = typedArrayObtainStyledAttributes.getResourceId(index, constraint.f807a);
                    break;
                case 39:
                    Layout layout36 = constraint.layout;
                    layout36.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, layout36.horizontalWeight);
                    break;
                case 40:
                    Layout layout37 = constraint.layout;
                    layout37.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, layout37.verticalWeight);
                    break;
                case 41:
                    Layout layout38 = constraint.layout;
                    layout38.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, layout38.horizontalChainStyle);
                    break;
                case 42:
                    Layout layout39 = constraint.layout;
                    layout39.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, layout39.verticalChainStyle);
                    break;
                case 43:
                    PropertySet propertySet3 = constraint.propertySet;
                    propertySet3.alpha = typedArrayObtainStyledAttributes.getFloat(index, propertySet3.alpha);
                    break;
                case 44:
                    Transform transform = constraint.transform;
                    transform.applyElevation = true;
                    transform.elevation = typedArrayObtainStyledAttributes.getDimension(index, transform.elevation);
                    break;
                case 45:
                    Transform transform2 = constraint.transform;
                    transform2.rotationX = typedArrayObtainStyledAttributes.getFloat(index, transform2.rotationX);
                    break;
                case 46:
                    Transform transform3 = constraint.transform;
                    transform3.rotationY = typedArrayObtainStyledAttributes.getFloat(index, transform3.rotationY);
                    break;
                case 47:
                    Transform transform4 = constraint.transform;
                    transform4.scaleX = typedArrayObtainStyledAttributes.getFloat(index, transform4.scaleX);
                    break;
                case 48:
                    Transform transform5 = constraint.transform;
                    transform5.scaleY = typedArrayObtainStyledAttributes.getFloat(index, transform5.scaleY);
                    break;
                case 49:
                    Transform transform6 = constraint.transform;
                    transform6.transformPivotX = typedArrayObtainStyledAttributes.getDimension(index, transform6.transformPivotX);
                    break;
                case 50:
                    Transform transform7 = constraint.transform;
                    transform7.transformPivotY = typedArrayObtainStyledAttributes.getDimension(index, transform7.transformPivotY);
                    break;
                case 51:
                    Transform transform8 = constraint.transform;
                    transform8.translationX = typedArrayObtainStyledAttributes.getDimension(index, transform8.translationX);
                    break;
                case 52:
                    Transform transform9 = constraint.transform;
                    transform9.translationY = typedArrayObtainStyledAttributes.getDimension(index, transform9.translationY);
                    break;
                case 53:
                    Transform transform10 = constraint.transform;
                    transform10.translationZ = typedArrayObtainStyledAttributes.getDimension(index, transform10.translationZ);
                    break;
                case 54:
                    Layout layout40 = constraint.layout;
                    layout40.widthDefault = typedArrayObtainStyledAttributes.getInt(index, layout40.widthDefault);
                    break;
                case 55:
                    Layout layout41 = constraint.layout;
                    layout41.heightDefault = typedArrayObtainStyledAttributes.getInt(index, layout41.heightDefault);
                    break;
                case 56:
                    Layout layout42 = constraint.layout;
                    layout42.widthMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout42.widthMax);
                    break;
                case 57:
                    Layout layout43 = constraint.layout;
                    layout43.heightMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout43.heightMax);
                    break;
                case 58:
                    Layout layout44 = constraint.layout;
                    layout44.widthMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout44.widthMin);
                    break;
                case 59:
                    Layout layout45 = constraint.layout;
                    layout45.heightMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout45.heightMin);
                    break;
                case 60:
                    Transform transform11 = constraint.transform;
                    transform11.rotation = typedArrayObtainStyledAttributes.getFloat(index, transform11.rotation);
                    break;
                case 61:
                    Layout layout46 = constraint.layout;
                    layout46.circleConstraint = g(typedArrayObtainStyledAttributes, index, layout46.circleConstraint);
                    break;
                case 62:
                    Layout layout47 = constraint.layout;
                    layout47.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout47.circleRadius);
                    break;
                case 63:
                    Layout layout48 = constraint.layout;
                    layout48.circleAngle = typedArrayObtainStyledAttributes.getFloat(index, layout48.circleAngle);
                    break;
                case 64:
                    Motion motion = constraint.motion;
                    motion.mAnimateRelativeTo = g(typedArrayObtainStyledAttributes, index, motion.mAnimateRelativeTo);
                    break;
                case 65:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        constraint.motion.mTransitionEasing = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        constraint.motion.mTransitionEasing = Easing.NAMED_EASING[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    constraint.motion.mDrawPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 67:
                    Motion motion2 = constraint.motion;
                    motion2.mPathRotate = typedArrayObtainStyledAttributes.getFloat(index, motion2.mPathRotate);
                    break;
                case 68:
                    PropertySet propertySet4 = constraint.propertySet;
                    propertySet4.mProgress = typedArrayObtainStyledAttributes.getFloat(index, propertySet4.mProgress);
                    break;
                case 69:
                    constraint.layout.widthPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    constraint.layout.heightPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    Layout layout49 = constraint.layout;
                    layout49.mBarrierDirection = typedArrayObtainStyledAttributes.getInt(index, layout49.mBarrierDirection);
                    break;
                case 73:
                    Layout layout50 = constraint.layout;
                    layout50.mBarrierMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout50.mBarrierMargin);
                    break;
                case 74:
                    constraint.layout.mReferenceIdString = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 75:
                    Layout layout51 = constraint.layout;
                    layout51.mBarrierAllowsGoneWidgets = typedArrayObtainStyledAttributes.getBoolean(index, layout51.mBarrierAllowsGoneWidgets);
                    break;
                case 76:
                    Motion motion3 = constraint.motion;
                    motion3.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, motion3.mPathMotionArc);
                    break;
                case 77:
                    constraint.layout.mConstraintTag = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 78:
                    PropertySet propertySet5 = constraint.propertySet;
                    propertySet5.mVisibilityMode = typedArrayObtainStyledAttributes.getInt(index, propertySet5.mVisibilityMode);
                    break;
                case 79:
                    Motion motion4 = constraint.motion;
                    motion4.mMotionStagger = typedArrayObtainStyledAttributes.getFloat(index, motion4.mMotionStagger);
                    break;
                case 80:
                    Layout layout52 = constraint.layout;
                    layout52.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, layout52.constrainedWidth);
                    break;
                case 81:
                    Layout layout53 = constraint.layout;
                    layout53.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, layout53.constrainedHeight);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    public static int[] c(Barrier barrier, String str) throws IllegalAccessException, IllegalArgumentException {
        int iIntValue;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        int i2 = 0;
        while (i < strArrSplit.length) {
            String strTrim = strArrSplit[i].trim();
            try {
                iIntValue = R.id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) barrier.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                iIntValue = ((Integer) designInformation).intValue();
            }
            iArr[i2] = iIntValue;
            i++;
            i2++;
        }
        return i2 != strArrSplit.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    public Constraint getConstraint(int i) {
        HashMap map = this.c;
        if (map.containsKey(Integer.valueOf(i))) {
            return (Constraint) map.get(Integer.valueOf(i));
        }
        return null;
    }

    public int[] getKnownIds() {
        Integer[] numArr = (Integer[]) this.c.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public boolean isForceId() {
        return this.f806b;
    }

    public void setForceId(boolean z) {
        this.f806b = z;
    }

    public void dump(MotionScene motionScene, int... iArr) throws IllegalAccessException, IllegalArgumentException {
        HashSet hashSet;
        HashMap map = this.c;
        Set setKeySet = map.keySet();
        if (iArr.length != 0) {
            hashSet = new HashSet();
            for (int i : iArr) {
                hashSet.add(Integer.valueOf(i));
            }
        } else {
            hashSet = new HashSet(setKeySet);
        }
        System.out.println(hashSet.size() + " constraints");
        StringBuilder sb = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            Constraint constraint = (Constraint) map.get(num);
            sb.append("<Constraint id=");
            sb.append(num);
            sb.append(" \n");
            constraint.layout.dump(motionScene, sb);
            sb.append("/>\n");
        }
        System.out.println(sb.toString());
    }
}
