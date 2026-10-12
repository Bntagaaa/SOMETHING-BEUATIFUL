package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.AlignmentUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "A layout with ability to refresh on drag from top", iconName = "images/swiperefreshlayout.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "swiperefreshlayout.aar, swiperefreshlayout.jar")
@SimpleObject
/* loaded from: classes.dex */
public class NiotronSwipeRefreshLayout extends AndroidViewComponent implements Component, ComponentContainer {
    private static final String LOG_TAG = "MockSwipeRefreshLayout";
    private AlignmentUtil alignmentSetter;
    private List<Component> allChildren;
    private final Handler androidUIHandler;
    private int backgroundColor;
    private Drawable backgroundImageDrawable;
    private int contentPaddingBottom;
    private int contentPaddingLeft;
    private int contentPaddingRight;
    private int contentPaddingTop;
    private final Activity context;
    private Drawable defaultButtonDrawable;
    private int horizontalAlignment;
    private String imagePath;
    private final int orientation;
    private boolean scrollable;
    private int size;
    private SwipeRefreshLayout swLayout;
    private int verticalAlignment;
    private final LinearLayout viewLayout;

    public NiotronSwipeRefreshLayout(ComponentContainer componentContainer) throws IllegalArgumentException {
        super(componentContainer);
        this.scrollable = false;
        this.allChildren = new ArrayList();
        this.imagePath = "";
        this.androidUIHandler = new Handler();
        this.contentPaddingLeft = 5;
        this.contentPaddingTop = 5;
        this.contentPaddingRight = 5;
        this.contentPaddingBottom = 5;
        this.size = 1;
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
        SwipeRefreshLayout swipeRefreshLayout = new SwipeRefreshLayout(activity$context);
        this.swLayout = swipeRefreshLayout;
        swipeRefreshLayout.setLayoutParams(new ViewGroup.LayoutParams(100, 100));
        this.swLayout.addView(linearLayout.getLayoutManager(), new ViewGroup.LayoutParams(-1, -1));
        this.defaultButtonDrawable = getView().getBackground();
        componentContainer.$add(this);
        BackgroundColor(0);
        AddListener();
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
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSwipeRefreshLayout.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(NiotronSwipeRefreshLayout.LOG_TAG, "(HVArrangement)Width not stable yet... trying again");
                    NiotronSwipeRefreshLayout.this.setChildWidth(androidViewComponent, i, i2 + 1);
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
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSwipeRefreshLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(NiotronSwipeRefreshLayout.LOG_TAG, "(HVArrangement)Height not stable yet... trying again");
                    NiotronSwipeRefreshLayout.this.setChildHeight(androidViewComponent, i);
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
        return this.swLayout;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement's width is automatic.")
    public int AlignHorizontal() {
        return this.horizontalAlignment;
    }

    @SimpleProperty
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

    @SimpleProperty
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

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets if the layout is enabled or not")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.swLayout.setEnabled(z);
        updateAppearance();
    }

    @SimpleProperty(description = "")
    public boolean Enabled() {
        return this.swLayout.isEnabled();
    }

    @SimpleProperty(description = "")
    public void Refreshing(boolean z) {
        this.swLayout.setRefreshing(z);
        updateAppearance();
    }

    @SimpleProperty(description = "")
    public boolean Refreshing() {
        return this.swLayout.isRefreshing();
    }

    @SimpleProperty(description = "")
    public void NestedScrolling(boolean z) {
        this.swLayout.setNestedScrollingEnabled(z);
        updateAppearance();
    }

    @SimpleProperty(description = "")
    public boolean NestedScrolling() {
        return this.swLayout.isNestedScrollingEnabled();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void RefreshBarBackGroundColor(int i) {
        this.swLayout.setProgressBackgroundColorSchemeColor(i);
    }

    @SimpleEvent(description = "")
    public void OnPageRefresh() {
        EventDispatcher.dispatchEvent(this, "OnPageRefresh", new Object[0]);
    }

    private void AddListener() {
        this.swLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.google.appinventor.components.runtime.NiotronSwipeRefreshLayout.3
            public void onRefresh() {
                NiotronSwipeRefreshLayout.this.OnPageRefresh();
            }
        });
    }

    private void updateAppearance() {
        if (this.backgroundImageDrawable == null) {
            if (this.backgroundColor == 0) {
                ViewUtil.setBackgroundDrawable(this.viewLayout.getLayoutManager(), this.defaultButtonDrawable);
                return;
            } else {
                ViewUtil.setBackgroundDrawable(this.viewLayout.getLayoutManager(), null);
                this.viewLayout.getLayoutManager().setBackgroundColor(this.backgroundColor);
                return;
            }
        }
        ViewUtil.setBackgroundImage(this.viewLayout.getLayoutManager(), this.backgroundImageDrawable);
    }
}
