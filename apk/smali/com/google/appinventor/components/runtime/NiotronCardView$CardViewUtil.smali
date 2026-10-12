.class public Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;
.super Lcom/google/android/material/card/MaterialCardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardViewUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronCardView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCardView;Landroid/content/Context;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;->this$0:Lcom/google/appinventor/components/runtime/NiotronCardView;

    .line 745
    invoke-direct {p0, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 749
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;->this$0:Lcom/google/appinventor/components/runtime/NiotronCardView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronCardView;->a(Lcom/google/appinventor/components/runtime/NiotronCardView;)Z

    move-result p1

    return p1
.end method
