.class Lcom/android/settings/tts/m;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic als:Lcom/android/settings/tts/l;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/l;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/tts/m;->als:Lcom/android/settings/tts/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/tts/m;->als:Lcom/android/settings/tts/l;

    invoke-virtual {v0}, Lcom/android/settings/tts/l;->gW()V

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/m;->als:Lcom/android/settings/tts/l;

    invoke-virtual {v0}, Lcom/android/settings/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/n;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/n;-><init>(Lcom/android/settings/tts/m;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
