.class Lcom/android/settings_ext/voice/j;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic alj:Landroid/widget/CompoundButton;

.field final synthetic anr:Lcom/android/settings_ext/voice/e;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/voice/e;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ext/voice/j;->anr:Lcom/android/settings_ext/voice/e;

    iput-object p2, p0, Lcom/android/settings_ext/voice/j;->alj:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/voice/j;->anr:Lcom/android/settings_ext/voice/e;

    iget-object v1, p0, Lcom/android/settings_ext/voice/j;->alj:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/voice/e;->c(Landroid/widget/Checkable;)V

    .line 193
    return-void
.end method
