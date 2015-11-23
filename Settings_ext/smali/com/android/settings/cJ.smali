.class Lcom/android/settings/cJ;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mE:Lcom/android/settings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/cJ;->mE:Lcom/android/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/cJ;->mE:Lcom/android/settings/HomeSettings;

    invoke-static {v0}, Lcom/android/settings/HomeSettings;->c(Lcom/android/settings/HomeSettings;)Lcom/android/settings/cL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/cL;->setChecked(Z)V

    .line 226
    return-void
.end method
