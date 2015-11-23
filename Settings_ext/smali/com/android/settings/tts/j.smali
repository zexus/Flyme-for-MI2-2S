.class Lcom/android/settings/tts/j;
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
    .line 249
    iput-object p1, p0, Lcom/android/settings/tts/j;->alh:Lcom/android/settings/tts/e;

    iput-object p2, p0, Lcom/android/settings/tts/j;->alj:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/tts/j;->alj:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 254
    return-void
.end method
