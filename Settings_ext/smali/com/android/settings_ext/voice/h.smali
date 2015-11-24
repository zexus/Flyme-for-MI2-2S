.class Lcom/android/settings_ext/voice/h;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic anr:Lcom/android/settings_ext/voice/e;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/voice/e;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ext/voice/h;->anr:Lcom/android/settings_ext/voice/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ext/voice/h;->anr:Lcom/android/settings_ext/voice/e;

    invoke-static {v1}, Lcom/android/settings_ext/voice/e;->a(Lcom/android/settings_ext/voice/e;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/android/settings_ext/voice/h;->anr:Lcom/android/settings_ext/voice/e;

    invoke-virtual {v1}, Lcom/android/settings_ext/voice/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
