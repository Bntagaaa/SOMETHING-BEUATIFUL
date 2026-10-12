.class abstract Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Transactional"
.end annotation


# instance fields
.field final arg1:Ljava/lang/Object;

.field final arg2:Ljava/lang/Object;

.field final retv:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->arg1:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->arg2:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->retv:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->retv:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    return-object v0
.end method
