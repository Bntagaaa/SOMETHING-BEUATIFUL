package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;

/* loaded from: classes.dex */
public class ShareActionProvider extends ActionProvider {
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
    public final int d;
    public final b e;
    public final Context f;

    /* renamed from: g, reason: collision with root package name */
    public String f419g;
    public OnShareTargetSelectedListener h;
    public ActivityChooserModel.OnChooseActivityListener i;

    public interface OnShareTargetSelectedListener {
        boolean onShareTargetSelected(ShareActionProvider shareActionProvider, Intent intent);
    }

    @Override // androidx.core.view.ActionProvider
    public boolean hasSubMenu() {
        return true;
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.d = 4;
        this.e = new b();
        this.f419g = DEFAULT_SHARE_HISTORY_FILE_NAME;
        this.f = context;
    }

    public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener onShareTargetSelectedListener) {
        this.h = onShareTargetSelectedListener;
        if (onShareTargetSelectedListener == null) {
            return;
        }
        if (this.i == null) {
            this.i = new a();
        }
        ActivityChooserModel.get(this.f, this.f419g).setOnChooseActivityListener(this.i);
    }

    @Override // androidx.core.view.ActionProvider
    public View onCreateActionView() {
        Context context = this.f;
        ActivityChooserView activityChooserView = new ActivityChooserView(context);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(ActivityChooserModel.get(context, this.f419g));
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.getDrawable(context, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(R.string.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // androidx.core.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        b bVar;
        subMenu.clear();
        String str = this.f419g;
        Context context = this.f;
        ActivityChooserModel activityChooserModel = ActivityChooserModel.get(context, str);
        PackageManager packageManager = context.getPackageManager();
        int activityCount = activityChooserModel.getActivityCount();
        int iMin = Math.min(activityCount, this.d);
        int i = 0;
        while (true) {
            bVar = this.e;
            if (i >= iMin) {
                break;
            }
            ResolveInfo activity = activityChooserModel.getActivity(i);
            subMenu.add(0, i, i, activity.loadLabel(packageManager)).setIcon(activity.loadIcon(packageManager)).setOnMenuItemClickListener(bVar);
            i++;
        }
        if (iMin < activityCount) {
            SubMenu subMenuAddSubMenu = subMenu.addSubMenu(0, iMin, iMin, context.getString(R.string.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < activityCount; i2++) {
                ResolveInfo activity2 = activityChooserModel.getActivity(i2);
                subMenuAddSubMenu.add(0, i2, i2, activity2.loadLabel(packageManager)).setIcon(activity2.loadIcon(packageManager)).setOnMenuItemClickListener(bVar);
            }
        }
    }

    public void setShareHistoryFileName(String str) {
        this.f419g = str;
        if (this.h == null) {
            return;
        }
        if (this.i == null) {
            this.i = new a();
        }
        ActivityChooserModel.get(this.f, str).setOnChooseActivityListener(this.i);
    }

    public void setShareIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                intent.addFlags(134742016);
            }
        }
        ActivityChooserModel.get(this.f, this.f419g).setIntent(intent);
    }

    public class b implements MenuItem.OnMenuItemClickListener {
        public b() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            Intent intentChooseActivity = ActivityChooserModel.get(shareActionProvider.f, shareActionProvider.f419g).chooseActivity(menuItem.getItemId());
            if (intentChooseActivity == null) {
                return true;
            }
            String action = intentChooseActivity.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                shareActionProvider.getClass();
                intentChooseActivity.addFlags(134742016);
            }
            shareActionProvider.f.startActivity(intentChooseActivity);
            return true;
        }
    }

    public class a implements ActivityChooserModel.OnChooseActivityListener {
        public a() {
        }

        @Override // androidx.appcompat.widget.ActivityChooserModel.OnChooseActivityListener
        public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            OnShareTargetSelectedListener onShareTargetSelectedListener = shareActionProvider.h;
            if (onShareTargetSelectedListener == null) {
                return false;
            }
            onShareTargetSelectedListener.onShareTargetSelected(shareActionProvider, intent);
            return false;
        }
    }
}
