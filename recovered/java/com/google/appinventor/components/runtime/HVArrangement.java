package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.HorizontalAlignment;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.VerticalAlignment;
import com.google.appinventor.components.runtime.util.AlignmentUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@SimpleObject
/* loaded from: classes.dex */
public class HVArrangement extends AndroidViewComponent implements Component, ComponentContainer {
    private static final String LOG_TAG = "HVArrangement";
    private AlignmentUtil alignmentSetter;
    private List<Component> allChildren;
    private final Handler androidUIHandler;
    private int backgroundColor;
    private Drawable backgroundImageDrawable;
    private boolean clickable;
    private final Activity context;
    private Drawable defaultButtonDrawable;
    private ViewGroup frameContainer;
    private HorizontalAlignment horizontalAlignment;
    private String imagePath;
    private boolean longclickable;
    private final int orientation;
    private boolean scrollable;
    private int touchColor;
    private VerticalAlignment verticalAlignment;
    private final LinearLayout viewLayout;

    public HVArrangement(ComponentContainer componentContainer, int i, boolean z) {
        super(componentContainer);
        this.scrollable = false;
        this.horizontalAlignment = HorizontalAlignment.Left;
        this.verticalAlignment = VerticalAlignment.Top;
        this.imagePath = "";
        this.allChildren = new ArrayList();
        this.clickable = false;
        this.longclickable = false;
        this.androidUIHandler = new Handler();
        this.touchColor = 16777215;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.orientation = i;
        this.scrollable = z;
        LinearLayout linearLayout = new LinearLayout(activity$context, i, 100, 100);
        this.viewLayout = linearLayout;
        linearLayout.setBaselineAligned(false);
        AlignmentUtil alignmentUtil = new AlignmentUtil(linearLayout);
        this.alignmentSetter = alignmentUtil;
        alignmentUtil.setHorizontalAlignment(this.horizontalAlignment);
        this.alignmentSetter.setVerticalAlignment(this.verticalAlignment);
        if (!z) {
            Log.d(LOG_TAG, "Setting up frameContainer = FrameLayout()");
            this.frameContainer = new FrameLayout(activity$context);
        } else if (i == 0) {
            Log.d(LOG_TAG, "Setting up frameContainer = ScrollView()");
            this.frameContainer = new ScrollView(activity$context);
        } else if (i == 1) {
            Log.d(LOG_TAG, "Setting up frameContainer = HorizontalScrollView()");
            this.frameContainer = new HorizontalScrollView(activity$context);
        }
        this.frameContainer.setLayoutParams(new ViewGroup.LayoutParams(100, 100));
        this.frameContainer.addView(linearLayout.getLayoutManager(), new ViewGroup.LayoutParams(-1, -1));
        this.defaultButtonDrawable = getView().getBackground();
        componentContainer.$add(this);
        BackgroundColor(0);
        Clickable(false);
        LongClickable(false);
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
    public List<? extends Component> getChildren() {
        return this.allChildren;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(AndroidViewComponent androidViewComponent, int i) {
        setChildWidth(androidViewComponent, i, 0);
    }

    public void setChildWidth(final AndroidViewComponent androidViewComponent, final int i, final int i2) {
        int iWidth = this.container.$form().Width();
        if (iWidth == 0 && i2 < 2) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.HVArrangement.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(HVArrangement.LOG_TAG, "(HVArrangement)Width not stable yet... trying again");
                    HVArrangement.this.setChildWidth(androidViewComponent, i, i2 + 1);
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
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.HVArrangement.2
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(HVArrangement.LOG_TAG, "(HVArrangement)Height not stable yet... trying again");
                    HVArrangement.this.setChildHeight(androidViewComponent, i);
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

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.frameContainer;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement's width is automatic.")
    public int AlignHorizontal() {
        return AlignHorizontalAbstract().toUnderlyingValue().intValue();
    }

    public HorizontalAlignment AlignHorizontalAbstract() {
        return this.horizontalAlignment;
    }

    public void AlignHorizontalAbstract(HorizontalAlignment horizontalAlignment) {
        this.alignmentSetter.setHorizontalAlignment(horizontalAlignment);
        this.horizontalAlignment = horizontalAlignment;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_HORIZONTAL_ALIGNMENT)
    public void AlignHorizontal(@Options(HorizontalAlignment.class) int i) {
        HorizontalAlignment horizontalAlignmentFromUnderlyingValue = HorizontalAlignment.fromUnderlyingValue(Integer.valueOf(i));
        if (horizontalAlignmentFromUnderlyingValue == null) {
            this.container.$form().dispatchErrorOccurredEvent(this, "HorizontalAlignment", ErrorMessages.ERROR_BAD_VALUE_FOR_HORIZONTAL_ALIGNMENT, Integer.valueOf(i));
        } else {
            AlignHorizontalAbstract(horizontalAlignmentFromUnderlyingValue);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement's height is automatic.")
    public int AlignVertical() {
        return AlignVerticalAbstract().toUnderlyingValue().intValue();
    }

    public VerticalAlignment AlignVerticalAbstract() {
        return this.verticalAlignment;
    }

    public void AlignVerticalAbstract(VerticalAlignment verticalAlignment) {
        this.alignmentSetter.setVerticalAlignment(verticalAlignment);
        this.verticalAlignment = verticalAlignment;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_VERTICAL_ALIGNMENT)
    public void AlignVertical(@Options(VerticalAlignment.class) int i) {
        VerticalAlignment verticalAlignmentFromUnderlyingValue = VerticalAlignment.fromUnderlyingValue(Integer.valueOf(i));
        if (verticalAlignmentFromUnderlyingValue == null) {
            this.container.$form().dispatchErrorOccurredEvent(this, "VerticalAlignment", ErrorMessages.ERROR_BAD_VALUE_FOR_VERTICAL_ALIGNMENT, Integer.valueOf(i));
        } else {
            AlignVerticalAbstract(verticalAlignmentFromUnderlyingValue);
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
    public void Image(@Asset String str) {
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

    @SimpleEvent(description = "Layout clicked")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleEvent(description = "Layout long clicked")
    public void LongClick() {
        EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }

    private void updateAppearance() {
        if (this.backgroundImageDrawable == null) {
            if (this.backgroundColor == 0) {
                ViewUtil.setBackgroundDrawable(this.viewLayout.getLayoutManager(), this.defaultButtonDrawable);
            } else {
                ViewUtil.setBackgroundDrawable(this.viewLayout.getLayoutManager(), null);
                this.viewLayout.getLayoutManager().setBackgroundColor(this.backgroundColor);
            }
        } else {
            ViewUtil.setBackgroundImage(this.viewLayout.getLayoutManager(), this.backgroundImageDrawable);
        }
        if (this.touchColor != 16777215) {
            Drawable background = this.viewLayout.getLayoutManager().getBackground();
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
            this.viewLayout.getLayoutManager().setBackground(new RippleDrawable(ColorStateList.valueOf(this.touchColor), background, shapeDrawable));
        }
    }

    @SimpleProperty(description = "Specifies whether the layout should be long clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LongClickable(boolean z) {
        this.longclickable = z;
        this.frameContainer.setLongClickable(z);
        if (this.longclickable) {
            this.frameContainer.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.HVArrangement.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    HVArrangement.this.LongClick();
                    return true;
                }
            });
        } else {
            this.frameContainer.setOnLongClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the layout should be long clickable or not.")
    public boolean LongClickable() {
        return this.longclickable;
    }

    @SimpleProperty(description = "Specifies whether the layout should be clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Clickable(boolean z) {
        this.clickable = z;
        this.frameContainer.setClickable(z);
        if (this.clickable) {
            this.frameContainer.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.HVArrangement.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HVArrangement.this.Click();
                }
            });
        } else {
            this.frameContainer.setOnClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the layout should be clickable or not.")
    public boolean Clickable() {
        return this.clickable;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Specifies whether the layout should be full clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FullClickable(boolean z) {
        this.viewLayout.setFullClickable(z);
        if (z) {
            this.viewLayout.getLayoutManager().setClickable(true);
            this.viewLayout.getLayoutManager().setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.HVArrangement.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HVArrangement.this.Click();
                }
            });
        } else {
            this.viewLayout.getLayoutManager().setClickable(false);
            this.viewLayout.getLayoutManager().setOnClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TouchColor(int i) {
        this.touchColor = i;
        if (i == 16777215) {
            updateAppearance();
            return;
        }
        Drawable background = this.viewLayout.getLayoutManager().getBackground();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
        this.viewLayout.getLayoutManager().setBackground(new RippleDrawable(ColorStateList.valueOf(i), background, shapeDrawable));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets elevation to layout")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Elevation(float f) {
        this.frameContainer.setOutlineProvider(ViewOutlineProvider.PADDED_BOUNDS);
        this.frameContainer.setElevation(f);
    }

    @SimpleProperty(description = "")
    public float Elevation() {
        return this.frameContainer.getElevation();
    }
}
