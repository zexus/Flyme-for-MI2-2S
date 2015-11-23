.class final Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# instance fields
.field final synthetic afn:Lcom/android/settings/notification/NotificationSettings;

.field private afs:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afn:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public k(II)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 183
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afn:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/NotificationSettings$H;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afn:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afn:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$H;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afn:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    :cond_1
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->afs:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 193
    :cond_0
    return-void
.end method
