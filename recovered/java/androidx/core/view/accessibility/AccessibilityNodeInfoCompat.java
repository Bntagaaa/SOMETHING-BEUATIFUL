package androidx.core.view.accessibility;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.os.BuildCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";

    @SuppressLint({"ActionValue"})
    public static final String ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH";
    public static final int EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH = 20000;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY";
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    public static int c;

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo f1380a;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mParentVirtualDescendantId = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f1381b = -1;

    @Deprecated
    public void recycle() {
    }

    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_CANCEL;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_DROP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_START;
        public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_IME_ENTER;
        public static final AccessibilityActionCompat ACTION_MOVE_WINDOW;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_DOWN;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_LEFT;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_RIGHT;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_UP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PRESS_AND_HOLD;
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
        public static final AccessibilityActionCompat ACTION_SCROLL_UP;
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;

        @NonNull
        public static final AccessibilityActionCompat ACTION_SHOW_TEXT_SUGGESTIONS;
        public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP;

        /* renamed from: a, reason: collision with root package name */
        public final Object f1382a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1383b;
        public final Class c;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected final AccessibilityViewCommand mCommand;
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(AccessibilityViewCommand.MoveAtGranularityArguments.class, 256);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(AccessibilityViewCommand.MoveAtGranularityArguments.class, 512);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(AccessibilityViewCommand.MoveHtmlArguments.class, 1024);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(AccessibilityViewCommand.MoveHtmlArguments.class, 2048);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(AccessibilityViewCommand.SetSelectionArguments.class, 131072);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, (CharSequence) null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(AccessibilityViewCommand.SetTextArguments.class, 2097152);

        static {
            int i = Build.VERSION.SDK_INT;
            ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
            ACTION_SCROLL_UP = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            ACTION_SCROLL_LEFT = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            ACTION_SCROLL_DOWN = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            ACTION_PAGE_UP = new AccessibilityActionCompat(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            ACTION_PAGE_DOWN = new AccessibilityActionCompat(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            ACTION_PAGE_LEFT = new AccessibilityActionCompat(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            ACTION_PAGE_RIGHT = new AccessibilityActionCompat(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            ACTION_SET_PROGRESS = new AccessibilityActionCompat(i >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, AccessibilityViewCommand.SetProgressArguments.class);
            ACTION_MOVE_WINDOW = new AccessibilityActionCompat(i >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
            ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            ACTION_PRESS_AND_HOLD = new AccessibilityActionCompat(i >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            ACTION_IME_ENTER = new AccessibilityActionCompat(i >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
            ACTION_DRAG_START = new AccessibilityActionCompat(i >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
            ACTION_DRAG_DROP = new AccessibilityActionCompat(i >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
            ACTION_DRAG_CANCEL = new AccessibilityActionCompat(i >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
            ACTION_SHOW_TEXT_SUGGESTIONS = new AccessibilityActionCompat(i >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public AccessibilityActionCompat(int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            this(null, i, charSequence, accessibilityViewCommand, null);
        }

        public AccessibilityActionCompat(Class cls, int i) {
            this(null, i, null, null, cls);
        }

        public AccessibilityActionCompat(Object obj, int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class cls) {
            this.f1383b = i;
            this.mCommand = accessibilityViewCommand;
            if (obj == null) {
                this.f1382a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            } else {
                this.f1382a = obj;
            }
            this.c = cls;
        }

        public int getId() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f1382a).getId();
        }

        public CharSequence getLabel() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f1382a).getLabel();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean perform(View view, Bundle bundle) {
            AccessibilityViewCommand.CommandArguments commandArguments;
            if (this.mCommand == null) {
                return false;
            }
            Class cls = this.c;
            AccessibilityViewCommand.CommandArguments commandArguments2 = null;
            if (cls != null) {
                try {
                    commandArguments = (AccessibilityViewCommand.CommandArguments) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e) {
                    e = e;
                }
                try {
                    commandArguments.setBundle(bundle);
                    commandArguments2 = commandArguments;
                } catch (Exception e2) {
                    e = e2;
                    commandArguments2 = commandArguments;
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls == null ? "null" : cls.getName()), e);
                    return this.mCommand.perform(view, commandArguments2);
                }
            }
            return this.mCommand.perform(view, commandArguments2);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public AccessibilityActionCompat createReplacementAction(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.f1383b, charSequence, accessibilityViewCommand, this.c);
        }

        public int hashCode() {
            Object obj = this.f1382a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof AccessibilityActionCompat)) {
                return false;
            }
            Object obj2 = ((AccessibilityActionCompat) obj).f1382a;
            Object obj3 = this.f1382a;
            return obj3 == null ? obj2 == null : obj3.equals(obj2);
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
            String strB = AccessibilityNodeInfoCompat.b(this.f1383b);
            if (strB.equals("ACTION_UNKNOWN") && getLabel() != null) {
                strB = getLabel().toString();
            }
            sb.append(strB);
            return sb.toString();
        }
    }

    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityNodeInfo.CollectionInfo f1384a;

        public static CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
        }

        public CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo collectionInfo) {
            this.f1384a = collectionInfo;
        }

        public int getColumnCount() {
            return this.f1384a.getColumnCount();
        }

        public int getRowCount() {
            return this.f1384a.getRowCount();
        }

        public boolean isHierarchical() {
            return this.f1384a.isHierarchical();
        }

        public int getSelectionMode() {
            return this.f1384a.getSelectionMode();
        }
    }

    public static class CollectionItemInfoCompat {

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityNodeInfo.CollectionItemInfo f1385a;

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }

        public CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo) {
            this.f1385a = collectionItemInfo;
        }

        public int getColumnIndex() {
            return this.f1385a.getColumnIndex();
        }

        public int getColumnSpan() {
            return this.f1385a.getColumnSpan();
        }

        public int getRowIndex() {
            return this.f1385a.getRowIndex();
        }

        public int getRowSpan() {
            return this.f1385a.getRowSpan();
        }

        @Deprecated
        public boolean isHeading() {
            return this.f1385a.isHeading();
        }

        public boolean isSelected() {
            return this.f1385a.isSelected();
        }
    }

    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityNodeInfo.RangeInfo f1386a;

        public static RangeInfoCompat obtain(int i, float f, float f2, float f3) {
            return new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3));
        }

        public RangeInfoCompat(AccessibilityNodeInfo.RangeInfo rangeInfo) {
            this.f1386a = rangeInfo;
        }

        public float getCurrent() {
            return this.f1386a.getCurrent();
        }

        public float getMax() {
            return this.f1386a.getMax();
        }

        public float getMin() {
            return this.f1386a.getMin();
        }

        public int getType() {
            return this.f1386a.getType();
        }
    }

    public static final class TouchDelegateInfoCompat {

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityNodeInfo.TouchDelegateInfo f1387a;

        public TouchDelegateInfoCompat(@NonNull Map<Region, View> map) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f1387a = d.j(map);
            } else {
                this.f1387a = null;
            }
        }

        public TouchDelegateInfoCompat(AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo) {
            this.f1387a = touchDelegateInfo;
        }

        @IntRange(from = 0)
        public int getRegionCount() {
            if (Build.VERSION.SDK_INT >= 29) {
                return this.f1387a.getRegionCount();
            }
            return 0;
        }

        @Nullable
        public Region getRegionAt(@IntRange(from = 0) int i) {
            if (Build.VERSION.SDK_INT >= 29) {
                return this.f1387a.getRegionAt(i);
            }
            return null;
        }

        @Nullable
        public AccessibilityNodeInfoCompat getTargetForRegion(@NonNull Region region) {
            AccessibilityNodeInfo targetForRegion;
            if (Build.VERSION.SDK_INT < 29 || (targetForRegion = this.f1387a.getTargetForRegion(region)) == null) {
                return null;
            }
            return AccessibilityNodeInfoCompat.wrap(targetForRegion);
        }
    }

    public static AccessibilityNodeInfoCompat e(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo != null) {
            return new AccessibilityNodeInfoCompat((Object) accessibilityNodeInfo);
        }
        return null;
    }

    @Deprecated
    public AccessibilityNodeInfoCompat(Object obj) {
        this.f1380a = (AccessibilityNodeInfo) obj;
    }

    public AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1380a = accessibilityNodeInfo;
    }

    public static AccessibilityNodeInfoCompat wrap(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    public AccessibilityNodeInfo unwrap() {
        return this.f1380a;
    }

    @Deprecated
    public Object getInfo() {
        return this.f1380a;
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return wrap(AccessibilityNodeInfo.obtain(view));
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i) {
        return e(AccessibilityNodeInfo.obtain(view, i));
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return wrap(AccessibilityNodeInfo.obtain());
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return wrap(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.f1380a));
    }

    public void setSource(View view) {
        this.f1381b = -1;
        this.f1380a.setSource(view);
    }

    public void setSource(View view, int i) {
        this.f1381b = i;
        this.f1380a.setSource(view, i);
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return e(this.f1380a.findFocus(i));
    }

    public AccessibilityNodeInfoCompat focusSearch(int i) {
        return e(this.f1380a.focusSearch(i));
    }

    public int getWindowId() {
        return this.f1380a.getWindowId();
    }

    public int getChildCount() {
        return this.f1380a.getChildCount();
    }

    public AccessibilityNodeInfoCompat getChild(int i) {
        return e(this.f1380a.getChild(i));
    }

    public void addChild(View view) {
        this.f1380a.addChild(view);
    }

    public void addChild(View view, int i) {
        this.f1380a.addChild(view, i);
    }

    public boolean removeChild(View view) {
        return this.f1380a.removeChild(view);
    }

    public boolean removeChild(View view, int i) {
        return this.f1380a.removeChild(view, i);
    }

    @Deprecated
    public int getActions() {
        return this.f1380a.getActions();
    }

    public void addAction(int i) {
        this.f1380a.addAction(i);
    }

    public final ArrayList a(String str) {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        ArrayList<Integer> integerArrayList = a.getExtras(accessibilityNodeInfo).getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        a.getExtras(accessibilityNodeInfo).putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        this.f1380a.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f1382a);
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        return this.f1380a.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f1382a);
    }

    public boolean performAction(int i) {
        return this.f1380a.performAction(i);
    }

    public boolean performAction(int i, Bundle bundle) {
        return this.f1380a.performAction(i, bundle);
    }

    public void setMovementGranularities(int i) {
        this.f1380a.setMovementGranularities(i);
    }

    public int getMovementGranularities() {
        return this.f1380a.getMovementGranularities();
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        ArrayList arrayList = new ArrayList();
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = this.f1380a.findAccessibilityNodeInfosByText(str);
        int size = listFindAccessibilityNodeInfosByText.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(wrap(listFindAccessibilityNodeInfosByText.get(i)));
        }
        return arrayList;
    }

    public AccessibilityNodeInfoCompat getParent() {
        return e(this.f1380a.getParent());
    }

    public void setParent(View view) {
        this.mParentVirtualDescendantId = -1;
        this.f1380a.setParent(view);
    }

    public void setParent(View view, int i) {
        this.mParentVirtualDescendantId = i;
        this.f1380a.setParent(view, i);
    }

    @Deprecated
    public void getBoundsInParent(Rect rect) {
        this.f1380a.getBoundsInParent(rect);
    }

    @Deprecated
    public void setBoundsInParent(Rect rect) {
        this.f1380a.setBoundsInParent(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        this.f1380a.getBoundsInScreen(rect);
    }

    public void setBoundsInScreen(Rect rect) {
        this.f1380a.setBoundsInScreen(rect);
    }

    public boolean isCheckable() {
        return this.f1380a.isCheckable();
    }

    public void setCheckable(boolean z) {
        this.f1380a.setCheckable(z);
    }

    public boolean isChecked() {
        return this.f1380a.isChecked();
    }

    public void setChecked(boolean z) {
        this.f1380a.setChecked(z);
    }

    public boolean isFocusable() {
        return this.f1380a.isFocusable();
    }

    public void setFocusable(boolean z) {
        this.f1380a.setFocusable(z);
    }

    public boolean isFocused() {
        return this.f1380a.isFocused();
    }

    public void setFocused(boolean z) {
        this.f1380a.setFocused(z);
    }

    public boolean isVisibleToUser() {
        return this.f1380a.isVisibleToUser();
    }

    public void setVisibleToUser(boolean z) {
        this.f1380a.setVisibleToUser(z);
    }

    public boolean isAccessibilityFocused() {
        return this.f1380a.isAccessibilityFocused();
    }

    public void setAccessibilityFocused(boolean z) {
        this.f1380a.setAccessibilityFocused(z);
    }

    public boolean isSelected() {
        return this.f1380a.isSelected();
    }

    public void setSelected(boolean z) {
        this.f1380a.setSelected(z);
    }

    public boolean isClickable() {
        return this.f1380a.isClickable();
    }

    public void setClickable(boolean z) {
        this.f1380a.setClickable(z);
    }

    public boolean isLongClickable() {
        return this.f1380a.isLongClickable();
    }

    public void setLongClickable(boolean z) {
        this.f1380a.setLongClickable(z);
    }

    public boolean isEnabled() {
        return this.f1380a.isEnabled();
    }

    public void setEnabled(boolean z) {
        this.f1380a.setEnabled(z);
    }

    public boolean isPassword() {
        return this.f1380a.isPassword();
    }

    public void setPassword(boolean z) {
        this.f1380a.setPassword(z);
    }

    public boolean isScrollable() {
        return this.f1380a.isScrollable();
    }

    public void setScrollable(boolean z) {
        this.f1380a.setScrollable(z);
    }

    public boolean isTextSelectable() {
        if (Build.VERSION.SDK_INT >= 33) {
            return b.isTextSelectable(this.f1380a);
        }
        return false;
    }

    public void setTextSelectable(boolean z) {
        if (Build.VERSION.SDK_INT >= 33) {
            b.setTextSelectable(this.f1380a, z);
        }
    }

    public long getMinDurationBetweenContentChangesMillis() {
        return a.getExtras(this.f1380a).getLong("androidx.view.accessibility.AccessibilityNodeInfoCompat.MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY");
    }

    public void setMinDurationBetweenContentChangesMillis(long j) {
        a.getExtras(this.f1380a).putLong("androidx.view.accessibility.AccessibilityNodeInfoCompat.MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY", j);
    }

    public boolean isImportantForAccessibility() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f1380a.isImportantForAccessibility();
        }
        return true;
    }

    public void setImportantForAccessibility(boolean z) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1380a.setImportantForAccessibility(z);
        }
    }

    public CharSequence getPackageName() {
        return this.f1380a.getPackageName();
    }

    public void setPackageName(CharSequence charSequence) {
        this.f1380a.setPackageName(charSequence);
    }

    public CharSequence getClassName() {
        return this.f1380a.getClassName();
    }

    public void setClassName(CharSequence charSequence) {
        this.f1380a.setClassName(charSequence);
    }

    public void setText(CharSequence charSequence) {
        this.f1380a.setText(charSequence);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addSpansToExtras(CharSequence charSequence, View view) {
        int iKeyAt;
        if (Build.VERSION.SDK_INT < 26) {
            AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
            a.getExtras(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            a.getExtras(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            a.getExtras(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            a.getExtras(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SparseArray sparseArray = (SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
            if (sparseArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < sparseArray.size(); i++) {
                    if (((WeakReference) sparseArray.valueAt(i)).get() == null) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    sparseArray.remove(((Integer) arrayList.get(i2)).intValue());
                }
            }
            ClickableSpan[] clickableSpans = getClickableSpans(charSequence);
            if (clickableSpans == null || clickableSpans.length <= 0) {
                return;
            }
            getExtras().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", androidx.core.R.id.accessibility_action_clickable_span);
            int i3 = androidx.core.R.id.tag_accessibility_clickable_spans;
            SparseArray sparseArray2 = (SparseArray) view.getTag(i3);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray();
                view.setTag(i3, sparseArray2);
            }
            for (int i4 = 0; i4 < clickableSpans.length; i4++) {
                ClickableSpan clickableSpan = clickableSpans[i4];
                int i5 = 0;
                while (true) {
                    if (i5 < sparseArray2.size()) {
                        if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i5)).get())) {
                            iKeyAt = sparseArray2.keyAt(i5);
                            break;
                        }
                        i5++;
                    } else {
                        iKeyAt = c;
                        c = iKeyAt + 1;
                        break;
                    }
                }
                sparseArray2.put(iKeyAt, new WeakReference(clickableSpans[i4]));
                ClickableSpan clickableSpan2 = clickableSpans[i4];
                Spanned spanned = (Spanned) charSequence;
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(iKeyAt));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ClickableSpan[] getClickableSpans(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public CharSequence getText() {
        boolean zIsEmpty = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (!zIsEmpty) {
            ArrayList arrayListA = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            ArrayList arrayListA2 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            ArrayList arrayListA3 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            ArrayList arrayListA4 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(accessibilityNodeInfo.getText(), 0, accessibilityNodeInfo.getText().length()));
            for (int i = 0; i < arrayListA.size(); i++) {
                spannableString.setSpan(new AccessibilityClickableSpanCompat(((Integer) arrayListA4.get(i)).intValue(), this, getExtras().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) arrayListA.get(i)).intValue(), ((Integer) arrayListA2.get(i)).intValue(), ((Integer) arrayListA3.get(i)).intValue());
            }
            return spannableString;
        }
        return accessibilityNodeInfo.getText();
    }

    public CharSequence getContentDescription() {
        return this.f1380a.getContentDescription();
    }

    @Nullable
    public CharSequence getStateDescription() {
        boolean zIsAtLeastR = BuildCompat.isAtLeastR();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (zIsAtLeastR) {
            return accessibilityNodeInfo.getStateDescription();
        }
        return a.getExtras(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY");
    }

    public void setContentDescription(CharSequence charSequence) {
        this.f1380a.setContentDescription(charSequence);
    }

    public void setStateDescription(@Nullable CharSequence charSequence) {
        boolean zIsAtLeastR = BuildCompat.isAtLeastR();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (zIsAtLeastR) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        } else {
            a.getExtras(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    @Nullable
    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public String getUniqueId() {
        boolean zIsAtLeastT = BuildCompat.isAtLeastT();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (zIsAtLeastT) {
            return accessibilityNodeInfo.getUniqueId();
        }
        return a.getExtras(accessibilityNodeInfo).getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY");
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public void setUniqueId(@Nullable String str) {
        boolean zIsAtLeastT = BuildCompat.isAtLeastT();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (zIsAtLeastT) {
            accessibilityNodeInfo.setUniqueId(str);
        } else {
            a.getExtras(accessibilityNodeInfo).putString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY", str);
        }
    }

    public void setViewIdResourceName(String str) {
        this.f1380a.setViewIdResourceName(str);
    }

    public String getViewIdResourceName() {
        return this.f1380a.getViewIdResourceName();
    }

    public int getLiveRegion() {
        return this.f1380a.getLiveRegion();
    }

    public void setLiveRegion(int i) {
        this.f1380a.setLiveRegion(i);
    }

    public int getDrawingOrder() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f1380a.getDrawingOrder();
        }
        return 0;
    }

    public void setDrawingOrder(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1380a.setDrawingOrder(i);
        }
    }

    public CollectionInfoCompat getCollectionInfo() {
        AccessibilityNodeInfo.CollectionInfo collectionInfo = this.f1380a.getCollectionInfo();
        if (collectionInfo != null) {
            return new CollectionInfoCompat(collectionInfo);
        }
        return null;
    }

    public void setCollectionInfo(Object obj) {
        this.f1380a.setCollectionInfo(obj == null ? null : ((CollectionInfoCompat) obj).f1384a);
    }

    public void setCollectionItemInfo(Object obj) {
        this.f1380a.setCollectionItemInfo(obj == null ? null : ((CollectionItemInfoCompat) obj).f1385a);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = this.f1380a.getCollectionItemInfo();
        if (collectionItemInfo != null) {
            return new CollectionItemInfoCompat(collectionItemInfo);
        }
        return null;
    }

    public RangeInfoCompat getRangeInfo() {
        AccessibilityNodeInfo.RangeInfo rangeInfo = this.f1380a.getRangeInfo();
        if (rangeInfo != null) {
            return new RangeInfoCompat(rangeInfo);
        }
        return null;
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        this.f1380a.setRangeInfo(rangeInfoCompat.f1386a);
    }

    @Nullable
    public AccessibilityNodeInfo.ExtraRenderingInfo getExtraRenderingInfo() {
        if (Build.VERSION.SDK_INT >= 33) {
            return b.getExtraRenderingInfo(this.f1380a);
        }
        return null;
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f1380a.getActionList();
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(new AccessibilityActionCompat(actionList.get(i), 0, null, null, null));
            }
            return arrayList;
        }
        return Collections.EMPTY_LIST;
    }

    public void setContentInvalid(boolean z) {
        this.f1380a.setContentInvalid(z);
    }

    public boolean isContentInvalid() {
        return this.f1380a.isContentInvalid();
    }

    public boolean isContextClickable() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.f1380a.isContextClickable();
        }
        return false;
    }

    public void setContextClickable(boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1380a.setContextClickable(z);
        }
    }

    @Nullable
    public CharSequence getHintText() {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (i >= 26) {
            return accessibilityNodeInfo.getHintText();
        }
        return a.getExtras(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY");
    }

    public void setHintText(@Nullable CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (i >= 26) {
            accessibilityNodeInfo.setHintText(charSequence);
        } else {
            a.getExtras(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public void setError(CharSequence charSequence) {
        this.f1380a.setError(charSequence);
    }

    public CharSequence getError() {
        return this.f1380a.getError();
    }

    public void setLabelFor(View view) {
        this.f1380a.setLabelFor(view);
    }

    public void setLabelFor(View view, int i) {
        this.f1380a.setLabelFor(view, i);
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        return e(this.f1380a.getLabelFor());
    }

    public void setLabeledBy(View view) {
        this.f1380a.setLabeledBy(view);
    }

    public void setLabeledBy(View view, int i) {
        this.f1380a.setLabeledBy(view, i);
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        return e(this.f1380a.getLabeledBy());
    }

    public boolean canOpenPopup() {
        return this.f1380a.canOpenPopup();
    }

    public void setCanOpenPopup(boolean z) {
        this.f1380a.setCanOpenPopup(z);
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId = this.f1380a.findAccessibilityNodeInfosByViewId(str);
        ArrayList arrayList = new ArrayList();
        Iterator<AccessibilityNodeInfo> it = listFindAccessibilityNodeInfosByViewId.iterator();
        while (it.hasNext()) {
            arrayList.add(wrap(it.next()));
        }
        return arrayList;
    }

    public Bundle getExtras() {
        return a.getExtras(this.f1380a);
    }

    public int getInputType() {
        return this.f1380a.getInputType();
    }

    public void setInputType(int i) {
        this.f1380a.setInputType(i);
    }

    @NonNull
    public List<String> getAvailableExtraData() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f1380a.getAvailableExtraData();
        }
        return Collections.EMPTY_LIST;
    }

    public void setAvailableExtraData(@NonNull List<String> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1380a.setAvailableExtraData(list);
        }
    }

    public void setMaxTextLength(int i) {
        this.f1380a.setMaxTextLength(i);
    }

    public int getMaxTextLength() {
        return this.f1380a.getMaxTextLength();
    }

    public void setTextSelection(int i, int i2) {
        this.f1380a.setTextSelection(i, i2);
    }

    public int getTextSelectionStart() {
        return this.f1380a.getTextSelectionStart();
    }

    public int getTextSelectionEnd() {
        return this.f1380a.getTextSelectionEnd();
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        if (Build.VERSION.SDK_INT >= 22) {
            return e(this.f1380a.getTraversalBefore());
        }
        return null;
    }

    public void setTraversalBefore(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f1380a.setTraversalBefore(view);
        }
    }

    public void setTraversalBefore(View view, int i) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f1380a.setTraversalBefore(view, i);
        }
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        if (Build.VERSION.SDK_INT >= 22) {
            return e(this.f1380a.getTraversalAfter());
        }
        return null;
    }

    public void setTraversalAfter(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f1380a.setTraversalAfter(view);
        }
    }

    public void setTraversalAfter(View view, int i) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f1380a.setTraversalAfter(view, i);
        }
    }

    public AccessibilityWindowInfoCompat getWindow() {
        AccessibilityWindowInfo window = this.f1380a.getWindow();
        if (window != null) {
            return new AccessibilityWindowInfoCompat(window);
        }
        return null;
    }

    public boolean isDismissable() {
        return this.f1380a.isDismissable();
    }

    public void setDismissable(boolean z) {
        this.f1380a.setDismissable(z);
    }

    public boolean isEditable() {
        return this.f1380a.isEditable();
    }

    public void setEditable(boolean z) {
        this.f1380a.setEditable(z);
    }

    public boolean isMultiLine() {
        return this.f1380a.isMultiLine();
    }

    public void setMultiLine(boolean z) {
        this.f1380a.setMultiLine(z);
    }

    @Nullable
    public CharSequence getTooltipText() {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (i >= 28) {
            return accessibilityNodeInfo.getTooltipText();
        }
        return a.getExtras(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY");
    }

    public void setTooltipText(@Nullable CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (i >= 28) {
            accessibilityNodeInfo.setTooltipText(charSequence);
        } else {
            a.getExtras(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY", charSequence);
        }
    }

    public void setPaneTitle(@Nullable CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (i >= 28) {
            accessibilityNodeInfo.setPaneTitle(charSequence);
        } else {
            a.getExtras(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    @Nullable
    public CharSequence getPaneTitle() {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (i >= 28) {
            return accessibilityNodeInfo.getPaneTitle();
        }
        return a.getExtras(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY");
    }

    public boolean isScreenReaderFocusable() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.f1380a.isScreenReaderFocusable();
        }
        return c(1);
    }

    public void setScreenReaderFocusable(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1380a.setScreenReaderFocusable(z);
        } else {
            d(1, z);
        }
    }

    public boolean isShowingHintText() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f1380a.isShowingHintText();
        }
        return c(4);
    }

    public void setShowingHintText(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1380a.setShowingHintText(z);
        } else {
            d(4, z);
        }
    }

    public boolean isHeading() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.f1380a.isHeading();
        }
        if (c(2)) {
            return true;
        }
        CollectionItemInfoCompat collectionItemInfo = getCollectionItemInfo();
        return collectionItemInfo != null && collectionItemInfo.isHeading();
    }

    public void setHeading(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1380a.setHeading(z);
        } else {
            d(2, z);
        }
    }

    public boolean isTextEntryKey() {
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f1380a.isTextEntryKey();
        }
        return c(8);
    }

    public void setTextEntryKey(boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1380a.setTextEntryKey(z);
        } else {
            d(8, z);
        }
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public boolean hasRequestInitialAccessibilityFocus() {
        return c(32);
    }

    @SuppressLint({"GetterSetterNames"})
    public void setRequestInitialAccessibilityFocus(boolean z) {
        d(32, z);
    }

    public boolean refresh() {
        return this.f1380a.refresh();
    }

    @Nullable
    public CharSequence getRoleDescription() {
        return a.getExtras(this.f1380a).getCharSequence("AccessibilityNodeInfo.roleDescription");
    }

    public void setRoleDescription(@Nullable CharSequence charSequence) {
        a.getExtras(this.f1380a).putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
    }

    @Nullable
    public TouchDelegateInfoCompat getTouchDelegateInfo() {
        AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo;
        if (Build.VERSION.SDK_INT < 29 || (touchDelegateInfo = this.f1380a.getTouchDelegateInfo()) == null) {
            return null;
        }
        return new TouchDelegateInfoCompat(touchDelegateInfo);
    }

    public void setTouchDelegateInfo(@NonNull TouchDelegateInfoCompat touchDelegateInfoCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1380a.setTouchDelegateInfo(touchDelegateInfoCompat.f1387a);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1380a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompat)) {
            return false;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f1380a;
        AccessibilityNodeInfo accessibilityNodeInfo2 = this.f1380a;
        if (accessibilityNodeInfo2 == null) {
            if (accessibilityNodeInfo != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo2.equals(accessibilityNodeInfo)) {
            return false;
        }
        return this.f1381b == accessibilityNodeInfoCompat.f1381b && this.mParentVirtualDescendantId == accessibilityNodeInfoCompat.mParentVirtualDescendantId;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(getPackageName());
        sb.append("; className: ");
        sb.append(getClassName());
        sb.append("; text: ");
        sb.append(getText());
        sb.append("; contentDescription: ");
        sb.append(getContentDescription());
        sb.append("; viewId: ");
        sb.append(getViewIdResourceName());
        sb.append("; uniqueId: ");
        sb.append(getUniqueId());
        sb.append("; checkable: ");
        sb.append(isCheckable());
        sb.append("; checked: ");
        sb.append(isChecked());
        sb.append("; focusable: ");
        sb.append(isFocusable());
        sb.append("; focused: ");
        sb.append(isFocused());
        sb.append("; selected: ");
        sb.append(isSelected());
        sb.append("; clickable: ");
        sb.append(isClickable());
        sb.append("; longClickable: ");
        sb.append(isLongClickable());
        sb.append("; enabled: ");
        sb.append(isEnabled());
        sb.append("; password: ");
        sb.append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; [");
        List<AccessibilityActionCompat> actionList = getActionList();
        for (int i = 0; i < actionList.size(); i++) {
            AccessibilityActionCompat accessibilityActionCompat = actionList.get(i);
            String strB = b(accessibilityActionCompat.getId());
            if (strB.equals("ACTION_UNKNOWN") && accessibilityActionCompat.getLabel() != null) {
                strB = accessibilityActionCompat.getLabel().toString();
            }
            sb.append(strB);
            if (i != actionList.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final void d(int i, boolean z) {
        Bundle extras = getExtras();
        if (extras != null) {
            int i2 = extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (~i);
            if (!z) {
                i = 0;
            }
            extras.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    public final boolean c(int i) {
        Bundle extras = getExtras();
        return extras != null && (extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i;
    }

    public static String b(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            default:
                switch (i) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    @RequiresApi(33)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static AccessibilityNodeInfo.ExtraRenderingInfo getExtraRenderingInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getExtraRenderingInfo();
        }

        @DoNotInline
        public static boolean isTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }

        @DoNotInline
        public static void setTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setTextSelectable(z);
        }
    }

    @RequiresApi(19)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Bundle getExtras(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getExtras();
        }
    }
}
