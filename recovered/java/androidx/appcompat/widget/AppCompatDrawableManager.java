package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f317b = PorterDuff.Mode.SRC_IN;
    public static AppCompatDrawableManager c;

    /* renamed from: a, reason: collision with root package name */
    public ResourceManagerInternal f318a;

    public class a implements ResourceManagerInternal.ResourceManagerHooks {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f319a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b, reason: collision with root package name */
        public final int[] f320b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
        public final int[] c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
        public final int[] d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        public final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
        public final int[] f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

        /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x006b A[RETURN] */
        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean tintDrawableUsingColorFilter(@androidx.annotation.NonNull android.content.Context r7, int r8, @androidx.annotation.NonNull android.graphics.drawable.Drawable r9) {
            /*
                r6 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.f317b
                int[] r1 = r6.f319a
                boolean r1 = a(r8, r1)
                r2 = -1
                r3 = 0
                r4 = 1
                if (r1 == 0) goto L13
                int r8 = androidx.appcompat.R.attr.colorControlNormal
            Lf:
                r1 = r0
            L10:
                r0 = -1
                r5 = 1
                goto L4e
            L13:
                int[] r1 = r6.c
                boolean r1 = a(r8, r1)
                if (r1 == 0) goto L1e
                int r8 = androidx.appcompat.R.attr.colorControlActivated
                goto Lf
            L1e:
                int[] r1 = r6.d
                boolean r1 = a(r8, r1)
                r5 = 16842801(0x1010031, float:2.3693695E-38)
                if (r1 == 0) goto L30
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            L2b:
                r1 = r0
                r8 = 16842801(0x1010031, float:2.3693695E-38)
                goto L10
            L30:
                int r1 = androidx.appcompat.R.drawable.abc_list_divider_mtrl_alpha
                if (r8 != r1) goto L45
                r8 = 1109603123(0x42233333, float:40.8)
                int r8 = java.lang.Math.round(r8)
                r1 = 16842800(0x1010030, float:2.3693693E-38)
                r1 = r0
                r5 = 1
                r0 = r8
                r8 = 16842800(0x1010030, float:2.3693693E-38)
                goto L4e
            L45:
                int r1 = androidx.appcompat.R.drawable.abc_dialog_material_background
                if (r8 != r1) goto L4a
                goto L2b
            L4a:
                r1 = r0
                r8 = 0
                r0 = -1
                r5 = 0
            L4e:
                if (r5 == 0) goto L6b
                boolean r3 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r9)
                if (r3 == 0) goto L5a
                android.graphics.drawable.Drawable r9 = r9.mutate()
            L5a:
                int r7 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r7, r8)
                android.graphics.PorterDuffColorFilter r7 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(r7, r1)
                r9.setColorFilter(r7)
                if (r0 == r2) goto L6a
                r9.setAlpha(r0)
            L6a:
                return r4
            L6b:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.a.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        public static ColorStateList b(Context context, int i) {
            int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
            return new ColorStateList(new int[][]{ThemeUtils.f427b, ThemeUtils.d, ThemeUtils.c, ThemeUtils.f}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, int i) {
            if (i == R.drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{resourceManagerInternal.getDrawable(context, R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == R.drawable.abc_ratingbar_material) {
                return c(resourceManagerInternal, context, R.dimen.abc_star_big);
            }
            if (i == R.drawable.abc_ratingbar_indicator_material) {
                return c(resourceManagerInternal, context, R.dimen.abc_star_medium);
            }
            if (i == R.drawable.abc_ratingbar_small_material) {
                return c(resourceManagerInternal, context, R.dimen.abc_star_small);
            }
            return null;
        }

        public static LayerDrawable c(ResourceManagerInternal resourceManagerInternal, Context context, int i) throws Resources.NotFoundException {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable drawable = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_black_48dp);
            Drawable drawable2 = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_half_black_48dp);
            if ((drawable instanceof BitmapDrawable) && drawable.getIntrinsicWidth() == dimensionPixelSize && drawable.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawable;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawable.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawable2 instanceof BitmapDrawable) && drawable2.getIntrinsicWidth() == dimensionPixelSize && drawable2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawable2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawable2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawable2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.secondaryProgress);
            layerDrawable.setId(2, android.R.id.progress);
            return layerDrawable;
        }

        public static void d(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = AppCompatDrawableManager.f317b;
            }
            drawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode));
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public boolean tintDrawable(@NonNull Context context, int i, @NonNull Drawable drawable) {
            if (i == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int i2 = R.attr.colorControlNormal;
                int themeAttrColor = ThemeUtils.getThemeAttrColor(context, i2);
                PorterDuff.Mode mode = AppCompatDrawableManager.f317b;
                d(drawableFindDrawableByLayerId, themeAttrColor, mode);
                d(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, i2), mode);
                d(layerDrawable.findDrawableByLayerId(android.R.id.progress), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), mode);
                return true;
            }
            if (i != R.drawable.abc_ratingbar_material && i != R.drawable.abc_ratingbar_indicator_material && i != R.drawable.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
            int disabledThemeAttrColor = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal);
            PorterDuff.Mode mode2 = AppCompatDrawableManager.f317b;
            d(drawableFindDrawableByLayerId2, disabledThemeAttrColor, mode2);
            Drawable drawableFindDrawableByLayerId3 = layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress);
            int i3 = R.attr.colorControlActivated;
            d(drawableFindDrawableByLayerId3, ThemeUtils.getThemeAttrColor(context, i3), mode2);
            d(layerDrawable2.findDrawableByLayerId(android.R.id.progress), ThemeUtils.getThemeAttrColor(context, i3), mode2);
            return true;
        }

        public static boolean a(int i, int[] iArr) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public ColorStateList getTintListForDrawableRes(@NonNull Context context, int i) {
            if (i == R.drawable.abc_edit_text_material) {
                return AppCompatResources.getColorStateList(context, R.color.abc_tint_edittext);
            }
            if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                return AppCompatResources.getColorStateList(context, R.color.abc_tint_switch_track);
            }
            if (i == R.drawable.abc_switch_thumb_material) {
                int[][] iArr = new int[3][];
                int[] iArr2 = new int[3];
                int i2 = R.attr.colorSwitchThumbNormal;
                ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, i2);
                if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
                    int[] iArr3 = ThemeUtils.f427b;
                    iArr[0] = iArr3;
                    iArr2[0] = themeAttrColorStateList.getColorForState(iArr3, 0);
                    iArr[1] = ThemeUtils.e;
                    iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
                    iArr[2] = ThemeUtils.f;
                    iArr2[2] = themeAttrColorStateList.getDefaultColor();
                } else {
                    iArr[0] = ThemeUtils.f427b;
                    iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, i2);
                    iArr[1] = ThemeUtils.e;
                    iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
                    iArr[2] = ThemeUtils.f;
                    iArr2[2] = ThemeUtils.getThemeAttrColor(context, i2);
                }
                return new ColorStateList(iArr, iArr2);
            }
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return b(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return b(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorAccent));
            }
            if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                return AppCompatResources.getColorStateList(context, R.color.abc_tint_spinner);
            }
            if (a(i, this.f320b)) {
                return ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
            }
            if (a(i, this.e)) {
                return AppCompatResources.getColorStateList(context, R.color.abc_tint_default);
            }
            if (a(i, this.f)) {
                return AppCompatResources.getColorStateList(context, R.color.abc_tint_btn_checkable);
            }
            if (i == R.drawable.abc_seekbar_thumb_material) {
                return AppCompatResources.getColorStateList(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public PorterDuff.Mode getTintModeForDrawableRes(int i) {
            if (i == R.drawable.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }
    }

    public static synchronized void preload() {
        if (c == null) {
            AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
            c = appCompatDrawableManager;
            appCompatDrawableManager.f318a = ResourceManagerInternal.get();
            c.f318a.setHooks(new a());
        }
    }

    public static synchronized AppCompatDrawableManager get() {
        try {
            if (c == null) {
                preload();
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return this.f318a.getDrawable(context, i);
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        this.f318a.onConfigurationChanged(context);
    }

    public static void a(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        PorterDuff.Mode mode = ResourceManagerInternal.h;
        int[] state = drawable.getState();
        if (DrawableUtils.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z = tintInfo.mHasTintList;
        if (z || tintInfo.mHasTintMode) {
            PorterDuffColorFilter porterDuffColorFilter = null;
            ColorStateList colorStateList = z ? tintInfo.mTintList : null;
            PorterDuff.Mode mode2 = tintInfo.mHasTintMode ? tintInfo.mTintMode : ResourceManagerInternal.h;
            if (colorStateList != null && mode2 != null) {
                porterDuffColorFilter = ResourceManagerInternal.getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode2);
            }
            drawable.setColorFilter(porterDuffColorFilter);
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        return ResourceManagerInternal.getPorterDuffColorFilter(i, mode);
    }
}
