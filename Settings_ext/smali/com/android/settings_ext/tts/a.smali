.class Lcom/android/settings_ext/tts/a;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ext/tts/a;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/tts/a;->akZ:Lcom/android/settings_ext/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/tts/TextToSpeechSettings;->ct(I)V

    .line 140
    return-void
.end method
