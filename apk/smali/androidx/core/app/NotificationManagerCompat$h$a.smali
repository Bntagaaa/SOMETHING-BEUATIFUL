.class Landroidx/core/app/NotificationManagerCompat$h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public b:Z

.field public c:Landroid/support/v4/app/INotificationSideChannel;

.field public final d:Ljava/util/ArrayDeque;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 960
    iput-boolean v0, p0, Landroidx/core/app/NotificationManagerCompat$h$a;->b:Z

    .line 964
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/core/app/NotificationManagerCompat$h$a;->d:Ljava/util/ArrayDeque;

    .line 966
    iput v0, p0, Landroidx/core/app/NotificationManagerCompat$h$a;->e:I

    .line 969
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$h$a;->a:Landroid/content/ComponentName;

    return-void
.end method
