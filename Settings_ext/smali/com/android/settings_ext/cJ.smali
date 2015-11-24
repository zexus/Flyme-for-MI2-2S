.class Lcom/android/settings_ext/cJ;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mE:Lcom/android/settings_ext/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/HomeSettings;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings_ext/cJ;->mE:Lcom/android/settings_ext/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/cJ;->mE:Lcom/android/settings_ext/HomeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/HomeSettings;->c(Lcom/android/settings_ext/HomeSettings;)Lcom/android/settings_ext/cL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/cL;->setChecked(Z)V

    .line 226
    return-void
.end method
