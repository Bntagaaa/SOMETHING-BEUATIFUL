package com.google.appinventor.components.runtime;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.widget.LinearLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.ANIMATION, description = "A new component ", iconName = "images/niotronBeautify.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronBeautify extends AndroidNonvisibleComponent {
    public NiotronBeautify(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Set border in a component")
    public void Border(AndroidViewComponent androidViewComponent, boolean z, boolean z2, int i, int i2, float f, float f2) {
        View view = androidViewComponent.getView();
        if (view.getBackground() instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
            if (z2) {
                gradientDrawable.setStroke(i, i2, f2, f);
            } else {
                gradientDrawable.setStroke(i, i2);
            }
            view.setBackground(gradientDrawable);
            return;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        if (z2) {
            gradientDrawable2.setStroke(i, i2, f2, f);
        } else {
            gradientDrawable2.setStroke(i, i2);
        }
        view.setBackground(gradientDrawable2);
    }

    @SimpleFunction(description = "Sets radius in component")
    public void Radius(AndroidViewComponent androidViewComponent, float f, float f2, float f3, float f4) {
        View view = androidViewComponent.getView();
        if (view.getBackground() instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
            gradientDrawable.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
            view.setBackground(gradientDrawable);
        } else {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
            view.setBackground(gradientDrawable2);
        }
    }

    @SimpleFunction(description = "Set padding to component")
    public void Padding(AndroidViewComponent androidViewComponent, int i, int i2, int i3, int i4) {
        androidViewComponent.getView().setPadding(i, i2, i3, i4);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @SimpleFunction(description = "Possible values \n\"BL_TR\", \"B_T\", \"BR_TL\", \"L_R\", \"RL\", \"TL_BR\", \"T_B\", \"TR_BL\"")
    public void Gradient(AndroidViewComponent androidViewComponent, YailList yailList, String str) {
        GradientDrawable gradientDrawable;
        View view = androidViewComponent.getView();
        if (view.getBackground() instanceof GradientDrawable) {
            gradientDrawable = (GradientDrawable) view.getBackground();
            int[] iArr = new int[yailList.size()];
            for (int i = 0; i < yailList.size(); i++) {
                iArr[i] = Integer.parseInt(yailList.getString(i));
            }
            str.getClass();
            switch (str) {
                case "RL":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.RIGHT_LEFT);
                    break;
                case "B_T":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.BOTTOM_TOP);
                    break;
                case "L_R":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
                    break;
                case "T_B":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
                    break;
                case "BL_TR":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.BL_TR);
                    break;
                case "BR_TL":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.BR_TL);
                    break;
                case "TL_BR":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.TL_BR);
                    break;
                case "TR_BL":
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.TR_BL);
                    break;
                default:
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.BOTTOM_TOP);
                    break;
            }
            gradientDrawable.setColors(iArr);
            view.setBackground(gradientDrawable);
            return;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        int[] iArr2 = new int[yailList.size()];
        for (int i2 = 0; i2 < yailList.size(); i2++) {
            iArr2[i2] = Integer.parseInt(yailList.getString(i2));
        }
        str.getClass();
        switch (str.hashCode()) {
            case 2618:
                if (str.equals("RL")) {
                    break;
                }
                break;
            case 66455:
                if (str.equals("B_T")) {
                    break;
                }
                break;
            case 76063:
                if (str.equals("L_R")) {
                    break;
                }
                break;
            case 83735:
                if (str.equals("T_B")) {
                    break;
                }
                break;
            case 63310483:
                if (str.equals("BL_TR")) {
                    break;
                }
                break;
            case 63489223:
                if (str.equals("BR_TL")) {
                    break;
                }
                break;
            case 79933303:
                if (str.equals("TL_BR")) {
                    break;
                }
                break;
            case 80112043:
                if (str.equals("TR_BL")) {
                    break;
                }
                break;
        }
        /*  JADX ERROR: Method code generation error
            java.lang.NullPointerException: Switch insn not found in header
            	at java.base/java.util.Objects.requireNonNull(Objects.java:259)
            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:298)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:277)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:410)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            */
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.NiotronBeautify.Gradient(com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.util.YailList, java.lang.String):void");
    }

    @SimpleFunction(description = "Sets margin in component")
    public void Margin(AndroidViewComponent androidViewComponent, int i, int i2, int i3, int i4) {
        View view = androidViewComponent.getView();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.setMargins(i, i2, i3, i4);
        view.setLayoutParams(layoutParams);
    }

    @SimpleFunction(description = "Rotates component")
    public void Rotate(AndroidViewComponent androidViewComponent, float f) {
        androidViewComponent.getView().setRotation(f);
    }

    @SimpleFunction(description = "Sets ripple in component")
    public void Ripple(AndroidViewComponent androidViewComponent, int i) {
        View view = androidViewComponent.getView();
        view.setClickable(true);
        view.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}}, new int[]{i}), view.getBackground(), null));
    }
}
