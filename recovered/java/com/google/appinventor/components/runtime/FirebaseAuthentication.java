package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseException;
import com.google.firebase.FirebaseTooManyRequestsException;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.GoogleAuthProvider;
import com.google.firebase.auth.OAuthProvider;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

@DesignerComponent(category = ComponentCategory.FIREBASE, description = "FirebaseAuth lets you Secure your Firebase Database and Authenticate Users viaEmail, Phone, Google, Github, etc.", iconName = "images/firebaseAuth.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "firebase-auth.aar, firebase-auth.jar, firebase-auth-interop.aar, firebase-auth-interop.jar, firebase-common.aar, firebase-common.jar, browser.aar, browser.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, recaptcha.aar, recaptcha.jar, integrity.aar, integrity.jar, firebase-appcheck-interop.aar, firebase-appcheck-interop.jar, kotlinx-coroutines-play-services.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, firebase-components.aar, firebase-components.jar, firebase-annotations.jar, annotation.jar, javax.inject.jar, play-services-auth.aar, play-services-auth.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-fido.aar, play-services-fido.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class FirebaseAuthentication extends AndroidNonvisibleComponent implements ActivityResultListener {
    private Activity activity;
    private Context context;
    private FirebaseAuth firebaseAuth;
    private GoogleSignInClient mGoogleSignInClient;
    private int requestCode;

    public FirebaseAuthentication(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.requestCode = 0;
        this.context = this.form.$context();
        this.activity = this.form.$context();
    }

    @SimpleFunction(description = "Initialize the Firebase Auth Component")
    public void InitializeFirebaseAuth(Object obj) {
        if (obj instanceof FirebaseCore) {
            FirebaseApp firebaseAppInstance = ((FirebaseCore) obj).getFirebaseAppInstance();
            if (firebaseAppInstance == null) {
                FailedToInitialize("Firebase Core Component is not Initialized");
                return;
            }
            FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseAppInstance);
            this.firebaseAuth = firebaseAuth;
            if (firebaseAuth == null) {
                FailedToInitialize("Firebase Auth failed to Initialize. Returned Null");
            }
            FirebaseAuthInitialized();
            return;
        }
        FailedToInitialize("Invalid Firebase Core Component");
    }

    @SimpleEvent(description = "Firebase Auth Initialized")
    public void FirebaseAuthInitialized() {
        EventDispatcher.dispatchEvent(this, "FirebaseAuthInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Failed to Initialized Firebase Auth Component")
    public void FailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToInitialize", str);
    }

    @SimpleFunction(description = "SignUp with Email and Password using FirebaseAuth")
    public void SignUpWithEmail(String str, String str2) {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            firebaseAuth.createUserWithEmailAndPassword(str, str2).addOnCompleteListener(new OnCompleteListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.1
                public void onComplete(Task<AuthResult> task) {
                    if (task.isSuccessful()) {
                        FirebaseAuthentication.this.EmailSignUpSuccessful();
                    } else {
                        FirebaseAuthentication.this.EmailSignUpFailed(task.getException().toString());
                    }
                }
            });
        }
    }

    @SimpleFunction(description = "SignIn with Email and Password using FirebaseAuth")
    public void SignInWithEmail(String str, String str2) {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            firebaseAuth.signInWithEmailAndPassword(str, str2).addOnCompleteListener(new OnCompleteListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.2
                public void onComplete(Task<AuthResult> task) {
                    if (task.isSuccessful()) {
                        FirebaseAuthentication.this.EmailSignInSuccessful();
                    } else {
                        FirebaseAuthentication.this.EmailSignInFailed(task.getException().toString());
                    }
                }
            });
        }
    }

    @SimpleFunction(description = "Sends a Verification Code to the Users Phone Number. Input: phoneNumber and timeout. timeout should be in seconds and a new sms can be sent only after the specified time.")
    public void SendSMSVerification(String str, int i) {
        if (this.firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            PhoneAuthProvider.getInstance(this.firebaseAuth).verifyPhoneNumber(str, i, TimeUnit.SECONDS, this.activity, new PhoneAuthProvider.OnVerificationStateChangedCallbacks() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.3
                public void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
                    FirebaseAuthentication.this.SmsVerified(phoneAuthCredential);
                }

                public void onVerificationFailed(FirebaseException firebaseException) {
                    if (firebaseException instanceof FirebaseAuthInvalidCredentialsException) {
                        FirebaseAuthentication.this.SmsVerificationFailed("Invalid Request");
                    } else if (firebaseException instanceof FirebaseTooManyRequestsException) {
                        FirebaseAuthentication.this.SmsVerificationFailed("Too many requests");
                    } else {
                        FirebaseAuthentication.this.SmsVerificationFailed(firebaseException.getLocalizedMessage());
                    }
                }

                public void onCodeSent(@NonNull String str2, @NonNull PhoneAuthProvider.ForceResendingToken forceResendingToken) {
                    FirebaseAuthentication.this.VerificationSmsSent(str2);
                }

                public void onCodeAutoRetrievalTimeOut(@NonNull String str2) {
                    FirebaseAuthentication.this.VerificationSmsTimedOut();
                }
            });
        }
    }

    @SimpleFunction(description = "Creates a Phone Auth Credential to SignIn With Phone")
    public Object CreatePhoneAuthCredential(String str, String str2) {
        return PhoneAuthProvider.getCredential(str, str2);
    }

    @SimpleFunction(description = "Sign In With Phone Number. Pass the Phone Auth Credentials received from the SMS verified Event.")
    public void SignInWithPhone(Object obj) {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else if (obj instanceof PhoneAuthCredential) {
            firebaseAuth.signInWithCredential((PhoneAuthCredential) obj).addOnCompleteListener(this.activity, new OnCompleteListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.4
                public void onComplete(@NonNull Task<AuthResult> task) {
                    if (task.isSuccessful()) {
                        FirebaseAuthentication.this.PhoneSignInSuccessful();
                    } else {
                        task.getException();
                        FirebaseAuthentication.this.PhoneSignInFailed(task.getException().getMessage());
                    }
                }
            });
        } else {
            ErrorOccurred("SignInWithPhone requires Phone Auth Credentials as the input");
        }
    }

    @SimpleFunction(description = "Sign in Anonymously to Access Secured Functions without an Account")
    public void SignInAnonymously() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            firebaseAuth.signInAnonymously().addOnCompleteListener(new OnCompleteListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.5
                public void onComplete(@NonNull Task<AuthResult> task) {
                    if (task.isSuccessful()) {
                        FirebaseAuthentication.this.AnonymousSignInSuccessful();
                    } else {
                        FirebaseAuthentication.this.AnonymousSignInFailed(task.getException().getMessage());
                    }
                }
            });
        }
    }

    @SimpleFunction(description = "Sign in Using Twitter")
    public void SignInWithTwitter() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            this.firebaseAuth.startActivityForSignInWithProvider(this.activity, OAuthProvider.newBuilder("twitter.com", firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.7
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.TwitterSignInSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.6
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.TwitterSignInFailed(exc.getMessage());
                }
            });
        }
    }

    @SimpleFunction(description = "Link a twitter account with the user to enable them to login withtwitter later. This will link twitter with the existing account")
    public void LinkWithTwitter() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else if (firebaseAuth.getCurrentUser() != null) {
            this.firebaseAuth.getCurrentUser().startActivityForLinkWithProvider(this.activity, OAuthProvider.newBuilder("twitter.com", this.firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.9
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.TwitterLinkSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.8
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.TwitterLinkFailed(exc.getMessage());
                }
            });
        } else {
            TwitterLinkFailed("Cannot Link without an existing User");
        }
    }

    @SimpleFunction(description = "Unlinks the signed in accout with twitter")
    public void UnlinkTwitter() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
            return;
        }
        if (firebaseAuth.getCurrentUser() != null) {
            OAuthProvider.Builder builderNewBuilder = OAuthProvider.newBuilder("twitter.com", this.firebaseAuth);
            FirebaseUser currentUser = this.firebaseAuth.getCurrentUser();
            String providerId = builderNewBuilder.build().getProviderId();
            Objects.requireNonNull(providerId);
            currentUser.unlink(providerId);
            return;
        }
        ErrorOccurred("Cannot Unlink without an existing user");
    }

    @SimpleFunction(description = "Sign in Using Github")
    public void SignInWithGithub() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            this.firebaseAuth.startActivityForSignInWithProvider(this.activity, OAuthProvider.newBuilder("github.com", firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.11
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.GithubSignInSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.10
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.GithubSignInFailed(exc.getMessage());
                }
            });
        }
    }

    @SimpleFunction(description = "Link a Github account with the user to enable them to login withGithub later. This will link Github with the existing account")
    public void LinkWithGithub() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else if (firebaseAuth.getCurrentUser() != null) {
            this.firebaseAuth.getCurrentUser().startActivityForLinkWithProvider(this.activity, OAuthProvider.newBuilder("github.com", this.firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.13
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.GithubLinkSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.12
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.GithubLinkFailed(exc.getMessage());
                }
            });
        } else {
            GithubLinkFailed("Cannot Link without an existing User");
        }
    }

    @SimpleFunction(description = "Unlinks account signed in with github")
    public void UnlinkGithub() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
            return;
        }
        if (firebaseAuth.getCurrentUser() != null) {
            OAuthProvider.Builder builderNewBuilder = OAuthProvider.newBuilder("github.com", this.firebaseAuth);
            FirebaseUser currentUser = this.firebaseAuth.getCurrentUser();
            String providerId = builderNewBuilder.build().getProviderId();
            Objects.requireNonNull(providerId);
            currentUser.unlink(providerId);
            return;
        }
        ErrorOccurred("Cannot Unlink without an existing user");
    }

    @SimpleFunction(description = "Sign in Using Microsoft")
    public void SignInWithMicrosoft() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            this.firebaseAuth.startActivityForSignInWithProvider(this.activity, OAuthProvider.newBuilder("microsoft.com", firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.15
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.MicrosoftSignInSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.14
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.MicrosoftSignInFailed(exc.getMessage());
                }
            });
        }
    }

    @SimpleFunction(description = "Link a Microsoft account with the user to enable them to login withMicrosoft later. This will link Microsoft with the existing account")
    public void LinkWithMicrosoft() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else if (firebaseAuth.getCurrentUser() != null) {
            this.firebaseAuth.getCurrentUser().startActivityForLinkWithProvider(this.activity, OAuthProvider.newBuilder("microsoft.com", this.firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.17
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.MicrosoftLinkSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.16
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.MicrosoftLinkFailed(exc.getMessage());
                }
            });
        } else {
            MicrosoftLinkFailed("Cannot Link without an existing User");
        }
    }

    @SimpleFunction(description = "Unlinks the account signed in with microsoft")
    public void UnlinkMicrosoft() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
            return;
        }
        if (firebaseAuth.getCurrentUser() != null) {
            OAuthProvider.Builder builderNewBuilder = OAuthProvider.newBuilder("microsoft.com", this.firebaseAuth);
            FirebaseUser currentUser = this.firebaseAuth.getCurrentUser();
            String providerId = builderNewBuilder.build().getProviderId();
            Objects.requireNonNull(providerId);
            currentUser.unlink(providerId);
            return;
        }
        ErrorOccurred("Cannot Unlink without an existing user");
    }

    @SimpleFunction(description = "Sign in Using Yahoo")
    public void SignInWithYahoo() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else {
            this.firebaseAuth.startActivityForSignInWithProvider(this.activity, OAuthProvider.newBuilder("yahoo.com", firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.19
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.YahooSignInSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.18
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.YahooSignInFailed(exc.getMessage());
                }
            });
        }
    }

    @SimpleFunction(description = "Link a Yahoo account with the user to enable them to login withYahoo later. This will link Yahoo with the existing account")
    public void LinkWithYahoo() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
        } else if (firebaseAuth.getCurrentUser() != null) {
            this.firebaseAuth.getCurrentUser().startActivityForLinkWithProvider(this.activity, OAuthProvider.newBuilder("yahoo.com", this.firebaseAuth).build()).addOnSuccessListener(new OnSuccessListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.21
                public void onSuccess(AuthResult authResult) {
                    FirebaseAuthentication.this.YahooLinkSuccessful();
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.20
                public void onFailure(@NonNull Exception exc) {
                    FirebaseAuthentication.this.YahooLinkFailed(exc.getMessage());
                }
            });
        } else {
            YahooLinkFailed("Cannot Link without an existing User");
        }
    }

    @SimpleFunction(description = "Unlinks the account signed in with yahoo")
    public void UnlinkYahoo() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
            return;
        }
        if (firebaseAuth.getCurrentUser() != null) {
            OAuthProvider.Builder builderNewBuilder = OAuthProvider.newBuilder("yahoo.com", this.firebaseAuth);
            FirebaseUser currentUser = this.firebaseAuth.getCurrentUser();
            String providerId = builderNewBuilder.build().getProviderId();
            Objects.requireNonNull(providerId);
            currentUser.unlink(providerId);
            return;
        }
        ErrorOccurred("Cannot Unlink without an existing user");
    }

    @SimpleFunction(description = "SignOut a User")
    public void SignOut() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth != null) {
            firebaseAuth.signOut();
        }
    }

    @SimpleFunction(description = "Get the UserAuthToken. \n Parameters: forceRefresh: boolean\nForce refresh regardless of token expiration.")
    public void GetUserAuthToken(boolean z) {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
            return;
        }
        FirebaseUser currentUser = firebaseAuth.getCurrentUser();
        if (currentUser == null) {
            ErrorOccurred("Firebase User is null");
        } else {
            currentUser.getIdToken(z).addOnCompleteListener(new OnCompleteListener<GetTokenResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.22
                public void onComplete(@NonNull Task<GetTokenResult> task) {
                    if (task.isSuccessful()) {
                        FirebaseAuthentication.this.UserAuthTokenReceived(((GetTokenResult) task.getResult()).getToken(), ((GetTokenResult) task.getResult()).getAuthTimestamp(), ((GetTokenResult) task.getResult()).getIssuedAtTimestamp(), ((GetTokenResult) task.getResult()).getExpirationTimestamp(), ((GetTokenResult) task.getResult()).getSignInProvider());
                        return;
                    }
                    FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication.this;
                    Exception exception = task.getException();
                    Objects.requireNonNull(exception);
                    firebaseAuthentication.UserAuthTokenError(exception.getMessage());
                }
            });
        }
    }

    @SimpleFunction(description = "Get the UserId of the User. Useful for storing the data of the user")
    public String GetUserUid() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth != null) {
            return firebaseAuth.getCurrentUser() == null ? "" : this.firebaseAuth.getCurrentUser().getUid();
        }
        ErrorOccurred("FirebaseAuth is not Initialized");
        return "";
    }

    @SimpleFunction(description = "Get the email of the User")
    public String GetUserEmail() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth != null) {
            return firebaseAuth.getCurrentUser() == null ? "" : this.firebaseAuth.getCurrentUser().getEmail();
        }
        ErrorOccurred("FirebaseAuth is not Initialized");
        return "";
    }

    @SimpleFunction(description = "Get the UserName of the User")
    public String GetUserName() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth != null) {
            return firebaseAuth.getCurrentUser() == null ? "" : this.firebaseAuth.getCurrentUser().getDisplayName();
        }
        ErrorOccurred("FirebaseAuth is not Initialized");
        return "";
    }

    @SimpleFunction(description = "Get the PhotoUrl of the User. Only if a Picture is Uploaded")
    public String GetPhotoUrl() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth != null) {
            return firebaseAuth.getCurrentUser() == null ? "" : this.firebaseAuth.getCurrentUser().getPhotoUrl().toString();
        }
        ErrorOccurred("FirebaseAuth is not Initialized");
        return "";
    }

    @SimpleFunction(description = "Get the Phone Number of the User")
    public String GetUserPhoneNumber() {
        FirebaseAuth firebaseAuth = this.firebaseAuth;
        if (firebaseAuth != null) {
            return firebaseAuth.getCurrentUser() == null ? "" : this.firebaseAuth.getCurrentUser().getPhoneNumber();
        }
        ErrorOccurred("FirebaseAuth is not Initialized");
        return "";
    }

    @SimpleFunction(description = "Attempts a login with google. promptAccountSelection is a boolean, true if you want the user to be able to select an account the next time they login")
    public void GoogleLogin(String str, boolean z) {
        if (this.firebaseAuth == null) {
            ErrorOccurred("FirebaseAuth is not Initialized");
            return;
        }
        GoogleSignInClient client = GoogleSignIn.getClient(this.context, new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestIdToken(str).requestEmail().build());
        this.mGoogleSignInClient = client;
        if (z) {
            try {
                client.signOut();
                this.mGoogleSignInClient.revokeAccess();
            } catch (Exception unused) {
            }
        }
        Intent signInIntent = this.mGoogleSignInClient.getSignInIntent();
        int iRegisterForActivityResult = this.form.registerForActivityResult(this);
        this.requestCode = iRegisterForActivityResult;
        this.activity.startActivityForResult(signInIntent, iRegisterForActivityResult);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i == this.requestCode) {
            try {
                firebaseAuthWithGoogle((GoogleSignInAccount) GoogleSignIn.getSignedInAccountFromIntent(intent).getResult(ApiException.class));
            } catch (ApiException unused) {
                GoogleSignInFailed("Google sign in failed");
            }
        }
    }

    private void firebaseAuthWithGoogle(GoogleSignInAccount googleSignInAccount) {
        this.firebaseAuth.signInWithCredential(GoogleAuthProvider.getCredential(googleSignInAccount.getIdToken(), (String) null)).addOnCompleteListener(new OnCompleteListener<AuthResult>() { // from class: com.google.appinventor.components.runtime.FirebaseAuthentication.23
            public void onComplete(Task<AuthResult> task) {
                if (task.isSuccessful()) {
                    FirebaseUser currentUser = FirebaseAuthentication.this.firebaseAuth.getCurrentUser();
                    FirebaseAuthentication.this.GoogleSignInSuccess(currentUser.getEmail(), currentUser.getDisplayName(), currentUser.getPhotoUrl().toString(), currentUser.getUid(), currentUser.isEmailVerified());
                } else {
                    FirebaseAuthentication.this.GoogleSignInFailed(task.getException().toString());
                }
            }
        });
    }

    @SimpleFunction(description = "Checks if any user is logged in")
    public boolean IsUserSignedIn() {
        return this.firebaseAuth.getCurrentUser() != null;
    }

    @SimpleEvent(description = "User auth token received")
    public void UserAuthTokenReceived(String str, long j, long j2, long j3, String str2) {
        EventDispatcher.dispatchEvent(this, "UserAuthTokenReceived", str, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3), str2);
    }

    @SimpleEvent(description = "User auth token fetching error")
    public void UserAuthTokenError(String str) {
        EventDispatcher.dispatchEvent(this, "UserAuthTokenError", str);
    }

    @SimpleEvent(description = "Sign in with google succeed")
    public void GoogleSignInSuccess(String str, String str2, String str3, String str4, boolean z) {
        EventDispatcher.dispatchEvent(this, "GoogleSignInSuccess", str, str2, str3, str4, Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Sign in with google failed")
    public void GoogleSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "GoogleSignInFailed", str);
    }

    @SimpleEvent(description = "Event Called when Email SignUp is Successful")
    public void EmailSignUpSuccessful() {
        EventDispatcher.dispatchEvent(this, "EmailSignUpSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Event Called when Email SignUp is failed")
    public void EmailSignUpFailed(String str) {
        EventDispatcher.dispatchEvent(this, "EmailSignUpFailed", str);
    }

    @SimpleEvent(description = "Event Called when Email SignIn is Successful")
    public void EmailSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "EmailSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Event Called when Email SignIn is failed")
    public void EmailSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "EmailSignInFailed", str);
    }

    @SimpleEvent(description = "Twitter Sign In Successful")
    public void TwitterSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "TwitterSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Twitter Sign In Failed")
    public void TwitterSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "TwitterSignInFailed", str);
    }

    @SimpleEvent(description = "Twitter Link Successful")
    public void TwitterLinkSuccessful() {
        EventDispatcher.dispatchEvent(this, "TwitterLinkSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Twitter Link Failed")
    public void TwitterLinkFailed(String str) {
        EventDispatcher.dispatchEvent(this, "TwitterLinkFailed", str);
    }

    @SimpleEvent(description = "Github Sign In Successful")
    public void GithubSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "GithubSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Github Sign In Failed")
    public void GithubSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "GithubSignInFailed", str);
    }

    @SimpleEvent(description = "Github Link Successful")
    public void GithubLinkSuccessful() {
        EventDispatcher.dispatchEvent(this, "GithubLinkSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Github Link Failed")
    public void GithubLinkFailed(String str) {
        EventDispatcher.dispatchEvent(this, "GithubLinkFailed", str);
    }

    @SimpleEvent(description = "Microsoft Sign In Successful")
    public void MicrosoftSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "MicrosoftSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Microsoft Sign In Failed")
    public void MicrosoftSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "MicrosoftSignInFailed", str);
    }

    @SimpleEvent(description = "Microsoft Link Successful")
    public void MicrosoftLinkSuccessful() {
        EventDispatcher.dispatchEvent(this, "MicrosoftLinkSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Microsoft Link Failed")
    public void MicrosoftLinkFailed(String str) {
        EventDispatcher.dispatchEvent(this, "MicrosoftLinkFailed", str);
    }

    @SimpleEvent(description = "Yahoo Sign In Successful")
    public void YahooSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "YahooSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Yahoo Sign In Failed")
    public void YahooSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "YahooSignInFailed", str);
    }

    @SimpleEvent(description = "Yahoo Link Successful")
    public void YahooLinkSuccessful() {
        EventDispatcher.dispatchEvent(this, "YahooLinkSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Yahoo Link Failed")
    public void YahooLinkFailed(String str) {
        EventDispatcher.dispatchEvent(this, "YahooLinkFailed", str);
    }

    @SimpleEvent(description = "Sms Verified")
    public void SmsVerified(Object obj) {
        EventDispatcher.dispatchEvent(this, "SmsVerified", obj);
    }

    @SimpleEvent(description = "Verification Sms Sent")
    public void VerificationSmsSent(String str) {
        EventDispatcher.dispatchEvent(this, "VerificationSmsSent", str);
    }

    @SimpleEvent(description = "Verification Sms Failed to Sent")
    public void SmsVerificationFailed(String str) {
        EventDispatcher.dispatchEvent(this, "SmsVerificationFailed", str);
    }

    @SimpleEvent(description = "Verification Sms Timed Out")
    public void VerificationSmsTimedOut() {
        EventDispatcher.dispatchEvent(this, "VerificationSmsTimedOut", new Object[0]);
    }

    @SimpleEvent(description = "Phone Sign In Successful")
    public void PhoneSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "PhoneSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Phone Sign In Failed")
    public void PhoneSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "PhoneSignInFailed", str);
    }

    @SimpleEvent(description = "Anonymous Sign In Successful")
    public void AnonymousSignInSuccessful() {
        EventDispatcher.dispatchEvent(this, "AnonymousSignInSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Anonymous Sign In Failed")
    public void AnonymousSignInFailed(String str) {
        EventDispatcher.dispatchEvent(this, "AnonymousSignInFailed", str);
    }

    @SimpleEvent(description = "Something went wrong in Firebase Auth")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
