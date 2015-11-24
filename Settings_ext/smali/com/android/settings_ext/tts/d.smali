.class Lcom/android/settings_ext/tts/d;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/settings_ext/tts/d;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings_ext/tts/d;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/settings_ext/tts/d;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    invoke-static {v1}, Lcom/android/settings_ext/tts/TextToSpeechSettings;->a(Lcom/android/settings_ext/tts/TextToSpeechSettings;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/tts/TextToSpeechSettings;->a(Lcom/android/settings_ext/tts/TextToSpeechSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/settings_ext/tts/d;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/settings_ext/tts/d;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    invoke-static {v1}, Lcom/android/settings_ext/tts/TextToSpeechSettings;->b(Lcom/android/settings_ext/tts/TextToSpeechSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/tts/TextToSpeechSettings;->b(Lcom/android/settings_ext/tts/TextToSpeechSettings;Ljava/lang/String;)V

    .line 539
    return-void
.end method
