.class public final Lcom/google/android/material/timepicker/MaterialTimePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/q$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_CLOCK:I = 0x0

.field public static final INPUT_MODE_KEYBOARD:I = 0x1


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:Ljava/lang/CharSequence;

.field public E0:I

.field public F0:Ljava/lang/CharSequence;

.field public G0:I

.field public H0:Ljava/lang/CharSequence;

.field public I0:Lcom/google/android/material/button/MaterialButton;

.field public J0:Landroid/widget/Button;

.field public K0:I

.field public L0:Lcom/google/android/material/timepicker/i;

.field public M0:I

.field public final r0:Ljava/util/LinkedHashSet;

.field public final s0:Ljava/util/LinkedHashSet;

.field public final t0:Ljava/util/LinkedHashSet;

.field public final u0:Ljava/util/LinkedHashSet;

.field public v0:Lcom/google/android/material/timepicker/q;

.field public w0:Landroid/view/ViewStub;

.field public x0:Lcom/google/android/material/timepicker/l;

.field public y0:Lcom/google/android/material/timepicker/o;

.field public z0:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r0:Ljava/util/LinkedHashSet;

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s0:Ljava/util/LinkedHashSet;

    .line 69
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t0:Ljava/util/LinkedHashSet;

    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u0:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->C0:I

    .line 84
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->E0:I

    .line 86
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->G0:I

    .line 110
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    .line 114
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->M0:I

    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 485
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 509
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 457
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 436
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t0:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u0:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s0:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r0:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getHour()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x17L
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    iget v0, v0, Lcom/google/android/material/timepicker/i;->d:I

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    return v0
.end method

.method public getMinute()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x3bL
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    iget v0, v0, Lcom/google/android/material/timepicker/i;->e:I

    return v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 336
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t0:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 337
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 239
    :cond_1
    const-string v0, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/i;

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    if-nez v0, :cond_2

    .line 241
    new-instance v0, Lcom/google/android/material/timepicker/i;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    .line 243
    :cond_2
    const-string v0, "TIME_PICKER_INPUT_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    .line 244
    const-string v0, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->C0:I

    .line 245
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->D0:Ljava/lang/CharSequence;

    .line 246
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->E0:I

    .line 247
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->F0:Ljava/lang/CharSequence;

    .line 248
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->G0:I

    .line 249
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->H0:Ljava/lang/CharSequence;

    .line 250
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->M0:I

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 176
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 529
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->M0:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$attr;->materialTimePickerTheme:I

    invoke-static {v1, v3}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 533
    :cond_1
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 176
    :goto_0
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 177
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v3, Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 180
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v0, v1, v3}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 182
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget v4, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v5, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6, v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 189
    sget-object v7, Lcom/google/android/material/R$styleable;->MaterialTimePicker:[I

    .line 190
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 196
    sget v5, Lcom/google/android/material/R$styleable;->MaterialTimePicker_clockIcon:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->B0:I

    .line 197
    sget v5, Lcom/google/android/material/R$styleable;->MaterialTimePicker_keyboardIcon:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->A0:I

    .line 199
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 202
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 203
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v1, -0x2

    .line 207
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 209
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 259
    sget p3, Lcom/google/android/material/R$layout;->material_timepicker_dialog:I

    .line 260
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 261
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/timepicker/q;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v0:Lcom/google/android/material/timepicker/q;

    .line 248
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    sget p2, Lcom/google/android/material/R$id;->material_textinput_timepicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->w0:Landroid/view/ViewStub;

    .line 264
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_mode_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->I0:Lcom/google/android/material/button/MaterialButton;

    .line 265
    sget p2, Lcom/google/android/material/R$id;->header_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 267
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->C0:I

    if-eqz p3, :cond_0

    .line 268
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->D0:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 270
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->D0:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->I0:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->r(Lcom/google/android/material/button/MaterialButton;)V

    .line 274
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 275
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$a;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$a;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->E0:I

    if-eqz p3, :cond_2

    .line 286
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 287
    :cond_2
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->F0:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 288
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->F0:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_3
    :goto_1
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->J0:Landroid/widget/Button;

    .line 292
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$b;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->G0:I

    if-eqz p2, :cond_4

    .line 303
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->J0:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 304
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->H0:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 305
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->J0:Landroid/widget/Button;

    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->H0:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->J0:Landroid/widget/Button;

    if-eqz p2, :cond_7

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x0

    goto :goto_3

    :cond_6
    const/16 p3, 0x8

    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_7
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->I0:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$c;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$c;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 324
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->z0:Ljava/lang/Object;

    .line 326
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->x0:Lcom/google/android/material/timepicker/l;

    .line 327
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->y0:Lcom/google/android/material/timepicker/o;

    .line 328
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v0:Lcom/google/android/material/timepicker/q;

    if-eqz v1, :cond_0

    .line 330
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v0:Lcom/google/android/material/timepicker/q;

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 344
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u0:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 345
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDoubleTap()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    .line 361
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    .line 362
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->I0:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->r(Lcom/google/android/material/button/MaterialButton;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->y0:Lcom/google/android/material/timepicker/o;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/o;->resetChecked()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v0, "TIME_PICKER_TIME_MODEL"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    const-string v0, "TIME_PICKER_INPUT_MODE"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "TIME_PICKER_TITLE_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->C0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->D0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 227
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->E0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->F0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 229
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->G0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->H0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 231
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->M0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final r(Lcom/google/android/material/button/MaterialButton;)V
    .locals 3

    if-eqz p1, :cond_7

    .line 367
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v0:Lcom/google/android/material/timepicker/q;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->w0:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->z0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0}, Lcom/google/android/material/timepicker/m;->hide()V

    .line 375
    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->v0:Lcom/google/android/material/timepicker/q;

    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->w0:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->x0:Lcom/google/android/material/timepicker/l;

    if-nez v0, :cond_2

    .line 397
    new-instance v0, Lcom/google/android/material/timepicker/l;

    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/timepicker/l;-><init>(Lcom/google/android/material/timepicker/q;Lcom/google/android/material/timepicker/i;)V

    .line 398
    :cond_2
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->x0:Lcom/google/android/material/timepicker/l;

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->y0:Lcom/google/android/material/timepicker/o;

    if-nez v0, :cond_4

    .line 404
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 405
    new-instance v1, Lcom/google/android/material/timepicker/o;

    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/timepicker/o;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/i;)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->y0:Lcom/google/android/material/timepicker/o;

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->y0:Lcom/google/android/material/timepicker/o;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/o;->clearCheck()V

    .line 410
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->y0:Lcom/google/android/material/timepicker/o;

    .line 376
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->z0:Ljava/lang/Object;

    .line 377
    invoke-interface {v0}, Lcom/google/android/material/timepicker/m;->show()V

    .line 378
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->z0:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/m;->invalidate()V

    .line 379
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->K0:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 416
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->B0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 421
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "no icon for mode: "

    .line 0
    invoke-static {v0, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_6
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->A0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    :goto_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 493
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->t0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 517
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 465
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->s0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 444
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->r0:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 387
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->J0:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    .line 162
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/i;->setHour(I)V

    .line 163
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->z0:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/google/android/material/timepicker/m;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .line 148
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->L0:Lcom/google/android/material/timepicker/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/i;->setMinute(I)V

    .line 149
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->z0:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 150
    invoke-interface {p1}, Lcom/google/android/material/timepicker/m;->invalidate()V

    :cond_0
    return-void
.end method
