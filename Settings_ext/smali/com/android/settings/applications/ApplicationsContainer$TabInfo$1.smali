.class Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo$1;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ep:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo$1;->Ep:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo$1;->Ep:Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->iQ()V

    .line 362
    return-void
.end method
