.class Lcom/android/settings/tts/c;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# instance fields
.field final synthetic akZ:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/tts/c;->akZ:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Error while trying to synthesize sample text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
