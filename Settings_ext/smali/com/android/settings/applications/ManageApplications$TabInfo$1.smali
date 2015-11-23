.class Lcom/android/settings/applications/ManageApplications$TabInfo$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic HA:Lcom/android/settings/applications/ManageApplications$TabInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications$TabInfo;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo$1;->HA:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo$1;->HA:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->iQ()V

    .line 217
    return-void
.end method
