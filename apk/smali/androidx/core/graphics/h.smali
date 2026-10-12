.class final Landroidx/core/graphics/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/reflect/Field;

.field public static final b:Landroidx/collection/LongSparseArray;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "native_instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeightTypeface"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 57
    :goto_0
    sput-object v0, Landroidx/core/graphics/h;->a:Ljava/lang/reflect/Field;

    .line 71
    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/h;->b:Landroidx/collection/LongSparseArray;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/graphics/h;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/core/graphics/e;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 64
    sget-object v4, Landroidx/core/graphics/h;->a:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    shl-int/lit8 v6, v2, 0x1

    or-int/2addr v6, v3

    .line 88
    sget-object v7, Landroidx/core/graphics/h;->c:Ljava/lang/Object;

    monitor-enter v7

    .line 147
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 148
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    sget-object v4, Landroidx/core/graphics/h;->b:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-nez v10, :cond_0

    .line 92
    new-instance v10, Landroid/util/SparseArray;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Landroid/util/SparseArray;-><init>(I)V

    .line 93
    invoke-virtual {v4, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 95
    :cond_0
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_1

    .line 97
    monitor-exit v7

    return-object v4

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    invoke-static {v1}, Landroidx/core/graphics/e;->c(Landroid/graphics/Typeface;)J

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmp-long v4, v8, v11

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    .line 266
    :cond_2
    iget-object v4, v0, Landroidx/core/graphics/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 173
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v8

    new-instance v9, Landroidx/core/graphics/g;

    .line 174
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {v8, v2, v3, v9}, Landroidx/core/graphics/e;->b([Ljava/lang/Object;IZLandroidx/core/graphics/e$b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    if-nez v8, :cond_4

    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v15

    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p1

    .line 209
    invoke-static/range {v13 .. v18}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v5

    .line 270
    invoke-static {v5}, Landroidx/core/graphics/e;->c(Landroid/graphics/Typeface;)J

    move-result-wide v8

    cmp-long v13, v8, v11

    if-eqz v13, :cond_5

    .line 272
    iget-object v0, v0, Landroidx/core/graphics/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    if-nez v5, :cond_a

    const/4 v0, 0x1

    const/16 v4, 0x258

    const/4 v5, 0x0

    if-lt v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    if-nez v2, :cond_8

    const/4 v0, 0x2

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x3

    .line 126
    :goto_4
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 105
    :cond_a
    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    monitor-exit v7

    return-object v5

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :goto_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    return-object v5
.end method
