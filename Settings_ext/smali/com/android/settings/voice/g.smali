.class Lcom/android/settings/voice/g;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ali:Landroid/widget/RadioButton;

.field final synthetic anr:Lcom/android/settings/voice/e;


# direct methods
.method constructor <init>(Lcom/android/settings/voice/e;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/voice/g;->anr:Lcom/android/settings/voice/e;

    iput-object p2, p0, Lcom/android/settings/voice/g;->ali:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/settings/voice/g;->anr:Lcom/android/settings/voice/e;

    iget-object v2, p0, Lcom/android/settings/voice/g;->ali:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/voice/g;->ali:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/voice/e;->a(Landroid/widget/CompoundButton;Z)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
