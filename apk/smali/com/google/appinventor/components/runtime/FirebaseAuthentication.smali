.class public final Lcom/google/appinventor/components/runtime/FirebaseAuthentication;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->FIREBASE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "FirebaseAuth lets you Secure your Firebase Database and Authenticate Users viaEmail, Phone, Google, Github, etc."
    iconName = "images/firebaseAuth.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-auth.aar, firebase-auth.jar, firebase-auth-interop.aar, firebase-auth-interop.jar, firebase-common.aar, firebase-common.jar, browser.aar, browser.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, recaptcha.aar, recaptcha.jar, integrity.aar, integrity.jar, firebase-appcheck-interop.aar, firebase-appcheck-interop.jar, kotlinx-coroutines-play-services.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, firebase-components.aar, firebase-components.jar, firebase-annotations.jar, annotation.jar, javax.inject.jar, play-services-auth.aar, play-services-auth.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-fido.aar, play-services-fido.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->requestCode:I

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->context:Landroid/content/Context;

    .line 62
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private firebaseAuthWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 623
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 624
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$23;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$23;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 625
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public AnonymousSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Anonymous Sign In Failed"
    .end annotation

    .line 803
    const-string v0, "AnonymousSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AnonymousSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Anonymous Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    .line 798
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnonymousSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CreatePhoneAuthCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates a Phone Auth Credential to SignIn With Phone"
    .end annotation

    .line 178
    invoke-static {p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    return-object p1
.end method

.method public EmailSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignIn is failed"
    .end annotation

    .line 683
    const-string v0, "EmailSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignIn is Successful"
    .end annotation

    const/4 v0, 0x0

    .line 678
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EmailSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailSignUpFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignUp is failed"
    .end annotation

    .line 673
    const-string v0, "EmailSignUpFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailSignUpSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignUp is Successful"
    .end annotation

    const/4 v0, 0x0

    .line 668
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EmailSignUpSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Something went wrong in Firebase Auth"
    .end annotation

    .line 808
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Initialized Firebase Auth Component"
    .end annotation

    .line 90
    const-string v0, "FailedToInitialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FirebaseAuthInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Firebase Auth Initialized"
    .end annotation

    const/4 v0, 0x0

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FirebaseAuthInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetPhotoUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the PhotoUrl of the User. Only if a Picture is Uploaded"
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 561
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 564
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserAuthToken(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the UserAuthToken. \n Parameters: forceRefresh: boolean\nForce refresh regardless of token expiration."
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 499
    const-string p1, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 505
    const-string p1, "Firebase User is null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 509
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$22;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$22;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GetUserEmail()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the email of the User"
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 537
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 540
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the UserName of the User"
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 549
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 552
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserPhoneNumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Phone Number of the User"
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 573
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 576
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserUid()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the UserId of the User. Useful for storing the data of the user"
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 525
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 528
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GithubLinkFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Link Failed"
    .end annotation

    .line 723
    const-string v0, "GithubLinkFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GithubLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Link Successful"
    .end annotation

    const/4 v0, 0x0

    .line 718
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GithubLinkSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GithubSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Sign In Failed"
    .end annotation

    .line 713
    const-string v0, "GithubSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GithubSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    .line 708
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GithubSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GoogleLogin(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Attempts a login with google. promptAccountSelection is a boolean, true if you want the user to be able to select an account the next time they login"
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 586
    const-string p1, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 589
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 590
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 592
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 594
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-eqz p2, :cond_1

    .line 598
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 599
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->revokeAccess()Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 606
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result p2

    iput p2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->requestCode:I

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public GoogleSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sign in with google failed"
    .end annotation

    .line 662
    const-string v0, "GoogleSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GoogleSignInSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sign in with google succeed"
    .end annotation

    .line 657
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "GoogleSignInSuccess"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeFirebaseAuth(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Firebase Auth Component"
    .end annotation

    .line 67
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    if-eqz v0, :cond_2

    .line 68
    check-cast p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseCore;->getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    .line 70
    const-string p1, "Firebase Core Component is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez p1, :cond_1

    .line 75
    const-string p1, "Firebase Auth failed to Initialize. Returned Null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->FailedToInitialize(Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->FirebaseAuthInitialized()V

    return-void

    .line 79
    :cond_2
    const-string p1, "Invalid Firebase Core Component"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->FailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public IsUserSignedIn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if any user is logged in"
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public LinkWithGithub()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a Github account with the user to enable them to login withGithub later. This will link Github with the existing account"
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "github.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$13;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$13;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$12;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$12;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 332
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 339
    :cond_1
    const-string v0, "Cannot Link without an existing User"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->GithubLinkFailed(Ljava/lang/String;)V

    return-void
.end method

.method public LinkWithMicrosoft()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a Microsoft account with the user to enable them to login withMicrosoft later. This will link Microsoft with the existing account"
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 383
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    const-string v0, "microsoft.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 391
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$16;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$16;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 397
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 404
    :cond_1
    const-string v0, "Cannot Link without an existing User"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->MicrosoftLinkFailed(Ljava/lang/String;)V

    return-void
.end method

.method public LinkWithTwitter()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a twitter account with the user to enable them to login withtwitter later. This will link twitter with the existing account"
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 253
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    const-string v0, "twitter.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$9;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$9;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$8;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 267
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 274
    :cond_1
    const-string v0, "Cannot Link without an existing User"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->TwitterLinkFailed(Ljava/lang/String;)V

    return-void
.end method

.method public LinkWithYahoo()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a Yahoo account with the user to enable them to login withYahoo later. This will link Yahoo with the existing account"
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 448
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 452
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 454
    const-string v0, "yahoo.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$21;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$21;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 456
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$20;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$20;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 462
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 469
    :cond_1
    const-string v0, "Cannot Link without an existing User"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->YahooLinkFailed(Ljava/lang/String;)V

    return-void
.end method

.method public MicrosoftLinkFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Link Failed"
    .end annotation

    .line 743
    const-string v0, "MicrosoftLinkFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MicrosoftLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Link Successful"
    .end annotation

    const/4 v0, 0x0

    .line 738
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MicrosoftLinkSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MicrosoftSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Sign In Failed"
    .end annotation

    .line 733
    const-string v0, "MicrosoftSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MicrosoftSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    .line 728
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MicrosoftSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Phone Sign In Failed"
    .end annotation

    .line 793
    const-string v0, "PhoneSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Phone Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    .line 788
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PhoneSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SendSMSVerification(Ljava/lang/String;I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a Verification Code to the Users Phone Number. Input: phoneNumber and timeout. timeout should be in seconds and a new sms can be sent only after the specified time."
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 135
    const-string p1, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    new-instance v6, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v0

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    return-void
.end method

.method public SignInAnonymously()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Anonymously to Access Secured Functions without an Account"
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signInAnonymously()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SignIn with Email and Password using FirebaseAuth"
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 116
    const-string p1, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithGithub()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Github"
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 295
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 298
    :cond_0
    const-string v1, "github.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$11;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$11;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$10;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$10;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithMicrosoft()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Microsoft"
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 360
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_0
    const-string v1, "microsoft.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$15;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$15;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$14;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$14;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithPhone(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign In With Phone Number. Pass the Phone Auth Credentials received from the SMS verified Event."
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 184
    const-string p1, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v1, :cond_1

    .line 188
    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 189
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 204
    :cond_1
    const-string p1, "SignInWithPhone requires Phone Auth Credentials as the input"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public SignInWithTwitter()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Twitter"
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 230
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    const-string v1, "twitter.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithYahoo()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Yahoo"
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 425
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_0
    const-string v1, "yahoo.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 430
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$18;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$18;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 436
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignOut()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SignOut a User"
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    :cond_0
    return-void
.end method

.method public SignUpWithEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SignUp with Email and Password using FirebaseAuth"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 97
    const-string p1, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 101
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SmsVerificationFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification Sms Failed to Sent"
    .end annotation

    .line 778
    const-string v0, "SmsVerificationFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SmsVerified(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sms Verified"
    .end annotation

    .line 768
    const-string v0, "SmsVerified"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterLinkFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Link Failed"
    .end annotation

    .line 703
    const-string v0, "TwitterLinkFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Link Successful"
    .end annotation

    const/4 v0, 0x0

    .line 698
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TwitterLinkSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Sign In Failed"
    .end annotation

    .line 693
    const-string v0, "TwitterSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    .line 688
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TwitterSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UnlinkGithub()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks account signed in with github"
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 346
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    const-string v0, "github.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 353
    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public UnlinkMicrosoft()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks the account signed in with microsoft"
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 411
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 414
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    const-string v0, "microsoft.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 418
    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public UnlinkTwitter()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks the signed in accout with twitter"
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 281
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "twitter.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 288
    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public UnlinkYahoo()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks the account signed in with yahoo"
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 476
    const-string v0, "FirebaseAuth is not Initialized"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 479
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    const-string v0, "yahoo.com"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 483
    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public UserAuthTokenError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User auth token fetching error"
    .end annotation

    .line 652
    const-string v0, "UserAuthTokenError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserAuthTokenReceived(Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User auth token received"
    .end annotation

    .line 647
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 p5, 0x5

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p5, p6

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const/4 p1, 0x2

    aput-object p3, p5, p1

    const/4 p1, 0x3

    aput-object p4, p5, p1

    const/4 p1, 0x4

    aput-object p8, p5, p1

    .line 646
    const-string p1, "UserAuthTokenReceived"

    invoke-static {p0, p1, p5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerificationSmsSent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification Sms Sent"
    .end annotation

    .line 773
    const-string v0, "VerificationSmsSent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerificationSmsTimedOut()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification Sms Timed Out"
    .end annotation

    const/4 v0, 0x0

    .line 783
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerificationSmsTimedOut"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooLinkFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Link Failed"
    .end annotation

    .line 763
    const-string v0, "YahooLinkFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Link Successful"
    .end annotation

    const/4 v0, 0x0

    .line 758
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "YahooLinkSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooSignInFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Sign In Failed"
    .end annotation

    .line 753
    const-string v0, "YahooSignInFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    .line 748
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "YahooSignInSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 611
    iget p2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->requestCode:I

    if-ne p1, p2, :cond_0

    .line 612
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 614
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 615
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->firebaseAuthWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 617
    :catch_0
    const-string p1, "Google sign in failed"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->GoogleSignInFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
