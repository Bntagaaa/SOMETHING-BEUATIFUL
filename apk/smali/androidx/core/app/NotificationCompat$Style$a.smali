.class Landroidx/core/app/NotificationCompat$Style$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/RemoteViews;IIF)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 3225
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    return-void
.end method

.method public static b(Landroid/widget/RemoteViews;IIIII)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 3231
    invoke-virtual/range {p0 .. p5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    return-void
.end method
