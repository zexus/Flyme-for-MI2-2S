.class Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2$1;
.super Ljava/lang/Object;
.source "DolbyAdvanceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic XI:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2$1;->XI:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2$1;->XI:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;

    iget-object v0, v0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->XH:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2$1;->XI:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;

    iget-object v1, v1, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings$2;->XH:Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;

    invoke-static {v1, v0}, Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;->a(Lcom/android/settings_ext/dolby/DolbyAdvanceSettings;Landroid/content/Context;)V

    .line 234
    :cond_0
    return-void
.end method
