.class Lcom/android/settings_ext/tts/f;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic alh:Lcom/android/settings_ext/tts/e;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/tts/e;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings_ext/tts/f;->alh:Lcom/android/settings_ext/tts/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/tts/f;->alh:Lcom/android/settings_ext/tts/e;

    invoke-static {v0, p1, p2}, Lcom/android/settings_ext/tts/e;->a(Lcom/android/settings_ext/tts/e;Landroid/widget/CompoundButton;Z)V

    .line 101
    return-void
.end method
