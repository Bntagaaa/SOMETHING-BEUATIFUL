package com.google.appinventor.components.runtime;

import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "View pager component for android lets you you add pagination in your app", iconName = "images/viewpager.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronViewPager extends AndroidViewComponent {
    private ViewPager pager;
    public ArrayList<View> pagerViews;

    public NiotronViewPager(ComponentContainer componentContainer) {
        super(componentContainer);
        this.pager = new ViewPager(componentContainer.$context());
        componentContainer.$add(this);
        this.pagerViews = new ArrayList<>();
        this.pager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.google.appinventor.components.runtime.NiotronViewPager.1
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
                NiotronViewPager.this.PageScrolled(i, f, i2);
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                NiotronViewPager.this.PageSelected(i);
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
                NiotronViewPager.this.ScrollStateChanged(i);
            }
        });
        Width(-2);
        Height(-2);
        Log.d("View Pager", "View Pager initialized");
    }

    @SimpleFunction(description = "Adds page to ViewPager. Accepts Visible components or the list of visible components")
    public void AddPage(Object obj) throws Resources.NotFoundException {
        if (obj instanceof AndroidViewComponent) {
            Log.d("View Pager", "AndroidViewComponent");
            View view = ((AndroidViewComponent) obj).getView();
            if (view.getVisibility() == 8) {
                Log.d("View Pager", "Was not visible");
                view.setVisibility(0);
            }
            ((ViewGroup) view.getParent()).removeView(view);
            this.pagerViews.add(view);
            this.pager.setAdapter(new MyPagerAdaper(this.pagerViews));
            return;
        }
        if (obj instanceof YailList) {
            YailList yailList = (YailList) obj;
            for (int i = 0; i < yailList.size(); i++) {
                if (yailList.getObject(i) instanceof AndroidViewComponent) {
                    View view2 = ((AndroidViewComponent) yailList.getObject(i)).getView();
                    if (view2.getVisibility() == 8) {
                        view2.setVisibility(0);
                    }
                    ((ViewGroup) view2.getParent()).removeView(view2);
                    this.pagerViews.add(view2);
                } else {
                    throw new YailRuntimeError("Every iten of the ViewPager should be either component or layout", "Invalid Input");
                }
            }
            ArrayList<View> arrayList = this.pagerViews;
            if (arrayList != null) {
                this.pager.setAdapter(new MyPagerAdaper(arrayList));
                return;
            }
            return;
        }
        throw new YailRuntimeError("The \"page\" parameter should be either component/layout or list of component/layout", "Invalid Input");
    }

    @SimpleFunction(description = "Removes a page from viewpager")
    public void RemovePage(Object obj) throws Resources.NotFoundException, NumberFormatException {
        if (obj instanceof YailList) {
            YailList yailList = (YailList) obj;
            for (int i = 0; i < yailList.size(); i++) {
                try {
                    int i2 = Integer.parseInt(yailList.getString(i));
                    this.pager.setAdapter(null);
                    this.pagerViews.remove(i2);
                } catch (Exception unused) {
                    throw new YailRuntimeError("List for removing page by index must be integer type", "Invalid Input");
                }
            }
            this.pager.setAdapter(new MyPagerAdaper(this.pagerViews));
            return;
        }
        try {
            int i3 = Integer.parseInt((String) obj);
            this.pager.setAdapter(null);
            this.pagerViews.remove(i3);
            this.pager.setAdapter(new MyPagerAdaper(this.pagerViews));
        } catch (Exception unused2) {
            throw new YailRuntimeError("Argument for removing page should be either a index or list of index", "Invalid Input");
        }
    }

    @SimpleFunction(description = "Set current page of the viewpager")
    public void SetCurrentPage(int i) throws Resources.NotFoundException {
        this.pager.setCurrentItem(i);
    }

    @SimpleProperty(description = "Returns the position of current page")
    public int CurrentPage() {
        return this.pager.getCurrentItem();
    }

    @SimpleEvent(description = "When viewpager page changes")
    public void PageSelected(int i) {
        EventDispatcher.dispatchEvent(this, "PageSelected", Integer.valueOf(i));
    }

    @SimpleEvent(description = "When viewpager page scrolls")
    public void PageScrolled(int i, float f, int i2) {
        EventDispatcher.dispatchEvent(this, "PageScrolled", Integer.valueOf(i), Float.valueOf(f), Integer.valueOf(i2));
    }

    @SimpleEvent(description = "Logs message")
    public void LogEvent(String str) {
        EventDispatcher.dispatchEvent(this, "LogEvent", str);
    }

    @SimpleEvent(description = "When page scroll state changes")
    public void ScrollStateChanged(int i) {
        EventDispatcher.dispatchEvent(this, "ScrollStateChanged", Integer.valueOf(i));
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.pager;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Height(i);
    }
}
