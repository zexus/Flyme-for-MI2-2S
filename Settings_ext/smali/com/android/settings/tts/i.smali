.class Lcom/android/settings/tts/i;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic alh:Lcom/android/settings/tts/e;

.field final synthetic alj:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/e;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/tts/i;->alh:Lcom/android/settings/tts/e;

    iput-object p2, p0, Lcom/android/settings/tts/i;->alj:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/tts/i;->alh:Lcom/android/settings/tts/e;

    iget-object v1, p0, Lcom/android/settings/tts/i;->alj:Landroid/widget/CompoundButton;

    invoke-static {v0, v1}, Lcom/android/settings/tts/e;->a(Lcom/android/settings/tts/e;Landroid/widget/Checkable;)V

    .line 248
    return-void
.end method
