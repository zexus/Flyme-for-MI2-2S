.class public Lcom/miui/compass/CompassApplication;
.super Lmiui/external/Application;
.source "CompassApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lcom/miui/compass/ApplicationDelegate;
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/miui/compass/ApplicationDelegate;

    invoke-direct {v0}, Lcom/miui/compass/ApplicationDelegate;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/miui/compass/CompassApplication;->onCreateApplicationDelegate()Lcom/miui/compass/ApplicationDelegate;

    move-result-object v0

    return-object v0
.end method
