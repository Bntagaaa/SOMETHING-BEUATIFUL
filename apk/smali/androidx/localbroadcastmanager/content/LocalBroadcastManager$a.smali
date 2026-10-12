.class final Landroidx/localbroadcastmanager/content/LocalBroadcastManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$a;->a:Landroid/content/Intent;

    .line 81
    iput-object p2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$a;->b:Ljava/util/ArrayList;

    return-void
.end method
