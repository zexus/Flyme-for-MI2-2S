.class Lcom/android/settings_ext/voice/i;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic anr:Lcom/android/settings_ext/voice/e;

.field final synthetic ans:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/voice/e;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ext/voice/i;->anr:Lcom/android/settings_ext/voice/e;

    iput-object p2, p0, Lcom/android/settings_ext/voice/i;->ans:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/voice/i;->ans:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 151
    return-void
.end method
