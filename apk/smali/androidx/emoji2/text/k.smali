.class Landroidx/emoji2/text/k;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;Landroid/os/Handler;)V
    .locals 0

    .line 309
    iput-object p1, p0, Landroidx/emoji2/text/k;->a:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 312
    iget-object p1, p0, Landroidx/emoji2/text/k;->a:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-virtual {p1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->b()V

    return-void
.end method
