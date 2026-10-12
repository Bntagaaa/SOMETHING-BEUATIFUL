.class public final enum Lcom/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_DIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final synthetic b:[Lcom/google/common/base/StandardSystemProperty;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    .line 30
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "java.version"

    const-string v2, "JAVA_VERSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 33
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    const-string v2, "java.vendor"

    const-string v4, "JAVA_VENDOR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 36
    new-instance v2, Lcom/google/common/base/StandardSystemProperty;

    const-string v4, "java.vendor.url"

    const-string v6, "JAVA_VENDOR_URL"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    .line 39
    new-instance v4, Lcom/google/common/base/StandardSystemProperty;

    const-string v6, "java.home"

    const-string v8, "JAVA_HOME"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 42
    new-instance v6, Lcom/google/common/base/StandardSystemProperty;

    const-string v8, "java.vm.specification.version"

    const-string v10, "JAVA_VM_SPECIFICATION_VERSION"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 45
    new-instance v8, Lcom/google/common/base/StandardSystemProperty;

    const-string v10, "java.vm.specification.vendor"

    const-string v12, "JAVA_VM_SPECIFICATION_VENDOR"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 48
    new-instance v10, Lcom/google/common/base/StandardSystemProperty;

    const-string v12, "java.vm.specification.name"

    const-string v14, "JAVA_VM_SPECIFICATION_NAME"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 51
    new-instance v12, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.vm.version"

    const/16 v16, 0x0

    const-string v3, "JAVA_VM_VERSION"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 54
    new-instance v3, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.vm.vendor"

    const/16 v18, 0x7

    const-string v5, "JAVA_VM_VENDOR"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 57
    new-instance v5, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.vm.name"

    const/16 v20, 0x8

    const-string v7, "JAVA_VM_NAME"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 60
    new-instance v7, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.specification.version"

    const/16 v22, 0x9

    const-string v9, "JAVA_SPECIFICATION_VERSION"

    const/16 v23, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 63
    new-instance v9, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.specification.vendor"

    const/16 v24, 0xa

    const-string v11, "JAVA_SPECIFICATION_VENDOR"

    const/16 v25, 0x5

    const/16 v13, 0xb

    invoke-direct {v9, v11, v13, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 66
    new-instance v11, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.specification.name"

    const/16 v26, 0xb

    const-string v13, "JAVA_SPECIFICATION_NAME"

    const/16 v27, 0x6

    const/16 v15, 0xc

    invoke-direct {v11, v13, v15, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 69
    new-instance v13, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "java.class.version"

    const/16 v28, 0xc

    const-string v15, "JAVA_CLASS_VERSION"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v13, v15, v0, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 72
    new-instance v14, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "java.class.path"

    const/16 v30, 0xd

    const-string v0, "JAVA_CLASS_PATH"

    move-object/from16 v31, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v1, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 75
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "java.library.path"

    const/16 v32, 0xe

    const-string v1, "JAVA_LIBRARY_PATH"

    move-object/from16 v33, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 78
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "java.io.tmpdir"

    const/16 v34, 0xf

    const-string v2, "JAVA_IO_TMPDIR"

    move-object/from16 v35, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    .line 81
    new-instance v2, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "java.compiler"

    const/16 v36, 0x10

    const-string v0, "JAVA_COMPILER"

    move-object/from16 v37, v1

    const/16 v1, 0x11

    invoke-direct {v2, v0, v1, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    .line 84
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "java.ext.dirs"

    const/16 v38, 0x11

    const-string v1, "JAVA_EXT_DIRS"

    move-object/from16 v39, v2

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    .line 87
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "os.name"

    const/16 v40, 0x12

    const-string v2, "OS_NAME"

    move-object/from16 v41, v0

    const/16 v0, 0x13

    invoke-direct {v1, v2, v0, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 90
    new-instance v2, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "os.arch"

    const/16 v42, 0x13

    const-string v0, "OS_ARCH"

    move-object/from16 v43, v1

    const/16 v1, 0x14

    invoke-direct {v2, v0, v1, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    .line 93
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "os.version"

    const/16 v44, 0x14

    const-string v1, "OS_VERSION"

    move-object/from16 v45, v2

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 96
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    const-string v15, "file.separator"

    const/16 v46, 0x15

    const-string v2, "FILE_SEPARATOR"

    move-object/from16 v47, v0

    const/16 v0, 0x16

    invoke-direct {v1, v2, v0, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 99
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v2, "path.separator"

    const-string v15, "PATH_SEPARATOR"

    move-object/from16 v48, v1

    const/16 v1, 0x17

    invoke-direct {v0, v15, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 102
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    const-string v2, "line.separator"

    const-string v15, "LINE_SEPARATOR"

    move-object/from16 v49, v0

    const/16 v0, 0x18

    invoke-direct {v1, v15, v0, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 105
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v2, "user.name"

    const-string v15, "USER_NAME"

    move-object/from16 v50, v1

    const/16 v1, 0x19

    invoke-direct {v0, v15, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 108
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    const-string v2, "user.home"

    const-string v15, "USER_HOME"

    move-object/from16 v51, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v15, v0, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 111
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v2, "user.dir"

    const-string v15, "USER_DIR"

    move-object/from16 v52, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v15, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x1c

    .line 26
    new-array v1, v1, [Lcom/google/common/base/StandardSystemProperty;

    aput-object v29, v1, v16

    aput-object v31, v1, v17

    aput-object v33, v1, v19

    aput-object v4, v1, v21

    aput-object v6, v1, v23

    aput-object v8, v1, v25

    aput-object v10, v1, v27

    aput-object v12, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v30

    aput-object v14, v1, v32

    aput-object v35, v1, v34

    aput-object v37, v1, v36

    aput-object v39, v1, v38

    aput-object v41, v1, v40

    aput-object v43, v1, v42

    aput-object v45, v1, v44

    aput-object v47, v1, v46

    const/16 v2, 0x16

    aput-object v48, v1, v2

    const/16 v2, 0x17

    aput-object v49, v1, v2

    const/16 v2, 0x18

    aput-object v50, v1, v2

    const/16 v2, 0x19

    aput-object v51, v1, v2

    const/16 v2, 0x1a

    aput-object v52, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->b:[Lcom/google/common/base/StandardSystemProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/google/common/base/StandardSystemProperty;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .line 26
    const-class v0, Lcom/google/common/base/StandardSystemProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/StandardSystemProperty;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->b:[Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v0}, [Lcom/google/common/base/StandardSystemProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/StandardSystemProperty;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/common/base/StandardSystemProperty;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/common/base/StandardSystemProperty;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
