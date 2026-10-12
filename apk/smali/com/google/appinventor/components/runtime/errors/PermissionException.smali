.class public Lcom/google/appinventor/components/runtime/errors/PermissionException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final permissionNeeded:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->permissionNeeded:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->permissionNeeded:Ljava/lang/String;

    const-string v1, "Unable to complete the operation because the user denied permission: "

    .line 0
    invoke-static {v1, v0}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionNeeded()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->permissionNeeded:Ljava/lang/String;

    return-object v0
.end method
