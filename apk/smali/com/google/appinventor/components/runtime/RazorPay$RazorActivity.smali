.class public Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/PaymentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/RazorPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RazorActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Lcom/razorpay/Checkout;

    invoke-direct {p1}, Lcom/razorpay/Checkout;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/razorpay/Checkout;->setKeyID(Ljava/lang/String;)V

    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string v1, "key"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "name"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "description"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "image"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "currency"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "order_id"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "amount"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->c()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 70
    const-string v1, "prefill.email"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "prefill.contact"

    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1, p0, v0}, Lcom/razorpay/Checkout;->open(Landroid/app/Activity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RazorPay;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentError(ILjava/lang/String;)V
    .locals 1

    .line 92
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/RazorPay;->OnPaymentFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Exception in onPaymentError"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .locals 2

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RazorPay;->OnPaymentSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception in onPaymentSuccess"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
