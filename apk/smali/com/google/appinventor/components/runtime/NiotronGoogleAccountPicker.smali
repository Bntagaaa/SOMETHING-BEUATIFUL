.class public Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Account Picker. This component will show you a list of Google accounts registered in given device."
    iconName = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADrElEQVRIS41Va2wUVRT+zkx3Z3btA1daIVJsuqQtmGITxEpCMAT8YVRCYtAfJKgJiVF5dGdLBQxhExK0QKIYTdSYiH8oOxh2F9JEfIRQotYKwdYgC5GlQqkC5VWg7cxu55q5211nprNbzq977nl853HPuYQpKBJhwu15mWaCsU0AnksNMAbgKIOwIx7y/AYiky9I5CZRDozVEdFmRniVAL9VJzVg90fAfQbsZxm0x9vkC05/eYCWjtEaURROAnikWEROABfd6wYzFiTC/sumLA+gRLWXifDNVCV7AADT7cqYIiUcAGMbiGhvMYDxzDj6BxlIEIvHQVgXC8mf2gBaotp2kRBxWqY1HX909UIbGbOJRElGoH4+BI93EhhjtDUelt53lihChO1W7X8vDuJiX7Zvra/VYvkz0/n5h+4h7Pk6xc9ls4PwV860gRDovUOKtNMGED4wth4CfZzTHB66gzM/9XH2yfpytLc02Jy8+1ESveeG+d3DdY3wllVY5W/FFPmzok3+5fAJYOJFbnq9Fsuas9Hn6Mdfh7B7XzYLkx5dsNgidWlySNUaBYCHfP/2PfQdP503aGooxwcb7Rls3pvE78lsBiYF5jbB4y/lZ8OgJxKt0p+2DNoSrGxc07lFqvcvXO3/x16SN4JY+nR2RI713ED7V/aZ8lXORPnsIJeXSFLZwXfong3AZMKqxouS7D6DW1dv2gCmYqSKAKbNmcfVYoqcny/bqgirmg7Ac+lsP66c54PIqb6mFFvXBlEVkDh/7aaGnV9ewLl+HiSnh2ZUo/Sxx82jHlPkrKJ1knkGUf17EFuuj2o49V0PV9gVasD8unLXBPrOD6PtwySXTW9cCNHL/X4bU+TnXQE2dujNJSLrNoU9nT/j7VXVeGFJVdHqdHZdwyfqZVQ1LeJ6zBCeird6T7kC8Cwm+pBJZ7DjpfGiznPCNZ8LILGEs9b6TyqReaGo2hECXjTP03wGNjyb/n8jOuDMn2GT6sH1u/lWJmKKvNKqNuk/CKnMJ0AfsSotqU1jcdCAZ2LH6Rmgs1dA/HQ26hxVDEu+fRGyLS3XDycc1aIgvOJWn0LrmoHtjyu+1U4bV4CJXqTNmXEaFABIxxR58lp1PlOrs5DKAgL0Gw8CoGtSoHML3XLLuGAGvOEdI9Ukipeshs4MSmDMOqj4rxR6bkUBTKOIyrx3of8NYIbJ5wEIg5V+qeaLN8ksZUGaEiBnqURHlxIJidQAM0hgKw61+LqKOc7J/gNttkYocToLHQAAAABJRU5ErkJggg=="
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-auth.jar, play-services-auth.aar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-basement.aar, play-services-basement.jar, play-services-base.aar, play-services-base.jar"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field private final RESULT_OK:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 31
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->requestCode:I

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->RESULT_OK:I

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Picked(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after account has been picked."
    .end annotation

    .line 61
    const-string v0, "Picked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShowAccountPicker()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a popup with list of Google accounts registered in device."
    .end annotation

    .line 43
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->requestCode:I

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->requestCode:I

    .line 48
    :cond_0
    :try_start_0
    const-string v0, "com.google"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Pick"

    const/16 v3, 0x259

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 68
    const-string p1, "authAccount"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleAccountPicker;->Picked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
