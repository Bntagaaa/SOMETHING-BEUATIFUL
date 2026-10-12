.class final Landroidx/emoji2/viewsintegration/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Z

.field public c:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 44
    iput v0, p0, Landroidx/emoji2/viewsintegration/c;->d:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/emoji2/viewsintegration/c;->e:I

    .line 50
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/c;->a:Landroid/widget/EditText;

    .line 51
    iput-boolean p2, p0, Landroidx/emoji2/viewsintegration/c;->b:Z

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/c;->f:Z

    return-void
.end method

.method public static a(Landroid/widget/EditText;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-eqz p0, :cond_2

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    .line 155
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 156
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 158
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    if-ltz p1, :cond_0

    if-ltz v0, :cond_0

    .line 164
    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 166
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void

    :cond_1
    if-ltz v0, :cond_2

    .line 168
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/c;->f:Z

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 74
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/c;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    iget-boolean v1, p0, Landroidx/emoji2/viewsintegration/c;->f:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroidx/emoji2/viewsintegration/c;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-gt p3, p4, :cond_4

    .line 79
    instance-of p3, p1, Landroid/text/Spannable;

    if-eqz p3, :cond_4

    .line 80
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    goto :goto_0

    .line 82
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/text/Spannable;

    .line 83
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    add-int v4, p2, p4

    iget v5, p0, Landroidx/emoji2/viewsintegration/c;->d:I

    iget v6, p0, Landroidx/emoji2/viewsintegration/c;->e:I

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    return-void

    .line 88
    :cond_2
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object p1

    .line 112
    iget-object p2, p0, Landroidx/emoji2/viewsintegration/c;->c:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-nez p2, :cond_3

    .line 113
    new-instance p2, Landroidx/emoji2/viewsintegration/c$a;

    invoke-direct {p2, v0}, Landroidx/emoji2/viewsintegration/c$a;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Landroidx/emoji2/viewsintegration/c;->c:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 115
    :cond_3
    iget-object p2, p0, Landroidx/emoji2/viewsintegration/c;->c:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 88
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/c;->f:Z

    if-eq v0, p1, :cond_1

    .line 124
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/c;->c:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/c;->c:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    .line 127
    :cond_0
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/c;->f:Z

    if-eqz p1, :cond_1

    .line 129
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result p1

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/c;->a:Landroid/widget/EditText;

    invoke-static {v0, p1}, Landroidx/emoji2/viewsintegration/c;->a(Landroid/widget/EditText;I)V

    :cond_1
    return-void
.end method
