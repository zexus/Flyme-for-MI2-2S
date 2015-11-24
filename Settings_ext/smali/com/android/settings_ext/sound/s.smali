.class Lcom/android/settings_ext/sound/s;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ext/sound/s;->ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/sound/s;->ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;

    invoke-static {v0}, Lcom/android/settings_ext/sound/BatchMediaPlayer;->a(Lcom/android/settings_ext/sound/BatchMediaPlayer;)V

    .line 50
    return-void
.end method
