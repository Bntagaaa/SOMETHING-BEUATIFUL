.class Lcom/google/appinventor/components/runtime/ContactInfo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ContactInfo;->ContactInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$addressType:Ljava/lang/String;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$emailType:Ljava/lang/String;

.field final synthetic val$familyName:Ljava/lang/String;

.field final synthetic val$firstName:Ljava/lang/String;

.field final synthetic val$notes:Ljava/lang/String;

.field final synthetic val$organizationName:Ljava/lang/String;

.field final synthetic val$phoneNum:Ljava/lang/String;

.field final synthetic val$phoneType:Ljava/lang/String;

.field final synthetic val$website:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ContactInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$firstName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$familyName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$displayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneNum:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneType:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$email:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$emailType:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$address:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$addressType:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$organizationName:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$website:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$notes:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$firstName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$familyName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$displayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneNum:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneType:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$email:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$emailType:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$address:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$addressType:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$organizationName:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$website:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$notes:Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v1, 0x1

    aput-object v2, v13, v1

    const/4 v1, 0x2

    aput-object v3, v13, v1

    const/4 v1, 0x3

    aput-object v4, v13, v1

    const/4 v1, 0x4

    aput-object v5, v13, v1

    const/4 v1, 0x5

    aput-object v6, v13, v1

    const/4 v1, 0x6

    aput-object v7, v13, v1

    const/4 v1, 0x7

    aput-object v8, v13, v1

    const/16 v1, 0x8

    aput-object v9, v13, v1

    const/16 v1, 0x9

    aput-object v10, v13, v1

    const/16 v1, 0xa

    aput-object v11, v13, v1

    const/16 v1, 0xb

    aput-object v12, v13, v1

    const-string v1, "ContactInfoReceived"

    invoke-static {v0, v1, v13}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
