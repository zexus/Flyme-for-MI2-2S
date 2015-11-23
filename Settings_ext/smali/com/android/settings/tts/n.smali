.class Lcom/android/settings_ext/tts/n;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic alt:Lcom/android/settings_ext/tts/m;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/tts/m;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ext/tts/n;->alt:Lcom/android/settings_ext/tts/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/tts/n;->alt:Lcom/android/settings_ext/tts/m;

    iget-object v0, v0, Lcom/android/settings_ext/tts/m;->als:Lcom/android/settings_ext/tts/l;

    invoke-static {v0}, Lcom/android/settings_ext/tts/l;->a(Lcom/android/settings_ext/tts/l;)Landroid/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 83
    return-void
.end method
