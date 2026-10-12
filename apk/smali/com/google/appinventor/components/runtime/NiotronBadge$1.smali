.class Lcom/google/appinventor/components/runtime/NiotronBadge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronBadge;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronBadge;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronBadge;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronBadge;->view:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronBadge;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronBadge;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
