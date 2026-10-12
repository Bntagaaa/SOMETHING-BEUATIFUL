.class Lcom/google/appinventor/components/runtime/Canvas$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 0

    .line 1681
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Canvas;->n(Lcom/google/appinventor/components/runtime/Canvas;Z)V

    return-void
.end method
