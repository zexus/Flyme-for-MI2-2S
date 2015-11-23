.class Lcom/android/settings/bU;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ke:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings/bU;->ke:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/bU;->ke:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->a(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/WarnedListPreference;->click()V

    .line 403
    return-void
.end method
