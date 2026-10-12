.class Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallStateReceiver"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 303
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 309
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 313
    const-string p1, "incoming_number"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 319
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v0, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    invoke-virtual {p2, v0, p1}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_1
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 321
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne p1, p2, :cond_7

    .line 322
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 323
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->IncomingCallAnswered(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_2
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 326
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne p1, p2, :cond_3

    .line 327
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->IncomingRejected:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne p1, p2, :cond_4

    .line 329
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->IncomingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_4
    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne p1, p2, :cond_5

    .line 331
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->OutgoingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 334
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    return-void

    .line 336
    :cond_6
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 337
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 338
    const-string p1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 339
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v0, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    invoke-virtual {p2, v0, p1}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
