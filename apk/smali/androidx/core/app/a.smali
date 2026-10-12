.class public final synthetic Landroidx/core/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 679
    iget-object v3, p0, Landroidx/core/app/a;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_a

    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 679
    sget-object v0, Landroidx/core/app/e;->a:Ljava/lang/Class;

    .line 110
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    return-void

    .line 115
    :cond_0
    sget-object v5, Landroidx/core/app/e;->a:Ljava/lang/Class;

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, 0x1

    :goto_1
    sget-object v8, Landroidx/core/app/e;->f:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    if-nez v8, :cond_3

    goto/16 :goto_6

    .line 120
    :cond_3
    sget-object v7, Landroidx/core/app/e;->e:Ljava/lang/reflect/Method;

    if-nez v7, :cond_4

    sget-object v7, Landroidx/core/app/e;->d:Ljava/lang/reflect/Method;

    if-nez v7, :cond_4

    goto/16 :goto_6

    .line 124
    :cond_4
    :try_start_0
    sget-object v7, Landroidx/core/app/e;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_6

    .line 128
    :cond_5
    sget-object v9, Landroidx/core/app/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_6

    .line 133
    :cond_6
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v10

    .line 134
    new-instance v11, Landroidx/core/app/e$b;

    invoke-direct {v11, v3}, Landroidx/core/app/e$b;-><init>(Landroid/app/Activity;)V

    .line 135
    invoke-virtual {v10, v11}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    sget-object v12, Landroidx/core/app/e;->g:Landroid/os/Handler;

    :try_start_1
    new-instance v13, Landroidx/core/app/c;

    invoke-direct {v13, v11, v7}, Landroidx/core/app/c;-><init>(Landroidx/core/app/e$b;Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v4, v6, :cond_8

    if-ne v4, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_9

    .line 153
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v0

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    aput-object v0, v5, v1

    const/4 v1, 0x5

    aput-object v2, v5, v1

    const/4 v1, 0x6

    aput-object v2, v5, v1

    const/4 v1, 0x7

    aput-object v0, v5, v1

    const/16 v1, 0x8

    aput-object v0, v5, v1

    .line 152
    invoke-virtual {v8, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 155
    :cond_9
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :goto_4
    :try_start_3
    new-instance v0, Landroidx/core/app/d;

    invoke-direct {v0, v10, v11}, Landroidx/core/app/d;-><init>(Landroid/app/Application;Landroidx/core/app/e$b;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_5
    new-instance v1, Landroidx/core/app/d;

    invoke-direct {v1, v10, v11}, Landroidx/core/app/d;-><init>(Landroid/app/Application;Landroidx/core/app/e$b;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 681
    :catchall_1
    :goto_6
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    :cond_a
    return-void
.end method
