.class public Lcom/miui/fmradio/FmApplication;
.super Lmiui/external/Application;
.source "FmApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lcom/miui/fmradio/ApplicationDelegate;
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/miui/fmradio/ApplicationDelegate;

    invoke-direct {v0}, Lcom/miui/fmradio/ApplicationDelegate;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/miui/fmradio/FmApplication;->onCreateApplicationDelegate()Lcom/miui/fmradio/ApplicationDelegate;

    move-result-object v0

    return-object v0
.end method
