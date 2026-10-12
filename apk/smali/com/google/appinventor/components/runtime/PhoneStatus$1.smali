.class Lcom/google/appinventor/components/runtime/PhoneStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneStatus;->setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneStatus;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->a(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 158
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
