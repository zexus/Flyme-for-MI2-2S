.class Lcom/android/settings_ext/tts/o;
.super Landroid/content/BroadcastReceiver;
.source "TtsEngineSettingsFragment.java"


# instance fields
.field final synthetic als:Lcom/android/settings_ext/tts/l;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/tts/l;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ext/tts/o;->als:Lcom/android/settings_ext/tts/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 93
    const-string v0, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/tts/o;->als:Lcom/android/settings_ext/tts/l;

    invoke-static {v0}, Lcom/android/settings_ext/tts/l;->b(Lcom/android/settings_ext/tts/l;)V

    .line 96
    :cond_0
    return-void
.end method
