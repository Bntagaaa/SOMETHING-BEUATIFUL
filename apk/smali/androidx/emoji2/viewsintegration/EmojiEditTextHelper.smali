.class public final Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;,
        Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, p1, v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;-><init>(Landroid/widget/EditText;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 73
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->b:I

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->c:I

    .line 106
    const-string v0, "editText cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    invoke-direct {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    return-void
.end method


# virtual methods
.method public getEmojiReplaceStrategy()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 204
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->c:I

    return v0
.end method

.method public getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1
    .param p1    # Landroid/text/method/KeyListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 155
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 293
    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_2

    return-object p1

    .line 299
    :cond_2
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0
.end method

.method public getMaxEmojiCount()I
    .locals 1

    .line 139
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->b:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    .line 324
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Landroidx/emoji2/viewsintegration/c;

    .line 324
    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/c;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    instance-of v1, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    if-eqz v1, :cond_1

    return-object p1

    .line 310
    :cond_1
    new-instance v1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->a:Landroid/widget/EditText;

    invoke-direct {v1, v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v1
.end method

.method public setEmojiReplaceStrategy(I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 189
    iput p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->c:I

    .line 190
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    .line 68
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Landroidx/emoji2/viewsintegration/c;

    .line 68
    iput p1, v0, Landroidx/emoji2/viewsintegration/c;->e:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    .line 315
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Landroidx/emoji2/viewsintegration/c;

    .line 315
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/c;->setEnabled(Z)V

    return-void
.end method

.method public setMaxEmojiCount(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 126
    const-string v0, "maxEmojiCount should be greater than 0"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 128
    iput p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->b:I

    .line 129
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;

    .line 56
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Landroidx/emoji2/viewsintegration/c;

    .line 56
    iput p1, v0, Landroidx/emoji2/viewsintegration/c;->d:I

    return-void
.end method
