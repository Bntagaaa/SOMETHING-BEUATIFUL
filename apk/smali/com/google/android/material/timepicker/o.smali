.class Lcom/google/android/material/timepicker/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/q$d;
.implements Lcom/google/android/material/timepicker/m;


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Lcom/google/android/material/timepicker/i;

.field public final c:Landroid/text/TextWatcher;

.field public final d:Landroid/text/TextWatcher;

.field public final e:Lcom/google/android/material/timepicker/a;

.field public final f:Lcom/google/android/material/timepicker/a;

.field public final g:Lcom/google/android/material/timepicker/n;

.field public final h:Landroid/widget/EditText;

.field public final i:Landroid/widget/EditText;

.field public final j:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/i;)V
    .locals 6

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/material/timepicker/o$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/o$a;-><init>(Lcom/google/android/material/timepicker/o;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/o;->c:Landroid/text/TextWatcher;

    .line 76
    new-instance v0, Lcom/google/android/material/timepicker/o$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/o$b;-><init>(Lcom/google/android/material/timepicker/o;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/o;->d:Landroid/text/TextWatcher;

    .line 100
    iput-object p1, p0, Lcom/google/android/material/timepicker/o;->a:Landroid/widget/LinearLayout;

    .line 101
    iput-object p2, p0, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    sget v1, Lcom/google/android/material/R$id;->material_minute_text_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/a;

    iput-object v1, p0, Lcom/google/android/material/timepicker/o;->e:Lcom/google/android/material/timepicker/a;

    .line 104
    sget v2, Lcom/google/android/material/R$id;->material_hour_text_input:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/timepicker/a;

    iput-object v2, p0, Lcom/google/android/material/timepicker/o;->f:Lcom/google/android/material/timepicker/a;

    .line 105
    sget v3, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    sget v5, Lcom/google/android/material/R$string;->material_timepicker_minute:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v4, Lcom/google/android/material/R$string;->material_timepicker_hour:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/timepicker/a;->setTag(ILjava/lang/Object;)V

    const/16 v3, 0xa

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/timepicker/a;->setTag(ILjava/lang/Object;)V

    .line 113
    iget v0, p2, Lcom/google/android/material/timepicker/i;->c:I

    if-nez v0, :cond_0

    .line 196
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/o;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 198
    new-instance v3, Lcom/google/android/material/timepicker/p;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/p;-><init>(Lcom/google/android/material/timepicker/o;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/o;->b()V

    .line 117
    :cond_0
    new-instance v0, Lcom/google/android/material/timepicker/o$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/o$c;-><init>(Lcom/google/android/material/timepicker/o;)V

    .line 125
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/i;->getHourInputValidator()Lcom/google/android/material/timepicker/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/a;->addInputFilter(Landroid/text/InputFilter;)V

    .line 128
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/i;->getMinuteInputValidator()Lcom/google/android/material/timepicker/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/a;->addInputFilter(Landroid/text/InputFilter;)V

    .line 130
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/a;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/o;->h:Landroid/widget/EditText;

    .line 131
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/a;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/o;->i:Landroid/widget/EditText;

    .line 139
    new-instance v0, Lcom/google/android/material/timepicker/n;

    invoke-direct {v0, v2, v1, p2}, Lcom/google/android/material/timepicker/n;-><init>(Lcom/google/android/material/timepicker/a;Lcom/google/android/material/timepicker/a;Lcom/google/android/material/timepicker/i;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/o;->g:Lcom/google/android/material/timepicker/n;

    .line 140
    new-instance v0, Lcom/google/android/material/timepicker/o$d;

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {v0, v3, v4, p2}, Lcom/google/android/material/timepicker/o$d;-><init>(Landroid/content/Context;ILcom/google/android/material/timepicker/i;)V

    .line 140
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/a;->setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 152
    new-instance v0, Lcom/google/android/material/timepicker/o$e;

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {v0, p1, v2, p2}, Lcom/google/android/material/timepicker/o$e;-><init>(Landroid/content/Context;ILcom/google/android/material/timepicker/i;)V

    .line 152
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/a;->setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/o;->initialize()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/timepicker/i;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 180
    iget-object v2, p0, Lcom/google/android/material/timepicker/o;->d:Landroid/text/TextWatcher;

    iget-object v3, p0, Lcom/google/android/material/timepicker/o;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v4, p0, Lcom/google/android/material/timepicker/o;->c:Landroid/text/TextWatcher;

    iget-object v5, p0, Lcom/google/android/material/timepicker/o;->i:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v6, p0, Lcom/google/android/material/timepicker/o;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 187
    iget v7, p1, Lcom/google/android/material/timepicker/i;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    const-string v7, "%02d"

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/i;->getHourForDisplay()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v6, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->e:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v0, v8}, Lcom/google/android/material/timepicker/a;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->f:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/a;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/o;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->j:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    iget v1, v1, Lcom/google/android/material/timepicker/i;->g:I

    if-nez v1, :cond_1

    .line 218
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    goto :goto_0

    .line 219
    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    .line 216
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    return-void
.end method

.method public clearCheck()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->e:Lcom/google/android/material/timepicker/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->f:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    return-void
.end method

.method public hide()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 244
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 248
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->d:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/google/android/material/timepicker/o;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->c:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/google/android/material/timepicker/o;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/o;->a(Lcom/google/android/material/timepicker/i;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->g:Lcom/google/android/material/timepicker/n;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/n;->bind()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/o;->a(Lcom/google/android/material/timepicker/i;)V

    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    iput p1, v0, Lcom/google/android/material/timepicker/i;->f:I

    const/16 v0, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/o;->e:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/o;->f:Lcom/google/android/material/timepicker/a;

    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/o;->b()V

    return-void
.end method

.method public resetChecked()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->b:Lcom/google/android/material/timepicker/i;

    iget v1, v0, Lcom/google/android/material/timepicker/i;->f:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/o;->e:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v2, v1}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    .line 284
    iget v0, v0, Lcom/google/android/material/timepicker/i;->f:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->f:Lcom/google/android/material/timepicker/a;

    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/a;->setChecked(Z)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/google/android/material/timepicker/o;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
