package com.google.appinventor.components.runtime;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.AlignmentUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "A layout with a rounded corner background and shadow.", iconName = "images/cardview.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NiotronCardView extends AndroidViewComponent implements Component, ComponentContainer {
    private static final String LOG_TAG = "CardView";
    private AlignmentUtil alignmentSetter;
    private List<Component> allChildren;
    private final Handler androidUIHandler;
    private int backgroundColor;
    private Drawable backgroundImageDrawable;
    private CardViewUtil cardContainer;
    private boolean clickable;
    private int contentPaddingBottom;
    private int contentPaddingLeft;
    private int contentPaddingRight;
    private int contentPaddingTop;
    private final Activity context;
    private Drawable defaultDrawable;
    private int elevation;
    private boolean fullclickable;
    private int horizontalAlignment;
    private String imagePath;
    private boolean longclickable;
    private final int orientation;
    private int paddingBottom2;
    private int paddingLeft2;
    private int paddingRight2;
    private int paddingTop2;
    private int rippleColor;
    private boolean rippleEnabled;
    private boolean scrollable;
    private int verticalAlignment;
    private final LinearLayout viewLayout;

    public NiotronCardView(ComponentContainer componentContainer) throws IllegalArgumentException {
        super(componentContainer);
        this.scrollable = false;
        this.allChildren = new ArrayList();
        this.imagePath = "";
        this.androidUIHandler = new Handler();
        this.contentPaddingLeft = 5;
        this.contentPaddingTop = 5;
        this.contentPaddingRight = 5;
        this.contentPaddingBottom = 5;
        this.rippleColor = Component.COLOR_LTGRAY;
        this.clickable = false;
        this.longclickable = false;
        this.fullclickable = false;
        this.elevation = 2;
        this.paddingLeft2 = 0;
        this.paddingTop2 = 0;
        this.paddingRight2 = 0;
        this.paddingBottom2 = 0;
        this.rippleEnabled = true;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.orientation = 0;
        LinearLayout linearLayout = new LinearLayout(activity$context, 0, 100, 100);
        this.viewLayout = linearLayout;
        linearLayout.setBaselineAligned(false);
        AlignmentUtil alignmentUtil = new AlignmentUtil(linearLayout);
        this.alignmentSetter = alignmentUtil;
        this.horizontalAlignment = 1;
        this.verticalAlignment = 1;
        alignmentUtil.setHorizontalAlignment(1);
        this.alignmentSetter.setVerticalAlignment(this.verticalAlignment);
        this.cardContainer = new CardViewUtil(activity$context);
        this.cardContainer.setLayoutParams(new LinearLayout.LayoutParams(100, 100));
        this.cardContainer.requestLayout();
        this.cardContainer.addView(linearLayout.getLayoutManager(), new ViewGroup.LayoutParams(-1, -1));
        this.defaultDrawable = this.cardContainer.getBackground();
        componentContainer.$add(this);
        BackgroundColor(0);
        Clickable(false);
        LongClickable(false);
        FullClickable(false);
        Radius(3);
        ContentPaddingLeft(5);
        ContentPaddingRight(5);
        ContentPaddingTop(5);
        ContentPaddingBottom(5);
        Elevation(2);
        CornerOverlap(true);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Activity $context() {
        return this.context;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Form $form() {
        return this.container.$form();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void $add(AndroidViewComponent androidViewComponent) {
        this.viewLayout.add(androidViewComponent);
        this.allChildren.add(androidViewComponent);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(AndroidViewComponent androidViewComponent, int i) {
        setChildWidth(androidViewComponent, i, 0);
    }

    public void setChildWidth(final AndroidViewComponent androidViewComponent, final int i, final int i2) {
        int iWidth = this.container.$form().Width();
        if (iWidth == 0 && i2 < 2) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronCardView.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(NiotronCardView.LOG_TAG, "(HVArrangement)Width not stable yet... trying again");
                    NiotronCardView.this.setChildWidth(androidViewComponent, i, i2 + 1);
                }
            }, 100L);
        }
        if (i <= -1000) {
            StringBuilder sbN = _COROUTINE.a.n(i, iWidth, "HVArrangement.setChildWidth(): width = ", " parent Width = ", " child = ");
            sbN.append(androidViewComponent);
            Log.d(LOG_TAG, sbN.toString());
            i = (iWidth * (-(i + 1000))) / 100;
        }
        androidViewComponent.setLastWidth(i);
        if (this.orientation == 1) {
            ViewUtil.setChildWidthForHorizontalLayout(androidViewComponent.getView(), i);
        } else {
            ViewUtil.setChildWidthForVerticalLayout(androidViewComponent.getView(), i);
        }
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(final AndroidViewComponent androidViewComponent, final int i) {
        int iHeight = this.container.$form().Height();
        if (iHeight == 0) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronCardView.2
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(NiotronCardView.LOG_TAG, "(HVArrangement)Height not stable yet... trying again");
                    NiotronCardView.this.setChildHeight(androidViewComponent, i);
                }
            }, 100L);
        }
        if (i <= -1000) {
            i = (iHeight * (-(i + 1000))) / 100;
        }
        androidViewComponent.setLastHeight(i);
        if (this.orientation == 1) {
            ViewUtil.setChildHeightForHorizontalLayout(androidViewComponent.getView(), i);
        } else {
            ViewUtil.setChildHeightForVerticalLayout(androidViewComponent.getView(), i);
        }
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public List<? extends Component> getChildren() {
        return this.allChildren;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.cardContainer;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement's width is automatic.")
    public int AlignHorizontal() {
        return this.horizontalAlignment;
    }

    @SimpleProperty(description = "Alignment horizontal")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_HORIZONTAL_ALIGNMENT)
    public void AlignHorizontal(int i) {
        try {
            this.alignmentSetter.setHorizontalAlignment(i);
            this.horizontalAlignment = i;
        } catch (IllegalArgumentException unused) {
            this.container.$form().dispatchErrorOccurredEvent(this, "HorizontalAlignment", ErrorMessages.ERROR_BAD_VALUE_FOR_HORIZONTAL_ALIGNMENT, Integer.valueOf(i));
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement's height is automatic.")
    public int AlignVertical() {
        return this.verticalAlignment;
    }

    @SimpleProperty(description = "Align vertical")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_VERTICAL_ALIGNMENT)
    public void AlignVertical(int i) {
        try {
            this.alignmentSetter.setVerticalAlignment(i);
            this.verticalAlignment = i;
        } catch (IllegalArgumentException unused) {
            this.container.$form().dispatchErrorOccurredEvent(this, "VerticalAlignment", ErrorMessages.ERROR_BAD_VALUE_FOR_VERTICAL_ALIGNMENT, Integer.valueOf(i));
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the background color of the %type%")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        updateAppearance();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Image() {
        return this.imagePath;
    }

    @SimpleProperty(description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Image(String str) {
        if (!str.equals(this.imagePath) || this.backgroundImageDrawable == null) {
            this.imagePath = str;
            this.backgroundImageDrawable = null;
            if (str.length() > 0) {
                try {
                    this.backgroundImageDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), this.imagePath);
                } catch (IOException unused) {
                }
            }
            updateAppearance();
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets elevation to cardview")
    @DesignerProperty(defaultValue = "2", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Elevation(int i) {
        int iPx = px(i);
        this.elevation = iPx;
        float f = iPx;
        this.cardContainer.setCardElevation(f);
        this.cardContainer.setMaxCardElevation(f);
    }

    @SimpleProperty(description = "Sets the elevation")
    public int Elevation() {
        return dp((int) this.cardContainer.getCardElevation());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets content padding to left of cardview")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void ContentPaddingLeft(int i) {
        int iPx = px(i);
        this.contentPaddingLeft = iPx;
        this.cardContainer.setContentPadding(iPx, this.contentPaddingTop, this.contentPaddingRight, this.contentPaddingBottom);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "content padding to left of cardview")
    public int ContentPaddingLeft() {
        return this.cardContainer.getContentPaddingLeft();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets content padding to top of cardview")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void ContentPaddingTop(int i) {
        int iPx = px(i);
        this.contentPaddingTop = iPx;
        this.cardContainer.setContentPadding(this.contentPaddingLeft, iPx, this.contentPaddingRight, this.contentPaddingBottom);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "content padding to top of cardview")
    public int ContentPaddingTop() {
        return this.cardContainer.getContentPaddingTop();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets content padding to right of cardview")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void ContentPaddingRight(int i) {
        int iPx = px(i);
        this.contentPaddingRight = iPx;
        this.cardContainer.setContentPadding(this.contentPaddingLeft, this.contentPaddingTop, iPx, this.contentPaddingBottom);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "content padding to right of cardview")
    public int ContentPaddingRight() {
        return this.cardContainer.getContentPaddingRight();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets content padding to bottom of cardview")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void ContentPaddingBottom(int i) {
        int iPx = px(i);
        this.contentPaddingBottom = iPx;
        this.cardContainer.setContentPadding(this.contentPaddingLeft, this.contentPaddingTop, this.contentPaddingRight, iPx);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "content padding to bottom of cardview")
    public int ContentPaddingBottom() {
        return this.cardContainer.getContentPaddingBottom();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingTop(int i) {
        this.paddingTop2 = i;
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Radding right")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingRight(int i) {
        this.paddingRight2 = i;
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Padding left")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingLeft(int i) {
        this.paddingLeft2 = i;
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Padding bottom")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingBottom(int i) {
        this.paddingBottom2 = i;
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleFunction(description = "Method for setting padding", userVisible = false)
    public void SetPadding(int i, int i2, int i3, int i4) {
        this.paddingTop2 = i;
        this.paddingBottom2 = i2;
        this.paddingRight2 = i3;
        this.paddingLeft2 = i4;
        refreshPadding();
    }

    private void refreshPadding() {
        this.cardContainer.setContentPadding(px(this.paddingLeft2), px(this.paddingTop2), px(this.paddingRight2), px(this.paddingBottom2));
        this.cardContainer.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets radius to cardview")
    @DesignerProperty(defaultValue = "3", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Radius(int i) {
        this.cardContainer.setRadius(px(i));
        this.cardContainer.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets radius to cardview")
    @DesignerProperty(defaultValue = "3", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    @Deprecated
    public void Radious(int i) {
        this.cardContainer.setRadius(px(i));
        this.cardContainer.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Enables/Disables ripple")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void RippleEnabled(boolean z) {
        this.rippleEnabled = z;
        if (!z) {
            this.cardContainer.setRippleColor(new ColorStateList(new int[][]{new int[0]}, new int[]{0}));
        } else {
            this.cardContainer.setRippleColor(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}}, new int[]{this.rippleColor}));
        }
        this.cardContainer.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets ripple color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_LTGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void RippleColor(int i) {
        this.rippleColor = i;
        if (this.rippleEnabled) {
            this.cardContainer.setRippleColor(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}}, new int[]{this.rippleColor}));
            this.cardContainer.invalidate();
        }
    }

    @SimpleProperty(description = "Radius of cardview")
    public int Radius() {
        return dp((int) this.cardContainer.getRadius());
    }

    @SimpleProperty(description = "Radius of cardview")
    @Deprecated
    public int Radious() {
        return dp((int) this.cardContainer.getRadius());
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "On pre-Lollipop platforms, CardView does not clip the bounds of the Card for the rounded corners.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void CornerOverlap(boolean z) {
        this.cardContainer.setPreventCornerOverlap(z);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "corner overlap")
    public boolean CornerOverlap() {
        return this.cardContainer.getPreventCornerOverlap();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Enable this property to make your card view look more realistic, it sets card margin according to elevation")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void CompatPadding(boolean z) {
        this.cardContainer.setUseCompatPadding(z);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "corner overlap")
    public boolean CompatPadding() {
        return this.cardContainer.getUseCompatPadding();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set Stroke Width Of CardView")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void StrokeWidth(int i) {
        this.cardContainer.setStrokeWidth(i);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "Get Stroke Width Of CardView")
    public int StrokeWidth() {
        return this.cardContainer.getStrokeWidth();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set Stroke Color Of CardView")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void StrokeColor(int i) {
        this.cardContainer.setStrokeColor(i);
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "Get Stroke Color Of CardView")
    public int StrokeColor() {
        return this.cardContainer.getStrokeColor();
    }

    @SimpleProperty(description = "Set Shadow Color Of CardView, Works Only Above SDK 28")
    public void ShadowColor(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.cardContainer.setOutlineAmbientShadowColor(i);
            this.cardContainer.setOutlineSpotShadowColor(i);
            this.cardContainer.invalidate();
        }
    }

    @SimpleProperty(description = "Get Stroke Color Of CardView")
    public int ShadowColor() {
        return Build.VERSION.SDK_INT >= 29 ? this.cardContainer.getOutlineSpotShadowColor() : Component.COLOR_GRAY;
    }

    @SimpleEvent(description = "Triggers when card clicked")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when card long clicked")
    public void LongClick() {
        EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }

    private void updateAppearance() {
        Drawable drawable = this.backgroundImageDrawable;
        if (drawable == null) {
            int i = this.backgroundColor;
            if (i != 0) {
                this.cardContainer.setCardBackgroundColor(i);
            } else {
                this.cardContainer.setCardBackgroundColor(-1);
            }
        } else {
            this.cardContainer.setBackground(drawable);
        }
        this.cardContainer.invalidate();
    }

    @SimpleProperty(description = "Specifies whether the card should be full clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FullClickable(boolean z) {
        this.fullclickable = z;
        if (z) {
            this.cardContainer.setClickable(true);
            this.cardContainer.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCardView.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NiotronCardView.this.Click();
                }
            });
        } else {
            if (this.clickable) {
                return;
            }
            this.cardContainer.setClickable(false);
            this.cardContainer.setOnClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the card should be full clickable or not.")
    public boolean FullClickable() {
        return this.fullclickable;
    }

    @SimpleProperty(description = "Specifies whether the image should be long clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LongClickable(boolean z) {
        this.longclickable = z;
        this.cardContainer.setLongClickable(z);
        if (this.longclickable) {
            this.cardContainer.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCardView.4
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    NiotronCardView.this.LongClick();
                    return true;
                }
            });
        } else {
            this.cardContainer.setOnLongClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be long clickable or not.")
    public boolean LongClickable() {
        return this.longclickable;
    }

    @SimpleProperty(description = "Specifies whether the image should be clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Clickable(boolean z) {
        this.clickable = z;
        this.cardContainer.setClickable(z);
        if (this.clickable) {
            this.cardContainer.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCardView.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NiotronCardView.this.Click();
                }
            });
        } else {
            this.cardContainer.setOnClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be clickable or not.")
    public boolean Clickable() {
        return this.clickable;
    }

    public class CardViewUtil extends MaterialCardView {
        public CardViewUtil(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return NiotronCardView.this.fullclickable;
        }
    }
}
