package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public static final int ACTION_STATE_DRAG = 2;
    public static final int ACTION_STATE_IDLE = 0;
    public static final int ACTION_STATE_SWIPE = 1;
    public static final int ANIMATION_TYPE_DRAG = 8;
    public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
    public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
    public static final int DOWN = 2;
    public static final int END = 32;
    public static final int LEFT = 4;
    public static final int RIGHT = 8;
    public static final int START = 16;
    public static final int UP = 1;
    public Rect A;
    public long B;
    public float d;
    public float e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f2034g;
    public float h;
    public float i;
    public float j;
    public float k;
    public final Callback m;
    public int o;
    public int q;
    public RecyclerView r;
    public VelocityTracker t;
    public ArrayList u;
    public ArrayList v;
    public GestureDetectorCompat x;
    public c y;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2032a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final float[] f2033b = new float[2];
    public RecyclerView.ViewHolder c = null;
    public int l = -1;
    public int n = 0;
    public final ArrayList p = new ArrayList();
    public final Runnable s = new a();
    public View w = null;
    public final RecyclerView.OnItemTouchListener z = new b();

    public interface ViewDropHandler {
        void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
    }

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0080  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.a.run():void");
        }
    }

    public class b implements RecyclerView.OnItemTouchListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            int iFindPointerIndex;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.x.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            d dVar = null;
            if (actionMasked == 0) {
                itemTouchHelper.l = motionEvent.getPointerId(0);
                itemTouchHelper.d = motionEvent.getX();
                itemTouchHelper.e = motionEvent.getY();
                VelocityTracker velocityTracker = itemTouchHelper.t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                itemTouchHelper.t = VelocityTracker.obtain();
                if (itemTouchHelper.c == null) {
                    ArrayList arrayList = itemTouchHelper.p;
                    if (!arrayList.isEmpty()) {
                        View viewE = itemTouchHelper.e(motionEvent);
                        int size = arrayList.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            }
                            d dVar2 = (d) arrayList.get(size);
                            if (dVar2.e.itemView == viewE) {
                                dVar = dVar2;
                                break;
                            }
                            size--;
                        }
                    }
                    if (dVar != null) {
                        itemTouchHelper.d -= dVar.i;
                        itemTouchHelper.e -= dVar.j;
                        RecyclerView.ViewHolder viewHolder = dVar.e;
                        itemTouchHelper.d(viewHolder, true);
                        if (itemTouchHelper.f2032a.remove(viewHolder.itemView)) {
                            itemTouchHelper.m.clearView(itemTouchHelper.r, viewHolder);
                        }
                        itemTouchHelper.j(viewHolder, dVar.f);
                        itemTouchHelper.k(motionEvent, itemTouchHelper.o, 0);
                    }
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                itemTouchHelper.l = -1;
                itemTouchHelper.j(null, 0);
            } else {
                int i = itemTouchHelper.l;
                if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    itemTouchHelper.b(motionEvent, actionMasked, iFindPointerIndex);
                }
            }
            VelocityTracker velocityTracker2 = itemTouchHelper.t;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return itemTouchHelper.c != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.x.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = itemTouchHelper.t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (itemTouchHelper.l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int iFindPointerIndex = motionEvent.findPointerIndex(itemTouchHelper.l);
            if (iFindPointerIndex >= 0) {
                itemTouchHelper.b(motionEvent, actionMasked, iFindPointerIndex);
            }
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.c;
            if (viewHolder == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (iFindPointerIndex >= 0) {
                        itemTouchHelper.k(motionEvent, itemTouchHelper.o, iFindPointerIndex);
                        itemTouchHelper.h(viewHolder);
                        itemTouchHelper.r.removeCallbacks(itemTouchHelper.s);
                        itemTouchHelper.s.run();
                        itemTouchHelper.r.invalidate();
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == itemTouchHelper.l) {
                        itemTouchHelper.l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        itemTouchHelper.k(motionEvent, itemTouchHelper.o, actionIndex);
                        return;
                    }
                    return;
                }
                VelocityTracker velocityTracker2 = itemTouchHelper.t;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            }
            itemTouchHelper.j(null, 0);
            itemTouchHelper.l = -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
            if (z) {
                ItemTouchHelper.this.j(null, 0);
            }
        }
    }

    public ItemTouchHelper(@NonNull Callback callback) {
        this.m = callback;
    }

    public static boolean g(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        RecyclerView.OnItemTouchListener onItemTouchListener = this.z;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.r.removeOnItemTouchListener(onItemTouchListener);
            this.r.removeOnChildAttachStateChangeListener(this);
            ArrayList arrayList = this.p;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                d dVar = (d) arrayList.get(0);
                dVar.cancel();
                this.m.clearView(this.r, dVar.e);
            }
            arrayList.clear();
            this.w = null;
            VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.t = null;
            }
            c cVar = this.y;
            if (cVar != null) {
                cVar.f2039a = false;
                this.y = null;
            }
            if (this.x != null) {
                this.x = null;
            }
        }
        this.r = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.f2034g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            this.q = ViewConfiguration.get(this.r.getContext()).getScaledTouchSlop();
            this.r.addItemDecoration(this);
            this.r.addOnItemTouchListener(onItemTouchListener);
            this.r.addOnChildAttachStateChangeListener(this);
            this.y = new c();
            this.x = new GestureDetectorCompat(this.r.getContext(), this.y);
        }
    }

    public final void f(float[] fArr) {
        if ((this.o & 12) != 0) {
            fArr[0] = (this.j + this.h) - this.c.itemView.getLeft();
        } else {
            fArr[0] = this.c.itemView.getTranslationX();
        }
        if ((this.o & 3) != 0) {
            fArr[1] = (this.k + this.i) - this.c.itemView.getTop();
        } else {
            fArr[1] = this.c.itemView.getTranslationY();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        float f;
        float f2;
        if (this.c != null) {
            float[] fArr = this.f2033b;
            f(fArr);
            float f3 = fArr[0];
            f = fArr[1];
            f2 = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.c;
        ArrayList arrayList = this.p;
        int i = this.n;
        Callback callback = this.m;
        callback.getClass();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            d dVar = (d) arrayList.get(i2);
            int iSave = canvas.save();
            callback.onChildDrawOver(canvas, recyclerView, dVar.e, dVar.i, dVar.j, dVar.f, false);
            canvas.restoreToCount(iSave);
            i2++;
            size = size;
        }
        int i3 = size;
        if (viewHolder != null) {
            int iSave2 = canvas.save();
            callback.onChildDrawOver(canvas, recyclerView, viewHolder, f2, f, i, true);
            canvas.restoreToCount(iSave2);
        }
        boolean z = false;
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            d dVar2 = (d) arrayList.get(i4);
            boolean z2 = dVar2.l;
            if (z2 && !dVar2.h) {
                arrayList.remove(i4);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    @SuppressLint({"UnknownNullness"})
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f;
        float f2;
        if (this.c != null) {
            float[] fArr = this.f2033b;
            f(fArr);
            float f3 = fArr[0];
            f = fArr[1];
            f2 = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.c;
        ArrayList arrayList = this.p;
        int i = this.n;
        Callback callback = this.m;
        callback.getClass();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = (d) arrayList.get(i2);
            dVar.update();
            int iSave = canvas.save();
            callback.onChildDraw(canvas, recyclerView, dVar.e, dVar.i, dVar.j, dVar.f, false);
            canvas.restoreToCount(iSave);
        }
        if (viewHolder != null) {
            int iSave2 = canvas.save();
            callback.onChildDraw(canvas, recyclerView, viewHolder, f2, f, i, true);
            canvas.restoreToCount(iSave2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(androidx.recyclerview.widget.RecyclerView.ViewHolder r21, int r22) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.j(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    public final void h(RecyclerView.ViewHolder viewHolder) {
        int i;
        int i2;
        int i3;
        if (!this.r.isLayoutRequested() && this.n == 2) {
            Callback callback = this.m;
            float moveThreshold = callback.getMoveThreshold(viewHolder);
            int i4 = (int) (this.j + this.h);
            int i5 = (int) (this.k + this.i);
            if (Math.abs(i5 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * moveThreshold || Math.abs(i4 - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * moveThreshold) {
                ArrayList arrayList = this.u;
                if (arrayList == null) {
                    this.u = new ArrayList();
                    this.v = new ArrayList();
                } else {
                    arrayList.clear();
                    this.v.clear();
                }
                int boundingBoxMargin = callback.getBoundingBoxMargin();
                int iRound = Math.round(this.j + this.h) - boundingBoxMargin;
                int iRound2 = Math.round(this.k + this.i) - boundingBoxMargin;
                int i6 = boundingBoxMargin * 2;
                int width = viewHolder.itemView.getWidth() + iRound + i6;
                int height = viewHolder.itemView.getHeight() + iRound2 + i6;
                int i7 = (iRound + width) / 2;
                int i8 = (iRound2 + height) / 2;
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int childCount = layoutManager.getChildCount();
                int i9 = 0;
                while (i9 < childCount) {
                    View childAt = layoutManager.getChildAt(i9);
                    if (childAt != viewHolder.itemView && childAt.getBottom() >= iRound2 && childAt.getTop() <= height && childAt.getRight() >= iRound && childAt.getLeft() <= width) {
                        RecyclerView.ViewHolder childViewHolder = this.r.getChildViewHolder(childAt);
                        i = i7;
                        if (callback.canDropOver(this.r, this.c, childViewHolder)) {
                            int iAbs = Math.abs(i - ((childAt.getRight() + childAt.getLeft()) / 2));
                            int iAbs2 = Math.abs(i8 - ((childAt.getBottom() + childAt.getTop()) / 2));
                            int i10 = (iAbs2 * iAbs2) + (iAbs * iAbs);
                            int size = this.u.size();
                            i2 = iRound;
                            i3 = iRound2;
                            int i11 = 0;
                            int i12 = 0;
                            while (i11 < size) {
                                int i13 = size;
                                if (i10 <= ((Integer) this.v.get(i11)).intValue()) {
                                    break;
                                }
                                i12++;
                                i11++;
                                size = i13;
                            }
                            this.u.add(i12, childViewHolder);
                            this.v.add(i12, Integer.valueOf(i10));
                        }
                        i9++;
                        iRound = i2;
                        i7 = i;
                        iRound2 = i3;
                    } else {
                        i = i7;
                    }
                    i2 = iRound;
                    i3 = iRound2;
                    i9++;
                    iRound = i2;
                    i7 = i;
                    iRound2 = i3;
                }
                ArrayList arrayList2 = this.u;
                if (arrayList2.size() == 0) {
                    return;
                }
                RecyclerView.ViewHolder viewHolderChooseDropTarget = callback.chooseDropTarget(viewHolder, arrayList2, i4, i5);
                if (viewHolderChooseDropTarget == null) {
                    this.u.clear();
                    this.v.clear();
                    return;
                }
                int absoluteAdapterPosition = viewHolderChooseDropTarget.getAbsoluteAdapterPosition();
                int absoluteAdapterPosition2 = viewHolder.getAbsoluteAdapterPosition();
                if (callback.onMove(this.r, viewHolder, viewHolderChooseDropTarget)) {
                    this.m.onMoved(this.r, viewHolder, absoluteAdapterPosition2, viewHolderChooseDropTarget, absoluteAdapterPosition, i4, i5);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        i(view);
        RecyclerView.ViewHolder childViewHolder = this.r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.c;
        if (viewHolder != null && childViewHolder == viewHolder) {
            j(null, 0);
            return;
        }
        d(childViewHolder, false);
        if (this.f2032a.remove(childViewHolder.itemView)) {
            this.m.clearView(this.r, childViewHolder);
        }
    }

    public final void d(RecyclerView.ViewHolder viewHolder, boolean z) {
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = (d) arrayList.get(size);
            if (dVar.e == viewHolder) {
                dVar.k |= z;
                if (!dVar.l) {
                    dVar.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    @SuppressLint({"UnknownNullness"})
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    public final void b(MotionEvent motionEvent, int i, int i2) {
        View viewE;
        if (this.c == null && i == 2 && this.n != 2) {
            Callback callback = this.m;
            if (callback.isItemViewSwipeEnabled() && this.r.getScrollState() != 1) {
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int i3 = this.l;
                RecyclerView.ViewHolder childViewHolder = null;
                if (i3 != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i3);
                    float x = motionEvent.getX(iFindPointerIndex) - this.d;
                    float y = motionEvent.getY(iFindPointerIndex) - this.e;
                    float fAbs = Math.abs(x);
                    float fAbs2 = Math.abs(y);
                    float f = this.q;
                    if ((fAbs >= f || fAbs2 >= f) && ((fAbs <= fAbs2 || !layoutManager.canScrollHorizontally()) && ((fAbs2 <= fAbs || !layoutManager.canScrollVertically()) && (viewE = e(motionEvent)) != null))) {
                        childViewHolder = this.r.getChildViewHolder(viewE);
                    }
                }
                if (childViewHolder == null) {
                    return;
                }
                RecyclerView recyclerView = this.r;
                int iConvertToAbsoluteDirection = (callback.convertToAbsoluteDirection(callback.getMovementFlags(recyclerView, childViewHolder), ViewCompat.getLayoutDirection(recyclerView)) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                if (iConvertToAbsoluteDirection == 0) {
                    return;
                }
                float x2 = motionEvent.getX(i2);
                float y2 = motionEvent.getY(i2);
                float f2 = x2 - this.d;
                float f3 = y2 - this.e;
                float fAbs3 = Math.abs(f2);
                float fAbs4 = Math.abs(f3);
                float f4 = this.q;
                if (fAbs3 >= f4 || fAbs4 >= f4) {
                    if (fAbs3 > fAbs4) {
                        if (f2 < 0.0f && (iConvertToAbsoluteDirection & 4) == 0) {
                            return;
                        }
                        if (f2 > 0.0f && (iConvertToAbsoluteDirection & 8) == 0) {
                            return;
                        }
                    } else {
                        if (f3 < 0.0f && (iConvertToAbsoluteDirection & 1) == 0) {
                            return;
                        }
                        if (f3 > 0.0f && (iConvertToAbsoluteDirection & 2) == 0) {
                            return;
                        }
                    }
                    this.i = 0.0f;
                    this.h = 0.0f;
                    this.l = motionEvent.getPointerId(0);
                    j(childViewHolder, 1);
                }
            }
        }
    }

    public final View e(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.c;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (g(view, x, y, this.j + this.h, this.k + this.i)) {
                return view;
            }
        }
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = (d) arrayList.get(size);
            View view2 = dVar.e.itemView;
            if (g(view2, x, y, dVar.i, dVar.j)) {
                return view2;
            }
        }
        return this.r.findChildViewUnder(x, y);
    }

    public void startDrag(@NonNull RecyclerView.ViewHolder viewHolder) {
        Callback callback = this.m;
        RecyclerView recyclerView = this.r;
        if (!((callback.convertToAbsoluteDirection(callback.getMovementFlags(recyclerView, viewHolder), ViewCompat.getLayoutDirection(recyclerView)) & 16711680) != 0)) {
            Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
            return;
        }
        if (viewHolder.itemView.getParent() == this.r) {
            VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
            }
            this.t = VelocityTracker.obtain();
            this.i = 0.0f;
            this.h = 0.0f;
            j(viewHolder, 2);
            return;
        }
        Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
    }

    public void startSwipe(@NonNull RecyclerView.ViewHolder viewHolder) {
        RecyclerView recyclerView = this.r;
        Callback callback = this.m;
        if ((callback.convertToAbsoluteDirection(callback.getMovementFlags(recyclerView, viewHolder), ViewCompat.getLayoutDirection(recyclerView)) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) != 0) {
            if (viewHolder.itemView.getParent() == this.r) {
                VelocityTracker velocityTracker = this.t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                this.t = VelocityTracker.obtain();
                this.i = 0.0f;
                this.h = 0.0f;
                j(viewHolder, 1);
                return;
            }
            Log.e("ItemTouchHelper", "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
            return;
        }
        Log.e("ItemTouchHelper", "Start swipe has been called but swiping is not enabled");
    }

    public final void k(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.d;
        this.h = f;
        this.i = y - this.e;
        if ((i & 4) == 0) {
            this.h = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.h = Math.min(0.0f, this.h);
        }
        if ((i & 1) == 0) {
            this.i = Math.max(0.0f, this.i);
        }
        if ((i & 2) == 0) {
            this.i = Math.min(0.0f, this.i);
        }
    }

    public final int a(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.t;
        Callback callback = this.m;
        if (velocityTracker != null && this.l > -1) {
            velocityTracker.computeCurrentVelocity(1000, callback.getSwipeVelocityThreshold(this.f2034g));
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i3 = xVelocity > 0.0f ? 8 : 4;
            float fAbs = Math.abs(xVelocity);
            if ((i3 & i) != 0 && i2 == i3 && fAbs >= callback.getSwipeEscapeVelocity(this.f) && fAbs > Math.abs(yVelocity)) {
                return i3;
            }
        }
        float swipeThreshold = callback.getSwipeThreshold(viewHolder) * this.r.getWidth();
        if ((i & i2) == 0 || Math.abs(this.h) <= swipeThreshold) {
            return 0;
        }
        return i2;
    }

    public final int c(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.t;
        Callback callback = this.m;
        if (velocityTracker != null && this.l > -1) {
            velocityTracker.computeCurrentVelocity(1000, callback.getSwipeVelocityThreshold(this.f2034g));
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i3 = yVelocity > 0.0f ? 2 : 1;
            float fAbs = Math.abs(yVelocity);
            if ((i3 & i) != 0 && i3 == i2 && fAbs >= callback.getSwipeEscapeVelocity(this.f) && fAbs > Math.abs(xVelocity)) {
                return i3;
            }
        }
        float swipeThreshold = callback.getSwipeThreshold(viewHolder) * this.r.getHeight();
        if ((i & i2) == 0 || Math.abs(this.i) <= swipeThreshold) {
            return 0;
        }
        return i2;
    }

    public final void i(View view) {
        if (view == this.w) {
            this.w = null;
        }
    }

    public static abstract class Callback {
        public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
        public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;

        /* renamed from: b, reason: collision with root package name */
        public static final Interpolator f2035b = new a();
        public static final Interpolator c = new b();

        /* renamed from: a, reason: collision with root package name */
        public int f2036a = -1;

        public class a implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        }

        public class b implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }

        public static int convertToRelativeDirection(int i, int i2) {
            int i3;
            int i4 = i & 789516;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 << 2;
            } else {
                int i6 = i4 << 1;
                i5 |= (-789517) & i6;
                i3 = (i6 & 789516) << 2;
            }
            return i5 | i3;
        }

        public static int makeFlag(int i, int i2) {
            return i2 << (i * 8);
        }

        public boolean canDropOver(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        public int convertToAbsoluteDirection(int i, int i2) {
            int i3;
            int i4 = i & 3158064;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 >> 2;
            } else {
                int i6 = i4 >> 1;
                i5 |= (-3158065) & i6;
                i3 = (i6 & 3158064) >> 2;
            }
            return i5 | i3;
        }

        public int getBoundingBoxMargin() {
            return 0;
        }

        public float getMoveThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public abstract int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder);

        public float getSwipeEscapeVelocity(float f) {
            return f;
        }

        public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public float getSwipeVelocityThreshold(float f) {
            return f;
        }

        public boolean isItemViewSwipeEnabled() {
            return true;
        }

        public boolean isLongPressDragEnabled() {
            return true;
        }

        public abstract boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2);

        public abstract void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i);

        @NonNull
        public static ItemTouchUIUtil getDefaultUIUtil() {
            return o.f2177a;
        }

        public static int makeMovementFlags(int i, int i2) {
            return makeFlag(2, i) | makeFlag(1, i2) | makeFlag(0, i2 | i);
        }

        @SuppressLint({"UnknownNullness"})
        public RecyclerView.ViewHolder chooseDropTarget(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<RecyclerView.ViewHolder> list, int i, int i2) {
            int bottom;
            int iAbs;
            int top;
            int iAbs2;
            int left;
            int iAbs3;
            int right;
            int iAbs4;
            int width = viewHolder.itemView.getWidth() + i;
            int height = viewHolder.itemView.getHeight() + i2;
            int left2 = i - viewHolder.itemView.getLeft();
            int top2 = i2 - viewHolder.itemView.getTop();
            int size = list.size();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                RecyclerView.ViewHolder viewHolder3 = list.get(i4);
                if (left2 > 0 && (right = viewHolder3.itemView.getRight() - width) < 0 && viewHolder3.itemView.getRight() > viewHolder.itemView.getRight() && (iAbs4 = Math.abs(right)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = iAbs4;
                }
                if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i) > 0 && viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft() && (iAbs3 = Math.abs(left)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = iAbs3;
                }
                if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i2) > 0 && viewHolder3.itemView.getTop() < viewHolder.itemView.getTop() && (iAbs2 = Math.abs(top)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = iAbs2;
                }
                if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height) < 0 && viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom() && (iAbs = Math.abs(bottom)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = iAbs;
                }
            }
            return viewHolder2;
        }

        public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                o.f2177a.onSelected(viewHolder.itemView);
            }
        }

        public int interpolateOutOfBoundsScroll(@NonNull RecyclerView recyclerView, int i, int i2, int i3, long j) {
            if (this.f2036a == -1) {
                this.f2036a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int interpolation = (int) (f2035b.getInterpolation(j <= 2000 ? j / 2000.0f : 1.0f) * ((int) (c.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)) * ((int) Math.signum(i2)) * this.f2036a)));
            return interpolation == 0 ? i2 > 0 ? 1 : -1 : interpolation;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).prepareForDrop(viewHolder.itemView, viewHolder2.itemView, i3, i4);
                return;
            }
            if (layoutManager.canScrollHorizontally()) {
                if (layoutManager.getDecoratedLeft(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedRight(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
            if (layoutManager.canScrollVertically()) {
                if (layoutManager.getDecoratedTop(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedBottom(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
        }

        public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            o.f2177a.clearView(viewHolder.itemView);
        }

        public void onChildDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            o.f2177a.onDraw(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @SuppressLint({"UnknownNullness"}) RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            o.f2177a.onDrawOver(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        public long getAnimationDuration(@NonNull RecyclerView recyclerView, int i, float f, float f2) {
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            if (itemAnimator == null) {
                return i == 8 ? 200L : 250L;
            }
            if (i == 8) {
                return itemAnimator.getMoveDuration();
            }
            return itemAnimator.getRemoveDuration();
        }
    }

    public static abstract class SimpleCallback extends Callback {
        public int d;
        public int e;

        public SimpleCallback(int i, int i2) {
            this.d = i2;
            this.e = i;
        }

        public void setDefaultSwipeDirs(int i) {
            this.d = i;
        }

        public void setDefaultDragDirs(int i) {
            this.e = i;
        }

        public int getSwipeDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.d;
        }

        public int getDragDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.e;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return Callback.makeMovementFlags(getDragDirs(recyclerView, viewHolder), getSwipeDirs(recyclerView, viewHolder));
        }
    }

    public class c extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2039a = true;

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        public c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            ItemTouchHelper itemTouchHelper;
            View viewE;
            RecyclerView.ViewHolder childViewHolder;
            if (!this.f2039a || (viewE = (itemTouchHelper = ItemTouchHelper.this).e(motionEvent)) == null || (childViewHolder = itemTouchHelper.r.getChildViewHolder(viewE)) == null) {
                return;
            }
            Callback callback = itemTouchHelper.m;
            RecyclerView recyclerView = itemTouchHelper.r;
            if ((callback.convertToAbsoluteDirection(callback.getMovementFlags(recyclerView, childViewHolder), ViewCompat.getLayoutDirection(recyclerView)) & 16711680) != 0) {
                int pointerId = motionEvent.getPointerId(0);
                int i = itemTouchHelper.l;
                if (pointerId == i) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    float x = motionEvent.getX(iFindPointerIndex);
                    float y = motionEvent.getY(iFindPointerIndex);
                    itemTouchHelper.d = x;
                    itemTouchHelper.e = y;
                    itemTouchHelper.i = 0.0f;
                    itemTouchHelper.h = 0.0f;
                    if (itemTouchHelper.m.isLongPressDragEnabled()) {
                        itemTouchHelper.j(childViewHolder, 2);
                    }
                }
            }
        }
    }

    @VisibleForTesting
    public static class d implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        public final float f2041a;

        /* renamed from: b, reason: collision with root package name */
        public final float f2042b;
        public final float c;
        public final float d;
        public final RecyclerView.ViewHolder e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public final ValueAnimator f2043g;
        public boolean h;
        public float i;
        public float j;
        public boolean k = false;
        public boolean l = false;
        public float m;

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        public d(RecyclerView.ViewHolder viewHolder, int i, float f, float f2, float f3, float f4) {
            this.f = i;
            this.e = viewHolder;
            this.f2041a = f;
            this.f2042b = f2;
            this.c = f3;
            this.d = f4;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f2043g = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new n((k) this));
            valueAnimatorOfFloat.setTarget(viewHolder.itemView);
            valueAnimatorOfFloat.addListener(this);
            setFraction(0.0f);
        }

        public void setDuration(long j) {
            this.f2043g.setDuration(j);
        }

        public void start() {
            this.e.setIsRecyclable(false);
            this.f2043g.start();
        }

        public void cancel() {
            this.f2043g.cancel();
        }

        public void setFraction(float f) {
            this.m = f;
        }

        public void update() {
            RecyclerView.ViewHolder viewHolder = this.e;
            float f = this.f2041a;
            float f2 = this.c;
            if (f == f2) {
                this.i = viewHolder.itemView.getTranslationX();
            } else {
                this.i = _COROUTINE.a.a(f2, f, this.m, f);
            }
            float f3 = this.f2042b;
            float f4 = this.d;
            if (f3 == f4) {
                this.j = viewHolder.itemView.getTranslationY();
            } else {
                this.j = _COROUTINE.a.a(f4, f3, this.m, f3);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.l) {
                this.e.setIsRecyclable(true);
            }
            this.l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            setFraction(1.0f);
        }
    }
}
