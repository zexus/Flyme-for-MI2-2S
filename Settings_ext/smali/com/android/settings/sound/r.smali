.class public abstract Lcom/android/settings/sound/r;
.super Landroid/app/Activity;
.source "BaseSoundActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getRingtoneType()I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 41
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/sound/r;->getRingtoneType()I

    move-result v1

    .line 43
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 44
    invoke-static {p0, v1, v0}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sound/r;->finish()V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/settings/sound/r;->rF()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/sound/r;->startActivityForResult(Landroid/content/Intent;I)V

    .line 18
    return-void
.end method

.method protected rF()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 21
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v3, "com.android.thememanager"

    const-string v4, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/sound/r;->getRingtoneType()I

    move-result v3

    .line 27
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    sget-boolean v5, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v5, :cond_0

    if-eq v3, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/sound/r;->rG()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/r;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {p0, v3}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    return-object v2
.end method

.method protected abstract rG()I
.end method
