.class Lcom/android/settings_ext/eO;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ext/eO;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/eO;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/eO;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Z)Z

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/eO;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v1, p0, Lcom/android/settings_ext/eO;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    const-string v2, "scan_finish_output"

    invoke-static {v1, v2}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/eO;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v2}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->b(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Landroid/widget/VideoView;)V

    .line 127
    :cond_0
    return-void
.end method
