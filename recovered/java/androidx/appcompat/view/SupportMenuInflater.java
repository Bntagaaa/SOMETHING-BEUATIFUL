package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f213a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f214b;
    public final Context c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.f213a = objArr;
        this.f214b = objArr;
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.c.getResources().getLayout(i);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (IOException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }

    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlResourceParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        bVar.resetGroup();
                    } else if (name2.equals("item")) {
                        if (!bVar.hasAddedItem()) {
                            ActionProvider actionProvider = bVar.z;
                            if (actionProvider != null && actionProvider.hasSubMenu()) {
                                bVar.addSubMenuItem();
                            } else {
                                bVar.addItem();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlResourceParser.getName();
                if (name3.equals("group")) {
                    bVar.readGroup(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.readItem(attributeSet);
                } else if (name3.equals("menu")) {
                    b(xmlResourceParser, attributeSet, bVar.addSubMenuItem());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlResourceParser.next();
        }
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public static class a implements MenuItem.OnMenuItemClickListener {
        public static final Class[] c = {MenuItem.class};

        /* renamed from: a, reason: collision with root package name */
        public final Object f215a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f216b;

        public a(Object obj, String str) {
            this.f215a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f216b = cls.getMethod(str, c);
            } catch (Exception e) {
                StringBuilder sbR = _COROUTINE.a.r("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbR.append(cls.getName());
                InflateException inflateException = new InflateException(sbR.toString());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Method method = this.f216b;
            try {
                Class<?> returnType = method.getReturnType();
                Class<?> cls = Boolean.TYPE;
                Object obj = this.f215a;
                if (returnType == cls) {
                    return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                }
                method.invoke(obj, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    public class b {
        public CharSequence A;
        public CharSequence B;
        public ColorStateList C = null;
        public PorterDuff.Mode D = null;

        /* renamed from: a, reason: collision with root package name */
        public final Menu f217a;

        /* renamed from: b, reason: collision with root package name */
        public int f218b;
        public int c;
        public int d;
        public int e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f219g;
        public boolean h;
        public int i;
        public int j;
        public CharSequence k;
        public CharSequence l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public ActionProvider z;

        public b(Menu menu) {
            this.f217a = menu;
            resetGroup();
        }

        public void resetGroup() {
            this.f218b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = true;
            this.f219g = true;
        }

        public void readGroup(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = SupportMenuInflater.this.c.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
            this.f218b = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.c = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.d = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.e = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.f219g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void readItem(AttributeSet attributeSet) {
            SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(supportMenuInflater.c, attributeSet, R.styleable.MenuItem);
            this.i = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
            this.j = (tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.c) & (-65536)) | (tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.d) & SupportMenu.USER_MASK);
            this.k = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
            this.l = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
            this.m = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
            String string = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut);
            this.n = string == null ? (char) 0 : string.charAt(0);
            this.o = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_alphabeticModifiers, 4096);
            String string2 = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut);
            this.p = string2 == null ? (char) 0 : string2.charAt(0);
            this.q = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_numericModifiers, 4096);
            int i = R.styleable.MenuItem_android_checkable;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i)) {
                this.r = tintTypedArrayObtainStyledAttributes.getBoolean(i, false) ? 1 : 0;
            } else {
                this.r = this.e;
            }
            this.s = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
            this.t = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.f);
            this.u = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.f219g);
            this.v = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
            this.y = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
            this.w = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
            this.x = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
            String string3 = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
            boolean z = string3 != null;
            if (z && this.w == 0 && this.x == null) {
                this.z = (ActionProvider) a(string3, SupportMenuInflater.f, supportMenuInflater.f214b);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.z = null;
            }
            this.A = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_contentDescription);
            this.B = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_tooltipText);
            int i2 = R.styleable.MenuItem_iconTintMode;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
                this.D = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(i2, -1), this.D);
            } else {
                this.D = null;
            }
            int i3 = R.styleable.MenuItem_iconTint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i3)) {
                this.C = tintTypedArrayObtainStyledAttributes.getColorStateList(i3);
            } else {
                this.C = null;
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            this.h = false;
        }

        public final void b(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            String str = this.y;
            SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
            if (str != null) {
                if (!supportMenuInflater.c.isRestricted()) {
                    if (supportMenuInflater.d == null) {
                        supportMenuInflater.d = SupportMenuInflater.a(supportMenuInflater.c);
                    }
                    menuItem.setOnMenuItemClickListener(new a(supportMenuInflater.d, this.y));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            String str2 = this.x;
            if (str2 != null) {
                menuItem.setActionView((View) a(str2, SupportMenuInflater.e, supportMenuInflater.f213a));
                z = true;
            }
            int i2 = this.w;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            ActionProvider actionProvider = this.z;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.A);
            MenuItemCompat.setTooltipText(menuItem, this.B);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.n, this.o);
            MenuItemCompat.setNumericShortcut(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.D;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.C;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void addItem() {
            this.h = true;
            b(this.f217a.add(this.f218b, this.i, this.j, this.k));
        }

        public SubMenu addSubMenuItem() {
            this.h = true;
            SubMenu subMenuAddSubMenu = this.f217a.addSubMenu(this.f218b, this.i, this.j, this.k);
            b(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean hasAddedItem() {
            return this.h;
        }

        public final Object a(String str, Class[] clsArr, Object[] objArr) throws NoSuchMethodException, SecurityException {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }
    }
}
