.class public Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private id:I

.field private sender:Ljava/lang/CharSequence;

.field private text:Ljava/lang/CharSequence;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->text:Ljava/lang/CharSequence;

    .line 45
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->sender:Ljava/lang/CharSequence;

    .line 46
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->timestamp:J

    .line 47
    iput p5, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->id:I

    return v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->sender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->timestamp:J

    return-wide v0
.end method
