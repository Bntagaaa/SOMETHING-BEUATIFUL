package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class AlertController {
    public NestedScrollView A;
    public Drawable C;
    public ImageView D;
    public TextView E;
    public TextView F;
    public View G;
    public ListAdapter H;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    public final boolean O;
    public final Handler P;

    /* renamed from: a, reason: collision with root package name */
    public final Context f90a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatDialog f91b;
    public final Window c;
    public final int d;
    public CharSequence e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public RecycleListView f92g;
    public View h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public Button o;
    public CharSequence p;
    public Message q;
    public Drawable r;
    public Button s;
    public CharSequence t;
    public Message u;
    public Drawable v;
    public Button w;
    public CharSequence x;
    public Message y;
    public Drawable z;
    public boolean n = false;
    public int B = 0;
    public int I = -1;
    public final View.OnClickListener Q = new a();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view == alertController.o && (message3 = alertController.q) != null) {
                messageObtain = Message.obtain(message3);
            } else if (view == alertController.s && (message2 = alertController.u) != null) {
                messageObtain = Message.obtain(message2);
            } else {
                messageObtain = (view != alertController.w || (message = alertController.y) == null) ? null : Message.obtain(message);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            alertController.P.obtainMessage(1, alertController.f91b).sendToTarget();
        }
    }

    public static final class b extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f96a;

        public b(DialogInterface dialogInterface) {
            this.f96a = new WeakReference(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f96a.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.f90a = context;
        this.f91b = appCompatDialog;
        this.c = window;
        this.P = new b(appCompatDialog);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AlertDialog_showTitle, true);
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        appCompatDialog.supportRequestWindowFeature(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void installContent() {
        int i;
        View view;
        int i2;
        ListAdapter listAdapter;
        View view2;
        View viewFindViewById;
        this.f91b.setContentView(this.J);
        int i3 = R.id.parentPanel;
        Window window = this.c;
        View viewFindViewById2 = window.findViewById(i3);
        int i4 = R.id.topPanel;
        View viewFindViewById3 = viewFindViewById2.findViewById(i4);
        int i5 = R.id.contentPanel;
        View viewFindViewById4 = viewFindViewById2.findViewById(i5);
        int i6 = R.id.buttonPanel;
        View viewFindViewById5 = viewFindViewById2.findViewById(i6);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View viewInflate = this.h;
        Context context = this.f90a;
        if (viewInflate == null) {
            viewInflate = this.i != 0 ? LayoutInflater.from(context).inflate(this.i, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !a(viewInflate)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (this.n) {
                frameLayout.setPadding(this.j, this.k, this.l, this.m);
            }
            if (this.f92g != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(i4);
        View viewFindViewById7 = viewGroup.findViewById(i5);
        View viewFindViewById8 = viewGroup.findViewById(i6);
        ViewGroup viewGroupC = c(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupC2 = c(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupC3 = c(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupC2.findViewById(android.R.id.message);
        this.F = textView;
        if (textView != null) {
            CharSequence charSequence = this.f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                this.A.removeView(this.F);
                if (this.f92g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(this.A);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(this.f92g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupC2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupC3.findViewById(android.R.id.button1);
        this.o = button;
        View.OnClickListener onClickListener = this.Q;
        button.setOnClickListener(onClickListener);
        boolean zIsEmpty = TextUtils.isEmpty(this.p);
        int i7 = this.d;
        if (zIsEmpty && this.r == null) {
            this.o.setVisibility(8);
            i = 0;
        } else {
            this.o.setText(this.p);
            Drawable drawable = this.r;
            if (drawable != null) {
                drawable.setBounds(0, 0, i7, i7);
                this.o.setCompoundDrawables(this.r, null, null, null);
            }
            this.o.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) viewGroupC3.findViewById(android.R.id.button2);
        this.s = button2;
        button2.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(this.t) && this.v == null) {
            this.s.setVisibility(8);
        } else {
            this.s.setText(this.t);
            Drawable drawable2 = this.v;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i7, i7);
                this.s.setCompoundDrawables(this.v, null, null, null);
            }
            this.s.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) viewGroupC3.findViewById(android.R.id.button3);
        this.w = button3;
        button3.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(this.x) && this.z == null) {
            this.w.setVisibility(8);
            view = null;
        } else {
            this.w.setText(this.x);
            Drawable drawable3 = this.z;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, i7, i7);
                view = null;
                this.w.setCompoundDrawables(this.z, null, null, null);
            } else {
                view = null;
            }
            this.w.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button4 = this.o;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button5 = this.s;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button6 = this.w;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            viewGroupC3.setVisibility(8);
        }
        if (this.G != null) {
            viewGroupC.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            this.D = (ImageView) window.findViewById(android.R.id.icon);
            if (!TextUtils.isEmpty(this.e) && this.O) {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                this.E = textView2;
                textView2.setText(this.e);
                int i8 = this.B;
                if (i8 != 0) {
                    this.D.setImageResource(i8);
                } else {
                    Drawable drawable4 = this.C;
                    if (drawable4 != null) {
                        this.D.setImageDrawable(drawable4);
                    } else {
                        this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
                        this.D.setVisibility(8);
                    }
                }
            } else {
                window.findViewById(R.id.title_template).setVisibility(8);
                this.D.setVisibility(8);
                viewGroupC.setVisibility(8);
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        boolean z3 = (viewGroupC == null || viewGroupC.getVisibility() == 8) ? 0 : 1;
        boolean z4 = viewGroupC3.getVisibility() != 8;
        if (!z4 && (viewFindViewById = viewGroupC2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (z3 != 0) {
            NestedScrollView nestedScrollView2 = this.A;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (this.f == null && this.f92g == null) ? view : viewGroupC.findViewById(R.id.titleDividerNoCustom);
            i2 = 0;
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            i2 = 0;
            View viewFindViewById10 = viewGroupC2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        RecycleListView recycleListView = this.f92g;
        if (recycleListView != null) {
            recycleListView.setHasDecor(z3, z4);
        }
        if (!z2) {
            View view3 = this.f92g;
            if (view3 == null) {
                view3 = this.A;
            }
            if (view3 != null) {
                if (z4) {
                    i2 = 2;
                }
                int i9 = z3 | i2;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                if (Build.VERSION.SDK_INT >= 23) {
                    ViewCompat.setScrollIndicators(view3, i9, 3);
                    if (viewFindViewById11 != null) {
                        viewGroupC2.removeView(viewFindViewById11);
                    }
                    if (viewFindViewById12 != null) {
                        viewGroupC2.removeView(viewFindViewById12);
                    }
                } else {
                    if (viewFindViewById11 != null && (i9 & 1) == 0) {
                        viewGroupC2.removeView(viewFindViewById11);
                        viewFindViewById11 = view;
                    }
                    if (viewFindViewById12 == null || (i9 & 2) != 0) {
                        view2 = viewFindViewById12;
                    } else {
                        viewGroupC2.removeView(viewFindViewById12);
                        view2 = view;
                    }
                    if (viewFindViewById11 != null || view2 != null) {
                        if (this.f != null) {
                            this.A.setOnScrollChangeListener(new androidx.appcompat.app.c(viewFindViewById11, view2));
                            this.A.post(new d(this, viewFindViewById11, view2));
                        } else {
                            RecycleListView recycleListView2 = this.f92g;
                            if (recycleListView2 != null) {
                                recycleListView2.setOnScrollListener(new e(viewFindViewById11, view2));
                                this.f92g.post(new f(this, viewFindViewById11, view2));
                            } else {
                                if (viewFindViewById11 != null) {
                                    viewGroupC2.removeView(viewFindViewById11);
                                }
                                if (view2 != null) {
                                    viewGroupC2.removeView(view2);
                                }
                            }
                        }
                    }
                }
            }
        }
        RecycleListView recycleListView3 = this.f92g;
        if (recycleListView3 == null || (listAdapter = this.H) == null) {
            return;
        }
        recycleListView3.setAdapter(listAdapter);
        int i10 = this.I;
        if (i10 > -1) {
            recycleListView3.setItemChecked(i10, true);
            recycleListView3.setSelection(i10);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setCustomTitle(View view) {
        this.G = view;
    }

    public void setMessage(CharSequence charSequence) {
        this.f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setView(int i) {
        this.h = null;
        this.i = i;
        this.n = false;
    }

    public void setView(View view) {
        this.h = view;
        this.i = 0;
        this.n = false;
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        this.h = view;
        this.i = 0;
        this.n = true;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.P.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.x = charSequence;
            this.y = message;
            this.z = drawable;
        } else if (i == -2) {
            this.t = charSequence;
            this.u = message;
            this.v = drawable;
        } else {
            if (i == -1) {
                this.p = charSequence;
                this.q = message;
                this.r = drawable;
                return;
            }
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void setIcon(int i) {
        this.C = null;
        this.B = i;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i != 0) {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public int getIconAttributeResId(int i) {
        TypedValue typedValue = new TypedValue();
        this.f90a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.f92g;
    }

    public Button getButton(int i) {
        if (i == -3) {
            return this.w;
        }
        if (i == -2) {
            return this.s;
        }
        if (i != -1) {
            return null;
        }
        return this.o;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public static ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public static void b(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public static class RecycleListView extends ListView {

        /* renamed from: a, reason: collision with root package name */
        public final int f93a;

        /* renamed from: b, reason: collision with root package name */
        public final int f94b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.f94b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f93a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (z2 && z) {
                return;
            }
            setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f93a, getPaddingRight(), z2 ? getPaddingBottom() : this.f94b);
        }
    }

    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public Drawable mNegativeButtonIcon;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public Drawable mNeutralButtonIcon;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public DialogInterface.OnCancelListener mOnCancelListener;
        public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public DialogInterface.OnDismissListener mOnDismissListener;
        public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
        public DialogInterface.OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public Drawable mPositiveButtonIcon;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public int mViewSpacingTop;
        public int mIconId = 0;
        public int mIconAttrId = 0;
        public boolean mViewSpacingSpecified = false;
        public int mCheckedItem = -1;
        public boolean mRecycleOnMeasure = true;
        public boolean mCancelable = true;

        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void apply(AlertController alertController) {
            AlertController alertController2;
            AlertParams alertParams;
            AlertController alertController3;
            int i;
            ListAdapter simpleCursorAdapter;
            View view = this.mCustomTitleView;
            if (view != null) {
                alertController.setCustomTitle(view);
            } else {
                CharSequence charSequence = this.mTitle;
                if (charSequence != null) {
                    alertController.setTitle(charSequence);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    alertController.setIcon(drawable);
                }
                int i2 = this.mIconId;
                if (i2 != 0) {
                    alertController.setIcon(i2);
                }
                int i3 = this.mIconAttrId;
                if (i3 != 0) {
                    alertController.setIcon(alertController.getIconAttributeResId(i3));
                }
            }
            CharSequence charSequence2 = this.mMessage;
            if (charSequence2 != null) {
                alertController.setMessage(charSequence2);
            }
            CharSequence charSequence3 = this.mPositiveButtonText;
            if (charSequence3 == null && this.mPositiveButtonIcon == null) {
                alertController2 = alertController;
            } else {
                alertController.setButton(-1, charSequence3, this.mPositiveButtonListener, null, this.mPositiveButtonIcon);
                alertController2 = alertController;
            }
            CharSequence charSequence4 = this.mNegativeButtonText;
            if (charSequence4 != null || this.mNegativeButtonIcon != null) {
                alertController2.setButton(-2, charSequence4, this.mNegativeButtonListener, null, this.mNegativeButtonIcon);
            }
            CharSequence charSequence5 = this.mNeutralButtonText;
            if (charSequence5 != null || this.mNeutralButtonIcon != null) {
                alertController2.setButton(-3, charSequence5, this.mNeutralButtonListener, null, this.mNeutralButtonIcon);
            }
            if (this.mItems == null && this.mCursor == null && this.mAdapter == null) {
                alertParams = this;
                alertController3 = alertController2;
            } else {
                RecycleListView recycleListView = (RecycleListView) this.mInflater.inflate(alertController2.K, (ViewGroup) null);
                if (this.mIsMultiChoice) {
                    if (this.mCursor == null) {
                        alertParams = this;
                        simpleCursorAdapter = new g(alertParams, this.mContext, alertController2.L, this.mItems, recycleListView);
                        alertController3 = alertController2;
                    } else {
                        alertParams = this;
                        alertController3 = alertController2;
                        simpleCursorAdapter = new h(alertParams, alertParams.mContext, alertParams.mCursor, recycleListView, alertController3);
                    }
                } else {
                    alertParams = this;
                    alertController3 = alertController2;
                    if (alertParams.mIsSingleChoice) {
                        i = alertController3.M;
                    } else {
                        i = alertController3.N;
                    }
                    int i4 = i;
                    if (alertParams.mCursor != null) {
                        simpleCursorAdapter = new SimpleCursorAdapter(alertParams.mContext, i4, alertParams.mCursor, new String[]{alertParams.mLabelColumn}, new int[]{android.R.id.text1});
                    } else {
                        ListAdapter cVar = alertParams.mAdapter;
                        if (cVar == null) {
                            cVar = new c(alertParams.mContext, i4, android.R.id.text1, alertParams.mItems);
                        }
                        simpleCursorAdapter = cVar;
                    }
                }
                OnPrepareListViewListener onPrepareListViewListener = alertParams.mOnPrepareListViewListener;
                if (onPrepareListViewListener != null) {
                    onPrepareListViewListener.onPrepareListView(recycleListView);
                }
                alertController3.H = simpleCursorAdapter;
                alertController3.I = alertParams.mCheckedItem;
                if (alertParams.mOnClickListener != null) {
                    recycleListView.setOnItemClickListener(new i(this, alertController3));
                } else if (alertParams.mOnCheckboxClickListener != null) {
                    recycleListView.setOnItemClickListener(new j(this, recycleListView, alertController3));
                }
                AdapterView.OnItemSelectedListener onItemSelectedListener = alertParams.mOnItemSelectedListener;
                if (onItemSelectedListener != null) {
                    recycleListView.setOnItemSelectedListener(onItemSelectedListener);
                }
                if (alertParams.mIsSingleChoice) {
                    recycleListView.setChoiceMode(1);
                } else if (alertParams.mIsMultiChoice) {
                    recycleListView.setChoiceMode(2);
                }
                alertController3.f92g = recycleListView;
            }
            View view2 = alertParams.mView;
            if (view2 != null) {
                if (alertParams.mViewSpacingSpecified) {
                    alertController3.setView(view2, alertParams.mViewSpacingLeft, alertParams.mViewSpacingTop, alertParams.mViewSpacingRight, alertParams.mViewSpacingBottom);
                    return;
                } else {
                    alertController3.setView(view2);
                    return;
                }
            }
            AlertController alertController4 = alertController3;
            int i5 = alertParams.mViewLayoutResId;
            if (i5 != 0) {
                alertController4.setView(i5);
            }
        }
    }

    public static class c extends ArrayAdapter<CharSequence> {
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }
    }
}
