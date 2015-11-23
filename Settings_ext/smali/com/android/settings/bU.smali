.class Lcom/android/settings_ext/bU;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ke:Lcom/android/settings_ext/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DisplaySettings;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings_ext/bU;->ke:Lcom/android/settings_ext/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings_ext/bU;->ke:Lcom/android/settings_ext/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ext/DisplaySettings;->a(Lcom/android/settings_ext/DisplaySettings;)Lcom/android/settings_ext/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/WarnedListPreference;->click()V

    .line 403
    return-void
.end method
