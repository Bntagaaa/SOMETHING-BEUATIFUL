.class public Lcom/google/appinventor/components/runtime/util/TiramisuUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAudioPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1

    .line 49
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method

.method public static requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 2

    .line 30
    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "file:"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 32
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsReadPermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    :goto_1
    if-eqz p2, :cond_4

    .line 40
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static requestImagePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1

    .line 54
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method

.method public static requestVideoPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1

    .line 59
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method
