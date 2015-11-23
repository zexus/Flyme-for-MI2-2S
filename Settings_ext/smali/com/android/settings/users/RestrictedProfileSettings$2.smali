.class Lcom/android/settings_ext/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic amu:Lcom/android/settings_ext/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings$2;->amu:Lcom/android/settings_ext/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings$2;->amu:Lcom/android/settings_ext/users/RestrictedProfileSettings;

    iget-object v0, v0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings$2;->amu:Lcom/android/settings_ext/users/RestrictedProfileSettings;

    iget-object v1, v1, Lcom/android/settings_ext/users/RestrictedProfileSettings;->alv:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 159
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings$2;->amu:Lcom/android/settings_ext/users/RestrictedProfileSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->gW()V

    .line 160
    return-void
.end method
