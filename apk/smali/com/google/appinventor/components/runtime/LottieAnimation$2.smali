.class Lcom/google/appinventor/components/runtime/LottieAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LottieAnimation;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LottieAnimation;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$2;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$2;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/LottieAnimation;->Click()V

    return-void
.end method
