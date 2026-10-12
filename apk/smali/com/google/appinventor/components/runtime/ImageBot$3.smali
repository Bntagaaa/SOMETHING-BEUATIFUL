.class Lcom/google/appinventor/components/runtime/ImageBot$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageBot;->EditImage(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageBot;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ImageBot;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot$3;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$3;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    const/4 v1, -0x1

    const-string v2, "Invalid input to EditImage"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ImageBot;->ErrorOccurred(ILjava/lang/String;)V

    return-void
.end method
