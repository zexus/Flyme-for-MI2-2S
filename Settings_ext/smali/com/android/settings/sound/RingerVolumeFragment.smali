.class public Lcom/android/settings/sound/RingerVolumeFragment;
.super Lcom/android/settings/BaseFragment;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final ajP:[I

.field private static final wh:[I

.field private static final wj:[I

.field private static final wk:[I


# instance fields
.field private ajO:[Lcom/android/settings/sound/G;

.field private final ajQ:[I

.field private ajR:[Lmiui/widget/SeekBar;

.field private ajS:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private wl:[Landroid/widget/ImageView;

.field private wn:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wj:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wk:[I

    return-void

    .line 56
    :array_0
    .array-data 4
        0x7f1001aa
        0x7f1001ae
        0x7f1001b2
        0x7f1001b5
        0x7f1001a7
        0x7f1001b6
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x2
        0x5
        0x4
        0x0
        0x3
        0x6
    .end array-data

    .line 83
    :array_2
    .array-data 4
        0x7f0200c3
        0x7f0200c0
        0x7f0200bb
        0x7f0200c1
        0x7f0200be
        0x7f0200bd
    .end array-data

    .line 92
    :array_3
    .array-data 4
        0x7f0200c2
        0x7f0200bf
        0x7f0200b9
        0x7f0200c1
        0x7f0200be
        0x7f0200bc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajQ:[I

    .line 101
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wj:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wl:[Landroid/widget/ImageView;

    .line 102
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v0, v0

    new-array v0, v0, [Lmiui/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajR:[Lmiui/widget/SeekBar;

    .line 104
    new-instance v0, Lcom/android/settings/sound/B;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/B;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    .line 435
    return-void

    .line 65
    nop

    :array_0
    .array-data 4
        0x7f090377
        0x7f090378
        0x7f090379
        0x7f090bb5
        0x7f090376
        0x7f090bb7
    .end array-data
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->gz()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeFragment;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment;->cm(I)V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->qQ()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/G;->stop()V

    .line 310
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aput-object v2, v1, v0

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wn:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wn:Landroid/content/BroadcastReceiver;

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajS:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajS:Landroid/content/BroadcastReceiver;

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    return-void
.end method

.method private cm(I)V
    .locals 4

    .prologue
    .line 247
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    aget v1, v0, p1

    .line 248
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 250
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wl:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 251
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wl:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v2, 0x7f0200c4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajR:[Lmiui/widget/SeekBar;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajR:[Lmiui/widget/SeekBar;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/G;->cq(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajR:[Lmiui/widget/SeekBar;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/sound/G;->cp(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 266
    :cond_1
    return-void

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wl:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wj:[I

    aget v0, v0, p1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wk:[I

    aget v0, v0, p1

    goto :goto_1
.end method

.method private gz()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 242
    invoke-direct {p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment;->cm(I)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method private qQ()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

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


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f0400b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method protected a(Lcom/android/settings/sound/G;)V
    .locals 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 288
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/G;->stopSample()V

    .line 287
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 412
    const v0, 0x7f090bb8

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 413
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 414
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 417
    return v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->cleanup()V

    .line 303
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 304
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 276
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 424
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->rM()V

    .line 425
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 295
    invoke-virtual {v3}, Lcom/android/settings/sound/G;->stopSample()V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 298
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 344
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v0, v0

    new-array v1, v0, [Landroid/preference/VolumePreference$VolumeStore;

    .line 345
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v2, v2, v0

    .line 347
    if-eqz v2, :cond_0

    .line 348
    new-instance v3, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v3}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v3, v1, v0

    .line 349
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/sound/G;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Lcom/android/settings/sound/RingerVolumeFragment$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/sound/RingerVolumeFragment$SavedState;-><init>([Landroid/preference/VolumePreference$VolumeStore;)V

    .line 353
    const-string v1, "save_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 354
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 355
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/G;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 135
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 136
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 137
    sget v0, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    const v0, 0x7f1001d1

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SeekBar;

    .line 139
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajR:[Lmiui/widget/SeekBar;

    aput-object v3, v0, v6

    .line 140
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v8, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    new-instance v0, Lcom/android/settings/sound/G;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    aget v4, v1, v6

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->qQ()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/G;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v8, v6

    .line 149
    :goto_1
    const v0, 0x7f1001cf

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wl:[Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 153
    const v0, 0x7f1001d0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajQ:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    new-instance v1, Lcom/android/settings/sound/G;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Lcom/android/settings/sound/RingerVolumeFragment;->wh:[I

    aget v4, v4, v6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/sound/G;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;I)V

    aput-object v1, v0, v6

    goto :goto_1

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->gz()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wn:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    new-instance v1, Lcom/android/settings/sound/C;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/C;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wn:Landroid/content/BroadcastReceiver;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->wn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajS:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/android/settings/sound/D;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/D;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajS:Landroid/content/BroadcastReceiver;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    const v0, 0x7f1001aa

    .line 197
    const v1, 0x7f1001b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 198
    const v1, 0x7f1001b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const v1, 0x7f1001b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 211
    return-void

    .line 201
    :cond_4
    const v0, 0x7f1001ae

    goto :goto_2
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 329
    if-nez p1, :cond_1

    .line 340
    :cond_0
    return-void

    .line 332
    :cond_1
    const-string v0, "save_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/RingerVolumeFragment$SavedState;

    .line 333
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/RingerVolumeFragment$SavedState;->cn(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 334
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v2, v2, v0

    .line 336
    if-eqz v2, :cond_2

    .line 337
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/sound/G;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 334
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method rM()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090bb8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/sound/E;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/E;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bb9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    return-void
.end method

.method rN()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->ajP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/G;->stopSample()V

    .line 233
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->ajO:[Lcom/android/settings/sound/G;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/G;->rO()V

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->gz()V

    .line 238
    return-void
.end method
