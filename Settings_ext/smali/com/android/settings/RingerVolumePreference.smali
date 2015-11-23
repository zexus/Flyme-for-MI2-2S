.class public Lcom/android/settings_ext/RingerVolumePreference;
.super Lmiui/preference/VolumePreference;
.source "RingerVolumePreference.java"


# static fields
.field private static final wg:[I

.field private static final wh:[I

.field private static final wi:[I

.field private static final wj:[I

.field private static final wk:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

.field private wl:[Landroid/widget/ImageView;

.field private wm:[Landroid/widget/SeekBar;

.field private wn:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wh:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wi:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wj:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wk:[I

    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x7f1001a9
        0x7f1001ad
        0x7f1001b1
        0x7f1001b4
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x3
        0x2
        0x5
        0x4
    .end array-data

    .line 77
    :array_2
    .array-data 4
        0x7f1001a8
        0x7f1001ac
        0x7f1001b0
        0x7f1001b3
    .end array-data

    .line 91
    :array_3
    .array-data 4
        0x7f0200c7
        0x7f0200c3
        0x7f0200c0
        0x7f0200bb
    .end array-data

    .line 106
    :array_4
    .array-data 4
        0x7f0200c5
        0x7f0200c2
        0x7f0200bf
        0x7f0200b9
    .end array-data
.end method

.method private H(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    aput-object v2, v1, v0

    .line 295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference;->wn:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    iput-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wn:Landroid/content/BroadcastReceiver;

    .line 310
    :cond_3
    return-void
.end method

.method static synthetic gA()[I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    return-object v0
.end method

.method private gz()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 130
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/settings_ext/RingerVolumePreference;->wh:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 131
    sget-object v2, Lcom/android/settings_ext/RingerVolumePreference;->wh:[I

    aget v3, v2, v0

    .line 132
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    .line 134
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wl:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 135
    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    const/4 v2, 0x5

    if-ne v3, v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 138
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wl:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v5, 0x7f0200c4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wm:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 149
    iget-object v5, p0, Lcom/android/settings_ext/RingerVolumePreference;->wm:[Landroid/widget/SeekBar;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 150
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v3, v2, :cond_5

    if-eqz v4, :cond_5

    .line 151
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wm:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 130
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wl:[Landroid/widget/ImageView;

    aget-object v5, v2, v0

    if-eqz v4, :cond_4

    sget-object v2, Lcom/android/settings_ext/RingerVolumePreference;->wj:[I

    aget v2, v2, v0

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/settings_ext/RingerVolumePreference;->wk:[I

    aget v2, v2, v0

    goto :goto_3

    .line 153
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wm:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 157
    :cond_6
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 266
    invoke-super {p0}, Lmiui/preference/VolumePreference;->onActivityStop()V

    .line 268
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 269
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 181
    invoke-super {p0, p1}, Lmiui/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    move v6, v7

    .line 183
    :goto_0
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 184
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 185
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference;->wm:[Landroid/widget/SeekBar;

    aput-object v3, v0, v6

    .line 186
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wh:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v8, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/settings_ext/RingerVolumePreference;->wh:[I

    aget v4, v1, v6

    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/RingerVolumePreference;->H(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v8, v6

    .line 183
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settings_ext/RingerVolumePreference;->wh:[I

    aget v4, v4, v6

    invoke-direct {v1, p0, v2, v3, v4}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v6

    goto :goto_1

    .line 196
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference;->wl:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v7, v0, :cond_2

    .line 197
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wi:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wl:[Landroid/widget/ImageView;

    aput-object v0, v1, v7

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/RingerVolumePreference;->gz()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference;->wn:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/android/settings_ext/ga;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/ga;-><init>(Lcom/android/settings_ext/RingerVolumePreference;)V

    iput-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wn:Landroid/content/BroadcastReceiver;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 224
    if-eqz v0, :cond_5

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    :cond_4
    :goto_3
    return-void

    .line 236
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 237
    const v0, 0x7f1001aa

    .line 241
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 239
    :cond_6
    const v0, 0x7f1001ae

    goto :goto_4
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    .prologue
    .line 254
    invoke-super {p0, p1}, Lmiui/preference/VolumePreference;->onDialogClosed(Z)V

    .line 256
    if-nez p1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 258
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/RingerVolumePreference;->cleanup()V

    .line 262
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 282
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 280
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 333
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 348
    :cond_1
    return-void

    .line 339
    :cond_2
    check-cast p1, Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    .line 340
    invoke-virtual {p1}, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiui/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 341
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->W(I)[Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 342
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 344
    if-eqz v2, :cond_3

    .line 345
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    .line 342
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4

    .prologue
    .line 288
    invoke-super {p0, p1}, Lmiui/preference/VolumePreference;->onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 290
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 314
    invoke-super {p0}, Lmiui/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ext/RingerVolumePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-instance v1, Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings_ext/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 321
    sget-object v0, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->W(I)[Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v2

    .line 322
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/android/settings_ext/RingerVolumePreference;->wg:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 323
    iget-object v3, p0, Lcom/android/settings_ext/RingerVolumePreference;->wf:[Lmiui/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v3, v0

    .line 324
    if-eqz v3, :cond_1

    .line 325
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    .line 322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 328
    goto :goto_0
.end method
