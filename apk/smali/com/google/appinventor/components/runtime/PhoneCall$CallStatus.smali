.class final enum Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field public static final enum INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field public static final enum INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field public static final enum OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;


# direct methods
.method private static synthetic $values()[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    .locals 3

    const/4 v0, 0x3

    .line 280
    new-array v0, v0, [Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 281
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const-string v1, "INCOMING_WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 282
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const-string v1, "INCOMING_ANSWERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 283
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const-string v1, "OUTGOING_WAITING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 280
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->$values()[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->$VALUES:[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    .locals 1

    .line 280
    const-class v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    .locals 1

    .line 280
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->$VALUES:[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    return-object v0
.end method
