.class public Lcom/android/settings/sound/SmsReceivedActivity;
.super Lcom/android/settings/sound/r;
.source "SmsReceivedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/sound/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRingtoneType()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x10

    return v0
.end method

.method protected rF()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 23
    invoke-super {p0}, Lcom/android/settings/sound/r;->rF()Landroid/content/Intent;

    move-result-object v0

    .line 24
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    return-object v0
.end method

.method protected rG()I
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f090ad5

    return v0
.end method
