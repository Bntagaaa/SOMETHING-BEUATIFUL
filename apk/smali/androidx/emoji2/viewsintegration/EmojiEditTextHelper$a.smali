.class Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;
.super Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Landroidx/emoji2/viewsintegration/c;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1

    .line 265
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$b;-><init>()V

    .line 266
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->a:Landroid/widget/EditText;

    .line 267
    new-instance v0, Landroidx/emoji2/viewsintegration/c;

    invoke-direct {v0, p1, p2}, Landroidx/emoji2/viewsintegration/c;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Landroidx/emoji2/viewsintegration/c;

    .line 268
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    invoke-static {}, Landroidx/emoji2/viewsintegration/a;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method
