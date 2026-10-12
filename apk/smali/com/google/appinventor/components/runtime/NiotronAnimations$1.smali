.class Lcom/google/appinventor/components/runtime/NiotronAnimations$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAnimations;->ShowAnimation(Lcom/google/appinventor/components/runtime/AndroidViewComponent;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAnimations;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAnimations;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAnimations;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAnimations;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronAnimations;->AnimationCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAnimations;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronAnimations;->AnimationEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAnimations;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronAnimations;->AnimationRepeat(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAnimations;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronAnimations;->AnimationStart(Ljava/lang/String;)V

    return-void
.end method
