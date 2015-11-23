.class Lcom/android/settings/sound/I;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic akc:Lcom/android/settings/sound/G;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/G;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/settings/sound/I;->akc:Lcom/android/settings/sound/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 599
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 603
    iget-object v0, p0, Lcom/android/settings/sound/I;->akc:Lcom/android/settings/sound/G;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/sound/G;->a(Lcom/android/settings/sound/G;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 604
    const/4 v0, 0x1

    return v0

    .line 600
    :catch_0
    move-exception v0

    goto :goto_0
.end method
