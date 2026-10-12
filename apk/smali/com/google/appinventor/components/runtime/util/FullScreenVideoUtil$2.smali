.class Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 301
    const-string p1, "FullScreenVideoUtil..onTouch"

    const-string p2, "Video Touched!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
