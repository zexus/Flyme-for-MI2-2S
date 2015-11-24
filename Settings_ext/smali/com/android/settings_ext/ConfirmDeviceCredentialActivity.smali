.class public Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 38
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 60
    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 61
    :goto_0
    sget-object v3, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device credentials confirmed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->finish()V

    .line 64
    return-void

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v2, Lcom/android/settings_ext/ap;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/ap;-><init>(Landroid/app/Activity;)V

    .line 51
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/settings_ext/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v1, "No pattern, password or PIN set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->finish()V

    .line 56
    :cond_0
    return-void
.end method
