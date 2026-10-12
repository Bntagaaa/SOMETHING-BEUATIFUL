.class Lcom/google/appinventor/components/runtime/FusiontablesControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;->showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
