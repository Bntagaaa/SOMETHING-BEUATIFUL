package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "<p>A formatting element in which to place components that should be displayed in tabular form.</p>", iconName = "images/table.png", version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class TableArrangement extends AndroidViewComponent implements Component, ComponentContainer {
    private List<Component> allChildren;
    private final Activity context;
    private final TableLayout viewLayout;

    public TableArrangement(ComponentContainer componentContainer) {
        super(componentContainer);
        this.allChildren = new ArrayList();
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.viewLayout = new TableLayout(activity$context, 2, 2);
        componentContainer.$add(this);
    }

    @SimpleProperty(userVisible = false)
    public int Columns() {
        return this.viewLayout.getNumColumns();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "2", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Columns(int i) {
        this.viewLayout.setNumColumns(i);
    }

    @SimpleProperty(userVisible = false)
    public int Rows() {
        return this.viewLayout.getNumRows();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "2", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Rows(int i) {
        this.viewLayout.setNumRows(i);
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
        System.err.println("TableArrangment.setChildWidth: width = " + i + " component = " + androidViewComponent);
        if (i <= -1000) {
            int iWidth = this.container.$form().Width();
            if (iWidth <= -1000 || iWidth > 0) {
                PrintStream printStream = System.err;
                StringBuilder sbN = _COROUTINE.a.n(i, iWidth, "%%TableArrangement.setChildWidth(): width = ", " parent Width = ", " child = ");
                sbN.append(androidViewComponent);
                printStream.println(sbN.toString());
                i = (iWidth * (-(i + 1000))) / 100;
            } else {
                i = -1;
            }
        }
        androidViewComponent.setLastWidth(i);
        ViewUtil.setChildWidthForTableLayout(androidViewComponent.getView(), i);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(AndroidViewComponent androidViewComponent, int i) {
        if (i <= -1000) {
            int iHeight = this.container.$form().Height();
            i = (iHeight <= -1000 || iHeight > 0) ? (iHeight * (-(i + 1000))) / 100 : -1;
        }
        androidViewComponent.setLastHeight(i);
        ViewUtil.setChildHeightForTableLayout(androidViewComponent.getView(), i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.viewLayout.getLayoutManager();
    }
}
