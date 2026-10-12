.class Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSnakbar;->updateSnakbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSnakbar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSnakbar;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSnakbar;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 133
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSnakbar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a(Lcom/google/appinventor/components/runtime/NiotronSnakbar;Z)V

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSnakbar;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->Dismissed()V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 129
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSnakbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a(Lcom/google/appinventor/components/runtime/NiotronSnakbar;Z)V

    .line 141
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSnakbar;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->Shown()V

    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
