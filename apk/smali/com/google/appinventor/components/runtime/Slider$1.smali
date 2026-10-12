.class Lcom/google/appinventor/components/runtime/Slider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Slider;->ThumbEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Slider;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Slider;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Slider$1;->this$0:Lcom/google/appinventor/components/runtime/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Slider$1;->this$0:Lcom/google/appinventor/components/runtime/Slider;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Slider;->b(Lcom/google/appinventor/components/runtime/Slider;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
