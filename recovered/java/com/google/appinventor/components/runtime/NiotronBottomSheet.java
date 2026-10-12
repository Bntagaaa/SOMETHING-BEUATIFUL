package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "", iconName = "images/bottomsheet.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NiotronBottomSheet extends AndroidNonvisibleComponent implements Component {
    private int backgroundColor;
    private ComponentContainer container;
    private final Context context;
    private int cornerRadius;
    private BottomSheetDialog mBottomSheet;
    private boolean mCancelabOnOutSideTouch;
    private boolean mCancelable;
    private View mView;

    public NiotronBottomSheet(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.mCancelable = true;
        this.mCancelabOnOutSideTouch = true;
        this.backgroundColor = -1;
        this.cornerRadius = 0;
        this.container = componentContainer;
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Initializes the provided Component/Layout as BottomSheet")
    public void InitializeDialog(AndroidViewComponent androidViewComponent) {
        try {
            View view = androidViewComponent.getView();
            this.mView = view;
            ((ViewGroup) view.getParent()).removeView(this.mView);
            BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this.context);
            this.mBottomSheet = bottomSheetDialog;
            bottomSheetDialog.setContentView(this.mView);
            SetListener();
        } catch (Exception unused) {
        }
    }

    @SimpleEvent(description = "Triggeres when BottomSheet opened")
    public void BottomSheetOpened() {
        EventDispatcher.dispatchEvent(this, "BottomSheetOpened", new Object[0]);
    }

    @SimpleEvent(description = "Triggeres when BottomSheet dismissed")
    public void BottomSheetDismissed() {
        EventDispatcher.dispatchEvent(this, "BottomSheetDismissed", new Object[0]);
    }

    @SimpleEvent(description = "Triggeres when BottomSheet canceled")
    public void BottomSheetCanceled() {
        EventDispatcher.dispatchEvent(this, "BottomSheetCanceled", new Object[0]);
    }

    @SimpleFunction(description = "Shows the bottomsheet")
    public void ShowDialog() {
        BottomSheetDialog bottomSheetDialog = this.mBottomSheet;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.show();
        }
    }

    @SimpleFunction(description = "Hides the bottomsheet")
    public void HideDialog() {
        BottomSheetDialog bottomSheetDialog = this.mBottomSheet;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.dismiss();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Makes the dialog cancleable")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Cancelable(boolean z) {
        BottomSheetDialog bottomSheetDialog = this.mBottomSheet;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.setCancelable(z);
        }
    }

    @SimpleProperty(description = "Returns if the dialog cancleable")
    public boolean Cancelable() {
        if (this.mBottomSheet != null) {
            return this.mCancelable;
        }
        return true;
    }

    @SimpleProperty(description = "Makes the dialog cancleable when touvhed outside of the dialog")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void CancelOnOutsideTouch(boolean z) {
        BottomSheetDialog bottomSheetDialog = this.mBottomSheet;
        if (bottomSheetDialog != null) {
            this.mCancelabOnOutSideTouch = true;
            bottomSheetDialog.setCanceledOnTouchOutside(z);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies the background color of the bottom sheet")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
    }

    @SimpleProperty(description = "Returns the background color of the bottom sheet")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies the corner radius of the bottom sheet")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void CornerRadius(int i) {
        this.cornerRadius = i;
    }

    @SimpleProperty(description = "Returns the  corner radius of the bottom sheet")
    public int CornerRadius() {
        return this.cornerRadius;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the dialog cancleable when touvhed outside of the dialog")
    public boolean CancelOnOutsideTouch() {
        if (this.mBottomSheet != null) {
            return this.mCancelabOnOutSideTouch;
        }
        return true;
    }

    @SimpleProperty(description = "Returns the dialog cancleable when touvhed outside of the dialog")
    public boolean isShowing() {
        BottomSheetDialog bottomSheetDialog = this.mBottomSheet;
        if (bottomSheetDialog != null) {
            return bottomSheetDialog.isShowing();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAppearance() {
        if (this.mView != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadii(new float[]{px(this.cornerRadius), px(this.cornerRadius), px(this.cornerRadius), px(this.cornerRadius), 0.0f, 0.0f, 0.0f, 0.0f});
            gradientDrawable.setColor(this.backgroundColor);
            ((ViewGroup) this.mView.getParent()).setBackground(gradientDrawable);
            ((ViewGroup) this.mView.getParent()).setPadding(0, px(this.cornerRadius), 0, 0);
        }
    }

    private int px(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    private void SetListener() {
        this.mBottomSheet.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomSheet.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                NiotronBottomSheet.this.BottomSheetOpened();
                NiotronBottomSheet.this.updateAppearance();
            }
        });
        this.mBottomSheet.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomSheet.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                NiotronBottomSheet.this.BottomSheetCanceled();
            }
        });
        this.mBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomSheet.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                NiotronBottomSheet.this.BottomSheetDismissed();
            }
        });
    }
}
