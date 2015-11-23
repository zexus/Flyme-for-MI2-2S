.class Lcom/android/settings/sound/H;
.super Landroid/database/ContentObserver;
.source "RingerVolumeFragment.java"


# instance fields
.field final synthetic akc:Lcom/android/settings/sound/G;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/G;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v0}, Lcom/android/settings/sound/G;->b(Lcom/android/settings/sound/G;)Lmiui/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v0}, Lcom/android/settings/sound/G;->c(Lcom/android/settings/sound/G;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v0}, Lcom/android/settings/sound/G;->c(Lcom/android/settings/sound/G;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v1}, Lcom/android/settings/sound/G;->d(Lcom/android/settings/sound/G;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v0}, Lcom/android/settings/sound/G;->c(Lcom/android/settings/sound/G;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v1}, Lcom/android/settings/sound/G;->d(Lcom/android/settings/sound/G;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    iget-object v2, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v2}, Lcom/android/settings/sound/G;->b(Lcom/android/settings/sound/G;)Lmiui/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/G;->cq(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v1}, Lcom/android/settings/sound/G;->b(Lcom/android/settings/sound/G;)Lmiui/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-virtual {v2, v0}, Lcom/android/settings/sound/G;->cp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 464
    iget-object v1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v1, v0}, Lcom/android/settings/sound/G;->a(Lcom/android/settings/sound/G;I)I

    .line 467
    :cond_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v0}, Lcom/android/settings/sound/G;->c(Lcom/android/settings/sound/G;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/H;->akc:Lcom/android/settings/sound/G;

    invoke-static {v1}, Lcom/android/settings/sound/G;->d(Lcom/android/settings/sound/G;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
